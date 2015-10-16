<?php
/*+***********************************************************************************************************************************
 * The contents of this file are subject to the YetiForce Public License Version 1.1 (the "License"); you may not use this file except
 * in compliance with the License.
 * Software distributed under the License is distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or implied.
 * See the License for the specific language governing rights and limitations under the License.
 * The Original Code is YetiForce.
 * The Initial Developer of the Original Code is YetiForce. Portions created by YetiForce are Copyright (C) www.yetiforce.com. 
 * All Rights Reserved.
 *************************************************************************************************************************************/
include_once 'modules/Vtiger/CRMEntity.php';

class GreenTimeControl extends Vtiger_CRMEntity {
    var $table_name = 'vtiger_greentimecontrol';
    var $table_index= 'greentimecontrolid';
    var $column_fields = Array();

    /** Indicator if this is a custom module or standard module */
    var $IsCustomModule = true;

    /**
     * Mandatory table for supporting custom fields.
     */
    var $customFieldTable = Array('vtiger_greentimecontrolcf', 'greentimecontrolid');

    /**
     * Mandatory for Saving, Include tables related to this module.
     */
    var $tab_name = Array('vtiger_crmentity', 'vtiger_greentimecontrol', 'vtiger_greentimecontrolcf');

    /**
     * Mandatory for Saving, Include tablename and tablekey columnname here.
     */
    var $tab_name_index = Array(
        'vtiger_crmentity' => 'crmid',
        'vtiger_greentimecontrol'   => 'greentimecontrolid',
        'vtiger_greentimecontrolcf' => 'greentimecontrolid');

    /**
     * Mandatory for Listing (Related listview)
     */
    var $list_fields = Array (
        /* Format: Field Label => Array(tablename, columnname) */
        // tablename should not have prefix 'vtiger_'
        'No.'=> Array('greentimecontrol', 'greentimecontrol_no'),
		'Assigned To' => Array('crmentity','smownerid'),
        'Created Time'=>Array('crmentity','createdtime'),
    );
    var $list_fields_name = Array(
        /* Format: Field Label => fieldname */
        'No.'=> 'greentimecontrol_no',
		'Assigned To' => 'assigned_user_id',
        'Created Time'=>'createdtime',
    );

    // Make the field link to detail view from list view (Fieldname)
    var $list_link_field = 'assigned_user_id';

    // For Popup listview and UI type support
    var $search_fields = Array(
        'No.'=> Array('greentimecontrol', 'greentimecontrol_no'),
		'Assigned To' => Array('crmentity','smownerid'),
        'Created Time'=>Array('crmentity','createdtime'),
    );
    var $search_fields_name = Array(
        'No.'=> 'greentimecontrol_no',
		'Assigned To' => 'assigned_user_id',
        'Created Time'=>'createdtime',
    );

    // For Popup window record selection
    var $popup_fields = Array('name');

    // Placeholder for sort fields - All the fields will be initialized for Sorting through initSortFields
    var $sortby_fields = Array();

    // For Alphabetical search
    var $def_basicsearch_col = 'name';

    // Column value to use on detail view record text display
    var $def_detailview_recname = 'name';

    // Required Information for enabling Import feature
    var $required_fields = Array('assigned_user_id'=>1);

    // Callback function list during Importing
    var $special_functions = Array('set_import_assigned_user');

    var $default_order_by = 'createdtime';
    var $default_sort_order='ASC';
    // Used when enabling/disabling the mandatory fields for the module.
    // Refers to vtiger_field.fieldname values.
    var $mandatory_fields = Array('createdtime', 'modifiedtime', 'assigned_user_id');

    /**
     * Invoked when special actions are performed on the module.
     * @param String Module name
     * @param String Event Type (module.postinstall, module.disabled, module.enabled, module.preuninstall)
     */
    function vtlib_handler($modulename, $event_type) {
		$registerLink = false;
		$displayLabel = 'Time Control';
		global $adb, $log;
        if($event_type == 'module.postinstall') {

			$tabid = getTabid($modulename);
			$adb->query( "UPDATE `vtiger_field` SET `summaryfield` = '1' WHERE `tabid` = $tabid AND `columnname` IN ('name','greentimecontrol_no','greentimecontrol_status','smownerid','date_start','time_start','time_end','due_date','sum_time','platnosc');", true );
			$ModuleInstance = CRMEntity::getInstance($modulename);
			$ModuleInstance->setModuleSeqNumber("configure",$modulename,'TC','1');
			include_once('vtlib/Vtiger/Module.php'); 

			$moduleInstance = Vtiger_Module::getInstance($modulename);
			$docelowy_Module = Vtiger_Module::getInstance('Accounts');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('Contacts');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('HelpDesk');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('Project');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('ProjectTask');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('ServiceContracts');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('Assets');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('SalesOrder');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('Potentials');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('Quotes');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
			$docelowy_Module = Vtiger_Module::getInstance('Leads');
			$docelowy_Module->setRelatedList($moduleInstance, 'GreenTimeControl', array('add'),'get_dependents_list');
		
			$modcommentsModuleInstance = Vtiger_Module::getInstance('ModComments');
			if($modcommentsModuleInstance && file_exists('modules/ModComments/ModComments.php')) {
				include_once 'modules/ModComments/ModComments.php';
			if(class_exists('ModComments')) ModComments::addWidgetTo(array('GreenTimeControl'));
			}
			
        } else if($event_type == 'module.disabled') {
			$moduleInstance = Vtiger_Module::getInstance($modulename);
			$moduleInstance->deleteLink('HEADERSCRIPT', 'TimeControl', 'layouts/vlayout/modules/GreenTimeControl/resources/Detail.js');
            // TODO Handle actions when this module is disabled.
        } else if($event_type == 'module.enabled') {
			$moduleInstance = Vtiger_Module::getInstance($modulename);
			$moduleInstance->addLink('HEADERSCRIPT', 'TimeControl', 'layouts/vlayout/modules/GreenTimeControl/resources/Detail.js');
            // TODO Handle actions when this module is enabled.
        } else if($event_type == 'module.preuninstall') {
            // TODO Handle actions when this module is about to be deleted.
        } else if($event_type == 'module.preupdate') {
            // TODO Handle actions before this module is updated.
        } else if($event_type == 'module.postupdate') {
		
        }
	
    }
}
?>