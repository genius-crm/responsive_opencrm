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

Class GreenTimeControl_Record_Model extends Vtiger_Record_Model {
	const recalculateStatus = 'Accepted';
	public function recalculateTimeOldValues($record_id, $data) {
		require_once 'data/VTEntityDelta.php';
		$relatedField = array('accountid','contactid','ticketid','projectid','projecttaskid','potentialid','servicecontractsid','quoteid','assetsid','salesorderid','calculationsid');
		$vtEntityDelta = new VTEntityDelta();
		$delta = $vtEntityDelta->getEntityDelta('GreenTimeControl', $record_id, true);
		$recalculateOldValue = false;
		foreach($relatedField as $key => $val){
			if (array_key_exists($val,$delta) && $delta[$val]['oldValue'] != 0 && $delta[$val]['currentValue'] == 0){
				$data->set($val,$delta[$val]['oldValue']);
				$recalculateOldValue = true;
			}
		}
		if($recalculateOldValue){
			GreenTimeControl_Record_Model::recalculateTimeControl($data);
		}
	}
	
	public function recalculateTimeControl($data) {
		$db = PearDatabase::getInstance();     
		//$assetsid = $data->get('assetsid');
		$ticketid = $data->get('ticketid');
		$potentialid=$data->get('potentialid');
		$projectid = $data->get('projectid');
		$projecttaskid = $data->get('projecttaskid');
		$servicecontractsid = $data->get('servicecontractsid');
		$salesorderid = $data->get('salesorderid');
		$quoteid = $data->get('quoteid');
		$calculationsid = $data->get('calculationsid');
		
		self::recalculateQuotes($quoteid);
		self::recalculateSalesOrder($salesorderid);
		self::recalculateProjectTask($projecttaskid);
		self::recalculateHelpDesk($ticketid);
		self::recalculateProject($projectid);
		self::recalculatePotentials($potentialid);
		self::recalculateServiceContracts($servicecontractsid);
		
		if( self::checkID($projecttaskid) ){
			$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $projecttaskid , 'ProjectTask' );
			$projectid = $ModuleNameInstance->get('projectid');
			if( self::checkID($projectid) ){
				self::recalculateProject( $projectid );
				$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $projectid , 'Project' );
				self::recalculateServiceContracts($ModuleNameInstance->get('servicecontractsid'));
			}
		}
		if( self::checkID($ticketid) ){
			$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $ticketid , 'HelpDesk' );
			$projectid = $ModuleNameInstance->get('projectid');
			if( self::checkID($projectid) ){
				self::recalculateProject( $projectid );
				$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $projectid , 'Project' );
				self::recalculateServiceContracts($ModuleNameInstance->get('servicecontractsid'));
			}
		}
		if( self::checkID($ticketid) ){
			$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $ticketid , 'HelpDesk' );
			self::recalculateServiceContracts( $ModuleNameInstance->get('servicecontractsid') );
		}
		if( self::checkID($quoteid) ){
			$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $quoteid , 'Quotes' );
			self::recalculatePotentials( $ModuleNameInstance->get('potential_id') );
		}
		if( self::checkID($salesorderid) ){
			$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $salesorderid , 'SalesOrder' );
			self::recalculatePotentials( $ModuleNameInstance->get('potential_id') );
		}
		if( self::checkID($calculationsid) ){
			$ModuleNameInstance = Vtiger_Record_Model::getInstanceById( $calculationsid , 'Calculations' );
			self::recalculatePotentials( $ModuleNameInstance->get('potentialid') );
		}
		// 4 pola na umowie // czas pod umowe , czas pod projekt (��czny czas) , czas pod zg�oszenie (��czny czas , kt�re nie pod projekt)
		// doda� walidacj� przy zapisie 
	}
	public function recalculateQuotes($QuotesID) {
		if( ! self::checkID($QuotesID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		$sum_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND quoteid = ?;", 
			array(0,self::recalculateStatus,$QuotesID) , true);
		$sum_time = number_format($db->query_result( $sum_result, 0, 'sum' ),2);
		$db->pquery( "UPDATE vtiger_quotes SET  sum_time = ? WHERE quoteid = ?;",
			array($sum_time,$QuotesID), true );
		return $sum_time;
	}
	public function recalculateSalesOrder($SalesOrderID) {
		if( ! self::checkID($SalesOrderID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		$sum_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND salesorderid = ?;", 
			array(0,self::recalculateStatus,$SalesOrderID) , true);
		$sum_time = number_format($db->query_result( $sum_result, 0, 'sum' ),2);    
		$db->pquery( "UPDATE vtiger_salesorder SET  sum_time = ? WHERE salesorderid = ?;",
			array($sum_time,$SalesOrderID), true );
		return $sum_time;
	}
	public function recalculateProjectTask($ProjectTaskID) {
		if( ! self::checkID($ProjectTaskID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		$sum_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND projecttaskid = ?;", 
			array(0,self::recalculateStatus,$ProjectTaskID) , true);
		$sum_time = number_format($db->query_result( $sum_result, 0, 'sum' ),2);
		$db->pquery( "UPDATE vtiger_projecttask SET sum_time = ? WHERE projecttaskid = ?;",
			array($sum_time,$ProjectTaskID), true );
		return $sum_time;
	}
	public function recalculateServiceContracts($ServiceContractsID) {
		if( ! self::checkID($ServiceContractsID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		$sum_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND servicecontractsid = ? AND projecttaskid = ? AND ticketid = ? AND projectid = ?;", 
			array(0,self::recalculateStatus,$ServiceContractsID,0,0,0) , true);
		$sum_time = number_format($db->query_result( $sum_result, 0, 'sum' ),2);
		//////// sum_time_h
		$sql_sum_time_h = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
			FROM vtiger_greentimecontrol 
			INNER JOIN vtiger_troubletickets ON vtiger_troubletickets.ticketid = vtiger_greentimecontrol.ticketid
			WHERE vtiger_greentimecontrol.deleted = ? 
			AND vtiger_greentimecontrol.ticketid <> ? 
			AND vtiger_greentimecontrol.projectid = ?
			AND greentimecontrol_status = ?
			AND vtiger_troubletickets.servicecontractsid = ?;';
		$sum_time_h_result = $db->pquery($sql_sum_time_h, array(0,0,0,self::recalculateStatus,$ServiceContractsID) , true);
		$sum_time_h = number_format($db->query_result( $sum_time_h_result, 0, 'sum' ),2);
		//////// sum_time_p
		$project_result = $db->pquery("SELECT projectid 
			FROM vtiger_project
			INNER JOIN vtiger_crmentity ON vtiger_crmentity.crmid = vtiger_project.projectid
			WHERE deleted = ? AND servicecontractsid = ?;",  
				array(0,$ServiceContractsID) , true);
		for($i = 0; $i < $db->num_rows($project_result); $i++){
			$ProjectID = $db->query_result( $project_result, $i, 'projectid' );
			$sum_time_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND projectid = ? AND projecttaskid = ? AND ticketid = ?;", 
				array(0,self::recalculateStatus,$ProjectID,0,0) , true);
			$sum_time_p += number_format($db->query_result( $sum_time_result, 0, 'sum' ),2);
			$sql_sum_time_h = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
							FROM vtiger_greentimecontrol 
							INNER JOIN vtiger_troubletickets ON vtiger_troubletickets.ticketid = vtiger_greentimecontrol.ticketid
							WHERE vtiger_greentimecontrol.deleted = ? 
							AND vtiger_greentimecontrol.ticketid <> ? 
							AND vtiger_greentimecontrol.projectid = ?
							AND vtiger_greentimecontrol.servicecontractsid = ?
							AND greentimecontrol_status = ?
							AND vtiger_troubletickets.projectid = ?;';
			$sum_time_h_result = $db->pquery($sql_sum_time_h, array(0,0,0,0,self::recalculateStatus,$ProjectID) , true);
			$sum_time_p += number_format($db->query_result( $sum_time_h_result, 0, 'sum' ),2);
			$sql_sum_time_pt = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
							FROM vtiger_greentimecontrol 
							INNER JOIN vtiger_projecttask ON vtiger_projecttask.projecttaskid = vtiger_greentimecontrol.projecttaskid
							WHERE vtiger_greentimecontrol.deleted = ? 
							AND vtiger_greentimecontrol.projecttaskid <> ? 
							AND vtiger_greentimecontrol.ticketid = ? 
							AND vtiger_greentimecontrol.projectid = ?
							AND vtiger_greentimecontrol.servicecontractsid = ?
							AND vtiger_greentimecontrol.greentimecontrol_status = ?
							AND vtiger_projecttask.projectid = ?;';
			$sum_time_pt_result = $db->pquery($sql_sum_time_pt, array(0,0,0,0,0,self::recalculateStatus,$ProjectID) , true);
			$sum_time_p += number_format($db->query_result( $sum_time_pt_result, 0, 'sum' ),2);
		}
		//////////////////
		//////// Sum
		$sum_time_all = $sum_time + $sum_time_h + $sum_time_p;
		$db->pquery( "UPDATE vtiger_servicecontracts SET sum_time = ?,sum_time_h = ?,sum_time_p = ?,sum_time_all = ? WHERE servicecontractsid = ?;",
			array($sum_time,$sum_time_h,$sum_time_p,$sum_time_all,$ServiceContractsID), true );
		return array($sum_time,$sum_time_h,$sum_time_p,$sum_time_all);
	}
	public function recalculatePotentials($PotentialsID) {
		if( ! self::checkID($PotentialsID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		//////// sum_time
		$sum_time_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND potentialid = ? AND salesorderid = ? AND quoteid = ? AND calculationsid = ?;", 
			array(0,self::recalculateStatus,$PotentialsID,0,0,0) , true);
		$sum_time = number_format($db->query_result( $sum_time_result, 0, 'sum' ),2);
		//////// sum_time_q
		$sql_sum_time_q = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_quotes ON vtiger_quotes.quoteid = vtiger_greentimecontrol.quoteid
						WHERE vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.quoteid <> ? 
						AND vtiger_greentimecontrol.calculationsid = ? 
						AND greentimecontrol_status = ?
						AND vtiger_quotes.potentialid = ?;';
		$sum_time_q_result = $db->pquery($sql_sum_time_q, array(0,0,0,0,self::recalculateStatus,$PotentialsID) , true);
		$sum_time_q = number_format($db->query_result( $sum_time_q_result, 0, 'sum' ),2);
		//////// sum_time_so
		$sql_sum_time_so = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_salesorder ON vtiger_salesorder.salesorderid = vtiger_greentimecontrol.salesorderid
						WHERE  vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.salesorderid <> ? 
						AND vtiger_greentimecontrol.quoteid = ? 
						AND vtiger_greentimecontrol.calculationsid = ?
						AND vtiger_greentimecontrol.greentimecontrol_status = ?
						AND vtiger_salesorder.potentialid = ?;';
		$sum_time_so_result = $db->pquery($sql_sum_time_so, array(0,0,0,0,0,self::recalculateStatus,$PotentialsID) , true);
		$sum_time_so = number_format($db->query_result( $sum_time_so_result, 0, 'sum' ),2);
		//////// sum_time_k
		$sql_sum_time_k = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_calculations ON vtiger_calculations.calculationsid = vtiger_greentimecontrol.calculationsid
						WHERE  vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.calculationsid <> ?
						AND vtiger_greentimecontrol.greentimecontrol_status = ?
						AND vtiger_calculations.potentialid = ?;';
		$sum_time_k_result = $db->pquery($sql_sum_time_k, array(0,0,self::recalculateStatus,$PotentialsID) , true);
		$sum_time_k = number_format($db->query_result( $sum_time_k_result, 0, 'sum' ),2);
		//////// Sum
		$sum_time_all = $sum_time + $sum_time_q + $sum_time_so + $sum_time_k;
		$db->pquery( "UPDATE vtiger_potential SET sum_time = ?,sum_time_k = ?,sum_time_q = ?,sum_time_so = ?,sum_time_all = ? WHERE potentialid = ?;",
			array($sum_time,$sum_time_k,$sum_time_q,$sum_time_so,$sum_time_all,$PotentialsID), true );
		return array($sum_time,$sum_time_q,$sum_time_so,$sum_time_all);
	}
	public function recalculateProject($ProjectID) {
		if( ! self::checkID($ProjectID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		//////// sum_time
		$sum_time_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND projectid = ? AND projecttaskid = ? AND ticketid = ?;", 
			array(0,self::recalculateStatus,$ProjectID,0,0) , true);
		$sum_time = number_format($db->query_result( $sum_time_result, 0, 'sum' ),2);
		//////// sum_time_h
		$sql_sum_time_h = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_troubletickets ON vtiger_troubletickets.ticketid = vtiger_greentimecontrol.ticketid
						WHERE vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.ticketid <> ? 
						AND greentimecontrol_status = ?
						AND vtiger_troubletickets.projectid = ?;';
		$sum_time_h_result = $db->pquery($sql_sum_time_h, array(0,0,self::recalculateStatus,$ProjectID) , true);
		$sum_time_h = number_format($db->query_result( $sum_time_h_result, 0, 'sum' ),2);
		//////// sum_time_pt
		$sql_sum_time_pt = 'SELECT SUM(vtiger_greentimecontrol.sum_time) AS sum 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_projecttask ON vtiger_projecttask.projecttaskid = vtiger_greentimecontrol.projecttaskid
						WHERE vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.projecttaskid <> ? 
						AND vtiger_greentimecontrol.ticketid = ? 
						AND vtiger_greentimecontrol.projectid = ?
						AND vtiger_greentimecontrol.greentimecontrol_status = ?
						AND vtiger_projecttask.projectid = ?;';
		$sum_time_pt_result = $db->pquery($sql_sum_time_pt, array(0,0,0,0,self::recalculateStatus,$ProjectID) , true);
		$sum_time_pt = number_format($db->query_result( $sum_time_pt_result, 0, 'sum' ),2);
		//////// Sum
		$sum_time_all = $sum_time + $sum_time_h + $sum_time_pt;
		$db->pquery( "UPDATE vtiger_project SET sum_time = ?,sum_time_h = ?,sum_time_pt = ?,sum_time_all = ? WHERE projectid = ?;",
			array($sum_time,$sum_time_h,$sum_time_pt,$sum_time_all,$ProjectID), true );
		return array($sum_time,$sum_time_h,$sum_time_pt,$sum_time_all);
	}
	public function recalculateHelpDesk($HelpDeskID) {
		if( ! self::checkID($HelpDeskID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		$sum_time = 0;
		$sum_result = $db->pquery("SELECT SUM(sum_time) as sum FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND ticketid = ?;", 
			array(0,self::recalculateStatus,$HelpDeskID) , true);
		$sum_time = number_format($db->query_result( $sum_result, 0, 'sum' ),2);
		$db->pquery( "UPDATE vtiger_troubletickets SET sum_time = ? WHERE ticketid = ?;",
			array($sum_time,$HelpDeskID), true );
		return $sum_time;
	}
	public function getProjectRelatedIDS($ProjectID) {
		if( ! self::checkID($ProjectID) ){ return false;}
		$db = PearDatabase::getInstance(); 
		//////// sum_time
		$projectIDS = array();
		$sum_time_result = $db->pquery("SELECT greentimecontrolid FROM vtiger_greentimecontrol WHERE deleted = ? AND greentimecontrol_status = ? AND projectid = ? AND projecttaskid = ? AND ticketid = ?;", 
			array(0,self::recalculateStatus,$ProjectID,0,0) , true);
		for($i = 0; $i < $db->num_rows($sum_time_result); $i++){
			$projectIDS[] = $db->query_result( $sum_time_result, $i, 'greentimecontrolid' );
		}
		//////// sum_time_h
		$ticketsIDS = array();
		$sql_sum_time_h = 'SELECT greentimecontrolid 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_troubletickets ON vtiger_troubletickets.ticketid = vtiger_greentimecontrol.ticketid
						WHERE vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.ticketid <> ? 
						AND greentimecontrol_status = ?
						AND vtiger_troubletickets.projectid = ?;';
		$sum_time_h_result = $db->pquery($sql_sum_time_h, array(0,0,self::recalculateStatus,$ProjectID) , true);
		for($i = 0; $i < $db->num_rows($sum_time_h_result); $i++){
			$ticketsIDS[] = $db->query_result( $sum_time_h_result, $i, 'greentimecontrolid' );
		}
		//////// sum_time_pt
		$taskIDS = array();
		$sql_sum_time_pt = 'SELECT greentimecontrolid 
						FROM vtiger_greentimecontrol 
						INNER JOIN vtiger_projecttask ON vtiger_projecttask.projecttaskid = vtiger_greentimecontrol.projecttaskid
						WHERE vtiger_greentimecontrol.deleted = ? 
						AND vtiger_greentimecontrol.projecttaskid <> ? 
						AND vtiger_greentimecontrol.ticketid = ? 
						AND vtiger_greentimecontrol.projectid = ?
						AND vtiger_greentimecontrol.greentimecontrol_status = ?
						AND vtiger_projecttask.projectid = ?;';
		$sum_time_pt_result = $db->pquery($sql_sum_time_pt, array(0,0,0,0,self::recalculateStatus,$ProjectID) , true);
		for($i = 0; $i < $db->num_rows($sum_time_pt_result); $i++){
			$taskIDS[] = $db->query_result( $sum_time_pt_result, $i, 'greentimecontrolid' );
		}
		return array($taskIDS, $ticketsIDS, $projectIDS);
	}
	public function checkID($ID) {
		if($ID == 0 || $ID == ''){
			return false;
		}
		return true;
	}
}