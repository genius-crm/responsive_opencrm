<?php
/*+**********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ************************************************************************************/

include_once 'modules/Vtiger/CRMEntity.php';

class Ddt extends Vtiger_CRMEntity {
	var $db, $log; // Used in class functions of CRMEntity
	var $table_name = 'green_ddt';
	var $table_index= 'ddtid';
	var $entity_table = "vtiger_crmentity";
	var $column_fields = Array();
	var $sortby_fields = Array();

	/**
	 * Mandatory table for supporting custom fields.
	 */
	var $customFieldTable = Array('green_ddtcf', 'ddtid');

	/**
	 * Mandatory for Saving, Include tables related to this module.
	 */
	var $tab_name = Array('vtiger_crmentity', 'green_ddt', 'green_ddtcf', 'vtiger_inventoryproductrel');

	/**
	 * Mandatory for Saving, Include tablename and tablekey columnname here.
	 */
	var $tab_name_index = Array(
		'vtiger_crmentity' => 'crmid',
		'green_ddt' => 'ddtid',
		'green_ddtcf'=>'ddtid',
		'vtiger_inventoryproductrel'=>'id');
	/**
	 * Mandatory for Listing (Related listview)
	 */
	var $list_fields = Array (
		/* Format: Field Label => Array(tablename, columnname) */
		// tablename should not have prefix 'vtiger_'
		'Soggetto' => Array('ddt', 'ddt'),
		'Assigned To' => Array('crmentity','smownerid')
	);
	var $list_fields_name = Array (
		/* Format: Field Label => fieldname */
		'Soggetto' => 'ddt',
		'Assigned To' => 'assigned_user_id',
	);

	// Make the field link to detail view
	var $list_link_field = 'ddt';

	// For Popup listview and UI type support
	var $search_fields = Array(
		/* Format: Field Label => Array(tablename, columnname) */
		// tablename should not have prefix 'vtiger_'
		'Soggetto' => Array('ddt', 'ddt'),
		'Assigned To' => Array('vtiger_crmentity','assigned_user_id'),
	);
	var $search_fields_name = Array (
		/* Format: Field Label => fieldname */
		'Soggetto' => 'ddt',
		'Assigned To' => 'assigned_user_id',
	);

	// For Popup window record selection
	var $popup_fields = Array ('ddt');

	// For Alphabetical search
	var $def_basicsearch_col = 'ddt';

	// Column value to use on detail view record text display
	var $def_detailview_recname = 'ddt';
	var $required_fields = Array('ddt'=>1);
	// Used when enabling/disabling the mandatory fields for the module.
	// Refers to vtiger_field.fieldname values.
	var $mandatory_fields = Array('ddt','createdtime' ,'modifiedtime', 'assigned_user_id');

	var $default_order_by = 'ddt';
	var $default_sort_order='ASC';
	var $isLineItemUpdate = true;

	function Ddt() {
		$this->log =LoggerManager::getLogger('Ddt');
		$this->db = PearDatabase::getInstance();
		$this->column_fields = getColumnFields('Ddt');
	}

	function save_module()
	{
		global $adb, $updateInventoryProductRel_deduct_stock;
		$updateInventoryProductRel_deduct_stock = false;
		//in ajax save we should not call this function, because this will delete all the existing product values
		if($_REQUEST['action'] != 'Ddtjax' && $_REQUEST['ajxaction'] != 'DETAILVIEW'
				&& $_REQUEST['action'] != 'MassEditSave' && $_REQUEST['action'] != 'ProcessDuplicates'
				&& $_REQUEST['action'] != 'SaveAjax' && $this->isLineItemUpdate != false) {

			$requestProductIdsList = $requestQuantitiesList = array();
			$totalNoOfProducts = $_REQUEST['totalProductCount'];
			for($i=1; $i<=$totalNoOfProducts; $i++) {
				$productId = $_REQUEST['hdnProductId'.$i];
				$requestProductIdsList[$productId] = $productId;
				$requestQuantitiesList[$productId] =  $_REQUEST['qty'.$i];
			}
			saveInventoryProductDetails($this, $module, $this->update_prod_stock);
			if ($this->mode != '') {
				$updateInventoryProductRel_deduct_stock = true;
			}
		}
	}

	/**
	* Invoked when special actions are performed on the module.
	* @param String Module name
	* @param String Event Type
	*/
	function vtlib_handler($moduleName, $eventType) {
		global $adb;
 		if($eventType == 'module.postinstall') {
			// TODO Handle actions after this module is installed.
			$moduleInstance = Vtiger_Module::getInstance($moduleName);
			$relatedto_contact = Vtiger_Module::getInstance('Accounts');
			$relatedto_contact->setRelatedList($moduleInstance, 'Ddt', array('add'),'get_related_list');
			$relatedto_contact = Vtiger_Module::getInstance('Quotes');
			$relatedto_contact->setRelatedList($moduleInstance, 'Ddt', array('add'),'get_related_list');
			$relatedto_contact = Vtiger_Module::getInstance('SalesOrder');
			$relatedto_contact->setRelatedList($moduleInstance, 'Ddt', array('add'),'get_related_list');
			// Module can't be downloaded from module manager
			$adb->query("UPDATE vtiger_tab SET customized=0 WHERE name='$moduleName'");
 			// Set sequence number
			$myCustomEntity = CRMEntity::getInstance($moduleName);
			$myCustomEntity->setModuleSeqNumber("configure",$moduleName,'DDT','1');
		} else if($eventType == 'module.disabled') {
			// TODO Handle actions before this module is being uninstalled.
		} else if($eventType == 'module.preuninstall') {
			// TODO Handle actions when this module is about to be deleted.
			$moduleInstance = Vtiger_Module::getInstance('Accounts');
			$moduleInstance->unsetRelatedList(Vtiger_Module::getInstance('Ddt'));
			$moduleInstance = Vtiger_Module::getInstance('Quotes');
			$moduleInstance->unsetRelatedList(Vtiger_Module::getInstance('Ddt'));
			$moduleInstance = Vtiger_Module::getInstance('SalesOrder');
			$moduleInstance->unsetRelatedList(Vtiger_Module::getInstance('Ddt'));
		} else if($eventType == 'module.preupdate') {
			// TODO Handle actions before this module is updated.
		} else if($eventType == 'module.postupdate') {
			// TODO Handle actions after this module is updated.
		}
 	}

	function insertIntoEntityTable($table_name, $module, $fileid = '')  {
		//Ignore relation table insertions while saving of the record
		if($table_name == 'vtiger_inventoryproductrel') {
			return;
		}
		parent::insertIntoEntityTable($table_name, $module, $fileid);
	}
}
