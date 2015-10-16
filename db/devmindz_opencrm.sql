-- phpMyAdmin SQL Dump
-- version 4.0.10.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 16, 2015 at 06:18 AM
-- Server version: 5.6.23
-- PHP Version: 5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `devmindz_opencrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflows` (
  `workflow_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `test` text,
  `execution_condition` int(11) NOT NULL,
  `defaultworkflow` int(1) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `filtersavedinnew` int(1) DEFAULT NULL,
  `schtypeid` int(10) DEFAULT NULL,
  `schdayofmonth` varchar(100) DEFAULT NULL,
  `schdayofweek` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(100) DEFAULT NULL,
  `schtime` varchar(50) DEFAULT NULL,
  `nexttrigger_time` datetime DEFAULT NULL,
  PRIMARY KEY (`workflow_id`),
  UNIQUE KEY `com_vtiger_workflows_idx` (`workflow_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `com_vtiger_workflows`
--

INSERT INTO `com_vtiger_workflows` (`workflow_id`, `module_name`, `summary`, `test`, `execution_condition`, `defaultworkflow`, `type`, `filtersavedinnew`, `schtypeid`, `schdayofmonth`, `schdayofweek`, `schannualdates`, `schtime`, `nexttrigger_time`) VALUES
(1, 'Invoice', 'UpdateInventoryProducts On Every Save', '[{"fieldname":"subject","operation":"does not contain","value":"`!`"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Accounts', 'Send Email to user when Notifyowner is True', '[{"fieldname":"notify_owner","operation":"is","value":"true:boolean"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'Contacts', 'Send Email to user when Notifyowner is True', '[{"fieldname":"notify_owner","operation":"is","value":"true:boolean"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Contacts', 'Send Email to user when Portal User is True', '[{"fieldname":"portal","operation":"is","value":"true:boolean"}]', 2, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Potentials', 'Send Email to users on Potential creation', NULL, 1, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Contacts', 'Workflow for Contact Creation or Modification', '', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'HelpDesk', 'Ticket Creation From Portal : Send Email to Record Owner and Contact', '[{"fieldname":"from_portal","operation":"is","value":1,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"from_portal","operation":"is","value":"1","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'HelpDesk', 'Send Email to Contact on Ticket Update', '[{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":0,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"ticketstatus","operation":"has changed to","value":"Closed","valuetype":"rawtext","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"solution","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"description","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Events', 'Workflow for Events when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Potentials', 'Calculate or Update forecast amount', '', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Events', 'Workflow for Events when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Calendar', 'Workflow for Calendar Todos when Send Notification is True', '[{"fieldname":"sendnotification","operation":"is","value":"true:boolean"}]', 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'HelpDesk', 'Comment Added From CRM : Send Email to Organization', '[{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"(parent_id : (Accounts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'PurchaseOrder', 'Update Inventory Products On Every Save', NULL, 3, 1, 'basic', 5, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'HelpDesk', 'Comment Added From Portal : Send Email to Record Owner', '[{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"1","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', '[{"fieldname":"(contact_id : (Contacts) portal)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'HelpDesk', 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', '[{"fieldname":"(contact_id : (Contacts) portal)","operation":"is","value":"1","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"_VT_add_comment","operation":"is added","value":"","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"},{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'HelpDesk', 'Send Email to Record Owner on Ticket Update', '[{"fieldname":"from_portal","operation":"is","value":0,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"ticketstatus","operation":"has changed to","value":"Closed","valuetype":"rawtext","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"solution","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"assigned_user_id","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"description","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Record Owner', '[{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'HelpDesk', 'Send Email to Organization on Ticket Update', '[{"fieldname":"(parent_id : (Accounts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":0,"valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":0},{"fieldname":"ticketstatus","operation":"has changed to","value":"Closed","valuetype":"rawtext","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"solution","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"},{"fieldname":"description","operation":"has changed","value":"","valuetype":"","joincondition":"or","groupjoin":"and","groupid":"1"}]', 3, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Organization', '[{"fieldname":"(parent_id : (Accounts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'HelpDesk', 'Ticket Creation From CRM : Send Email to Contact', '[{"fieldname":"(contact_id : (Contacts) emailoptout)","operation":"is","value":"0","valuetype":"rawtext","joincondition":"and","groupjoin":"and","groupid":"0"},{"fieldname":"from_portal","operation":"is","value":"0","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 1, 1, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'Leads', 'gggg', '[{"fieldname":"firstname","operation":"is","value":"nome","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 3, NULL, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Potentials', 'ffff', '[{"fieldname":"(related_to : (Accounts) email2)","operation":"is","value":"potential_notime_diffdays(a,b)","valuetype":"expression","joincondition":"","groupjoin":"and","groupid":"0"}]', 3, NULL, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Potentials', 'test', '[{"fieldname":"potentialname","operation":"is","value":"ee","valuetype":"rawtext","joincondition":"","groupjoin":"and","groupid":"0"}]', 6, NULL, 'basic', 6, 2, NULL, NULL, NULL, '01:30:00', '2015-10-06 01:30:00'),
(28, 'Potentials', 'fds', '[]', 3, NULL, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Potentials', 'test', '[]', 3, NULL, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Potentials', 'test', '[]', 3, NULL, 'basic', 6, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflows_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflows_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflows_seq`
--

INSERT INTO `com_vtiger_workflows_seq` (`id`) VALUES
(30);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `workflow_id` int(11) DEFAULT NULL,
  `summary` varchar(400) NOT NULL,
  `task` text,
  PRIMARY KEY (`task_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_idx` (`task_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Dumping data for table `com_vtiger_workflowtasks`
--

INSERT INTO `com_vtiger_workflowtasks` (`task_id`, `workflow_id`, `summary`, `task`) VALUES
(1, 1, '', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:1;s:7:"summary";s:0:"";s:6:"active";b:1;s:10:"methodName";s:15:"UpdateInventory";s:2:"id";i:1;}'),
(2, 2, 'An account has been created ', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"2";s:7:"summary";s:28:"An account has been created ";s:6:"active";s:1:"1";s:10:"methodName";s:11:"NotifyOwner";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:26:"Regarding Account Creation";s:7:"content";s:301:"An Account has been assigned to you on vtigerCRM<br>Details of account are :<br><br>AccountId:<b>$account_no</b><br>AccountName:<b>$accountname</b><br>Rating:<b>$rating</b><br>Industry:<b>$industry</b><br>AccountType:<b>$accounttype</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin";s:2:"id";s:1:"2";}'),
(3, 3, 'An contact has been created ', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"3";s:7:"summary";s:28:"An contact has been created ";s:6:"active";s:1:"1";s:10:"methodName";s:11:"NotifyOwner";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:26:"Regarding Contact Creation";s:7:"content";s:305:"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>Thank You<br>Admin";s:2:"id";s:1:"3";}'),
(4, 4, 'Email Customer Portal Login Details', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:4;s:7:"summary";s:35:"Email Customer Portal Login Details";s:6:"active";b:1;s:10:"methodName";s:22:"SendPortalLoginDetails";s:2:"id";i:4;}'),
(5, 5, 'An Potential has been created ', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"5";s:7:"summary";s:30:"An Potential has been created ";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:30:"Regarding Potential Assignment";s:7:"content";s:342:"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>$potential_no</b><br>Potential Name:<b>$potentialname</b><br>Amount:<b>$amount</b><br>Expected Close Date:<b>$closingdate ($_DATE_FORMAT_)</b><br>Type:<b>$opportunity_type</b><br><br><br>Description :$description<br><br>Thank You<br>Admin";s:2:"id";s:1:"5";}'),
(6, 6, 'An contact has been created ', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:1:"6";s:7:"summary";s:28:"An contact has been created ";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:28:"Regarding Contact Assignment";s:7:"content";s:384:"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>$contact_no</b><br>LastName:<b>$lastname</b><br>FirstName:<b>$firstname</b><br>Lead Source:<b>$leadsource</b><br>Department:<b>$department</b><br>Description:<b>$description</b><br><br><br>And <b>CustomerPortal Login Details</b> is sent to the EmailID :-$email<br><br>Thank You<br>Admin";s:2:"id";s:1:"6";}'),
(7, 7, 'Notify Related Contact when Ticket is created from Portal', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:57:"Notify Related Contact when Ticket is created from Portal";s:6:"active";s:1:"1";s:2:"id";s:1:"7";s:10:"workflowId";s:1:"7";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:93:"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:161:"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description";}'),
(10, 9, 'Send Email to Contact on Ticket Update', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:38:"Send Email to Contact on Ticket Update";s:6:"active";s:1:"1";s:2:"id";s:2:"10";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:636:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:1:"9";}'),
(13, 12, 'update forecast amount', 'O:18:"VTUpdateFieldsTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:12;s:7:"summary";s:22:"update forecast amount";s:6:"active";b:1;s:19:"field_value_mapping";s:95:"[{"fieldname":"forecast_amount","valuetype":"expression","value":"amount * probability / 100"}]";s:2:"id";i:13;}'),
(14, 13, 'Send Notification Email to Record Owner', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:2:"13";s:7:"summary";s:39:"Send Notification Email to Record Owner";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:17:"Event :  $subject";s:7:"content";s:771:"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Activity Notification Details:</b><br/>Subject             : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($(general : (__VtigerMeta__) usertimezone)) <br/>Status              : $eventstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Location            : $location <br/>Description         : $description";s:2:"id";s:2:"14";}'),
(15, 14, 'Send Notification Email to Record Owner', 'O:11:"VTEmailTask":8:{s:18:"executeImmediately";s:0:"";s:10:"workflowId";s:2:"14";s:7:"summary";s:39:"Send Notification Email to Record Owner";s:6:"active";s:1:"1";s:9:"recepient";s:36:"$(assigned_user_id : (Users) email1)";s:7:"subject";s:16:"Task :  $subject";s:7:"content";s:689:"$(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name) ,<br/><b>Task Notification Details:</b><br/>Subject : $subject<br/>Start date and time : $date_start ($(general : (__VtigerMeta__) usertimezone))<br/>End date and time   : $due_date ($_DATE_FORMAT_) <br/>Status              : $taskstatus <br/>Priority            : $taskpriority <br/>Related To          : $(parent_id : (Leads) lastname) $(parent_id : (Leads) firstname) $(parent_id : (Accounts) accountname) $(parent_id : (Potentials) potentialname) $(parent_id : (HelpDesk) ticket_title) $(parent_id : (Campaigns) campaignname) <br/>Contacts List       : $contact_id <br/>Description         : $description";s:2:"id";s:2:"15";}'),
(18, 16, 'Update Inventory Products', 'O:18:"VTEntityMethodTask":6:{s:18:"executeImmediately";b:1;s:10:"workflowId";i:16;s:7:"summary";s:25:"Update Inventory Products";s:6:"active";b:1;s:10:"methodName";s:15:"UpdateInventory";s:2:"id";i:18;}'),
(19, 17, 'Comment Added From Portal : Send Email to Record Owner', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:54:"Comment Added From Portal : Send Email to Record Owner";s:6:"active";s:1:"1";s:2:"id";s:2:"19";s:10:"workflowId";s:2:"17";s:9:"fromEmail";s:112:"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(contact_id : (Contacts) email)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:92:"Respond to Ticket ID## $(general : (__VtigerMeta__) recordId) ## in Customer Portal - URGENT";s:7:"content";s:329:"Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								Customer has provided the following additional information to your reply:<br><br>\r\n								<b>$lastComment</b><br><br>\r\n								Kindly respond to above ticket at the earliest.<br><br>\r\n								Regards<br>Support Administrator";}'),
(20, 18, 'Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:82:"Comment Added From CRM : Send Email to Contact, where Contact is not a Portal User";s:6:"active";s:1:"1";s:2:"id";s:2:"20";s:10:"workflowId";s:2:"18";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:525:"Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n							The Ticket is replied the details are :<br><br>\r\n							Ticket No : $ticket_no<br>\r\n							Status : $ticketstatus<br>\r\n							Category : $ticketcategories<br>\r\n							Severity : $ticketseverities<br>\r\n							Priority : $ticketpriorities<br><br>\r\n							Description : <br>$description<br><br>\r\n							Solution : <br>$solution<br>\r\n							The comments are : <br>\r\n							$allComments<br><br>\r\n							Regards<br>Support Administrator";}'),
(21, 19, 'Comment Added From CRM : Send Email to Contact, where Contact is Portal User', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:76:"Comment Added From CRM : Send Email to Contact, where Contact is Portal User";s:6:"active";s:1:"1";s:2:"id";s:2:"21";s:10:"workflowId";s:2:"19";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:554:"Ticket No : $ticket_no<br>\r\n										Ticket Id : $(general : (__VtigerMeta__) recordId)<br>\r\n										Subject : $ticket_title<br><br>\r\n										Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n										There is a reply to <b>$ticket_title</b> in the "Customer Portal" at VTiger.\r\n										You can use the following link to view the replies made:<br>\r\n										<a href="$(general : (__VtigerMeta__) portaldetailviewurl)">Ticket Details</a><br><br>\r\n										Thanks<br>$(general : (__VtigerMeta__) supportName)";}'),
(22, 15, 'Comment Added From CRM : Send Email to Organization', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:51:"Comment Added From CRM : Send Email to Organization";s:6:"active";s:1:"1";s:2:"id";s:2:"22";s:10:"workflowId";s:2:"15";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:34:",$(parent_id : (Accounts) email1),";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:601:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";}'),
(23, 7, 'Notify Record Owner when Ticket is created from Portal', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:54:"Notify Record Owner when Ticket is created from Portal";s:6:"active";s:1:"1";s:2:"id";s:2:"23";s:10:"workflowId";s:1:"7";s:9:"fromEmail";s:124:"$(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:93:"[From Portal] $ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:161:"Ticket No : $ticket_no<br>\r\n							  Ticket ID : $(general : (__VtigerMeta__) recordId)<br>\r\n							  Ticket Title : $ticket_title<br><br>\r\n							  $description";}'),
(24, 20, 'Send Email to Record Owner on Ticket Update', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:43:"Send Email to Record Owner on Ticket Update";s:6:"active";s:1:"1";s:2:"id";s:2:"24";s:10:"workflowId";s:2:"20";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:40:"Ticket Number : $ticket_no $ticket_title";s:7:"content";s:607:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";}'),
(25, 21, 'Ticket Creation From CRM : Send Email to Record Owner', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:53:"Ticket Creation From CRM : Send Email to Record Owner";s:6:"active";s:1:"1";s:2:"id";s:2:"25";s:10:"workflowId";s:2:"21";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:37:",$(assigned_user_id : (Users) email1)";s:7:"subject";s:40:"Ticket Number : $ticket_no $ticket_title";s:7:"content";s:607:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(assigned_user_id : (Users) last_name) $(assigned_user_id : (Users) first_name),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";}'),
(26, 22, 'Send Email to Organization on Ticket Update', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:43:"Send Email to Organization on Ticket Update";s:6:"active";s:1:"1";s:2:"id";s:2:"26";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(parent_id : (Accounts) email1)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:601:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:2:"22";}'),
(27, 23, 'Ticket Creation From CRM : Send Email to Organization', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:53:"Ticket Creation From CRM : Send Email to Organization";s:6:"active";s:1:"1";s:2:"id";s:2:"27";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(parent_id : (Accounts) email1)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:601:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(parent_id : (Accounts) accountname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:2:"23";}'),
(28, 24, 'Ticket Creation From CRM : Send Email to Contact', 'O:11:"VTEmailTask":9:{s:18:"executeImmediately";s:1:"0";s:7:"summary";s:48:"Ticket Creation From CRM : Send Email to Contact";s:6:"active";s:1:"1";s:2:"id";s:2:"28";s:9:"fromEmail";s:93:"$(general : (__VtigerMeta__) supportName)&lt;$(general : (__VtigerMeta__) supportEmailId)&gt;";s:9:"recepient";s:33:",$(contact_id : (Contacts) email)";s:7:"subject";s:79:"$ticket_no [ Ticket Id : $(general : (__VtigerMeta__) recordId) ] $ticket_title";s:7:"content";s:636:"Ticket ID : $(general : (__VtigerMeta__) recordId)<br>Ticket Title : $ticket_title<br><br>\r\n								Dear $(contact_id : (Contacts) lastname) $(contact_id : (Contacts) firstname),<br><br>\r\n								The Ticket is replied the details are :<br><br>\r\n								Ticket No : $ticket_no<br>\r\n								Status : $ticketstatus<br>\r\n								Category : $ticketcategories<br>\r\n								Severity : $ticketseverities<br>\r\n								Priority : $ticketpriorities<br><br>\r\n								Description : <br>$description<br><br>\r\n								Solution : <br>$solution<br>\r\n								The comments are : <br>\r\n								$allComments<br><br>\r\n								Regards<br>Support Administrator";s:10:"workflowId";s:2:"24";}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_entitymethod` (
  `workflowtasks_entitymethod_id` int(11) NOT NULL,
  `module_name` varchar(100) DEFAULT NULL,
  `method_name` varchar(100) DEFAULT NULL,
  `function_path` varchar(400) DEFAULT NULL,
  `function_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`workflowtasks_entitymethod_id`),
  UNIQUE KEY `com_vtiger_workflowtasks_entitymethod_idx` (`workflowtasks_entitymethod_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod` (`workflowtasks_entitymethod_id`, `module_name`, `method_name`, `function_path`, `function_name`) VALUES
(1, 'SalesOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(2, 'Invoice', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel'),
(3, 'Contacts', 'SendPortalLoginDetails', 'modules/Contacts/ContactsHandler.php', 'Contacts_sendCustomerPortalLoginDetails'),
(4, 'HelpDesk', 'NotifyOnPortalTicketCreation', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_nofifyOnPortalTicketCreation'),
(5, 'HelpDesk', 'NotifyOnPortalTicketComment', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyOnPortalTicketComment'),
(6, 'HelpDesk', 'NotifyOwnerOnTicketChange', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyOwnerOnTicketChange'),
(7, 'HelpDesk', 'NotifyParentOnTicketChange', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDesk_notifyParentOnTicketChange'),
(8, 'ModComments', 'CustomerCommentFromPortal', 'modules/ModComments/ModCommentsHandler.php', 'CustomerCommentFromPortal'),
(9, 'ModComments', 'TicketOwnerComments', 'modules/ModComments/ModCommentsHandler.php', 'TicketOwnerComments'),
(10, 'PurchaseOrder', 'UpdateInventory', 'include/InventoryHandler.php', 'handleInventoryProductRel');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_entitymethod_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_entitymethod_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtasks_entitymethod_seq`
--

INSERT INTO `com_vtiger_workflowtasks_entitymethod_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtasks_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtasks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtasks_seq`
--

INSERT INTO `com_vtiger_workflowtasks_seq` (`id`) VALUES
(28);

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtask_queue`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtask_queue` (
  `task_id` int(11) DEFAULT NULL,
  `entity_id` varchar(100) DEFAULT NULL,
  `do_after` int(11) DEFAULT NULL,
  `task_contents` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflowtask_queue`
--

INSERT INTO `com_vtiger_workflowtask_queue` (`task_id`, `entity_id`, `do_after`, `task_contents`) VALUES
(5, '13x3', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"admin","toEmail":"sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Regarding Potential Assignment","content":"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT1<\\/b><br>Potential Name:<b>testing<\\/b><br>Amount:<b>0.00<\\/b><br>Expected Close Date:<b>03-14-2015 (mm-dd-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin"}'),
(5, '13x21', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"admin","toEmail":"sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Regarding Potential Assignment","content":"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT2<\\/b><br>Potential Name:<b>test<\\/b><br>Amount:<b>1,000.00<\\/b><br>Expected Close Date:<b>04-11-2015 (mm-dd-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin"}'),
(5, '13x22', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"admin","toEmail":"sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Regarding Potential Assignment","content":"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT3<\\/b><br>Potential Name:<b>ritest<\\/b><br>Amount:<b>0.00<\\/b><br>Expected Close Date:<b>04-11-2015 (mm-dd-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin"}'),
(6, '12x23', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"admin","toEmail":"sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON1<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b><\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(6, '12x36', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"admin","toEmail":"sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON2<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(25, '17x37', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"your-support name","toEmail":",sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Ticket Number : TT1 test","content":"Ticket ID : 37<br>Ticket Title : test<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Administrator admin_vtiger,<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT1<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : Open<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : <br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br><br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator"}'),
(25, '17x46', 0, '{"fromEmail":"sumit@marketingmindz.in","fromName":"your-support name","toEmail":",sumit@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Ticket Number : TT2 intervenire","content":"Ticket ID : 46<br>Ticket Title : intervenire<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Administrator admin_vtiger,<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT2<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : Open<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : Small Problem<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : Major<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : Normal<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br>Testare template responsive<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"bajrang@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test<\\/b><br>Lead Source:<b><\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(25, '17x52', 0, '{"fromEmail":"bajrang@marketingmindz.in","fromName":"your-support name","toEmail":",bajrang@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Ticket Number : TT3 Prova","content":"Ticket ID : 52<br>Ticket Title : Prova<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Administrator admin_vtiger,<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT3<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : In attesa risposta<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : Normale<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br>Xhuidgiidfhjoov. Vgdyhb. Cho. Ddyiijnmmnvfagbczsx%''\\":,vhxzgji<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator"}'),
(25, '17x58', 0, '{"fromEmail":"bajrang@marketingmindz.in","fromName":"your-support name","toEmail":",bajrang@marketingmindz.in","ccEmail":"","bccEmail":"","subject":"Ticket Number : TT4 test 1","content":"Ticket ID : 58<br>Ticket Title : test 1<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDear Administrator admin_vtiger,<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tThe Ticket is replied the details are :<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tTicket No : TT4<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tStatus : Aperto<br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tCategory : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSeverity : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tPriority : <br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tDescription : <br><br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tSolution : <br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\t<br><br>\\r\\n\\t\\t\\t\\t\\t\\t\\t\\tRegards<br>Support Administrator"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test<\\/b><br>Lead Source:<b>Cold Call<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test<\\/b><br>Lead Source:<b>Cold Call<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(5, '13x71', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Potential Assignment","content":"An Potential has been assigned to you on vtigerCRM<br>Details of Potential are :<br><br>Potential No:<b>POT4<\\/b><br>Potential Name:<b>Ciao<\\/b><br>Amount:<b>12,333<\\/b><br>Expected Close Date:<b>15-10-2015 (dd-mm-yyyy)<\\/b><br>Type:<b><\\/b><br><br><br>Description :<br><br>Thank You<br>Admin"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test123<\\/b><br>Lead Source:<b>Cold Call<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test123<\\/b><br>Lead Source:<b>Self Generated<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test123<\\/b><br>Lead Source:<b>Existing Customer<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test123<\\/b><br>Lead Source:<b>Partner<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(6, '12x49', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON3<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test123<\\/b><br>Lead Source:<b>Conference<\\/b><br>Department:<b>test<\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-test@GMAIL.V<br><br>Thank You<br>Admin"}'),
(6, '12x36', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON2<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>test<\\/b><br>Lead Source:<b>Direct Mail<\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}'),
(6, '12x36', 0, '{"fromEmail":"info@opencrmitalia.com","fromName":"admin","toEmail":"info@opencrmitalia.com","ccEmail":"","bccEmail":"","subject":"Regarding Contact Assignment","content":"An Contact has been assigned to you on vtigerCRM<br>Details of Contact are :<br><br>Contact Id:<b>CON2<\\/b><br>LastName:<b>test<\\/b><br>FirstName:<b>testa<\\/b><br>Lead Source:<b>Direct Mail<\\/b><br>Department:<b><\\/b><br>Description:<b><\\/b><br><br><br>And <b>CustomerPortal Login Details<\\/b> is sent to the EmailID :-<br><br>Thank You<br>Admin"}');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflowtemplates`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflowtemplates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `title` varchar(400) DEFAULT NULL,
  `template` text,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_activatedonce`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_activatedonce` (
  `workflow_id` int(11) NOT NULL,
  `entity_id` int(11) NOT NULL,
  PRIMARY KEY (`workflow_id`,`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_tasktypes` (
  `id` int(11) NOT NULL,
  `tasktypename` varchar(255) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `classname` varchar(255) DEFAULT NULL,
  `classpath` varchar(255) DEFAULT NULL,
  `templatepath` varchar(255) DEFAULT NULL,
  `modules` varchar(500) DEFAULT NULL,
  `sourcemodule` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes`
--

INSERT INTO `com_vtiger_workflow_tasktypes` (`id`, `tasktypename`, `label`, `classname`, `classpath`, `templatepath`, `modules`, `sourcemodule`) VALUES
(1, 'VTEmailTask', 'Send Mail', 'VTEmailTask', 'modules/com_vtiger_workflow/tasks/VTEmailTask.inc', 'com_vtiger_workflow/taskforms/VTEmailTask.tpl', '{"include":[],"exclude":[]}', ''),
(2, 'VTEntityMethodTask', 'Invoke Custom Function', 'VTEntityMethodTask', 'modules/com_vtiger_workflow/tasks/VTEntityMethodTask.inc', 'com_vtiger_workflow/taskforms/VTEntityMethodTask.tpl', '{"include":[],"exclude":[]}', ''),
(3, 'VTCreateTodoTask', 'Create Todo', 'VTCreateTodoTask', 'modules/com_vtiger_workflow/tasks/VTCreateTodoTask.inc', 'com_vtiger_workflow/taskforms/VTCreateTodoTask.tpl', '{"include":["Leads","Accounts","Potentials","Contacts","HelpDesk","Campaigns","Quotes","PurchaseOrder","SalesOrder","Invoice"],"exclude":["Calendar","FAQ","Events"]}', ''),
(4, 'VTCreateEventTask', 'Create Event', 'VTCreateEventTask', 'modules/com_vtiger_workflow/tasks/VTCreateEventTask.inc', 'com_vtiger_workflow/taskforms/VTCreateEventTask.tpl', '{"include":["Leads","Accounts","Potentials","Contacts","HelpDesk","Campaigns"],"exclude":["Calendar","FAQ","Events"]}', ''),
(5, 'VTUpdateFieldsTask', 'Update Fields', 'VTUpdateFieldsTask', 'modules/com_vtiger_workflow/tasks/VTUpdateFieldsTask.inc', 'com_vtiger_workflow/taskforms/VTUpdateFieldsTask.tpl', '{"include":[],"exclude":[]}', ''),
(6, 'VTCreateEntityTask', 'Create Entity', 'VTCreateEntityTask', 'modules/com_vtiger_workflow/tasks/VTCreateEntityTask.inc', 'com_vtiger_workflow/taskforms/VTCreateEntityTask.tpl', '{"include":[],"exclude":[]}', ''),
(7, 'VTSMSTask', 'SMS Task', 'VTSMSTask', 'modules/com_vtiger_workflow/tasks/VTSMSTask.inc', 'com_vtiger_workflow/taskforms/VTSMSTask.tpl', '{"include":[],"exclude":[]}', 'SMSNotifier');

-- --------------------------------------------------------

--
-- Table structure for table `com_vtiger_workflow_tasktypes_seq`
--

CREATE TABLE IF NOT EXISTS `com_vtiger_workflow_tasktypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `com_vtiger_workflow_tasktypes_seq`
--

INSERT INTO `com_vtiger_workflow_tasktypes_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_account`
--

CREATE TABLE IF NOT EXISTS `vtiger_account` (
  `accountid` int(19) NOT NULL DEFAULT '0',
  `account_no` varchar(100) NOT NULL,
  `accountname` varchar(100) NOT NULL,
  `parentid` int(19) DEFAULT '0',
  `account_type` varchar(200) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `ownership` varchar(50) DEFAULT NULL,
  `siccode` varchar(50) DEFAULT NULL,
  `tickersymbol` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `otherphone` varchar(30) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `employees` int(10) DEFAULT '0',
  `emailoptout` varchar(3) DEFAULT '0',
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  PRIMARY KEY (`accountid`),
  KEY `account_account_type_idx` (`account_type`),
  KEY `email_idx` (`email1`,`email2`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_account`
--

INSERT INTO `vtiger_account` (`accountid`, `account_no`, `accountname`, `parentid`, `account_type`, `industry`, `annualrevenue`, `rating`, `ownership`, `siccode`, `tickersymbol`, `phone`, `otherphone`, `email1`, `email2`, `website`, `fax`, `employees`, `emailoptout`, `notify_owner`, `isconvertedfromlead`) VALUES
(2, 'ACC1', 'FDSFGDsdas', 0, '', 'Banking', '12.00000000', '', '', '', '', '0443367488', '', '', '', '', '', 0, '0', '0', '0'),
(75, 'ACC2', 'prova descrizione lunga', 0, '', '', '0.00000000', '', '', '', '', '', '', '', '', '', '', 0, '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountbillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountbillads` (
  `accountaddressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accountbillads`
--

INSERT INTO `vtiger_accountbillads` (`accountaddressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(2, '', '', '', '', '', ''),
(75, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountrating`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountrating` (
  `accountratingid` int(19) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`accountratingid`),
  UNIQUE KEY `accountrating_rating_idx` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountscf` (
  `accountid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`accountid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accountscf`
--

INSERT INTO `vtiger_accountscf` (`accountid`) VALUES
(2),
(75);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accountshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_accountshipads` (
  `accountaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`accountaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accountshipads`
--

INSERT INTO `vtiger_accountshipads` (`accountaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_pobox`, `ship_street`) VALUES
(2, '', '', '', '', '', ''),
(75, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype`
--

CREATE TABLE IF NOT EXISTS `vtiger_accounttype` (
  `accounttypeid` int(19) NOT NULL AUTO_INCREMENT,
  `accounttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`accounttypeid`),
  UNIQUE KEY `accounttype_accounttype_idx` (`accounttype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_accounttype`
--

INSERT INTO `vtiger_accounttype` (`accounttypeid`, `accounttype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Analyst', 1, 2, 1),
(3, 'Competitor', 1, 3, 2),
(4, 'Customer', 1, 4, 3),
(5, 'Integrator', 1, 5, 4),
(6, 'Investor', 1, 6, 5),
(7, 'Partner', 1, 7, 6),
(8, 'Press', 1, 8, 7),
(9, 'Prospect', 1, 9, 8),
(10, 'Reseller', 1, 10, 9),
(11, 'Other', 1, 11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_accounttype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_accounttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_accounttype_seq`
--

INSERT INTO `vtiger_accounttype_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_actionmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_actionmapping` (
  `actionid` int(19) NOT NULL,
  `actionname` varchar(200) NOT NULL,
  `securitycheck` int(19) DEFAULT NULL,
  PRIMARY KEY (`actionid`,`actionname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_actionmapping`
--

INSERT INTO `vtiger_actionmapping` (`actionid`, `actionname`, `securitycheck`) VALUES
(0, 'Save', 0),
(0, 'SavePriceBook', 1),
(0, 'SaveVendor', 1),
(1, 'DetailViewAjax', 1),
(1, 'EditView', 0),
(1, 'PriceBookEditView', 1),
(1, 'QuickCreate', 1),
(1, 'VendorEditView', 1),
(2, 'Delete', 0),
(2, 'DeletePriceBook', 1),
(2, 'DeleteVendor', 1),
(3, 'index', 0),
(3, 'Popup', 1),
(4, 'DetailView', 0),
(4, 'PriceBookDetailView', 1),
(4, 'TagCloud', 1),
(4, 'VendorDetailView', 1),
(5, 'Import', 0),
(6, 'Export', 0),
(8, 'Merge', 0),
(9, 'ConvertLead', 0),
(10, 'DuplicatesHandling', 0),
(11, 'ReceiveIncomingCalls', 0),
(12, 'MakeOutgoingCalls', 0),
(13, 'Print', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL,
  `semodule` varchar(20) DEFAULT NULL,
  `activitytype` varchar(200) NOT NULL,
  `date_start` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `time_start` varchar(50) DEFAULT NULL,
  `time_end` varchar(50) DEFAULT NULL,
  `sendnotification` varchar(3) NOT NULL DEFAULT '0',
  `duration_hours` varchar(200) DEFAULT NULL,
  `duration_minutes` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `eventstatus` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `location` varchar(150) DEFAULT NULL,
  `notime` varchar(3) NOT NULL DEFAULT '0',
  `visibility` varchar(50) NOT NULL DEFAULT 'all',
  `recurringtype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`activityid`),
  KEY `activity_activityid_subject_idx` (`activityid`,`subject`),
  KEY `activity_activitytype_date_start_idx` (`activitytype`,`date_start`),
  KEY `activity_date_start_due_date_idx` (`date_start`,`due_date`),
  KEY `activity_date_start_time_start_idx` (`date_start`,`time_start`),
  KEY `activity_eventstatus_idx` (`eventstatus`),
  KEY `activity_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activity`
--

INSERT INTO `vtiger_activity` (`activityid`, `subject`, `semodule`, `activitytype`, `date_start`, `due_date`, `time_start`, `time_end`, `sendnotification`, `duration_hours`, `duration_minutes`, `status`, `eventstatus`, `priority`, `location`, `notime`, `visibility`, `recurringtype`) VALUES
(4, 'grgh', NULL, 'Call', '2015-03-20', '2015-03-25', '08:29:00', '10:00:00', '0', '0', '', NULL, 'Planned', '', '', '0', '', ''),
(8, 'test', NULL, 'Call', '2015-03-29', '2015-03-29', '19:15:00', '20:20:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(9, 'test1111', NULL, 'Meeting', '2015-03-31', '2015-03-31', '04:00:00', '11:30:00', '0', '0', '0', NULL, 'Planned', '', '', '0', 'Public', '--None--'),
(10, 'test1', NULL, 'Call', '2015-03-31', '2015-03-31', '04:15:00', '10:00:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(11, 'test', NULL, 'Call', '2015-03-29', '2015-03-29', '18:30:00', '20:30:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(12, 'test', NULL, 'Call', '2015-03-29', '2015-03-29', '19:30:00', '21:15:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(13, 'test', NULL, 'Meeting', '2015-03-30', '2015-03-30', '19:30:00', '21:30:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(14, 'test', NULL, 'Call', '2015-03-29', '2015-03-29', '18:30:00', '22:30:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(15, 'test', NULL, 'Call', '2015-03-29', '2015-03-29', '18:30:00', '19:00:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(16, 'testtt', NULL, 'Call', '2015-03-30', '2015-03-30', '00:30:00', '01:30:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(17, 'test', NULL, 'Call', '2015-03-29', '2015-03-29', '18:30:00', '19:00:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(18, 'vai', NULL, 'Call', '2015-03-29', '2015-03-30', '21:45:00', '02:00:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(20, 'test', NULL, 'Call', '2015-04-10', '2015-04-10', '08:24:00', '08:29:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(32, 'test', NULL, 'Call', '2015-04-12', '2015-04-12', '19:00:00', '19:05:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(33, 'test', NULL, 'Call', '2015-04-13', '2015-04-13', '18:45:00', '21:00:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(34, 'test', NULL, 'Call', '2015-04-14', '2015-04-14', '08:45:00', '11:00:00', '0', '0', '0', NULL, 'Planned', '', '', '0', 'Public', '--None--'),
(35, 'cg', NULL, 'Call', '2015-04-14', '2015-04-14', '10:00:00', '10:30:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(40, 'ghjkhy', NULL, 'Call', '2015-04-16', '2015-04-16', '11:30:00', '11:35:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(41, 'test', NULL, 'Call', '2015-04-16', '2015-04-17', '23:30:00', '11:35:00', '0', '0', '0', NULL, 'Planned', '', '', '0', 'Public', '--None--'),
(42, 'test', NULL, 'Call', '2015-04-17', '2015-04-17', '14:30:00', '14:35:00', '0', '0', '0', NULL, 'Planned', '', '', '0', 'Public', '--None--'),
(43, 'nfgn2pm', NULL, 'Call', '2015-04-20', '2015-04-20', '08:30:00', '08:35:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(44, 'nfgn', NULL, 'Call', '2015-04-20', '2015-04-20', '19:30:00', '19:35:00', '0', '0', '', NULL, 'Planned', '', '', '0', 'Public', ''),
(48, 'test template', NULL, 'Task', '2015-04-20', '2015-04-20', '08:20:00', '', '0', '0', '0', 'In Progress', '', '', '', '0', 'Private', ''),
(54, 'prova', NULL, 'Call', '2015-09-11', '2015-09-11', '08:10:00', '10:30:00', '0', '2', '20', NULL, 'Planned', '', '', '0', 'Private', '--None--'),
(55, 'vhjv', NULL, 'Meeting', '2015-09-08', '2015-09-08', '23:00:00', '23:30:00', '0', '0', '30', NULL, 'Held', '', '', '0', 'Public', ''),
(59, 'test', NULL, 'Call', '2015-09-14', '2015-09-14', '07:00:00', '08:15:00', '0', '0', '30', NULL, 'Planned', '', '', '0', 'Public', ''),
(60, 'test', NULL, 'Meeting', '2015-09-14', '2015-09-14', '23:15:00', '23:45:00', '0', '0', '30', NULL, 'Planned', '', '', '0', 'Public', ''),
(62, 'test', NULL, 'Call', '2015-09-23', '2015-09-30', '13:09:00', '13:45:00', '0', '168', '51', NULL, 'Planned', '', '', '0', 'Private', ''),
(66, 'test', NULL, 'Call', '2015-09-24', '2015-09-24', '13:33:00', '14:03:00', '0', '0', '30', NULL, 'Planned', '', '', '0', 'Private', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitycf`
--

CREATE TABLE IF NOT EXISTS `vtiger_activitycf` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activitycf`
--

INSERT INTO `vtiger_activitycf` (`activityid`) VALUES
(4),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(20),
(32),
(33),
(34),
(35),
(40),
(41),
(42),
(43),
(44),
(48),
(54),
(55),
(59),
(60),
(62),
(66);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activityproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_activityproductrel` (
  `activityid` int(19) NOT NULL DEFAULT '0',
  `productid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`activityid`,`productid`),
  KEY `activityproductrel_activityid_idx` (`activityid`),
  KEY `activityproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype`
--

CREATE TABLE IF NOT EXISTS `vtiger_activitytype` (
  `activitytypeid` int(19) NOT NULL AUTO_INCREMENT,
  `activitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`activitytypeid`),
  UNIQUE KEY `activitytype_activitytype_idx` (`activitytype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_activitytype`
--

INSERT INTO `vtiger_activitytype` (`activitytypeid`, `activitytype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Call', 0, 12, 0),
(2, 'Meeting', 0, 13, 1),
(3, 'Mobile Call', 0, 321, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activitytype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_activitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activitytype_seq`
--

INSERT INTO `vtiger_activitytype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_reminder` (
  `activity_id` int(11) NOT NULL,
  `reminder_time` int(11) NOT NULL,
  `reminder_sent` int(2) NOT NULL,
  `recurringid` int(19) NOT NULL,
  PRIMARY KEY (`activity_id`,`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_reminder_popup`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_reminder_popup` (
  `reminderid` int(19) NOT NULL AUTO_INCREMENT,
  `semodule` varchar(100) NOT NULL,
  `recordid` int(19) NOT NULL,
  `date_start` date NOT NULL,
  `time_start` varchar(100) NOT NULL,
  `status` int(2) NOT NULL,
  PRIMARY KEY (`reminderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `vtiger_activity_reminder_popup`
--

INSERT INTO `vtiger_activity_reminder_popup` (`reminderid`, `semodule`, `recordid`, `date_start`, `time_start`, `status`) VALUES
(1, 'Calendar', 4, '2015-03-20', '08:29:00', 0),
(2, 'Calendar', 8, '2015-03-29', '19:00:00', 1),
(3, 'Calendar', 9, '2015-03-31', '07:00:00', 1),
(4, 'Events', 9, '2015-03-31', '04:00:00', 1),
(5, 'Calendar', 10, '2015-03-31', '04:15:00', 1),
(6, 'Calendar', 11, '2015-03-29', '18:30:00', 1),
(7, 'Calendar', 12, '2015-03-29', '19:30:00', 1),
(8, 'Calendar', 13, '2015-03-30', '19:30:00', 1),
(9, 'Calendar', 14, '2015-03-29', '18:30:00', 1),
(10, 'Calendar', 15, '2015-03-29', '18:30:00', 1),
(11, 'Calendar', 16, '2015-03-30', '00:30:00', 1),
(12, 'Calendar', 17, '2015-03-29', '18:30:00', 1),
(13, 'Calendar', 18, '2015-03-29', '21:45:00', 0),
(14, 'Calendar', 20, '2015-04-10', '08:24:00', 1),
(15, 'Calendar', 32, '2015-04-12', '19:00:00', 1),
(16, 'Calendar', 33, '2015-04-13', '18:45:00', 1),
(17, 'Calendar', 34, '2015-04-14', '08:45:00', 1),
(18, 'Calendar', 35, '2015-04-14', '10:00:00', 1),
(19, 'Calendar', 40, '2015-04-16', '11:30:00', 1),
(20, 'Events', 34, '2015-04-14', '08:45:00', 1),
(21, 'Calendar', 41, '2015-04-17', '11:30:00', 1),
(22, 'Events', 41, '2015-04-16', '23:30:00', 1),
(23, 'Events', 42, '2015-04-17', '14:30:00', 1),
(24, 'Calendar', 43, '2015-04-20', '08:30:00', 1),
(25, 'Calendar', 44, '2015-04-20', '19:30:00', 1),
(26, 'Calendar', 48, '2015-04-20', '08:20:00', 1),
(27, 'Events', 54, '2015-09-11', '08:10:00', 0),
(28, 'Calendar', 55, '2015-09-08', '23:00:00', 0),
(29, 'Calendar', 59, '2015-09-14', '07:00:00', 1),
(30, 'Calendar', 60, '2015-09-14', '23:15:00', 0),
(31, 'Calendar', 62, '2015-09-23', '13:09:00', 1),
(32, 'Calendar', 66, '2015-09-24', '13:33:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_view` (
  `activity_viewid` int(19) NOT NULL AUTO_INCREMENT,
  `activity_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`activity_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_activity_view`
--

INSERT INTO `vtiger_activity_view` (`activity_viewid`, `activity_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'This Week', 1, 1),
(3, 'This Month', 2, 1),
(4, 'This Year', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_activity_view_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_activity_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_activity_view_seq`
--

INSERT INTO `vtiger_activity_view_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_announcement`
--

CREATE TABLE IF NOT EXISTS `vtiger_announcement` (
  `creatorid` int(19) NOT NULL,
  `announcement` text,
  `title` varchar(255) DEFAULT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`creatorid`),
  KEY `announcement_creatorid_idx` (`creatorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assets`
--

CREATE TABLE IF NOT EXISTS `vtiger_assets` (
  `assetsid` int(11) NOT NULL,
  `asset_no` varchar(30) NOT NULL,
  `account` int(19) DEFAULT NULL,
  `product` int(19) NOT NULL,
  `serialnumber` varchar(200) DEFAULT NULL,
  `datesold` date DEFAULT NULL,
  `dateinservice` date DEFAULT NULL,
  `assetstatus` varchar(200) DEFAULT 'In Service',
  `tagnumber` varchar(300) DEFAULT NULL,
  `invoiceid` int(19) DEFAULT NULL,
  `shippingmethod` varchar(200) DEFAULT NULL,
  `shippingtrackingnumber` varchar(200) DEFAULT NULL,
  `assetname` varchar(100) DEFAULT NULL,
  `contact` int(19) DEFAULT NULL,
  PRIMARY KEY (`assetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_assetscf` (
  `assetsid` int(19) NOT NULL,
  PRIMARY KEY (`assetsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_assetstatus` (
  `assetstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `assetstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`assetstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_assetstatus`
--

INSERT INTO `vtiger_assetstatus` (`assetstatusid`, `assetstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'In Service', 1, 235, 1),
(2, 'Out-of-service', 1, 236, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_assetstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_assetstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_assetstatus_seq`
--

INSERT INTO `vtiger_assetstatus_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asterisk`
--

CREATE TABLE IF NOT EXISTS `vtiger_asterisk` (
  `server` varchar(30) DEFAULT NULL,
  `port` varchar(30) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskextensions`
--

CREATE TABLE IF NOT EXISTS `vtiger_asteriskextensions` (
  `userid` int(11) DEFAULT NULL,
  `asterisk_extension` varchar(50) DEFAULT NULL,
  `use_asterisk` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_asteriskextensions`
--

INSERT INTO `vtiger_asteriskextensions` (`userid`, `asterisk_extension`, `use_asterisk`) VALUES
(1, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL),
(7, NULL, NULL),
(8, NULL, NULL),
(9, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingcalls`
--

CREATE TABLE IF NOT EXISTS `vtiger_asteriskincomingcalls` (
  `from_number` varchar(50) DEFAULT NULL,
  `from_name` varchar(50) DEFAULT NULL,
  `to_number` varchar(50) DEFAULT NULL,
  `callertype` varchar(30) DEFAULT NULL,
  `flag` int(19) DEFAULT NULL,
  `timer` int(19) DEFAULT NULL,
  `refuid` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_asteriskincomingevents`
--

CREATE TABLE IF NOT EXISTS `vtiger_asteriskincomingevents` (
  `uid` varchar(255) NOT NULL,
  `channel` varchar(100) DEFAULT NULL,
  `from_number` bigint(20) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `to_number` bigint(20) DEFAULT NULL,
  `callertype` varchar(100) DEFAULT NULL,
  `timer` int(20) DEFAULT NULL,
  `flag` varchar(3) DEFAULT NULL,
  `pbxrecordid` int(19) DEFAULT NULL,
  `relcrmid` int(19) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachments`
--

CREATE TABLE IF NOT EXISTS `vtiger_attachments` (
  `attachmentsid` int(19) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `type` varchar(100) DEFAULT NULL,
  `path` text,
  `subject` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`attachmentsid`),
  KEY `attachments_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_attachments`
--

INSERT INTO `vtiger_attachments` (`attachmentsid`, `name`, `description`, `type`, `path`, `subject`) VALUES
(57, 'prova.txt', NULL, 'text/plain', 'storage/2015/September/week2/', NULL),
(70, 'converting.jpg', '', 'image/jpeg', 'storage/2015/September/week5/', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder`
--

CREATE TABLE IF NOT EXISTS `vtiger_attachmentsfolder` (
  `folderid` int(19) NOT NULL AUTO_INCREMENT,
  `foldername` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `createdby` int(19) NOT NULL,
  `sequence` int(19) DEFAULT NULL,
  PRIMARY KEY (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_attachmentsfolder`
--

INSERT INTO `vtiger_attachmentsfolder` (`folderid`, `foldername`, `description`, `createdby`, `sequence`) VALUES
(1, 'Default', 'This is a Default Folder', 1, 1),
(2, 'test', 'test', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_attachmentsfolder_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_attachmentsfolder_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_attachmentsfolder_seq`
--

INSERT INTO `vtiger_attachmentsfolder_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_audit_trial`
--

CREATE TABLE IF NOT EXISTS `vtiger_audit_trial` (
  `auditid` int(19) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  `module` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `recordid` varchar(20) DEFAULT NULL,
  `actiondate` datetime DEFAULT NULL,
  PRIMARY KEY (`auditid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks`
--

CREATE TABLE IF NOT EXISTS `vtiger_blocks` (
  `blockid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `blocklabel` varchar(100) NOT NULL,
  `sequence` int(10) DEFAULT NULL,
  `show_title` int(2) DEFAULT NULL,
  `visible` int(2) NOT NULL DEFAULT '0',
  `create_view` int(2) NOT NULL DEFAULT '0',
  `edit_view` int(2) NOT NULL DEFAULT '0',
  `detail_view` int(2) NOT NULL DEFAULT '0',
  `display_status` int(1) NOT NULL DEFAULT '1',
  `iscustom` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`blockid`),
  KEY `block_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_blocks`
--

INSERT INTO `vtiger_blocks` (`blockid`, `tabid`, `blocklabel`, `sequence`, `show_title`, `visible`, `create_view`, `edit_view`, `detail_view`, `display_status`, `iscustom`) VALUES
(1, 2, 'LBL_OPPORTUNITY_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(2, 2, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(3, 2, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(4, 4, 'LBL_CONTACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(5, 4, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(6, 4, 'LBL_CUSTOMER_PORTAL_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(7, 4, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(8, 4, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(9, 6, 'LBL_ACCOUNT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(10, 6, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(11, 6, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(12, 6, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(13, 7, 'LBL_LEAD_INFORMATION', 1, 0, 0, 0, 0, 0, 0, 0),
(14, 7, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(15, 7, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(16, 7, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(17, 8, 'LBL_NOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(18, 8, 'LBL_FILE_INFORMATION', 3, 1, 0, 0, 0, 0, 1, 0),
(19, 9, 'LBL_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(20, 9, 'LBL_DESCRIPTION_INFORMATION', 2, 1, 0, 0, 0, 0, 1, 0),
(21, 10, 'LBL_EMAIL_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(22, 10, 'Emails_Block1', 2, 1, 0, 0, 0, 0, 1, 0),
(23, 10, 'Emails_Block2', 3, 1, 0, 0, 0, 0, 1, 0),
(24, 10, 'Emails_Block3', 4, 1, 0, 0, 0, 0, 1, 0),
(25, 13, 'LBL_TICKET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(26, 13, '', 2, 1, 0, 0, 0, 0, 1, 0),
(27, 13, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(28, 13, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(29, 13, 'LBL_TICKET_RESOLUTION', 5, 0, 0, 1, 0, 0, 1, 0),
(30, 13, 'LBL_COMMENTS', 6, 0, 0, 1, 0, 0, 1, 0),
(31, 14, 'LBL_PRODUCT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(32, 14, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(33, 14, 'LBL_STOCK_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(34, 14, 'LBL_CUSTOM_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(35, 14, 'LBL_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(36, 14, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(37, 15, 'LBL_FAQ_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(38, 15, 'LBL_COMMENT_INFORMATION', 4, 0, 0, 1, 0, 0, 1, 0),
(39, 16, 'LBL_EVENT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(40, 16, 'LBL_REMINDER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(41, 16, 'LBL_DESCRIPTION_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(42, 18, 'LBL_VENDOR_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(43, 18, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(44, 18, 'LBL_VENDOR_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(45, 18, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(46, 19, 'LBL_PRICEBOOK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(47, 19, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(48, 19, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(49, 20, 'LBL_QUOTE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(50, 20, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(51, 20, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(52, 20, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(53, 20, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(54, 20, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(55, 21, 'LBL_PO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(56, 21, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(57, 21, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(58, 21, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(59, 21, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(60, 21, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(61, 22, 'LBL_SO_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(62, 22, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(63, 22, 'LBL_ADDRESS_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(64, 22, 'LBL_RELATED_PRODUCTS', 5, 0, 0, 0, 0, 0, 1, 0),
(65, 22, 'LBL_TERMS_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(66, 22, 'LBL_DESCRIPTION_INFORMATION', 7, 0, 0, 0, 0, 0, 1, 0),
(67, 23, 'LBL_INVOICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(68, 23, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(69, 23, 'LBL_ADDRESS_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(70, 23, 'LBL_RELATED_PRODUCTS', 4, 0, 0, 0, 0, 0, 1, 0),
(71, 23, 'LBL_TERMS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(72, 23, 'LBL_DESCRIPTION_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(73, 4, 'LBL_IMAGE_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(74, 26, 'LBL_CAMPAIGN_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(75, 26, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(76, 26, 'LBL_EXPECTATIONS_AND_ACTUALS', 3, 0, 0, 0, 0, 0, 1, 0),
(77, 29, 'LBL_USERLOGIN_ROLE', 1, 0, 0, 0, 0, 0, 1, 0),
(78, 29, 'LBL_CURRENCY_CONFIGURATION', 3, 0, 0, 0, 0, 0, 1, 0),
(79, 29, 'LBL_MORE_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(80, 29, 'LBL_ADDRESS_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(81, 26, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(82, 29, 'LBL_USER_IMAGE_INFORMATION', 5, 0, 0, 0, 0, 0, 1, 0),
(83, 29, 'LBL_USER_ADV_OPTIONS', 6, 0, 0, 0, 0, 0, 1, 0),
(84, 8, 'LBL_DESCRIPTION', 2, 0, 0, 0, 0, 0, 1, 0),
(85, 22, 'Recurring Invoice Information', 2, 0, 0, 0, 0, 0, 1, 0),
(86, 9, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(87, 16, 'LBL_CUSTOM_INFORMATION', 6, 0, 0, 0, 0, 0, 1, 0),
(88, 34, 'LBL_PBXMANAGER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(89, 35, 'LBL_SERVICE_CONTRACT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(90, 35, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(91, 36, 'LBL_SERVICE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(92, 36, 'LBL_PRICING_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(93, 36, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(94, 36, 'LBL_DESCRIPTION_INFORMATION', 4, 0, 0, 0, 0, 0, 1, 0),
(95, 38, 'LBL_ASSET_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(96, 38, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(97, 38, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(98, 42, 'LBL_MODCOMMENTS_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(99, 42, 'LBL_OTHER_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(100, 42, 'LBL_CUSTOM_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(101, 43, 'LBL_PROJECT_MILESTONE_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(102, 43, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(103, 43, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(104, 44, 'LBL_PROJECT_TASK_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(105, 44, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(106, 44, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(107, 45, 'LBL_PROJECT_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(108, 45, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(109, 45, 'LBL_DESCRIPTION_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(110, 47, 'LBL_SMSNOTIFIER_INFORMATION', 1, 0, 0, 0, 0, 0, 1, 0),
(111, 47, 'LBL_CUSTOM_INFORMATION', 2, 0, 0, 0, 0, 0, 1, 0),
(112, 47, 'StatusInformation', 3, 0, 0, 0, 0, 0, 1, 0),
(113, 23, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(114, 22, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(115, 21, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(116, 20, 'LBL_ITEM_DETAILS', 5, 0, 0, 0, 0, 0, 1, 0),
(117, 16, 'LBL_RECURRENCE_INFORMATION', 3, 0, 0, 0, 0, 0, 1, 0),
(118, 29, 'LBL_CALENDAR_SETTINGS', 2, 0, 0, 0, 0, 0, 1, 0),
(119, 16, 'LBL_RELATED_TO', 4, 0, 0, 0, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_blocks_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_blocks_seq`
--

INSERT INTO `vtiger_blocks_seq` (`id`) VALUES
(119);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendarsharedtype` (
  `calendarsharedtypeid` int(11) NOT NULL AUTO_INCREMENT,
  `calendarsharedtype` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calendarsharedtypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_calendarsharedtype`
--

INSERT INTO `vtiger_calendarsharedtype` (`calendarsharedtypeid`, `calendarsharedtype`, `sortorderid`, `presence`) VALUES
(1, 'public', 1, 1),
(2, 'private', 2, 1),
(3, 'seletedusers', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendarsharedtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendarsharedtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_calendarsharedtype_seq`
--

INSERT INTO `vtiger_calendarsharedtype_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendar_default_activitytypes` (
  `id` int(19) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  `defaultcolor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes`
--

INSERT INTO `vtiger_calendar_default_activitytypes` (`id`, `module`, `fieldname`, `defaultcolor`) VALUES
(1, 'Events', 'Events', '#17309A'),
(2, 'Calendar', 'Tasks', '#3A87AD'),
(3, 'Potentials', 'Potentials', '#AA6705'),
(4, 'Contacts', 'support_end_date', '#953B39'),
(5, 'Contacts', 'birthday', '#545252'),
(6, 'Invoice', 'Invoice', '#87865D'),
(7, 'Project', 'Project', '#C71585'),
(8, 'ProjectTask', 'Project Task', '#006400');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_default_activitytypes_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendar_default_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_calendar_default_activitytypes_seq`
--

INSERT INTO `vtiger_calendar_default_activitytypes_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendar_user_activitytypes` (
  `id` int(19) NOT NULL,
  `defaultid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes`
--

INSERT INTO `vtiger_calendar_user_activitytypes` (`id`, `defaultid`, `userid`, `color`, `visible`) VALUES
(1, 1, 1, '#17309A', 1),
(2, 2, 1, '#3A87AD', 1),
(3, 3, 1, '#AA6705', 1),
(4, 4, 1, '#953B39', 1),
(5, 5, 1, '#545252', 1),
(6, 6, 1, '#87865D', 1),
(7, 7, 1, '#C71585', 1),
(8, 8, 1, '#006400', 1),
(9, 1, 5, '#17309A', 1),
(10, 2, 5, '#3A87AD', 1),
(11, 3, 5, '#AA6705', 1),
(12, 4, 5, '#953B39', 1),
(13, 5, 5, '#545252', 1),
(14, 6, 5, '#87865D', 1),
(15, 7, 5, '#C71585', 1),
(16, 8, 5, '#006400', 1),
(17, 1, 6, '#17309A', 1),
(18, 2, 6, '#3A87AD', 1),
(19, 3, 6, '#AA6705', 1),
(20, 4, 6, '#953B39', 1),
(21, 5, 6, '#545252', 1),
(22, 6, 6, '#87865D', 1),
(23, 7, 6, '#C71585', 1),
(24, 8, 6, '#006400', 1),
(25, 1, 7, '#17309A', 1),
(26, 2, 7, '#3A87AD', 1),
(27, 3, 7, '#AA6705', 1),
(28, 4, 7, '#953B39', 1),
(29, 5, 7, '#545252', 1),
(30, 6, 7, '#87865D', 1),
(31, 7, 7, '#C71585', 1),
(32, 8, 7, '#006400', 1),
(33, 1, 8, '#17309A', 1),
(34, 2, 8, '#3A87AD', 1),
(35, 3, 8, '#AA6705', 1),
(36, 4, 8, '#953B39', 1),
(37, 5, 8, '#545252', 1),
(38, 6, 8, '#87865D', 1),
(39, 7, 8, '#C71585', 1),
(40, 8, 8, '#006400', 1),
(41, 1, 9, '#17309A', 1),
(42, 2, 9, '#3A87AD', 1),
(43, 3, 9, '#AA6705', 1),
(44, 4, 9, '#953B39', 1),
(45, 5, 9, '#545252', 1),
(46, 6, 9, '#87865D', 1),
(47, 7, 9, '#C71585', 1),
(48, 8, 9, '#006400', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_calendar_user_activitytypes_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_calendar_user_activitytypes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_calendar_user_activitytypes_seq`
--

INSERT INTO `vtiger_calendar_user_activitytypes_seq` (`id`) VALUES
(48);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration`
--

CREATE TABLE IF NOT EXISTS `vtiger_callduration` (
  `calldurationid` int(11) NOT NULL AUTO_INCREMENT,
  `callduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`calldurationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_callduration`
--

INSERT INTO `vtiger_callduration` (`calldurationid`, `callduration`, `sortorderid`, `presence`) VALUES
(1, '5', 1, 1),
(2, '10', 2, 1),
(3, '30', 3, 1),
(4, '60', 4, 1),
(5, '120', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_callduration_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_callduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_callduration_seq`
--

INSERT INTO `vtiger_callduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaign`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaign` (
  `campaign_no` varchar(100) NOT NULL,
  `campaignname` varchar(255) DEFAULT NULL,
  `campaigntype` varchar(200) DEFAULT NULL,
  `campaignstatus` varchar(200) DEFAULT NULL,
  `expectedrevenue` decimal(25,8) DEFAULT NULL,
  `budgetcost` decimal(25,8) DEFAULT NULL,
  `actualcost` decimal(25,8) DEFAULT NULL,
  `expectedresponse` varchar(200) DEFAULT NULL,
  `numsent` decimal(11,0) DEFAULT NULL,
  `product_id` int(19) DEFAULT NULL,
  `sponsor` varchar(255) DEFAULT NULL,
  `targetaudience` varchar(255) DEFAULT NULL,
  `targetsize` int(19) DEFAULT NULL,
  `expectedresponsecount` int(19) DEFAULT NULL,
  `expectedsalescount` int(19) DEFAULT NULL,
  `expectedroi` decimal(25,8) DEFAULT NULL,
  `actualresponsecount` int(19) DEFAULT NULL,
  `actualsalescount` int(19) DEFAULT NULL,
  `actualroi` decimal(25,8) DEFAULT NULL,
  `campaignid` int(19) NOT NULL,
  `closingdate` date DEFAULT NULL,
  PRIMARY KEY (`campaignid`),
  KEY `campaign_campaignstatus_idx` (`campaignstatus`),
  KEY `campaign_campaignname_idx` (`campaignname`),
  KEY `campaign_campaignid_idx` (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaign`
--

INSERT INTO `vtiger_campaign` (`campaign_no`, `campaignname`, `campaigntype`, `campaignstatus`, `expectedrevenue`, `budgetcost`, `actualcost`, `expectedresponse`, `numsent`, `product_id`, `sponsor`, `targetaudience`, `targetsize`, `expectedresponsecount`, `expectedsalescount`, `expectedroi`, `actualresponsecount`, `actualsalescount`, `actualroi`, `campaignid`, `closingdate`) VALUES
('CAM1', 'testqqq', 'Public Relations', 'Planning', '0.00000000', '0.00000000', '0.00000000', '', '0', 0, '', '', 0, 0, 10000, '0.00000000', 0, 0, '0.00000000', 6, '2015-03-18'),
('CAM2', 'test', '', '', '0.00000000', '0.00000000', '0.00000000', '', '0', 38, '', '', 0, 0, 0, '0.00000000', 0, 0, '0.00000000', 72, '2015-10-28');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignaccountrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignaccountrel` (
  `campaignid` int(19) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `campaignrelstatusid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigncontrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaigncontrel` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  `contactid` int(19) NOT NULL DEFAULT '0',
  `campaignrelstatusid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`,`contactid`,`campaignrelstatusid`),
  KEY `campaigncontrel_contractid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignleadrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignleadrel` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  `leadid` int(19) NOT NULL DEFAULT '0',
  `campaignrelstatusid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`,`leadid`,`campaignrelstatusid`),
  KEY `campaignleadrel_leadid_campaignid_idx` (`leadid`,`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignleadrel`
--

INSERT INTO `vtiger_campaignleadrel` (`campaignid`, `leadid`, `campaignrelstatusid`) VALUES
(6, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignrelstatus` (
  `campaignrelstatusid` int(19) DEFAULT NULL,
  `campaignrelstatus` varchar(256) DEFAULT NULL,
  `sortorderid` int(19) DEFAULT NULL,
  `presence` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignrelstatus`
--

INSERT INTO `vtiger_campaignrelstatus` (`campaignrelstatusid`, `campaignrelstatus`, `sortorderid`, `presence`) VALUES
(2, 'Contacted - Successful', 1, 1),
(3, 'Contacted - Unsuccessful', 2, 1),
(4, 'Contacted - Never Contact Again', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignrelstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignrelstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignrelstatus_seq`
--

INSERT INTO `vtiger_campaignrelstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignscf` (
  `campaignid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`campaignid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignscf`
--

INSERT INTO `vtiger_campaignscf` (`campaignid`) VALUES
(6),
(72);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignstatus` (
  `campaignstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `campaignstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaignstatusid`),
  KEY `campaignstatus_campaignstatus_idx` (`campaignstatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_campaignstatus`
--

INSERT INTO `vtiger_campaignstatus` (`campaignstatusid`, `campaignstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Planning', 1, 15, 1),
(3, 'Active', 1, 16, 2),
(4, 'Inactive', 1, 17, 3),
(5, 'Completed', 1, 18, 4),
(6, 'Cancelled', 1, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaignstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaignstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaignstatus_seq`
--

INSERT INTO `vtiger_campaignstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaigntype` (
  `campaigntypeid` int(19) NOT NULL AUTO_INCREMENT,
  `campaigntype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`campaigntypeid`),
  UNIQUE KEY `campaigntype_campaigntype_idx` (`campaigntype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vtiger_campaigntype`
--

INSERT INTO `vtiger_campaigntype` (`campaigntypeid`, `campaigntype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Conference', 1, 21, 1),
(3, 'Webinar', 1, 22, 2),
(4, 'Trade Show', 1, 23, 3),
(5, 'Public Relations', 1, 24, 4),
(6, 'Partners', 1, 25, 5),
(7, 'Referral Program', 1, 26, 6),
(8, 'Advertisement', 1, 27, 7),
(9, 'Banner Ads', 1, 28, 8),
(10, 'Direct Mail', 1, 29, 9),
(11, 'Email', 1, 30, 10),
(12, 'Telemarketing', 1, 31, 11),
(13, 'Others', 1, 32, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_campaigntype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_campaigntype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_campaigntype_seq`
--

INSERT INTO `vtiger_campaigntype_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier`
--

CREATE TABLE IF NOT EXISTS `vtiger_carrier` (
  `carrierid` int(19) NOT NULL AUTO_INCREMENT,
  `carrier` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`carrierid`),
  UNIQUE KEY `carrier_carrier_idx` (`carrier`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_carrier`
--

INSERT INTO `vtiger_carrier` (`carrierid`, `carrier`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'FedEx', 1, 33, 0),
(2, 'UPS', 1, 34, 1),
(3, 'USPS', 1, 35, 2),
(4, 'DHL', 1, 36, 3),
(5, 'BlueDart', 1, 37, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_carrier_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_carrier_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_carrier_seq`
--

INSERT INTO `vtiger_carrier_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cntactivityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_cntactivityrel` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`activityid`),
  KEY `cntactivityrel_contactid_idx` (`contactid`),
  KEY `cntactivityrel_activityid_idx` (`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactaddress`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactaddress` (
  `contactaddressid` int(19) NOT NULL DEFAULT '0',
  `mailingcity` varchar(40) DEFAULT NULL,
  `mailingstreet` varchar(250) DEFAULT NULL,
  `mailingcountry` varchar(40) DEFAULT NULL,
  `othercountry` varchar(30) DEFAULT NULL,
  `mailingstate` varchar(30) DEFAULT NULL,
  `mailingpobox` varchar(30) DEFAULT NULL,
  `othercity` varchar(40) DEFAULT NULL,
  `otherstate` varchar(50) DEFAULT NULL,
  `mailingzip` varchar(30) DEFAULT NULL,
  `otherzip` varchar(30) DEFAULT NULL,
  `otherstreet` varchar(250) DEFAULT NULL,
  `otherpobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`contactaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactaddress`
--

INSERT INTO `vtiger_contactaddress` (`contactaddressid`, `mailingcity`, `mailingstreet`, `mailingcountry`, `othercountry`, `mailingstate`, `mailingpobox`, `othercity`, `otherstate`, `mailingzip`, `otherzip`, `otherstreet`, `otherpobox`) VALUES
(23, '', '', '', '', '', '', '', '', '', '', '', ''),
(36, '', '', '', '', '', '', '', '', '', '', '', ''),
(49, '', '', '', '', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactdetails` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `contact_no` varchar(100) NOT NULL,
  `accountid` int(19) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `reportsto` varchar(30) DEFAULT NULL,
  `training` varchar(50) DEFAULT NULL,
  `usertype` varchar(50) DEFAULT NULL,
  `contacttype` varchar(50) DEFAULT NULL,
  `otheremail` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `donotcall` varchar(3) DEFAULT NULL,
  `emailoptout` varchar(3) DEFAULT '0',
  `imagename` varchar(150) DEFAULT NULL,
  `reference` varchar(3) DEFAULT NULL,
  `notify_owner` varchar(3) DEFAULT '0',
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  PRIMARY KEY (`contactid`),
  KEY `contactdetails_accountid_idx` (`accountid`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactdetails`
--

INSERT INTO `vtiger_contactdetails` (`contactid`, `contact_no`, `accountid`, `salutation`, `firstname`, `lastname`, `email`, `phone`, `mobile`, `title`, `department`, `fax`, `reportsto`, `training`, `usertype`, `contacttype`, `otheremail`, `secondaryemail`, `donotcall`, `emailoptout`, `imagename`, `reference`, `notify_owner`, `isconvertedfromlead`) VALUES
(23, 'CON1', 0, '', '', 'test', '', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0'),
(36, 'CON2', 2, '', 'testa', 'test', '', '', '', '', '', '', '0', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0'),
(49, 'CON3', 0, '', 'test123', 'test', 'test@GMAIL.V', 'test', 'test', 'test', 'test', 'test', '36', NULL, NULL, NULL, NULL, '', '0', '0', '', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactscf` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactscf`
--

INSERT INTO `vtiger_contactscf` (`contactid`) VALUES
(23),
(36),
(49);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contactsubdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_contactsubdetails` (
  `contactsubscriptionid` int(19) NOT NULL DEFAULT '0',
  `homephone` varchar(50) DEFAULT NULL,
  `otherphone` varchar(50) DEFAULT NULL,
  `assistant` varchar(30) DEFAULT NULL,
  `assistantphone` varchar(50) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `laststayintouchrequest` int(30) DEFAULT '0',
  `laststayintouchsavedate` int(19) DEFAULT '0',
  `leadsource` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`contactsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contactsubdetails`
--

INSERT INTO `vtiger_contactsubdetails` (`contactsubscriptionid`, `homephone`, `otherphone`, `assistant`, `assistantphone`, `birthday`, `laststayintouchrequest`, `laststayintouchsavedate`, `leadsource`) VALUES
(23, '', '', '', '', NULL, 0, 0, ''),
(36, '', '', '', '', NULL, 0, 0, 'Direct Mail'),
(49, '', 'test', '', '', '2015-09-17', 0, 0, 'Conference');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contpotentialrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_contpotentialrel` (
  `contactid` int(19) NOT NULL DEFAULT '0',
  `potentialid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`contactid`,`potentialid`),
  KEY `contpotentialrel_potentialid_idx` (`potentialid`),
  KEY `contpotentialrel_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_priority` (
  `contract_priorityid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_priority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_priorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_contract_priority`
--

INSERT INTO `vtiger_contract_priority` (`contract_priorityid`, `contract_priority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Low', 1, 220, 1),
(2, 'Normal', 1, 221, 2),
(3, 'High', 1, 222, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_priority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_priority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contract_priority_seq`
--

INSERT INTO `vtiger_contract_priority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_status` (
  `contract_statusid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_contract_status`
--

INSERT INTO `vtiger_contract_status` (`contract_statusid`, `contract_status`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Undefined', 1, 214, 1),
(2, 'In Planning', 1, 215, 2),
(3, 'In Progress', 1, 216, 3),
(4, 'On Hold', 1, 217, 4),
(5, 'Complete', 0, 218, 5),
(6, 'Archived', 1, 219, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_status_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contract_status_seq`
--

INSERT INTO `vtiger_contract_status_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_type` (
  `contract_typeid` int(11) NOT NULL AUTO_INCREMENT,
  `contract_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`contract_typeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_contract_type`
--

INSERT INTO `vtiger_contract_type` (`contract_typeid`, `contract_type`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Support', 1, 223, 1),
(2, 'Services', 1, 224, 2),
(3, 'Administrative', 1, 225, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_contract_type_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_contract_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_contract_type_seq`
--

INSERT INTO `vtiger_contract_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_convertleadmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_convertleadmapping` (
  `cfmid` int(19) NOT NULL AUTO_INCREMENT,
  `leadfid` int(19) NOT NULL,
  `accountfid` int(19) DEFAULT NULL,
  `contactfid` int(19) DEFAULT NULL,
  `potentialfid` int(19) DEFAULT NULL,
  `editable` int(19) DEFAULT '1',
  PRIMARY KEY (`cfmid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `vtiger_convertleadmapping`
--

INSERT INTO `vtiger_convertleadmapping` (`cfmid`, `leadfid`, `accountfid`, `contactfid`, `potentialfid`, `editable`) VALUES
(1, 43, 1, 0, 110, 0),
(2, 49, 14, 0, 0, 1),
(3, 40, 3, 69, 0, NULL),
(4, 0, 0, 0, 0, NULL),
(5, 44, 5, 77, 0, 1),
(6, 52, 13, 0, 0, 1),
(7, 46, 9, 80, 0, 0),
(8, 48, 4, 0, 0, 1),
(9, 61, 26, 98, 0, 1),
(10, 60, 30, 0, 0, 1),
(11, 62, 32, 104, 0, 1),
(12, 63, 28, 100, 0, 1),
(13, 59, 24, 96, 0, 1),
(14, 64, 34, 106, 0, 1),
(15, 61, 27, 0, 0, 1),
(16, 60, 31, 0, 0, 1),
(17, 62, 33, 0, 0, 1),
(18, 63, 29, 0, 0, 1),
(19, 59, 25, 0, 0, 1),
(20, 64, 35, 0, 0, 1),
(21, 65, 36, 109, 125, 1),
(22, 37, 0, 66, 0, 1),
(23, 38, 0, 67, 0, 0),
(24, 41, 0, 70, 0, 0),
(25, 42, 0, 71, 0, 1),
(26, 45, 0, 76, 0, 1),
(27, 55, 0, 83, 0, 1),
(28, 47, 0, 74, 117, 1),
(29, 50, 0, 0, 0, 1),
(30, 53, 10, 0, 0, 1),
(31, 51, 17, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmentity` (
  `crmid` int(19) NOT NULL,
  `smcreatorid` int(19) NOT NULL DEFAULT '0',
  `smownerid` int(19) NOT NULL DEFAULT '0',
  `modifiedby` int(19) NOT NULL DEFAULT '0',
  `setype` varchar(30) NOT NULL,
  `description` text,
  `createdtime` datetime NOT NULL,
  `modifiedtime` datetime NOT NULL,
  `viewedtime` datetime DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `version` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`crmid`),
  KEY `crmentity_smcreatorid_idx` (`smcreatorid`),
  KEY `crmentity_modifiedby_idx` (`modifiedby`),
  KEY `crmentity_deleted_idx` (`deleted`),
  KEY `crm_ownerid_del_setype_idx` (`smownerid`,`deleted`,`setype`),
  KEY `vtiger_crmentity_labelidx` (`label`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmentity`
--

INSERT INTO `vtiger_crmentity` (`crmid`, `smcreatorid`, `smownerid`, `modifiedby`, `setype`, `description`, `createdtime`, `modifiedtime`, `viewedtime`, `status`, `version`, `presence`, `deleted`, `label`) VALUES
(2, 1, 3, 1, 'Accounts', '', '2015-03-13 08:03:22', '2015-10-15 11:23:46', NULL, NULL, 0, 1, 0, 'FDSFGDsdas'),
(3, 1, 3, 1, 'Potentials', '', '2015-03-14 12:32:32', '2015-03-14 12:32:32', NULL, NULL, 0, 1, 0, 'testing'),
(4, 1, 3, 1, 'Calendar', '', '2015-03-20 08:29:57', '2015-03-20 08:29:57', NULL, NULL, 0, 1, 0, 'grgh'),
(5, 1, 1, 1, 'Leads', '', '2015-03-20 14:58:44', '2015-04-13 14:16:40', NULL, NULL, 0, 1, 0, 'nome test'),
(6, 1, 1, 1, 'Campaigns', '', '2015-03-22 01:13:20', '2015-04-20 07:56:13', NULL, NULL, 0, 1, 0, 'testqqq'),
(7, 1, 1, 1, 'Leads', '', '2015-03-22 01:15:02', '2015-03-22 01:15:02', NULL, NULL, 0, 1, 0, ' b'),
(8, 1, 1, 1, 'Calendar', '', '2015-03-30 12:03:48', '2015-03-30 12:15:10', NULL, NULL, 0, 1, 0, 'test'),
(9, 1, 1, 1, 'Calendar', '', '2015-03-30 12:04:39', '2015-03-30 12:05:14', NULL, NULL, 0, 1, 0, 'test1111'),
(10, 1, 1, 1, 'Calendar', '', '2015-03-30 12:05:43', '2015-03-30 12:05:43', NULL, NULL, 0, 1, 0, 'test1'),
(11, 1, 1, 1, 'Calendar', '', '2015-03-30 12:10:23', '2015-03-30 12:10:23', NULL, NULL, 0, 1, 0, 'test'),
(12, 1, 1, 1, 'Calendar', '', '2015-03-30 12:10:50', '2015-03-30 12:13:13', NULL, NULL, 0, 1, 0, 'test'),
(13, 1, 1, 1, 'Calendar', '', '2015-03-30 12:11:14', '2015-03-30 12:11:14', NULL, NULL, 0, 1, 0, 'test'),
(14, 1, 1, 1, 'Calendar', '', '2015-03-30 12:12:08', '2015-03-30 12:12:08', NULL, NULL, 0, 1, 0, 'test'),
(15, 1, 1, 1, 'Calendar', '', '2015-03-30 12:12:27', '2015-03-30 12:12:27', NULL, NULL, 0, 1, 0, 'test'),
(16, 1, 1, 1, 'Calendar', '', '2015-03-30 12:12:42', '2015-03-30 12:12:42', NULL, NULL, 0, 1, 0, 'testtt'),
(17, 1, 1, 1, 'Calendar', '', '2015-03-30 12:13:03', '2015-03-30 12:13:03', NULL, NULL, 0, 1, 0, 'test'),
(18, 1, 1, 1, 'Calendar', '', '2015-03-30 12:13:37', '2015-03-30 12:13:37', NULL, NULL, 0, 1, 0, 'vai'),
(19, 1, 1, 1, 'Documents', NULL, '2015-04-06 19:50:20', '2015-04-06 19:50:20', NULL, NULL, 0, 1, 0, '123'),
(20, 1, 1, 1, 'Calendar', '', '2015-04-10 08:25:40', '2015-04-10 08:25:40', NULL, NULL, 0, 1, 0, 'test'),
(21, 1, 1, 1, 'Potentials', '', '2015-04-10 13:08:40', '2015-04-10 13:08:40', NULL, NULL, 0, 1, 0, 'test'),
(22, 1, 1, 1, 'Potentials', 'Dettaglio', '2015-04-10 13:09:13', '2015-04-20 08:02:30', NULL, NULL, 0, 1, 0, 'ritest'),
(23, 1, 1, 1, 'Contacts', '', '2015-04-10 13:31:16', '2015-04-10 13:31:16', NULL, NULL, 0, 1, 0, ' test'),
(24, 1, 1, 1, 'Leads', '', '2015-04-13 14:17:19', '2015-04-13 14:17:19', NULL, NULL, 0, 1, 0, 'nome test'),
(25, 1, 1, 1, 'Leads', '', '2015-04-13 14:17:35', '2015-04-13 14:17:35', NULL, NULL, 0, 1, 0, 'nome test'),
(26, 1, 1, 1, 'Leads', '', '2015-04-13 14:17:59', '2015-04-13 14:17:59', NULL, NULL, 0, 1, 0, 'nome test'),
(27, 1, 1, 1, 'Leads', '', '2015-04-13 14:18:05', '2015-04-13 14:18:05', NULL, NULL, 0, 1, 0, 'nome test'),
(28, 1, 1, 1, 'Leads', '', '2015-04-13 14:18:12', '2015-04-13 14:18:12', NULL, NULL, 0, 1, 0, 'nome test'),
(29, 1, 1, 1, 'Leads', '', '2015-04-13 14:18:18', '2015-10-15 13:17:14', NULL, NULL, 0, 1, 0, 'nomevdsgg test'),
(30, 1, 1, 1, 'Leads', '', '2015-04-13 14:18:26', '2015-09-23 13:17:56', NULL, NULL, 0, 1, 0, 'nome test'),
(31, 1, 1, 1, 'Project', '', '2015-04-13 14:32:20', '2015-04-13 14:32:20', NULL, NULL, 0, 1, 0, 'test1'),
(32, 1, 1, 1, 'Calendar', '', '2015-04-14 12:39:03', '2015-04-14 12:39:03', NULL, NULL, 0, 1, 0, 'test'),
(33, 1, 1, 1, 'Calendar', '', '2015-04-14 12:39:21', '2015-04-14 12:39:21', NULL, NULL, 0, 1, 0, 'test'),
(34, 1, 1, 1, 'Calendar', '', '2015-04-14 12:40:25', '2015-04-17 05:46:05', NULL, NULL, 0, 1, 0, 'test'),
(35, 1, 1, 1, 'Calendar', '', '2015-04-14 12:41:31', '2015-04-14 12:41:31', NULL, NULL, 0, 1, 0, 'cg'),
(36, 1, 1, 1, 'Contacts', '', '2015-04-14 12:43:25', '2015-10-12 09:23:13', NULL, NULL, 0, 1, 0, 'testa test'),
(37, 1, 1, 1, 'HelpDesk', '', '2015-04-14 12:43:40', '2015-04-14 12:43:40', NULL, NULL, 0, 1, 0, 'test'),
(38, 1, 1, 1, 'Products', '', '2015-04-15 14:32:35', '2015-10-15 11:26:10', NULL, NULL, 0, 1, 0, 'product1'),
(39, 1, 1, 1, 'Invoice', '', '2015-04-15 14:32:54', '2015-04-15 14:32:54', NULL, NULL, 0, 1, 0, 'test'),
(40, 1, 1, 1, 'Calendar', '', '2015-04-16 08:03:13', '2015-04-16 08:03:13', NULL, NULL, 0, 1, 0, 'ghjkhy'),
(41, 1, 1, 1, 'Calendar', '', '2015-04-17 06:04:29', '2015-04-17 06:05:55', NULL, NULL, 0, 1, 0, 'test'),
(42, 1, 1, 1, 'Calendar', '', '2015-04-17 06:26:17', '2015-04-17 06:26:17', NULL, NULL, 0, 1, 0, 'test'),
(43, 1, 1, 1, 'Calendar', '', '2015-04-20 07:42:47', '2015-04-20 07:42:47', NULL, NULL, 0, 1, 0, 'nfgn2pm'),
(44, 1, 1, 1, 'Calendar', '', '2015-04-20 07:43:43', '2015-04-20 07:43:43', NULL, NULL, 0, 1, 0, 'nfgn'),
(45, 1, 1, 1, 'ModComments', NULL, '2015-04-20 08:01:59', '2015-04-20 08:01:59', NULL, NULL, 0, 1, 0, 'Commento banale'),
(46, 1, 1, 1, 'HelpDesk', 'Testare template responsive', '2015-04-20 08:06:19', '2015-04-20 08:06:19', NULL, NULL, 0, 1, 0, 'intervenire'),
(47, 1, 1, 1, 'PriceBooks', '', '2015-04-20 08:14:55', '2015-04-20 08:14:55', NULL, NULL, 0, 1, 0, 'asas'),
(48, 1, 1, 1, 'Calendar', '', '2015-04-20 08:21:02', '2015-04-20 08:21:22', NULL, NULL, 0, 1, 0, 'test template'),
(49, 1, 1, 1, 'Contacts', '', '2015-09-04 14:44:16', '2015-10-06 14:46:41', NULL, NULL, 0, 1, 0, 'test123 test'),
(50, 1, 1, 1, 'Quotes', '', '2015-09-05 07:41:29', '2015-10-12 09:26:13', NULL, NULL, 0, 1, 0, 'test'),
(51, 1, 1, 1, 'ModComments', NULL, '2015-09-11 06:39:02', '2015-09-11 06:39:02', NULL, NULL, 0, 1, 0, 'I comment'),
(52, 1, 1, 1, 'HelpDesk', 'Xhuidgiidfhjoov. Vgdyhb. Cho. Ddyiijnmmnvfagbczsx%''":,vhxzgji', '2015-09-11 07:42:43', '2015-09-11 07:42:43', NULL, NULL, 0, 1, 0, 'Prova'),
(53, 1, 3, 1, 'SalesOrder', 'Vjifdcvnj', '2015-09-11 07:56:41', '2015-09-11 07:56:41', NULL, NULL, 0, 1, 0, 'Cavalli'),
(54, 1, 3, 1, 'Calendar', '', '2015-09-11 08:14:09', '2015-09-11 08:14:09', NULL, NULL, 0, 1, 0, 'prova'),
(55, 1, 1, 1, 'Calendar', '', '2015-09-11 08:14:24', '2015-09-11 08:14:24', NULL, NULL, 0, 1, 0, 'vhjv'),
(56, 1, 1, 1, 'Documents', NULL, '2015-09-11 08:27:12', '2015-09-11 08:27:12', NULL, NULL, 0, 1, 0, 'prova'),
(57, 1, 1, 0, 'Documents Attachment', NULL, '2015-09-11 08:27:12', '2015-09-11 08:27:12', NULL, NULL, 0, 1, 0, NULL),
(58, 1, 1, 1, 'HelpDesk', '', '2015-09-11 08:36:19', '2015-09-11 08:36:19', NULL, NULL, 0, 1, 0, 'test 1'),
(59, 1, 1, 1, 'Calendar', '', '2015-09-14 06:43:44', '2015-09-14 06:53:12', NULL, NULL, 0, 1, 0, 'test'),
(60, 1, 1, 1, 'Calendar', '', '2015-09-15 11:25:58', '2015-09-15 11:25:58', NULL, NULL, 0, 1, 0, 'test'),
(61, 1, 1, 1, 'ModComments', NULL, '2015-09-17 15:32:01', '2015-09-17 15:32:01', NULL, NULL, 0, 1, 0, 'commento'),
(62, 1, 1, 1, 'Calendar', '', '2015-09-23 13:09:46', '2015-09-30 10:06:51', NULL, NULL, 0, 1, 0, 'test'),
(63, 1, 1, 1, 'ModComments', NULL, '2015-09-23 13:20:19', '2015-09-23 13:20:19', NULL, NULL, 0, 1, 0, 'test'),
(64, 1, 1, 1, 'ModComments', NULL, '2015-09-23 13:20:20', '2015-09-23 13:20:20', NULL, NULL, 0, 1, 0, 'test'),
(65, 1, 1, 1, 'ModComments', NULL, '2015-09-23 13:20:20', '2015-09-23 13:20:20', NULL, NULL, 0, 1, 0, 'test'),
(66, 1, 1, 1, 'Calendar', '', '2015-09-24 13:34:00', '2015-09-24 13:34:00', NULL, NULL, 0, 1, 0, 'test'),
(67, 1, 1, 1, 'Leads', '', '2015-09-24 13:37:15', '2015-09-30 10:19:17', NULL, NULL, 0, 1, 0, 'test ,,,'),
(68, 1, 1, 1, 'ModComments', NULL, '2015-09-30 10:15:32', '2015-09-30 10:15:32', NULL, NULL, 0, 1, 0, 'test'),
(69, 1, 1, 1, 'Products', '', '2015-09-30 12:23:17', '2015-09-30 12:23:17', NULL, NULL, 0, 1, 0, 'sssss'),
(70, 1, 1, 0, 'Products Image', '', '2015-09-30 12:23:17', '2015-09-30 12:23:17', NULL, NULL, 0, 1, 0, NULL),
(71, 1, 1, 1, 'Potentials', '', '2015-09-30 16:14:19', '2015-10-14 08:00:17', NULL, NULL, 0, 1, 0, NULL),
(72, 1, 1, 1, 'Campaigns', '', '2015-10-07 11:16:13', '2015-10-07 11:16:13', NULL, NULL, 0, 1, 0, 'test'),
(73, 1, 1, 1, 'Leads', '', '2015-10-07 13:34:01', '2015-10-14 08:44:51', NULL, NULL, 0, 1, 0, 'Test Test'),
(74, 1, 1, 1, 'ModComments', NULL, '2015-10-07 13:35:26', '2015-10-07 13:35:26', NULL, NULL, 0, 1, 0, 'Test'),
(75, 1, 1, 1, 'Accounts', 'Ciao, bello! questa è una descrizione lunga.\nCiao, bello! questa è una descrizione lunga lunga.\nCiao, bello! questa è una descrizione lunga lunga lunga\nCiao, bello! questa è una descrizione lunga lunga lunga lunga\nCiao, bello! questa è una descrizione lunga lunga lunga lunga lunga', '2015-10-14 13:17:40', '2015-10-14 13:17:40', NULL, NULL, 0, 1, 0, 'prova descrizione lunga');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmentityrel` (
  `crmid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relcrmid` int(11) NOT NULL,
  `relmodule` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmentityrel`
--

INSERT INTO `vtiger_crmentityrel` (`crmid`, `module`, `relcrmid`, `relmodule`) VALUES
(2, 'Accounts', 21, 'Potentials'),
(2, 'Accounts', 22, 'Potentials'),
(36, 'Contacts', 37, 'HelpDesk'),
(29, 'Leads', 66, 'Calendar');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmentity_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmentity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmentity_seq`
--

INSERT INTO `vtiger_crmentity_seq` (`id`) VALUES
(75);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_crmsetup`
--

CREATE TABLE IF NOT EXISTS `vtiger_crmsetup` (
  `userid` int(11) DEFAULT NULL,
  `setup_status` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_crmsetup`
--

INSERT INTO `vtiger_crmsetup` (`userid`, `setup_status`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cron_task`
--

CREATE TABLE IF NOT EXISTS `vtiger_cron_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `handler_file` varchar(100) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  `laststart` int(11) unsigned DEFAULT NULL,
  `lastend` int(11) unsigned DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `module` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `handler_file` (`handler_file`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_cron_task`
--

INSERT INTO `vtiger_cron_task` (`id`, `name`, `handler_file`, `frequency`, `laststart`, `lastend`, `status`, `module`, `sequence`, `description`) VALUES
(1, 'Workflow', 'cron/modules/com_vtiger_workflow/com_vtiger_workflow.service', 900, NULL, NULL, 1, 'com_vtiger_workflow', 1, 'Recommended frequency for Workflow is 15 mins'),
(2, 'RecurringInvoice', 'cron/modules/SalesOrder/RecurringInvoice.service', 43200, NULL, NULL, 1, 'SalesOrder', 2, 'Recommended frequency for RecurringInvoice is 12 hours'),
(3, 'SendReminder', 'cron/SendReminder.service', 900, NULL, NULL, 1, 'Calendar', 3, 'Recommended frequency for SendReminder is 15 mins'),
(5, 'MailScanner', 'cron/MailScanner.service', 900, NULL, NULL, 1, 'Settings', 5, 'Recommended frequency for MailScanner is 15 mins'),
(6, 'Scheduled Import', 'cron/modules/Import/ScheduledImport.service', 900, NULL, NULL, 0, 'Import', 6, 'Recommended frequency for MailScanner is 15 mins'),
(7, 'ScheduleReports', 'cron/modules/Reports/ScheduleReports.service', 900, NULL, NULL, 1, 'Reports', 7, 'Recommended frequency for ScheduleReports is 15 mins');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies`
--

CREATE TABLE IF NOT EXISTS `vtiger_currencies` (
  `currencyid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(200) DEFAULT NULL,
  `currency_code` varchar(50) DEFAULT NULL,
  `currency_symbol` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`currencyid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=138 ;

--
-- Dumping data for table `vtiger_currencies`
--

INSERT INTO `vtiger_currencies` (`currencyid`, `currency_name`, `currency_code`, `currency_symbol`) VALUES
(1, 'Albania, Leke', 'ALL', 'Lek'),
(2, 'Argentina, Pesos', 'ARS', '$'),
(3, 'Aruba, Guilders', 'AWG', 'ƒ'),
(4, 'Australia, Dollars', 'AUD', '$'),
(5, 'Azerbaijan, New Manats', 'AZN', '???'),
(6, 'Bahamas, Dollars', 'BSD', '$'),
(7, 'Bahrain, Dinar', 'BHD', 'BD'),
(8, 'Barbados, Dollars', 'BBD', '$'),
(9, 'Belarus, Rubles', 'BYR', 'p.'),
(10, 'Belize, Dollars', 'BZD', 'BZ$'),
(11, 'Bermuda, Dollars', 'BMD', '$'),
(12, 'Bolivia, Bolivianos', 'BOB', '$b'),
(13, 'China, Yuan Renminbi', 'CNY', '¥'),
(14, 'Convertible Marka', 'BAM', 'KM'),
(15, 'Botswana, Pulas', 'BWP', 'P'),
(16, 'Bulgaria, Leva', 'BGN', '??'),
(17, 'Brazil, Reais', 'BRL', 'R$'),
(18, 'Great Britain Pounds', 'GBP', '£'),
(19, 'Brunei Darussalam, Dollars', 'BND', '$'),
(20, 'Canada, Dollars', 'CAD', '$'),
(21, 'Cayman Islands, Dollars', 'KYD', '$'),
(22, 'Chile, Pesos', 'CLP', '$'),
(23, 'Colombia, Pesos', 'COP', '$'),
(24, 'Costa Rica, Colón', 'CRC', '?'),
(25, 'Croatia, Kuna', 'HRK', 'kn'),
(26, 'Cuba, Pesos', 'CUP', '?'),
(27, 'Czech Republic, Koruny', 'CZK', 'K?'),
(28, 'Cyprus, Pounds', 'CYP', '£'),
(29, 'Denmark, Kroner', 'DKK', 'kr'),
(30, 'Dominican Republic, Pesos', 'DOP', 'RD$'),
(31, 'East Caribbean, Dollars', 'XCD', '$'),
(32, 'Egypt, Pounds', 'EGP', '£'),
(33, 'El Salvador, Colón', 'SVC', '?'),
(34, 'England, Pounds', 'GBP', '£'),
(35, 'Estonia, Krooni', 'EEK', 'kr'),
(36, 'Euro', 'EUR', '€'),
(37, 'Falkland Islands, Pounds', 'FKP', '£'),
(38, 'Fiji, Dollars', 'FJD', '$'),
(39, 'Ghana, Cedis', 'GHC', '¢'),
(40, 'Gibraltar, Pounds', 'GIP', '£'),
(41, 'Guatemala, Quetzales', 'GTQ', 'Q'),
(42, 'Guernsey, Pounds', 'GGP', '£'),
(43, 'Guyana, Dollars', 'GYD', '$'),
(44, 'Honduras, Lempiras', 'HNL', 'L'),
(45, 'Hong Kong, Dollars', 'HKD', 'HK$'),
(46, 'Hungary, Forint', 'HUF', 'Ft'),
(47, 'Iceland, Krona', 'ISK', 'kr'),
(48, 'India, Rupees', 'INR', '?'),
(49, 'Indonesia, Rupiahs', 'IDR', 'Rp'),
(50, 'Iran, Rials', 'IRR', '?'),
(51, 'Isle of Man, Pounds', 'IMP', '£'),
(52, 'Israel, New Shekels', 'ILS', '?'),
(53, 'Jamaica, Dollars', 'JMD', 'J$'),
(54, 'Japan, Yen', 'JPY', '¥'),
(55, 'Jersey, Pounds', 'JEP', '£'),
(56, 'Jordan, Dinar', 'JOD', 'JOD'),
(57, 'Kazakhstan, Tenge', 'KZT', '?'),
(58, 'Kenya, Shilling', 'KES', 'KES'),
(59, 'Korea (North), Won', 'KPW', '?'),
(60, 'Korea (South), Won', 'KRW', '?'),
(61, 'Kuwait, Dinar', 'KWD', 'KWD'),
(62, 'Kyrgyzstan, Soms', 'KGS', '??'),
(63, 'Laos, Kips', 'LAK', '?'),
(64, 'Latvia, Lati', 'LVL', 'Ls'),
(65, 'Lebanon, Pounds', 'LBP', '£'),
(66, 'Liberia, Dollars', 'LRD', '$'),
(67, 'Switzerland Francs', 'CHF', 'CHF'),
(68, 'Lithuania, Litai', 'LTL', 'Lt'),
(69, 'MADAGASCAR, Malagasy Ariary', 'MGA', 'MGA'),
(70, 'Macedonia, Denars', 'MKD', '???'),
(71, 'Malaysia, Ringgits', 'MYR', 'RM'),
(72, 'Malta, Liri', 'MTL', '?'),
(73, 'Mauritius, Rupees', 'MUR', '?'),
(74, 'Mexico, Pesos', 'MXN', '$'),
(75, 'Mongolia, Tugriks', 'MNT', '?'),
(76, 'Mozambique, Meticais', 'MZN', 'MT'),
(77, 'Namibia, Dollars', 'NAD', '$'),
(78, 'Nepal, Rupees', 'NPR', '?'),
(79, 'Netherlands Antilles, Guilders', 'ANG', 'ƒ'),
(80, 'New Zealand, Dollars', 'NZD', '$'),
(81, 'Nicaragua, Cordobas', 'NIO', 'C$'),
(82, 'Nigeria, Nairas', 'NGN', '?'),
(83, 'North Korea, Won', 'KPW', '?'),
(84, 'Norway, Krone', 'NOK', 'kr'),
(85, 'Oman, Rials', 'OMR', '?'),
(86, 'Pakistan, Rupees', 'PKR', '?'),
(87, 'Panama, Balboa', 'PAB', 'B/.'),
(88, 'Paraguay, Guarani', 'PYG', 'Gs'),
(89, 'Peru, Nuevos Soles', 'PEN', 'S/.'),
(90, 'Philippines, Pesos', 'PHP', 'Php'),
(91, 'Poland, Zlotych', 'PLN', 'z?'),
(92, 'Qatar, Rials', 'QAR', '?'),
(93, 'Romania, New Lei', 'RON', 'lei'),
(94, 'Russia, Rubles', 'RUB', '???'),
(95, 'Saint Helena, Pounds', 'SHP', '£'),
(96, 'Saudi Arabia, Riyals', 'SAR', '?'),
(97, 'Serbia, Dinars', 'RSD', '???.'),
(98, 'Seychelles, Rupees', 'SCR', '?'),
(99, 'Singapore, Dollars', 'SGD', '$'),
(100, 'Solomon Islands, Dollars', 'SBD', '$'),
(101, 'Somalia, Shillings', 'SOS', 'S'),
(102, 'South Africa, Rand', 'ZAR', 'R'),
(103, 'South Korea, Won', 'KRW', '?'),
(104, 'Sri Lanka, Rupees', 'LKR', '?'),
(105, 'Sweden, Kronor', 'SEK', 'kr'),
(106, 'Switzerland, Francs', 'CHF', 'CHF'),
(107, 'Suriname, Dollars', 'SRD', '$'),
(108, 'Syria, Pounds', 'SYP', '£'),
(109, 'Taiwan, New Dollars', 'TWD', 'NT$'),
(110, 'Thailand, Baht', 'THB', '?'),
(111, 'Trinidad and Tobago, Dollars', 'TTD', 'TT$'),
(112, 'Turkey, New Lira', 'TRY', 'YTL'),
(113, 'Turkey, Liras', 'TRL', '?'),
(114, 'Tuvalu, Dollars', 'TVD', '$'),
(115, 'Ukraine, Hryvnia', 'UAH', '?'),
(116, 'United Arab Emirates, Dirham', 'AED', 'AED'),
(117, 'United Kingdom, Pounds', 'GBP', '£'),
(118, 'United Republic of Tanzania, Shilling', 'TZS', 'TZS'),
(119, 'USA, Dollars', 'USD', '$'),
(120, 'Uruguay, Pesos', 'UYU', '$U'),
(121, 'Uzbekistan, Sums', 'UZS', '??'),
(122, 'Venezuela, Bolivares Fuertes', 'VEF', 'Bs'),
(123, 'Vietnam, Dong', 'VND', '?'),
(124, 'Zambia, Kwacha', 'ZMK', 'ZMK'),
(125, 'Yemen, Rials', 'YER', '?'),
(126, 'Zimbabwe Dollars', 'ZWD', 'Z$'),
(127, 'Malawi, Kwacha', 'MWK', 'MK'),
(128, 'Tunisian, Dinar', 'TD', 'TD'),
(129, 'Moroccan, Dirham', 'MAD', 'DH'),
(130, 'Iraqi Dinar', 'IQD', 'ID'),
(131, 'Maldivian Ruffiya', 'MVR', 'MVR'),
(132, 'Ugandan Shilling', 'UGX', 'Sh'),
(133, 'Sudanese Pound', 'SDG', '£'),
(134, 'CFA Franc BCEAO', 'XOF', 'CFA'),
(135, 'CFA Franc BEAC', 'XAF', 'CFA'),
(136, 'Haiti, Gourde', 'HTG', 'G'),
(137, 'Libya, Dinar', 'LYD', 'LYD');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currencies_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currencies_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currencies_seq`
--

INSERT INTO `vtiger_currencies_seq` (`id`) VALUES
(137);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency` (
  `currencyid` int(19) NOT NULL AUTO_INCREMENT,
  `currency` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currencyid`),
  UNIQUE KEY `currency_currency_idx` (`currency`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_decimal_separator` (
  `currency_decimal_separatorid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_decimal_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_decimal_separatorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_currency_decimal_separator`
--

INSERT INTO `vtiger_currency_decimal_separator` (`currency_decimal_separatorid`, `currency_decimal_separator`, `sortorderid`, `presence`) VALUES
(1, '.', 0, 1),
(2, ',', 1, 1),
(3, '''', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_decimal_separator_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_decimal_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_decimal_separator_seq`
--

INSERT INTO `vtiger_currency_decimal_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_pattern` (
  `currency_grouping_patternid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_grouping_pattern` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_grouping_patternid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_currency_grouping_pattern`
--

INSERT INTO `vtiger_currency_grouping_pattern` (`currency_grouping_patternid`, `currency_grouping_pattern`, `sortorderid`, `presence`) VALUES
(1, '123,456,789', 0, 1),
(2, '123456789', 1, 1),
(3, '123456,789', 2, 1),
(4, '12,34,56,789', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_pattern_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_pattern_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_grouping_pattern_seq`
--

INSERT INTO `vtiger_currency_grouping_pattern_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_separator` (
  `currency_grouping_separatorid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_grouping_separator` varchar(2) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_grouping_separatorid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_currency_grouping_separator`
--

INSERT INTO `vtiger_currency_grouping_separator` (`currency_grouping_separatorid`, `currency_grouping_separator`, `sortorderid`, `presence`) VALUES
(1, '.', 0, 1),
(2, ',', 1, 1),
(3, '''', 2, 1),
(4, ' ', 3, 1),
(5, '$', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_grouping_separator_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_grouping_separator_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_grouping_separator_seq`
--

INSERT INTO `vtiger_currency_grouping_separator_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `currency_name` varchar(100) DEFAULT NULL,
  `currency_code` varchar(100) DEFAULT NULL,
  `currency_symbol` varchar(30) DEFAULT NULL,
  `conversion_rate` decimal(12,5) DEFAULT NULL,
  `currency_status` varchar(25) DEFAULT NULL,
  `defaultid` varchar(10) NOT NULL DEFAULT '0',
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_currency_info`
--

INSERT INTO `vtiger_currency_info` (`id`, `currency_name`, `currency_code`, `currency_symbol`, `conversion_rate`, `currency_status`, `defaultid`, `deleted`) VALUES
(1, 'India, Rupees', 'INR', '?', '1.00000', 'Active', '-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_info_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_info_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_info_seq`
--

INSERT INTO `vtiger_currency_info_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_symbol_placement` (
  `currency_symbol_placementid` int(19) NOT NULL AUTO_INCREMENT,
  `currency_symbol_placement` varchar(30) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`currency_symbol_placementid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_currency_symbol_placement`
--

INSERT INTO `vtiger_currency_symbol_placement` (`currency_symbol_placementid`, `currency_symbol_placement`, `sortorderid`, `presence`) VALUES
(1, '$1.0', 0, 1),
(2, '1.0$', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_currency_symbol_placement_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_currency_symbol_placement_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_currency_symbol_placement_seq`
--

INSERT INTO `vtiger_currency_symbol_placement_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customaction`
--

CREATE TABLE IF NOT EXISTS `vtiger_customaction` (
  `cvid` int(19) NOT NULL,
  `subject` varchar(250) NOT NULL,
  `module` varchar(50) NOT NULL,
  `content` text,
  KEY `customaction_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerdetails` (
  `customerid` int(19) NOT NULL,
  `portal` varchar(3) DEFAULT NULL,
  `support_start_date` date DEFAULT NULL,
  `support_end_date` date DEFAULT NULL,
  PRIMARY KEY (`customerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customerdetails`
--

INSERT INTO `vtiger_customerdetails` (`customerid`, `portal`, `support_start_date`, `support_end_date`) VALUES
(23, '0', '2015-04-10', '2016-04-10'),
(36, '0', '2015-04-14', '2016-04-14'),
(49, '0', '2015-09-04', '2016-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_fields`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerportal_fields` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_prefs`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerportal_prefs` (
  `tabid` int(19) NOT NULL,
  `prefkey` varchar(100) NOT NULL,
  `prefvalue` int(20) DEFAULT NULL,
  PRIMARY KEY (`tabid`,`prefkey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customerportal_prefs`
--

INSERT INTO `vtiger_customerportal_prefs` (`tabid`, `prefkey`, `prefvalue`) VALUES
(0, 'defaultassignee', 1),
(0, 'userid', 1),
(4, 'showrelatedinfo', 1),
(6, 'showrelatedinfo', 1),
(8, 'showrelatedinfo', 1),
(13, 'showrelatedinfo', 1),
(14, 'showrelatedinfo', 1),
(15, 'showrelatedinfo', 1),
(20, 'showrelatedinfo', 1),
(23, 'showrelatedinfo', 1),
(36, 'showrelatedinfo', 1),
(38, 'showrelatedinfo', 1),
(43, 'showrelatedinfo', 1),
(44, 'showrelatedinfo', 1),
(45, 'showrelatedinfo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customerportal_tabs`
--

CREATE TABLE IF NOT EXISTS `vtiger_customerportal_tabs` (
  `tabid` int(19) NOT NULL,
  `visible` int(1) DEFAULT '1',
  `sequence` int(1) DEFAULT NULL,
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customerportal_tabs`
--

INSERT INTO `vtiger_customerportal_tabs` (`tabid`, `visible`, `sequence`) VALUES
(4, 1, 9),
(6, 1, 10),
(8, 1, 8),
(13, 1, 2),
(14, 1, 6),
(15, 1, 3),
(20, 1, 5),
(23, 1, 4),
(36, 1, 7),
(38, 1, 11),
(43, 1, 12),
(44, 1, 13),
(45, 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview`
--

CREATE TABLE IF NOT EXISTS `vtiger_customview` (
  `cvid` int(19) NOT NULL,
  `viewname` varchar(100) NOT NULL,
  `setdefault` int(1) DEFAULT '0',
  `setmetrics` int(1) DEFAULT '0',
  `entitytype` varchar(25) NOT NULL,
  `status` int(1) DEFAULT '1',
  `userid` int(19) DEFAULT '1',
  PRIMARY KEY (`cvid`),
  KEY `customview_entitytype_idx` (`entitytype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customview`
--

INSERT INTO `vtiger_customview` (`cvid`, `viewname`, `setdefault`, `setmetrics`, `entitytype`, `status`, `userid`) VALUES
(1, 'All', 1, 0, 'Leads', 0, 1),
(2, 'Hot Leads', 0, 1, 'Leads', 3, 1),
(3, 'This Month Leads', 0, 0, 'Leads', 3, 1),
(4, 'All', 1, 0, 'Accounts', 0, 1),
(5, 'Prospect Accounts', 0, 1, 'Accounts', 3, 1),
(6, 'New This Week', 0, 0, 'Accounts', 3, 1),
(7, 'All', 1, 0, 'Contacts', 0, 1),
(8, 'Contacts Address', 0, 0, 'Contacts', 3, 1),
(9, 'Todays Birthday', 0, 0, 'Contacts', 3, 1),
(10, 'All', 1, 0, 'Potentials', 0, 1),
(11, 'Potentials Won', 0, 1, 'Potentials', 3, 1),
(12, 'Prospecting', 0, 0, 'Potentials', 3, 1),
(13, 'All', 1, 0, 'HelpDesk', 0, 1),
(14, 'Open Tickets', 0, 1, 'HelpDesk', 3, 1),
(15, 'High Prioriy Tickets', 0, 0, 'HelpDesk', 3, 1),
(16, 'All', 1, 0, 'Quotes', 0, 1),
(17, 'Open Quotes', 0, 1, 'Quotes', 3, 1),
(18, 'Rejected Quotes', 0, 0, 'Quotes', 3, 1),
(19, 'All', 1, 0, 'Calendar', 0, 1),
(20, 'All', 1, 0, 'Emails', 0, 1),
(21, 'All', 1, 0, 'Invoice', 0, 1),
(22, 'All', 1, 0, 'Documents', 0, 1),
(23, 'All', 1, 0, 'PriceBooks', 0, 1),
(24, 'All', 1, 0, 'Products', 0, 1),
(25, 'All', 1, 0, 'PurchaseOrder', 0, 1),
(26, 'All', 1, 0, 'SalesOrder', 0, 1),
(27, 'All', 1, 0, 'Vendors', 0, 1),
(28, 'All', 1, 0, 'Faq', 0, 1),
(29, 'All', 1, 0, 'Campaigns', 0, 1),
(30, 'All', 1, 0, 'Webmails', 0, 1),
(31, 'Drafted FAQ', 0, 0, 'Faq', 3, 1),
(32, 'Published FAQ', 0, 0, 'Faq', 3, 1),
(33, 'Open Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(34, 'Received Purchase Orders', 0, 0, 'PurchaseOrder', 3, 1),
(35, 'Open Invoices', 0, 0, 'Invoice', 3, 1),
(36, 'Paid Invoices', 0, 0, 'Invoice', 3, 1),
(37, 'Pending Sales Orders', 0, 0, 'SalesOrder', 3, 1),
(38, 'All', 1, 0, 'PBXManager', 0, 1),
(39, 'All', 1, 0, 'ServiceContracts', 0, 1),
(40, 'All', 1, 0, 'Services', 0, 1),
(41, 'All', 1, 0, 'Assets', 0, 1),
(42, 'All', 0, 0, 'ModComments', 0, 1),
(46, 'All', 0, 0, 'SMSNotifier', 0, 1),
(47, 'All', 1, 0, 'ProjectMilestone', 0, 1),
(48, 'All', 1, 0, 'ProjectTask', 0, 1),
(49, 'All', 1, 0, 'Project', 0, 1),
(50, 'b', 0, 0, 'Leads', 1, 1),
(51, 'test', 0, 0, 'Contacts', 1, 1),
(52, 'test', 0, 0, 'Calendar', 1, 1),
(53, 'testy', 0, 0, 'Leads', 1, 1),
(54, 'tesy', 0, 0, 'Documents', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_customview_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_customview_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_customview_seq`
--

INSERT INTO `vtiger_customview_seq` (`id`) VALUES
(54);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvadvfilter` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT '1',
  `column_condition` varchar(255) DEFAULT 'and',
  PRIMARY KEY (`cvid`,`columnindex`),
  KEY `cvadvfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvadvfilter`
--

INSERT INTO `vtiger_cvadvfilter` (`cvid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(2, 0, 'vtiger_leaddetails:leadstatus:leadstatus:Leads_Lead_Status:V', 'e', 'Hot', 1, 'and'),
(5, 0, 'vtiger_account:account_type:accounttype:Accounts_Type:V', 'e', 'Prospect', 1, 'and'),
(11, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V', 'e', 'Prospecting', 1, 'and'),
(14, 0, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V', 'n', 'Closed', 1, 'and'),
(15, 0, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V', 'e', 'High', 1, 'and'),
(17, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Accepted', 1, 'and'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'n', 'Rejected', 1, 'and'),
(18, 0, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V', 'e', 'Rejected', 1, 'and'),
(31, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Draft', 1, 'and'),
(32, 0, 'vtiger_faq:status:faqstatus:Faq_Status:V', 'e', 'Published', 1, 'and'),
(33, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Created, Approved, Delivered', 1, 'and'),
(34, 0, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V', 'e', 'Received Shipment', 1, 'and'),
(35, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Created, Approved, Sent', 1, 'and'),
(36, 0, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V', 'e', 'Paid', 1, 'and'),
(37, 0, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V', 'e', 'Created, Approved', 1, 'and'),
(50, 0, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V', 'e', 'b', 1, ''),
(52, 0, 'vtiger_activity:status:taskstatus:Calendar_Status:V', 'e', 'Planned', 1, ''),
(54, 0, 'vtiger_notes:title:notes_title:Documents_Title:V', 'n', '', 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvadvfilter_grouping`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvadvfilter_grouping` (
  `groupid` int(11) NOT NULL,
  `cvid` int(19) NOT NULL,
  `group_condition` varchar(255) DEFAULT NULL,
  `condition_expression` text,
  PRIMARY KEY (`groupid`,`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvadvfilter_grouping`
--

INSERT INTO `vtiger_cvadvfilter_grouping` (`groupid`, `cvid`, `group_condition`, `condition_expression`) VALUES
(1, 2, '', ''),
(1, 5, '', ''),
(1, 11, '', ''),
(1, 12, '', ''),
(1, 14, '', ''),
(1, 15, '', ''),
(1, 17, '', ''),
(1, 18, '', ''),
(1, 31, '', ''),
(1, 32, '', ''),
(1, 33, '', ''),
(1, 34, '', ''),
(1, 35, '', ''),
(1, 36, '', ''),
(1, 37, '', ''),
(1, 50, 'and', ' 0 '),
(1, 52, 'and', ' 0 '),
(1, 54, 'and', ' 0 ');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvcolumnlist`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvcolumnlist` (
  `cvid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  PRIMARY KEY (`cvid`,`columnindex`),
  KEY `cvcolumnlist_columnindex_idx` (`columnindex`),
  KEY `cvcolumnlist_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvcolumnlist`
--

INSERT INTO `vtiger_cvcolumnlist` (`cvid`, `columnindex`, `columnname`) VALUES
(1, 1, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(1, 2, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(1, 3, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(1, 4, 'vtiger_leadaddress:phone:phone:Leads_Phone:V'),
(1, 5, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(1, 6, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(1, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Leads_Assigned_To:V'),
(2, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(2, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(2, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(2, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(2, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(2, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(3, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(3, 1, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(3, 2, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(3, 3, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(3, 4, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(3, 5, 'vtiger_leaddetails:email:email:Leads_Email:E'),
(4, 1, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(4, 2, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(4, 3, 'vtiger_account:website:website:Accounts_Website:V'),
(4, 4, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(4, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(5, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(5, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(5, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(5, 3, 'vtiger_account:rating:rating:Accounts_Rating:V'),
(5, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(6, 0, 'vtiger_account:accountname:accountname:Accounts_Account_Name:V'),
(6, 1, 'vtiger_account:phone:phone:Accounts_Phone:V'),
(6, 2, 'vtiger_account:website:website:Accounts_Website:V'),
(6, 3, 'vtiger_accountbillads:bill_city:bill_city:Accounts_City:V'),
(6, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Accounts_Assigned_To:V'),
(7, 1, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(7, 2, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(7, 3, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(7, 4, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:I'),
(7, 5, 'vtiger_contactdetails:email:email:Contacts_Email:E'),
(7, 6, 'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),
(7, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(8, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(8, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(8, 2, 'vtiger_contactaddress:mailingstreet:mailingstreet:Contacts_Mailing_Street:V'),
(8, 3, 'vtiger_contactaddress:mailingcity:mailingcity:Contacts_Mailing_City:V'),
(8, 4, 'vtiger_contactaddress:mailingstate:mailingstate:Contacts_Mailing_State:V'),
(8, 5, 'vtiger_contactaddress:mailingzip:mailingzip:Contacts_Mailing_Zip:V'),
(8, 6, 'vtiger_contactaddress:mailingcountry:mailingcountry:Contacts_Mailing_Country:V'),
(9, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(9, 1, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(9, 2, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(9, 3, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:I'),
(9, 4, 'vtiger_contactdetails:email:email:Contacts_Email:E'),
(9, 5, 'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Phone:V'),
(9, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Contacts_Assigned_To:V'),
(10, 1, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(10, 2, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(10, 3, 'vtiger_potential:sales_stage:sales_stage:Potentials_Sales_Stage:V'),
(10, 4, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(10, 5, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(10, 6, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(10, 7, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(10, 8, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(11, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(11, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(11, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(11, 3, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(11, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(11, 5, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(12, 0, 'vtiger_potential:potentialname:potentialname:Potentials_Potential_Name:V'),
(12, 1, 'vtiger_potential:related_to:related_to:Potentials_Related_To:V'),
(12, 2, 'vtiger_potential:amount:amount:Potentials_Amount:N'),
(12, 3, 'vtiger_potential:leadsource:leadsource:Potentials_Lead_Source:V'),
(12, 4, 'vtiger_potential:closingdate:closingdate:Potentials_Expected_Close_Date:D'),
(12, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Potentials_Assigned_To:V'),
(12, 6, 'vtiger_potential:contact_id:contact_id:Potentials_Contact_Name:V'),
(13, 1, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(13, 2, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(13, 3, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(13, 4, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(13, 5, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(13, 6, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(14, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(14, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(14, 2, 'vtiger_troubletickets:priority:ticketpriorities:HelpDesk_Priority:V'),
(14, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(14, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(14, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(15, 0, 'vtiger_troubletickets:title:ticket_title:HelpDesk_Title:V'),
(15, 1, 'vtiger_troubletickets:parent_id:parent_id:HelpDesk_Related_To:I'),
(15, 2, 'vtiger_troubletickets:status:ticketstatus:HelpDesk_Status:V'),
(15, 3, 'vtiger_troubletickets:product_id:product_id:HelpDesk_Product_Name:I'),
(15, 4, 'vtiger_crmentity:smownerid:assigned_user_id:HelpDesk_Assigned_To:V'),
(15, 5, 'vtiger_troubletickets:contact_id:contact_id:HelpDesk_Contact_Name:V'),
(16, 1, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(16, 2, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(16, 3, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(16, 4, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(16, 5, 'vtiger_quotes:total:hdnGrandTotal:Quotes_Total:I'),
(16, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(17, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(17, 1, 'vtiger_quotes:quotestage:quotestage:Quotes_Quote_Stage:V'),
(17, 2, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(17, 3, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(17, 4, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(17, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(18, 0, 'vtiger_quotes:subject:subject:Quotes_Subject:V'),
(18, 1, 'vtiger_quotes:potentialid:potential_id:Quotes_Potential_Name:I'),
(18, 2, 'vtiger_quotes:accountid:account_id:Quotes_Account_Name:I'),
(18, 3, 'vtiger_quotes:validtill:validtill:Quotes_Valid_Till:D'),
(18, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Quotes_Assigned_To:V'),
(19, 0, 'vtiger_activity:status:taskstatus:Calendar_Status:V'),
(19, 1, 'vtiger_activity:activitytype:activitytype:Calendar_Type:V'),
(19, 2, 'vtiger_activity:subject:subject:Calendar_Subject:V'),
(19, 3, 'vtiger_seactivityrel:crmid:parent_id:Calendar_Related_to:V'),
(19, 4, 'vtiger_activity:date_start:date_start:Calendar_Start_Date:D'),
(19, 5, 'vtiger_activity:due_date:due_date:Calendar_End_Date:D'),
(19, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),
(20, 0, 'vtiger_activity:subject:subject:Emails_Subject:V'),
(20, 1, 'vtiger_emaildetails:to_email:saved_toid:Emails_To:V'),
(20, 2, 'vtiger_activity:date_start:date_start:Emails_Date_Sent:D'),
(21, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(21, 2, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(21, 3, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(21, 4, 'vtiger_invoice:total:hdnGrandTotal:Invoice_Total:I'),
(21, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(22, 1, 'vtiger_notes:title:notes_title:Notes_Title:V'),
(22, 2, 'vtiger_notes:filename:filename:Notes_File:V'),
(22, 3, 'vtiger_crmentity:modifiedtime:modifiedtime:Notes_Modified_Time:DT'),
(22, 4, 'vtiger_crmentity:smownerid:assigned_user_id:Notes_Assigned_To:V'),
(23, 1, 'vtiger_pricebook:bookname:bookname:PriceBooks_Price_Book_Name:V'),
(23, 2, 'vtiger_pricebook:active:active:PriceBooks_Active:V'),
(23, 3, 'vtiger_pricebook:currency_id:currency_id:PriceBooks_Currency:I'),
(24, 1, 'vtiger_products:productname:productname:Products_Product_Name:V'),
(24, 2, 'vtiger_products:productcode:productcode:Products_Part_Number:V'),
(24, 3, 'vtiger_products:commissionrate:commissionrate:Products_Commission_Rate:V'),
(24, 4, 'vtiger_products:qtyinstock:qtyinstock:Products_Quantity_In_Stock:V'),
(24, 5, 'vtiger_products:qty_per_unit:qty_per_unit:Products_Qty/Unit:V'),
(24, 6, 'vtiger_products:unit_price:unit_price:Products_Unit_Price:V'),
(25, 1, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(25, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(25, 3, 'vtiger_purchaseorder:tracking_no:tracking_no:PurchaseOrder_Tracking_Number:V'),
(25, 4, 'vtiger_purchaseorder:total:hdnGrandTotal:PurchaseOrder_Total:V'),
(25, 5, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(26, 1, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(26, 2, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:I'),
(26, 3, 'vtiger_salesorder:quoteid:quote_id:SalesOrder_Quote_Name:I'),
(26, 4, 'vtiger_salesorder:total:hdnGrandTotal:SalesOrder_Total:V'),
(26, 5, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(27, 1, 'vtiger_vendor:vendorname:vendorname:Vendors_Vendor_Name:V'),
(27, 2, 'vtiger_vendor:phone:phone:Vendors_Phone:V'),
(27, 3, 'vtiger_vendor:email:email:Vendors_Email:E'),
(27, 4, 'vtiger_vendor:category:category:Vendors_Category:V'),
(27, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Vendors_Assigned_To:V'),
(28, 1, 'vtiger_faq:question:question:Faq_Question:V'),
(28, 2, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(28, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(28, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(28, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:Faq_Modified_Time:DT'),
(29, 1, 'vtiger_campaign:campaignname:campaignname:Campaigns_Campaign_Name:V'),
(29, 2, 'vtiger_campaign:campaigntype:campaigntype:Campaigns_Campaign_Type:N'),
(29, 3, 'vtiger_campaign:campaignstatus:campaignstatus:Campaigns_Campaign_Status:N'),
(29, 4, 'vtiger_campaign:expectedrevenue:expectedrevenue:Campaigns_Expected_Revenue:V'),
(29, 5, 'vtiger_campaign:closingdate:closingdate:Campaigns_Expected_Close_Date:D'),
(29, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Campaigns_Assigned_To:V'),
(30, 0, 'subject:subject:subject:Subject:V'),
(30, 1, 'from:fromname:fromname:From:N'),
(30, 2, 'to:tpname:toname:To:N'),
(30, 3, 'body:body:body:Body:V'),
(31, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(31, 1, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(31, 2, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(31, 3, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(31, 4, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(32, 0, 'vtiger_faq:question:question:Faq_Question:V'),
(32, 1, 'vtiger_faq:answer:faq_answer:Faq_Answer:V'),
(32, 2, 'vtiger_faq:status:faqstatus:Faq_Status:V'),
(32, 3, 'vtiger_faq:product_id:product_id:Faq_Product_Name:I'),
(32, 4, 'vtiger_faq:category:faqcategories:Faq_Category:V'),
(32, 5, 'vtiger_crmentity:createdtime:createdtime:Faq_Created_Time:DT'),
(33, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(33, 1, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(33, 2, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(33, 3, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(33, 4, 'vtiger_purchaseorder:duedate:duedate:PurchaseOrder_Due_Date:V'),
(34, 0, 'vtiger_purchaseorder:subject:subject:PurchaseOrder_Subject:V'),
(34, 1, 'vtiger_purchaseorder:vendorid:vendor_id:PurchaseOrder_Vendor_Name:I'),
(34, 2, 'vtiger_crmentity:smownerid:assigned_user_id:PurchaseOrder_Assigned_To:V'),
(34, 3, 'vtiger_purchaseorder:postatus:postatus:PurchaseOrder_Status:V'),
(34, 4, 'vtiger_purchaseorder:carrier:carrier:PurchaseOrder_Carrier:V'),
(34, 5, 'vtiger_poshipads:ship_street:ship_street:PurchaseOrder_Shipping_Address:V'),
(35, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(35, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(35, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),
(35, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(35, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(35, 5, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(35, 6, 'vtiger_crmentity:createdtime:createdtime:Invoice_Created_Time:DT'),
(36, 0, 'vtiger_invoice:invoice_no:invoice_no:Invoice_Invoice_No:V'),
(36, 1, 'vtiger_invoice:subject:subject:Invoice_Subject:V'),
(36, 2, 'vtiger_invoice:accountid:account_id:Invoice_Account_Name:I'),
(36, 3, 'vtiger_invoice:salesorderid:salesorder_id:Invoice_Sales_Order:I'),
(36, 4, 'vtiger_invoice:invoicestatus:invoicestatus:Invoice_Status:V'),
(36, 5, 'vtiger_invoiceshipads:ship_street:ship_street:Invoice_Shipping_Address:V'),
(36, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Invoice_Assigned_To:V'),
(37, 0, 'vtiger_salesorder:subject:subject:SalesOrder_Subject:V'),
(37, 1, 'vtiger_salesorder:accountid:account_id:SalesOrder_Account_Name:I'),
(37, 2, 'vtiger_salesorder:sostatus:sostatus:SalesOrder_Status:V'),
(37, 3, 'vtiger_crmentity:smownerid:assigned_user_id:SalesOrder_Assigned_To:V'),
(37, 4, 'vtiger_soshipads:ship_street:ship_street:SalesOrder_Shipping_Address:V'),
(37, 5, 'vtiger_salesorder:carrier:carrier:SalesOrder_Carrier:V'),
(38, 0, 'vtiger_pbxmanager:callstatus:callstatus:PBXManager_Call_Status:V'),
(38, 1, 'vtiger_pbxmanager:customernumber:customernumber:PBXManager_Customer_Number:V'),
(38, 2, 'vtiger_pbxmanager:customer:customer:PBXManager_Customer:V'),
(38, 3, 'vtiger_pbxmanager:user:user:PBXManager_User:V'),
(38, 4, 'vtiger_pbxmanager:recordingurl:recordingurl:PBXManager_Recording_URL:V'),
(38, 5, 'vtiger_pbxmanager:totalduration:totalduration:PBXManager_Total_Duration:I'),
(38, 6, 'vtiger_pbxmanager:starttime:starttime:PBXManager_Start_Time:DT'),
(39, 1, 'vtiger_servicecontracts:subject:subject:ServiceContracts_Subject:V'),
(39, 2, 'vtiger_servicecontracts:sc_related_to:sc_related_to:ServiceContracts_Related_to:V'),
(39, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ServiceContracts_Assigned_To:V'),
(39, 4, 'vtiger_servicecontracts:start_date:start_date:ServiceContracts_Start_Date:D'),
(39, 5, 'vtiger_servicecontracts:due_date:due_date:ServiceContracts_Due_date:D'),
(39, 7, 'vtiger_servicecontracts:progress:progress:ServiceContracts_Progress:N'),
(39, 8, 'vtiger_servicecontracts:contract_status:contract_status:ServiceContracts_Status:V'),
(40, 1, 'vtiger_service:servicename:servicename:Services_Service_Name:V'),
(40, 2, 'vtiger_service:service_usageunit:service_usageunit:Services_Usage_Unit:V'),
(40, 3, 'vtiger_service:unit_price:unit_price:Services_Price:N'),
(40, 4, 'vtiger_service:qty_per_unit:qty_per_unit:Services_No_of_Units:N'),
(40, 5, 'vtiger_service:servicecategory:servicecategory:Services_Service_Category:V'),
(40, 6, 'vtiger_crmentity:smownerid:assigned_user_id:Services_Owner:I'),
(41, 1, 'vtiger_assets:assetname:assetname:Assets_Asset_Name:V'),
(41, 2, 'vtiger_assets:account:account:Assets_Customer_Name:V'),
(41, 3, 'vtiger_assets:product:product:Assets_Product_Name:V'),
(42, 0, 'vtiger_modcomments:commentcontent:commentcontent:ModComments_Comment:V'),
(42, 1, 'vtiger_modcomments:related_to:related_to:ModComments_Related_To:V'),
(42, 2, 'vtiger_crmentity:modifiedtime:modifiedtime:ModComments_Modified_Time:DT'),
(42, 3, 'vtiger_crmentity:smownerid:assigned_user_id:ModComments_Assigned_To:V'),
(46, 0, 'vtiger_smsnotifier:message:message:SMSNotifier_message:V'),
(46, 2, 'vtiger_crmentity:smownerid:assigned_user_id:SMSNotifier_Assigned_To:V'),
(46, 3, 'vtiger_crmentity:createdtime:createdtime:SMSNotifier_Created_Time:DT'),
(46, 4, 'vtiger_crmentity:modifiedtime:modifiedtime:SMSNotifier_Modified_Time:DT'),
(47, 0, 'vtiger_projectmilestone:projectmilestonename:projectmilestonename:ProjectMilestone_Project_Milestone_Name:V'),
(47, 1, 'vtiger_projectmilestone:projectmilestonedate:projectmilestonedate:ProjectMilestone_Milestone_Date:D'),
(47, 3, 'vtiger_crmentity:description:description:ProjectMilestone_description:V'),
(47, 4, 'vtiger_crmentity:createdtime:createdtime:ProjectMilestone_Created_Time:T'),
(47, 5, 'vtiger_crmentity:modifiedtime:modifiedtime:ProjectMilestone_Modified_Time:T'),
(48, 2, 'vtiger_projecttask:projecttaskname:projecttaskname:ProjectTask_Project_Task_Name:V'),
(48, 3, 'vtiger_projecttask:projectid:projectid:ProjectTask_Related_to:V'),
(48, 4, 'vtiger_projecttask:projecttaskpriority:projecttaskpriority:ProjectTask_Priority:V'),
(48, 5, 'vtiger_projecttask:projecttaskprogress:projecttaskprogress:ProjectTask_Progress:V'),
(48, 6, 'vtiger_projecttask:projecttaskhours:projecttaskhours:ProjectTask_Worked_Hours:V'),
(48, 7, 'vtiger_projecttask:startdate:startdate:ProjectTask_Start_Date:D'),
(48, 8, 'vtiger_projecttask:enddate:enddate:ProjectTask_End_Date:D'),
(48, 9, 'vtiger_crmentity:smownerid:assigned_user_id:ProjectTask_Assigned_To:V'),
(49, 0, 'vtiger_project:projectname:projectname:Project_Project_Name:V'),
(49, 1, 'vtiger_project:linktoaccountscontacts:linktoaccountscontacts:Project_Related_to:V'),
(49, 2, 'vtiger_project:startdate:startdate:Project_Start_Date:D'),
(49, 3, 'vtiger_project:targetenddate:targetenddate:Project_Target_End_Date:D'),
(49, 4, 'vtiger_project:actualenddate:actualenddate:Project_Actual_End_Date:D'),
(49, 5, 'vtiger_project:targetbudget:targetbudget:Project_Target_Budget:V'),
(49, 6, 'vtiger_project:progress:progress:Project_Progress:V'),
(49, 7, 'vtiger_project:projectstatus:projectstatus:Project_Status:V'),
(49, 8, 'vtiger_crmentity:smownerid:assigned_user_id:Project_Assigned_To:V'),
(50, 0, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(50, 1, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(51, 0, 'vtiger_contactdetails:firstname:firstname:Contacts_First_Name:V'),
(51, 1, 'vtiger_contactdetails:salutation:salutationtype:Contacts_Salutation:V'),
(51, 2, 'vtiger_contactdetails:contact_no:contact_no:Contacts_Contact_Id:V'),
(51, 3, 'vtiger_contactdetails:lastname:lastname:Contacts_Last_Name:V'),
(51, 4, 'vtiger_contactdetails:phone:phone:Contacts_Office_Phone:V'),
(51, 5, 'vtiger_contactdetails:accountid:account_id:Contacts_Account_Name:V'),
(51, 6, 'vtiger_contactdetails:mobile:mobile:Contacts_Mobile:V'),
(51, 7, 'vtiger_contactsubdetails:leadsource:leadsource:Contacts_Lead_Source:V'),
(51, 8, 'vtiger_contactsubdetails:homephone:homephone:Contacts_Home_Phone:V'),
(51, 9, 'vtiger_contactdetails:title:title:Contacts_Title:V'),
(51, 10, 'vtiger_contactsubdetails:otherphone:otherphone:Contacts_Other_Phone:V'),
(51, 11, 'vtiger_contactdetails:department:department:Contacts_Department:V'),
(52, 0, 'vtiger_activity:subject:subject:Calendar_Subject:V'),
(52, 1, 'vtiger_crmentity:smownerid:assigned_user_id:Calendar_Assigned_To:V'),
(52, 2, 'vtiger_activity:recurringtype:recurringtype:Calendar_Recurrence:O'),
(53, 0, 'vtiger_leaddetails:firstname:firstname:Leads_First_Name:V'),
(53, 1, 'vtiger_leaddetails:lead_no:lead_no:Leads_Lead_No:V'),
(53, 2, 'vtiger_leaddetails:lastname:lastname:Leads_Last_Name:V'),
(53, 3, 'vtiger_leaddetails:salutation:salutationtype:Leads_Salutation:V'),
(53, 4, 'vtiger_leaddetails:company:company:Leads_Company:V'),
(53, 5, 'vtiger_leadaddress:mobile:mobile:Leads_Mobile:V'),
(53, 6, 'vtiger_leaddetails:designation:designation:Leads_Designation:V'),
(53, 7, 'vtiger_leadaddress:fax:fax:Leads_Fax:V'),
(53, 8, 'vtiger_leaddetails:leadsource:leadsource:Leads_Lead_Source:V'),
(53, 9, 'vtiger_leaddetails:email:email:Leads_Email:V'),
(53, 10, 'vtiger_leaddetails:industry:industry:Leads_Industry:V'),
(53, 11, 'vtiger_leadsubdetails:website:website:Leads_Website:V'),
(54, 0, 'vtiger_notes:title:notes_title:Documents_Title:V'),
(54, 1, 'vtiger_notes:note_no:note_no:Documents_Document_No:V'),
(54, 2, 'vtiger_crmentity:createdtime:createdtime:Documents_Created_Time:DT');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_cvstdfilter`
--

CREATE TABLE IF NOT EXISTS `vtiger_cvstdfilter` (
  `cvid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `stdfilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`cvid`),
  KEY `cvstdfilter_cvid_idx` (`cvid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_cvstdfilter`
--

INSERT INTO `vtiger_cvstdfilter` (`cvid`, `columnname`, `stdfilter`, `startdate`, `enddate`) VALUES
(3, 'vtiger_crmentity:modifiedtime:modifiedtime:Leads_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30'),
(6, 'vtiger_crmentity:createdtime:createdtime:Accounts_Created_Time', 'thisweek', '2005-06-19', '2005-06-25'),
(9, 'vtiger_contactsubdetails:birthday:birthday:Contacts_Birthdate', 'today', '2005-06-25', '2005-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2grp`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2grp` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_grp2grp_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_grp2grp`
--

INSERT INTO `vtiger_datashare_grp2grp` (`shareid`, `share_groupid`, `to_groupid`, `permission`) VALUES
(1, 3, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2role` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_grp2role_share_groupid` (`share_groupid`),
  KEY `idx_datashare_grp2role_to_roleid` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_grp2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_grp2rs` (
  `shareid` int(19) NOT NULL,
  `share_groupid` int(19) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_grp2rs_share_groupid_idx` (`share_groupid`),
  KEY `datashare_grp2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_module_rel`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_module_rel` (
  `shareid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `relationtype` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_module_rel_tabid` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_module_rel`
--

INSERT INTO `vtiger_datashare_module_rel` (`shareid`, `tabid`, `relationtype`) VALUES
(1, 2, 'GRP::GRP');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_module_rel_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_module_rel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_module_rel_seq`
--

INSERT INTO `vtiger_datashare_module_rel_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodules` (
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `tabid` int(19) DEFAULT NULL,
  `relatedto_tabid` int(19) DEFAULT NULL,
  PRIMARY KEY (`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodules_tabid_idx` (`tabid`),
  KEY `datashare_relatedmodules_relatedto_tabid_idx` (`relatedto_tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_relatedmodules`
--

INSERT INTO `vtiger_datashare_relatedmodules` (`datashare_relatedmodule_id`, `tabid`, `relatedto_tabid`) VALUES
(1, 6, 2),
(2, 6, 13),
(3, 6, 20),
(4, 6, 22),
(5, 6, 23),
(6, 2, 20),
(7, 2, 22),
(8, 20, 22),
(9, 22, 23);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodules_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodules_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_datashare_relatedmodules_seq`
--

INSERT INTO `vtiger_datashare_relatedmodules_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_relatedmodule_permission`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_relatedmodule_permission` (
  `shareid` int(19) NOT NULL,
  `datashare_relatedmodule_id` int(19) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`,`datashare_relatedmodule_id`),
  KEY `datashare_relatedmodule_permission_shareid_permissions_idx` (`shareid`,`permission`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2group`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2group` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `idx_datashare_role2group_share_roleid` (`share_roleid`),
  KEY `idx_datashare_role2group_to_groupid` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2role` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_role2role_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_role2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_role2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_role2s_share_roleid_idx` (`share_roleid`),
  KEY `datashare_role2s_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2grp`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2grp` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_groupid` int(19) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2grp_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2grp_to_groupid_idx` (`to_groupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2role` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2role_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `datashare_rs2role_to_roleid_idx` (`to_roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_datashare_rs2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_datashare_rs2rs` (
  `shareid` int(19) NOT NULL,
  `share_roleandsubid` varchar(255) DEFAULT NULL,
  `to_roleandsubid` varchar(255) DEFAULT NULL,
  `permission` int(19) DEFAULT NULL,
  PRIMARY KEY (`shareid`),
  KEY `datashare_rs2rs_share_roleandsubid_idx` (`share_roleandsubid`),
  KEY `idx_datashare_rs2rs_to_roleandsubid_idx` (`to_roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format`
--

CREATE TABLE IF NOT EXISTS `vtiger_date_format` (
  `date_formatid` int(19) NOT NULL AUTO_INCREMENT,
  `date_format` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`date_formatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_date_format`
--

INSERT INTO `vtiger_date_format` (`date_formatid`, `date_format`, `sortorderid`, `presence`) VALUES
(1, 'dd-mm-yyyy', 0, 1),
(2, 'mm-dd-yyyy', 1, 1),
(3, 'yyyy-mm-dd', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_date_format_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_date_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_date_format_seq`
--

INSERT INTO `vtiger_date_format_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek`
--

CREATE TABLE IF NOT EXISTS `vtiger_dayoftheweek` (
  `dayoftheweekid` int(11) NOT NULL AUTO_INCREMENT,
  `dayoftheweek` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`dayoftheweekid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_dayoftheweek`
--

INSERT INTO `vtiger_dayoftheweek` (`dayoftheweekid`, `dayoftheweek`, `sortorderid`, `presence`) VALUES
(1, 'Sunday', 1, 1),
(2, 'Monday', 2, 1),
(3, 'Tuesday', 3, 1),
(4, 'Wednesday', 4, 1),
(5, 'Thursday', 5, 1),
(6, 'Friday', 6, 1),
(7, 'Saturday', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_dayoftheweek_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_dayoftheweek_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_dayoftheweek_seq`
--

INSERT INTO `vtiger_dayoftheweek_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaultactivitytype` (
  `defaultactivitytypeid` int(11) NOT NULL AUTO_INCREMENT,
  `defaultactivitytype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`defaultactivitytypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_defaultactivitytype`
--

INSERT INTO `vtiger_defaultactivitytype` (`defaultactivitytypeid`, `defaultactivitytype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Call', 1, 325, 1),
(2, 'Meeting', 1, 326, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultactivitytype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaultactivitytype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_defaultactivitytype_seq`
--

INSERT INTO `vtiger_defaultactivitytype_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaultcv`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaultcv` (
  `tabid` int(19) NOT NULL,
  `defaultviewname` varchar(50) NOT NULL,
  `query` text,
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaulteventstatus` (
  `defaulteventstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `defaulteventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`defaulteventstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_defaulteventstatus`
--

INSERT INTO `vtiger_defaulteventstatus` (`defaulteventstatusid`, `defaulteventstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Planned', 1, 322, 1),
(2, 'Held', 1, 323, 2),
(3, 'Not Held', 1, 324, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_defaulteventstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_defaulteventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_defaulteventstatus_seq`
--

INSERT INTO `vtiger_defaulteventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view`
--

CREATE TABLE IF NOT EXISTS `vtiger_default_record_view` (
  `default_record_viewid` int(11) NOT NULL AUTO_INCREMENT,
  `default_record_view` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`default_record_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_default_record_view`
--

INSERT INTO `vtiger_default_record_view` (`default_record_viewid`, `default_record_view`, `sortorderid`, `presence`) VALUES
(1, 'Summary', 1, 1),
(2, 'Detail', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_default_record_view_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_default_record_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_default_record_view_seq`
--

INSERT INTO `vtiger_default_record_view_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_field`
--

CREATE TABLE IF NOT EXISTS `vtiger_def_org_field` (
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL,
  PRIMARY KEY (`fieldid`),
  KEY `def_org_field_tabid_fieldid_idx` (`tabid`,`fieldid`),
  KEY `def_org_field_tabid_idx` (`tabid`),
  KEY `def_org_field_visible_fieldid_idx` (`visible`,`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_def_org_field`
--

INSERT INTO `vtiger_def_org_field` (`tabid`, `fieldid`, `visible`, `readonly`) VALUES
(6, 1, 0, 0),
(6, 2, 0, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(7, 37, 0, 0),
(7, 38, 0, 0),
(7, 39, 0, 0),
(7, 40, 0, 0),
(7, 41, 0, 0),
(7, 42, 0, 0),
(7, 43, 0, 0),
(7, 44, 0, 0),
(7, 45, 0, 0),
(7, 46, 0, 0),
(7, 47, 0, 0),
(7, 48, 0, 0),
(7, 49, 0, 0),
(7, 50, 0, 0),
(7, 51, 0, 0),
(7, 52, 0, 0),
(7, 53, 0, 0),
(7, 54, 0, 0),
(7, 55, 0, 0),
(7, 56, 0, 0),
(7, 57, 0, 0),
(7, 58, 0, 0),
(7, 59, 0, 0),
(7, 60, 0, 0),
(7, 61, 0, 0),
(7, 62, 0, 0),
(7, 63, 0, 0),
(7, 64, 0, 0),
(7, 65, 0, 0),
(4, 66, 0, 0),
(4, 67, 0, 0),
(4, 68, 0, 0),
(4, 69, 0, 0),
(4, 70, 0, 0),
(4, 71, 0, 0),
(4, 72, 0, 0),
(4, 73, 0, 0),
(4, 74, 0, 0),
(4, 75, 0, 0),
(4, 76, 0, 0),
(4, 77, 0, 0),
(4, 78, 0, 0),
(4, 79, 0, 0),
(4, 80, 0, 0),
(4, 81, 0, 0),
(4, 82, 0, 0),
(4, 83, 0, 0),
(4, 84, 0, 0),
(4, 85, 0, 0),
(4, 86, 0, 0),
(4, 87, 0, 0),
(4, 88, 0, 0),
(4, 89, 0, 0),
(4, 90, 0, 0),
(4, 91, 0, 0),
(4, 92, 0, 0),
(4, 93, 0, 0),
(4, 94, 0, 0),
(4, 95, 0, 0),
(4, 96, 0, 0),
(4, 97, 0, 0),
(4, 98, 0, 0),
(4, 99, 0, 0),
(4, 100, 0, 0),
(4, 101, 0, 0),
(4, 102, 0, 0),
(4, 103, 0, 0),
(4, 104, 0, 0),
(4, 105, 0, 0),
(4, 106, 0, 0),
(4, 107, 0, 0),
(4, 108, 0, 0),
(4, 109, 0, 0),
(2, 110, 0, 0),
(2, 111, 0, 0),
(2, 112, 0, 0),
(2, 113, 0, 0),
(2, 114, 0, 0),
(2, 115, 0, 0),
(2, 116, 0, 0),
(2, 117, 0, 0),
(2, 118, 0, 0),
(2, 119, 0, 0),
(2, 120, 0, 0),
(2, 121, 0, 0),
(2, 122, 0, 0),
(2, 123, 0, 0),
(2, 124, 0, 0),
(2, 125, 0, 0),
(26, 126, 0, 0),
(26, 127, 0, 0),
(26, 128, 0, 0),
(26, 129, 0, 0),
(26, 130, 0, 0),
(26, 131, 0, 0),
(26, 132, 0, 0),
(26, 133, 0, 0),
(26, 134, 0, 0),
(26, 135, 0, 0),
(26, 136, 0, 0),
(26, 137, 0, 0),
(26, 138, 0, 0),
(26, 139, 0, 0),
(26, 140, 0, 0),
(26, 141, 0, 0),
(26, 142, 0, 0),
(26, 143, 0, 0),
(26, 144, 0, 0),
(26, 145, 0, 0),
(26, 146, 0, 0),
(26, 147, 0, 0),
(26, 148, 0, 0),
(26, 149, 0, 0),
(26, 150, 0, 0),
(4, 151, 0, 0),
(6, 152, 0, 0),
(7, 153, 0, 0),
(26, 154, 0, 0),
(13, 155, 0, 0),
(13, 156, 0, 0),
(13, 157, 0, 0),
(13, 158, 0, 0),
(13, 159, 0, 0),
(13, 160, 0, 0),
(13, 161, 0, 0),
(13, 162, 0, 0),
(13, 163, 0, 0),
(13, 164, 0, 0),
(13, 165, 0, 0),
(13, 166, 0, 0),
(13, 167, 0, 0),
(13, 168, 0, 0),
(13, 169, 0, 0),
(13, 170, 0, 0),
(13, 171, 0, 0),
(13, 172, 0, 0),
(14, 173, 0, 0),
(14, 174, 0, 0),
(14, 175, 0, 0),
(14, 176, 0, 0),
(14, 177, 0, 0),
(14, 178, 0, 0),
(14, 179, 0, 0),
(14, 180, 0, 0),
(14, 181, 0, 0),
(14, 182, 0, 0),
(14, 183, 0, 0),
(14, 184, 0, 0),
(14, 185, 0, 0),
(14, 186, 0, 0),
(14, 187, 0, 0),
(14, 188, 0, 0),
(14, 189, 0, 0),
(14, 190, 0, 0),
(14, 191, 0, 0),
(14, 192, 0, 0),
(14, 193, 0, 0),
(14, 194, 0, 0),
(14, 195, 0, 0),
(14, 196, 0, 0),
(14, 197, 0, 0),
(14, 198, 0, 0),
(14, 199, 0, 0),
(14, 200, 0, 0),
(14, 201, 0, 0),
(14, 202, 0, 0),
(14, 203, 0, 0),
(8, 204, 0, 0),
(8, 205, 0, 0),
(8, 206, 0, 0),
(8, 207, 0, 0),
(8, 208, 0, 0),
(8, 209, 0, 0),
(8, 210, 0, 0),
(8, 211, 0, 0),
(8, 212, 0, 0),
(8, 213, 0, 0),
(8, 214, 0, 0),
(8, 215, 0, 0),
(8, 216, 0, 0),
(8, 217, 0, 0),
(8, 218, 0, 0),
(10, 219, 0, 0),
(10, 220, 0, 0),
(10, 221, 0, 0),
(10, 222, 0, 0),
(10, 223, 0, 0),
(10, 224, 0, 0),
(10, 225, 0, 0),
(10, 226, 0, 0),
(10, 227, 0, 0),
(10, 228, 0, 0),
(10, 229, 0, 0),
(10, 230, 0, 0),
(9, 231, 0, 0),
(9, 232, 0, 0),
(9, 233, 0, 0),
(9, 234, 0, 0),
(9, 235, 0, 0),
(9, 236, 0, 0),
(9, 237, 0, 0),
(9, 238, 0, 0),
(9, 239, 0, 0),
(9, 240, 0, 0),
(9, 241, 0, 0),
(9, 242, 0, 0),
(9, 243, 0, 0),
(9, 244, 0, 0),
(9, 245, 0, 0),
(9, 246, 0, 0),
(9, 247, 0, 0),
(9, 248, 0, 0),
(9, 249, 0, 0),
(9, 250, 0, 0),
(9, 251, 0, 0),
(9, 252, 0, 0),
(9, 253, 0, 0),
(9, 254, 0, 0),
(16, 255, 0, 0),
(16, 256, 0, 0),
(16, 257, 0, 0),
(16, 258, 0, 0),
(16, 259, 0, 0),
(16, 260, 0, 0),
(16, 261, 0, 0),
(16, 262, 0, 0),
(16, 263, 0, 0),
(16, 264, 0, 0),
(16, 265, 0, 0),
(16, 266, 0, 0),
(16, 267, 0, 0),
(16, 268, 0, 0),
(16, 269, 0, 0),
(16, 270, 0, 0),
(16, 271, 0, 0),
(16, 272, 0, 0),
(16, 273, 0, 0),
(16, 274, 0, 0),
(16, 275, 0, 0),
(16, 276, 0, 0),
(16, 277, 0, 0),
(15, 278, 0, 0),
(15, 279, 0, 0),
(15, 280, 0, 0),
(15, 281, 0, 0),
(15, 282, 0, 0),
(15, 283, 0, 0),
(15, 284, 0, 0),
(15, 285, 0, 0),
(15, 286, 0, 0),
(15, 287, 0, 0),
(18, 288, 0, 0),
(18, 289, 0, 0),
(18, 290, 0, 0),
(18, 291, 0, 0),
(18, 292, 0, 0),
(18, 293, 0, 0),
(18, 294, 0, 0),
(18, 295, 0, 0),
(18, 296, 0, 0),
(18, 297, 0, 0),
(18, 298, 0, 0),
(18, 299, 0, 0),
(18, 300, 0, 0),
(18, 301, 0, 0),
(18, 302, 0, 0),
(18, 303, 0, 0),
(18, 304, 0, 0),
(19, 305, 0, 0),
(19, 306, 0, 0),
(19, 307, 0, 0),
(19, 308, 0, 0),
(19, 309, 0, 0),
(19, 310, 0, 0),
(19, 311, 0, 0),
(19, 312, 0, 0),
(20, 313, 0, 0),
(20, 314, 0, 0),
(20, 315, 0, 0),
(20, 316, 0, 0),
(20, 317, 0, 0),
(20, 318, 0, 0),
(20, 319, 0, 0),
(20, 320, 0, 0),
(20, 321, 0, 0),
(20, 322, 0, 0),
(20, 323, 0, 0),
(20, 324, 0, 0),
(20, 325, 0, 0),
(20, 326, 0, 0),
(20, 327, 0, 0),
(20, 328, 0, 0),
(20, 329, 0, 0),
(20, 330, 0, 0),
(20, 331, 0, 0),
(20, 332, 0, 0),
(20, 333, 0, 0),
(20, 334, 0, 0),
(20, 335, 0, 0),
(20, 336, 0, 0),
(20, 337, 0, 0),
(20, 338, 0, 0),
(20, 339, 0, 0),
(20, 340, 0, 0),
(20, 341, 0, 0),
(20, 342, 0, 0),
(20, 343, 0, 0),
(20, 344, 0, 0),
(20, 345, 0, 0),
(20, 346, 0, 0),
(20, 347, 0, 0),
(20, 348, 0, 0),
(20, 349, 0, 0),
(21, 350, 0, 0),
(21, 351, 0, 0),
(21, 352, 0, 0),
(21, 353, 0, 0),
(21, 354, 0, 0),
(21, 355, 0, 0),
(21, 356, 0, 0),
(21, 357, 0, 0),
(21, 358, 0, 0),
(21, 359, 0, 0),
(21, 360, 0, 0),
(21, 361, 0, 0),
(21, 362, 0, 0),
(21, 363, 0, 0),
(21, 364, 0, 0),
(21, 365, 0, 0),
(21, 366, 0, 0),
(21, 367, 0, 0),
(21, 368, 0, 0),
(21, 369, 0, 0),
(21, 370, 0, 0),
(21, 371, 0, 0),
(21, 372, 0, 0),
(21, 373, 0, 0),
(21, 374, 0, 0),
(21, 375, 0, 0),
(21, 376, 0, 0),
(21, 377, 0, 0),
(21, 378, 0, 0),
(21, 379, 0, 0),
(21, 380, 0, 0),
(21, 381, 0, 0),
(21, 382, 0, 0),
(21, 383, 0, 0),
(21, 384, 0, 0),
(21, 385, 0, 0),
(21, 386, 0, 0),
(21, 387, 0, 0),
(22, 388, 0, 0),
(22, 389, 0, 0),
(22, 390, 0, 0),
(22, 391, 0, 0),
(22, 392, 0, 0),
(22, 393, 0, 0),
(22, 394, 0, 0),
(22, 395, 0, 0),
(22, 396, 0, 0),
(22, 397, 0, 0),
(22, 398, 0, 0),
(22, 399, 0, 0),
(22, 400, 0, 0),
(22, 401, 0, 0),
(22, 402, 0, 0),
(22, 403, 0, 0),
(22, 404, 0, 0),
(22, 405, 0, 0),
(22, 406, 0, 0),
(22, 407, 0, 0),
(22, 408, 0, 0),
(22, 409, 0, 0),
(22, 410, 0, 0),
(22, 411, 0, 0),
(22, 412, 0, 0),
(22, 413, 0, 0),
(22, 414, 0, 0),
(22, 415, 0, 0),
(22, 416, 0, 0),
(22, 417, 0, 0),
(22, 418, 0, 0),
(22, 419, 0, 0),
(22, 420, 0, 0),
(22, 421, 0, 0),
(22, 422, 0, 0),
(22, 423, 0, 0),
(22, 424, 0, 0),
(22, 425, 0, 0),
(22, 426, 0, 0),
(22, 427, 0, 0),
(22, 428, 0, 0),
(22, 429, 0, 0),
(22, 430, 0, 0),
(22, 431, 0, 0),
(22, 432, 0, 0),
(22, 433, 0, 0),
(22, 434, 0, 0),
(23, 435, 0, 0),
(23, 436, 0, 0),
(23, 437, 0, 0),
(23, 438, 0, 0),
(23, 439, 0, 0),
(23, 440, 0, 0),
(23, 441, 0, 0),
(23, 442, 0, 0),
(23, 443, 0, 0),
(23, 444, 0, 0),
(23, 445, 0, 0),
(23, 446, 0, 0),
(23, 447, 0, 0),
(23, 448, 0, 0),
(23, 449, 0, 0),
(23, 450, 0, 0),
(23, 451, 0, 0),
(23, 452, 0, 0),
(23, 453, 0, 0),
(23, 454, 0, 0),
(23, 455, 0, 0),
(23, 456, 0, 0),
(23, 457, 0, 0),
(23, 458, 0, 0),
(23, 459, 0, 0),
(23, 460, 0, 0),
(23, 461, 0, 0),
(23, 462, 0, 0),
(23, 463, 0, 0),
(23, 464, 0, 0),
(23, 465, 0, 0),
(23, 466, 0, 0),
(23, 467, 0, 0),
(23, 468, 0, 0),
(23, 469, 0, 0),
(23, 470, 0, 0),
(23, 471, 0, 0),
(23, 472, 0, 0),
(23, 473, 0, 0),
(29, 474, 0, 0),
(29, 478, 0, 0),
(29, 479, 0, 0),
(29, 481, 0, 0),
(29, 488, 0, 0),
(29, 489, 0, 0),
(29, 490, 0, 0),
(29, 491, 0, 0),
(29, 493, 0, 0),
(29, 494, 0, 0),
(29, 495, 0, 0),
(29, 496, 0, 0),
(29, 497, 0, 0),
(29, 502, 0, 0),
(29, 503, 0, 0),
(29, 504, 0, 0),
(29, 505, 0, 0),
(29, 513, 0, 0),
(10, 518, 0, 0),
(10, 519, 0, 0),
(10, 520, 0, 0),
(10, 521, 0, 0),
(10, 522, 0, 0),
(10, 523, 0, 0),
(34, 524, 0, 0),
(34, 525, 0, 0),
(34, 526, 0, 0),
(34, 527, 0, 0),
(34, 528, 0, 0),
(34, 529, 0, 0),
(34, 530, 0, 0),
(34, 531, 0, 0),
(34, 532, 0, 0),
(34, 533, 0, 0),
(34, 534, 0, 0),
(34, 535, 0, 0),
(34, 536, 0, 0),
(34, 537, 0, 0),
(34, 538, 0, 0),
(34, 539, 0, 0),
(29, 540, 0, 0),
(35, 541, 0, 0),
(35, 542, 0, 0),
(35, 543, 0, 0),
(35, 544, 0, 0),
(35, 545, 0, 0),
(35, 546, 0, 0),
(35, 547, 0, 0),
(35, 548, 0, 0),
(35, 549, 0, 0),
(35, 550, 0, 0),
(35, 551, 0, 0),
(35, 552, 0, 0),
(35, 553, 0, 0),
(35, 554, 0, 0),
(35, 555, 0, 0),
(35, 556, 0, 0),
(35, 557, 0, 0),
(35, 558, 0, 0),
(35, 559, 0, 0),
(36, 560, 0, 0),
(36, 561, 0, 0),
(36, 562, 0, 0),
(36, 563, 0, 0),
(36, 564, 0, 0),
(36, 565, 0, 0),
(36, 566, 0, 0),
(36, 567, 0, 0),
(36, 568, 0, 0),
(36, 569, 0, 0),
(36, 570, 0, 0),
(36, 571, 0, 0),
(36, 572, 0, 0),
(36, 573, 0, 0),
(36, 574, 0, 0),
(36, 575, 0, 0),
(36, 576, 0, 0),
(36, 577, 0, 0),
(36, 578, 0, 0),
(38, 579, 0, 0),
(38, 580, 0, 0),
(38, 581, 0, 0),
(38, 582, 0, 0),
(38, 583, 0, 0),
(38, 584, 0, 0),
(38, 585, 0, 0),
(38, 586, 0, 0),
(38, 587, 0, 0),
(38, 588, 0, 0),
(38, 589, 0, 0),
(38, 590, 0, 0),
(38, 591, 0, 0),
(38, 592, 0, 0),
(38, 593, 0, 0),
(38, 594, 0, 0),
(38, 595, 0, 0),
(38, 596, 0, 0),
(42, 597, 0, 0),
(42, 598, 0, 0),
(42, 599, 0, 0),
(42, 600, 0, 0),
(42, 601, 0, 0),
(42, 602, 0, 0),
(42, 603, 0, 0),
(43, 604, 0, 0),
(43, 605, 0, 0),
(43, 606, 0, 0),
(43, 607, 0, 0),
(43, 608, 0, 0),
(43, 609, 0, 0),
(43, 610, 0, 0),
(43, 611, 0, 0),
(43, 612, 0, 0),
(43, 613, 0, 0),
(44, 614, 0, 0),
(44, 615, 0, 0),
(44, 616, 0, 0),
(44, 617, 0, 0),
(44, 618, 0, 0),
(44, 619, 0, 0),
(44, 620, 0, 0),
(44, 621, 0, 0),
(44, 622, 0, 0),
(44, 623, 0, 0),
(44, 624, 0, 0),
(44, 625, 0, 0),
(44, 626, 0, 0),
(44, 627, 0, 0),
(44, 628, 0, 0),
(45, 629, 0, 0),
(45, 630, 0, 0),
(45, 631, 0, 0),
(45, 632, 0, 0),
(45, 633, 0, 0),
(45, 634, 0, 0),
(45, 635, 0, 0),
(45, 636, 0, 0),
(45, 637, 0, 0),
(45, 638, 0, 0),
(45, 639, 0, 0),
(45, 640, 0, 0),
(45, 641, 0, 0),
(45, 642, 0, 0),
(45, 643, 0, 0),
(45, 644, 0, 0),
(45, 645, 0, 0),
(47, 646, 0, 0),
(47, 647, 0, 0),
(47, 648, 0, 0),
(47, 649, 0, 0),
(47, 650, 0, 0),
(2, 651, 0, 0),
(29, 652, 0, 0),
(23, 653, 0, 0),
(23, 654, 0, 0),
(23, 655, 0, 0),
(23, 656, 0, 0),
(23, 657, 0, 0),
(23, 658, 0, 0),
(23, 659, 0, 0),
(23, 660, 0, 0),
(23, 661, 0, 0),
(22, 662, 0, 0),
(22, 663, 0, 0),
(22, 664, 0, 0),
(22, 665, 0, 0),
(22, 666, 0, 0),
(22, 667, 0, 0),
(22, 668, 0, 0),
(22, 669, 0, 0),
(22, 670, 0, 0),
(21, 671, 0, 0),
(21, 672, 0, 0),
(21, 673, 0, 0),
(21, 674, 0, 0),
(21, 675, 0, 0),
(21, 676, 0, 0),
(21, 677, 0, 0),
(21, 678, 0, 0),
(21, 679, 0, 0),
(20, 680, 0, 0),
(20, 681, 0, 0),
(20, 682, 0, 0),
(20, 683, 0, 0),
(20, 684, 0, 0),
(20, 685, 0, 0),
(20, 686, 0, 0),
(20, 687, 0, 0),
(20, 688, 0, 0),
(29, 689, 0, 0),
(44, 690, 0, 0),
(42, 691, 0, 0),
(29, 692, 0, 0),
(29, 693, 0, 0),
(29, 694, 0, 0),
(23, 695, 0, 0),
(22, 696, 0, 0),
(21, 697, 0, 0),
(20, 698, 0, 0),
(29, 699, 0, 0),
(6, 700, 0, 0),
(4, 701, 0, 0),
(2, 702, 0, 0),
(29, 703, 0, 0),
(23, 704, 0, 0),
(23, 705, 0, 0),
(21, 706, 0, 0),
(21, 707, 0, 0),
(18, 708, 0, 0),
(7, 709, 0, 0),
(42, 710, 0, 0),
(42, 711, 0, 0),
(23, 712, 0, 0),
(20, 713, 0, 0),
(21, 714, 0, 0),
(22, 715, 0, 0),
(29, 716, 0, 0),
(2, 717, 0, 0),
(13, 718, 0, 0),
(29, 719, 0, 0),
(13, 720, 0, 0),
(29, 721, 0, 0),
(29, 722, 0, 0),
(29, 723, 0, 0),
(2, 724, 0, 0),
(4, 725, 0, 0),
(6, 726, 0, 0),
(7, 727, 0, 0),
(9, 729, 0, 0),
(13, 730, 0, 0),
(18, 734, 0, 0),
(21, 737, 0, 0),
(23, 739, 0, 0),
(42, 745, 0, 0),
(43, 746, 0, 0),
(44, 747, 0, 0),
(45, 748, 0, 0),
(29, 750, 0, 0),
(14, 752, 0, 0),
(23, 753, 0, 0),
(20, 754, 0, 0),
(21, 755, 0, 0),
(22, 756, 0, 0),
(23, 757, 0, 0),
(20, 758, 0, 0),
(21, 759, 0, 0),
(22, 760, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share`
--

CREATE TABLE IF NOT EXISTS `vtiger_def_org_share` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `tabid` int(11) NOT NULL,
  `permission` int(19) DEFAULT NULL,
  `editstatus` int(19) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `vtiger_def_org_share`
--

INSERT INTO `vtiger_def_org_share` (`ruleid`, `tabid`, `permission`, `editstatus`) VALUES
(1, 2, 2, 0),
(2, 4, 2, 2),
(3, 6, 2, 0),
(4, 7, 2, 0),
(5, 9, 3, 1),
(6, 13, 2, 0),
(7, 16, 3, 2),
(8, 20, 2, 0),
(9, 21, 2, 0),
(10, 22, 2, 0),
(11, 23, 2, 0),
(12, 26, 2, 0),
(13, 8, 2, 0),
(14, 14, 2, 0),
(15, 34, 3, 0),
(16, 35, 2, 0),
(17, 36, 2, 0),
(18, 38, 2, 0),
(19, 42, 2, 0),
(20, 43, 2, 0),
(21, 44, 2, 0),
(22, 45, 2, 0),
(23, 47, 2, 0),
(24, 18, 2, 0),
(25, 10, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_def_org_share_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_def_org_share_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_def_org_share_seq`
--

INSERT INTO `vtiger_def_org_share_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationhrs`
--

CREATE TABLE IF NOT EXISTS `vtiger_durationhrs` (
  `hrsid` int(19) NOT NULL AUTO_INCREMENT,
  `hrs` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`hrsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_durationmins`
--

CREATE TABLE IF NOT EXISTS `vtiger_durationmins` (
  `minsid` int(19) NOT NULL AUTO_INCREMENT,
  `mins` varchar(50) DEFAULT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`minsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes`
--

CREATE TABLE IF NOT EXISTS `vtiger_duration_minutes` (
  `minutesid` int(19) NOT NULL AUTO_INCREMENT,
  `duration_minutes` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`minutesid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_duration_minutes`
--

INSERT INTO `vtiger_duration_minutes` (`minutesid`, `duration_minutes`, `sortorderid`, `presence`) VALUES
(1, '00', 0, 1),
(2, '15', 1, 1),
(3, '30', 2, 1),
(4, '45', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_duration_minutes_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_duration_minutes_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_duration_minutes_seq`
--

INSERT INTO `vtiger_duration_minutes_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emaildetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_emaildetails` (
  `emailid` int(19) NOT NULL,
  `from_email` varchar(50) NOT NULL DEFAULT '',
  `to_email` text,
  `cc_email` text,
  `bcc_email` text,
  `assigned_user_email` varchar(50) NOT NULL DEFAULT '',
  `idlists` text,
  `email_flag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates`
--

CREATE TABLE IF NOT EXISTS `vtiger_emailtemplates` (
  `foldername` varchar(100) DEFAULT NULL,
  `templatename` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `description` text,
  `body` text,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `templateid` int(19) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`templateid`),
  KEY `emailtemplates_foldernamd_templatename_subject_idx` (`foldername`,`templatename`,`subject`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vtiger_emailtemplates`
--

INSERT INTO `vtiger_emailtemplates` (`foldername`, `templatename`, `subject`, `description`, `body`, `deleted`, `templateid`) VALUES
('Public', 'Announcement for Release', 'Announcement for Release', 'Announcement of a release', 'Hello!   <br />\n	<br />\n	On behalf of the vtiger team,  I am pleased to announce the release of vtiger crm4.2 . This is a feature packed release including the mass email template handling, custom view feature, vtiger_reports feature and a host of other utilities. vtiger runs on all platforms.    <br />\n        <br />\n	Notable Features of vtiger are :   <br />\n	<br />\n	-Email Client Integration    <br />\n	-Trouble Ticket Integration   <br />\n	-Invoice Management Integration   <br />\n	-Reports Integration   <br />\n	-Portal Integration   <br />\n	-Enhanced Word Plugin Support   <br />\n	-Custom View Integration   <br />\n	<br />\n	Known Issues:   <br />\n	-ABCD   <br />\n	-EFGH   <br />\n	-IJKL   <br />\n	-MNOP   <br />\n	-QRST', 0, 1),
('Public', 'Pending Invoices', 'Invoices Pending', 'Payment Due', 'name <br />\nstreet, <br />\ncity, <br />\nstate, <br />\n zip) <br />\n  <br />\n Dear <br />\n <br />\n Please check the following invoices that are yet to be paid by you: <br />\n <br />\n No. Date      Amount <br />\n 1   1/1/01    $4000 <br />\n 2   2/2//01   $5000 <br />\n 3   3/3/01    $10000 <br />\n 4   7/4/01    $23560 <br />\n <br />\n Kindly let us know if there are any issues that you feel are pending to be discussed. <br />\n We will be more than happy to give you a call. <br />\n We would like to continue our business with you.', 0, 2),
('Public', 'Acceptance Proposal', 'Acceptance Proposal', 'Acceptance of Proposal', ' Dear <br />\n <br />\nYour proposal on the project XYZW has been reviewed by us <br />\nand is acceptable in its entirety. <br />\n <br />\nWe are eagerly looking forward to this project <br />\nand are pleased about having the opportunity to work <br />\ntogether. We look forward to a long standing relationship <br />\nwith your esteemed firm. <br />\n<br />\nI would like to take this opportunity to invite you <br />\nto a game of golf on Wednesday morning 9am at the <br />\nCuff Links Ground. We will be waiting for you in the <br />\nExecutive Lounge. <br />\n<br />\nLooking forward to seeing you there.', 0, 3),
('Public', 'Goods received acknowledgement', 'Goods received acknowledgement', 'Acknowledged Receipt of Goods', ' The undersigned hereby acknowledges receipt and delivery of the goods. <br />\nThe undersigned will release the payment subject to the goods being discovered not satisfactory. <br />\n<br />\nSigned under seal this <date>', 0, 4),
('Public', 'Accept Order', 'Accept Order', 'Acknowledgement/Acceptance of Order', ' Dear <br />\n         We are in receipt of your order as contained in the <br />\n   purchase order form.We consider this to be final and binding on both sides. <br />\nIf there be any exceptions noted, we shall consider them <br />\nonly if the objection is received within ten days of receipt of <br />\nthis notice. <br />\n <br />\nThank you for your patronage.', 0, 5),
('Public', 'Address Change', 'Change of Address', 'Address Change', 'Dear <br />\n <br />\nWe are relocating our office to <br />\n11111,XYZDEF Cross, <br />\nUVWWX Circle <br />\nThe telephone number for this new location is (101) 1212-1328. <br />\n<br />\nOur Manufacturing Division will continue operations <br />\nat 3250 Lovedale Square Avenue, in Frankfurt. <br />\n<br />\nWe hope to keep in touch with you all. <br />\nPlease update your addressbooks.', 0, 6),
('Public', 'Follow Up', 'Follow Up', 'Follow Up of meeting', 'Dear <br />\n<br />\nThank you for extending us the opportunity to meet with <br />\nyou and members of your staff. <br />\n<br />\nI know that John Doe serviced your account <br />\nfor many years and made many friends at your firm. He has personally <br />\ndiscussed with me the deep relationship that he had with your firm. <br />\nWhile his presence will be missed, I can promise that we will <br />\ncontinue to provide the fine service that was accorded by <br />\nJohn to your firm. <br />\n<br />\nI was genuinely touched to receive such fine hospitality. <br />\n<br />\nThank you once again.', 0, 7),
('Public', 'Target Crossed!', 'Target Crossed!', 'Fantastic Sales Spree!', 'Congratulations! <br />\n<br />\nThe numbers are in and I am proud to inform you that our <br />\ntotal sales for the previous quarter <br />\namounts to $100,000,00.00!. This is the first time <br />\nwe have exceeded the target by almost 30%. <br />\nWe have also beat the previous quarter record by a <br />\nwhopping 75%! <br />\n<br />\nLet us meet at Smoking Joe for a drink in the evening! <br />\n\nC you all there guys!', 0, 8),
('Public', 'Thanks Note', 'Thanks Note', 'Note of thanks', 'Dear <br />\n<br />\nThank you for your confidence in our ability to serve you. <br />\nWe are glad to be given the chance to serve you.I look <br />\nforward to establishing a long term partnership with you. <br />\nConsider me as a friend. <br />\nShould any need arise,please do give us a call.', 0, 9),
('Public', 'Customer Login Details', 'Customer Portal Login Details', 'Send Portal login details to customer', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM<br /> </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contact_name$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;"> Thank you very much for subscribing to the vtiger CRM - annual support service.<br />Here is your self service portal login details:</td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center">\n                                                <table width="75%" cellspacing="0" cellpadding="10" border="0" style="border: 2px solid rgb(180, 180, 179); background-color: rgb(226, 226, 225); font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal;">\n                                                        <tr>\n                                                            <td><br />User ID     : <font color="#990000"><strong> $login_name$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td>Password: <font color="#990000"><strong> $password$</strong></font> </td>\n                                                        </tr>\n                                                        <tr>\n                                                            <td align="center"> <strong>  $URL$<br /> </strong> </td>\n                                                        </tr>\n                                                </table>\n                                                </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;"><strong>NOTE:</strong> We suggest you to change your password after logging in first time. <br /><br /> <strong><u>Help Documentation</u></strong><br />  <br /> After logging in to vtiger Self-service Portal first time, you can access the vtiger CRM documents from the <strong>Documents</strong> tab. Following documents are available for your reference:<br />\n                                                <ul>\n                                                    <li>Installation Manual (Windows &amp; Linux OS)<br /> </li>\n                                                    <li>User &amp; Administrator Manual<br /> </li>\n                                                    <li>vtiger Customer Portal - User Manual<br /> </li>\n                                                    <li>vtiger Outlook Plugin - User Manual<br /> </li>\n                                                    <li>vtiger Office Plug-in - User Manual<br /> </li>\n                                                    <li>vtiger Thunderbird Extension - User Manual<br /> </li>\n                                                    <li>vtiger Web Forms - User Manual<br /> </li>\n                                                    <li>vtiger Firefox Tool bar - User Manual<br /> </li>\n                                                </ul>\n                                                <br />  <br /> <strong><u>Knowledge Base</u></strong><br /> <br /> Periodically we update frequently asked question based on our customer experiences. You can access the latest articles from the <strong>FAQ</strong> tab.<br /> <br /> <strong><u>vtiger CRM - Details</u></strong><br /> <br /> Kindly let us know your current vtiger CRM version and system specification so that we can provide you necessary guidelines to enhance your vtiger CRM system performance. Based on your system specification we alert you about the latest security &amp; upgrade patches.<br />  <br />			 Thank you once again and wish you a wonderful experience with vtiger CRM.<br /> </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Best Regards</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">$support_team$ </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);" href="http://www.vtiger.com">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);" href="mailto:support@vtiger.com">support@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 10),
('Public', 'Support end notification before a week', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a week of support end date', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;">This is just a notification mail regarding your support end.<br /><span style="font-weight: bold;">Priority:</span> Urgent<br />Your Support is going to expire on next week<br />Please contact support@vtiger.com.<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);" href="http://www.vtiger.com">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);" href="mailto:info@vtiger.com">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 11),
('Public', 'Support end notification before a month', 'VtigerCRM Support Notification', 'Send Notification mail to customer before a month of support end date', '<table width="700" cellspacing="0" cellpadding="0" border="0" align="center" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; text-decoration: none; background-color: rgb(122, 122, 254);">\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td width="50"> </td>\n            <td>\n            <table width="100%" cellspacing="0" cellpadding="0" border="0">\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(255, 255, 255); font-weight: normal; line-height: 25px;">\n                                <tr>\n                                    <td align="center" rowspan="4">$logo$</td>\n                                    <td align="center"> </td>\n                                </tr>\n                                <tr>\n                                    <td align="left" style="background-color: rgb(27, 77, 140); font-family: Arial,Helvetica,sans-serif; font-size: 24px; color: rgb(255, 255, 255); font-weight: bolder; line-height: 35px;">vtiger CRM </td>\n                                </tr>\n                                <tr>\n                                    <td align="right" style="padding-right: 100px;">The honest Open Source CRM </td>\n                                </tr>\n                                <tr>\n                                    <td> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="0" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: normal; color: rgb(0, 0, 0); background-color: rgb(255, 255, 255);">\n                                <tr>\n                                    <td valign="top">\n                                    <table width="100%" cellspacing="0" cellpadding="5" border="0">\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);"> </td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 14px; color: rgb(22, 72, 134); font-weight: bolder; line-height: 15px;">Dear $contacts-lastname$, </td>\n                                            </tr>\n                                            <tr>\n                                                <td style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; text-align: justify; line-height: 20px;">This is just a notification mail regarding your support end.<br /><span style="font-weight: bold;">Priority:</span> Normal<br />Your Support is going to expire on next month.<br />Please contact support@vtiger.com<br /><br /><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="center"><br /></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><strong style="padding: 2px; font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: bold;"><br /><br />Sincerly</strong></td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(0, 0, 0); font-weight: normal; line-height: 20px;">Support Team </td>\n                                            </tr>\n                                            <tr>\n                                                <td align="right"><a href="http://www.vtiger.com" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(66, 66, 253);">www.vtiger.com</a></td>\n                                            </tr>\n                                            <tr>\n                                                <td> </td>\n                                            </tr>\n                                    </table>\n                                    </td>\n                                    <td width="1%" valign="top"> </td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n                    <tr>\n                        <td>\n                        <table width="100%" cellspacing="0" cellpadding="5" border="0" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; color: rgb(255, 255, 255); font-weight: normal; line-height: 15px; background-color: rgb(51, 51, 51);">\n                                <tr>\n                                    <td align="center">Shree Narayana Complex, No 11 Sarathy Nagar, Vijaya Nagar , Velachery, Chennai - 600 042 India </td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Telephone No: +91 - 44 - 4202 - 1990     Toll Free No: +1 877 788 4437</td>\n                                </tr>\n                                <tr>\n                                    <td align="center">Email Id: <a href="mailto:info@vtiger.com" style="font-family: Arial,Helvetica,sans-serif; font-size: 12px; font-weight: bolder; text-decoration: none; color: rgb(255, 255, 255);">info@vtiger.com</a></td>\n                                </tr>\n                        </table>\n                        </td>\n                    </tr>\n            </table>\n            </td>\n            <td width="50"> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n        <tr>\n            <td> </td>\n            <td> </td>\n            <td> </td>\n        </tr>\n</table>', 0, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_emailtemplates_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_emailtemplates_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_emailtemplates_seq`
--

INSERT INTO `vtiger_emailtemplates_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_access`
--

CREATE TABLE IF NOT EXISTS `vtiger_email_access` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `accessdate` date DEFAULT NULL,
  `accesstime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_email_track`
--

CREATE TABLE IF NOT EXISTS `vtiger_email_track` (
  `crmid` int(11) DEFAULT NULL,
  `mailid` int(11) DEFAULT NULL,
  `access_count` int(11) DEFAULT NULL,
  UNIQUE KEY `link_tabidtype_idx` (`crmid`,`mailid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_entityname`
--

CREATE TABLE IF NOT EXISTS `vtiger_entityname` (
  `tabid` int(19) NOT NULL DEFAULT '0',
  `modulename` varchar(50) NOT NULL,
  `tablename` varchar(100) NOT NULL,
  `fieldname` varchar(150) NOT NULL,
  `entityidfield` varchar(150) NOT NULL,
  `entityidcolumn` varchar(150) NOT NULL,
  PRIMARY KEY (`tabid`),
  KEY `entityname_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_entityname`
--

INSERT INTO `vtiger_entityname` (`tabid`, `modulename`, `tablename`, `fieldname`, `entityidfield`, `entityidcolumn`) VALUES
(2, 'Potentials', 'vtiger_potential', 'potentialname', 'potentialid', 'potential_id'),
(4, 'Contacts', 'vtiger_contactdetails', 'firstname,lastname', 'contactid', 'contact_id'),
(6, 'Accounts', 'vtiger_account', 'accountname', 'accountid', 'account_id'),
(7, 'Leads', 'vtiger_leaddetails', 'firstname,lastname', 'leadid', 'leadid'),
(8, 'Documents', 'vtiger_notes', 'title', 'notesid', 'notesid'),
(9, 'Calendar', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(10, 'Emails', 'vtiger_activity', 'subject', 'activityid', 'activityid'),
(13, 'HelpDesk', 'vtiger_troubletickets', 'title', 'ticketid', 'ticketid'),
(14, 'Products', 'vtiger_products', 'productname', 'productid', 'product_id'),
(15, 'Faq', 'vtiger_faq', 'question', 'id', 'id'),
(18, 'Vendors', 'vtiger_vendor', 'vendorname', 'vendorid', 'vendor_id'),
(19, 'PriceBooks', 'vtiger_pricebook', 'bookname', 'pricebookid', 'pricebookid'),
(20, 'Quotes', 'vtiger_quotes', 'subject', 'quoteid', 'quote_id'),
(21, 'PurchaseOrder', 'vtiger_purchaseorder', 'subject', 'purchaseorderid', 'purchaseorderid'),
(22, 'SalesOrder', 'vtiger_salesorder', 'subject', 'salesorderid', 'salesorder_id'),
(23, 'Invoice', 'vtiger_invoice', 'subject', 'invoiceid', 'invoiceid'),
(26, 'Campaigns', 'vtiger_campaign', 'campaignname', 'campaignid', 'campaignid'),
(29, 'Users', 'vtiger_users', 'first_name,last_name', 'id', 'id'),
(34, 'PBXManager', 'vtiger_pbxmanager', 'customernumber', 'pbxmanagerid', 'pbxmanagerid'),
(35, 'ServiceContracts', 'vtiger_servicecontracts', 'subject', 'servicecontractsid', 'servicecontractsid'),
(36, 'Services', 'vtiger_service', 'servicename', 'serviceid', 'serviceid'),
(38, 'Assets', 'vtiger_assets', 'assetname', 'assetsid', 'assetsid'),
(42, 'ModComments', 'vtiger_modcomments', 'commentcontent', 'modcommentsid', 'modcommentsid'),
(43, 'ProjectMilestone', 'vtiger_projectmilestone', 'projectmilestonename', 'projectmilestoneid', 'projectmilestoneid'),
(44, 'ProjectTask', 'vtiger_projecttask', 'projecttaskname', 'projecttaskid', 'projecttaskid'),
(45, 'Project', 'vtiger_project', 'projectname', 'projectid', 'projectid'),
(47, 'SMSNotifier', 'vtiger_smsnotifier', 'message', 'smsnotifierid', 'smsnotifierid');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandlers` (
  `eventhandler_id` int(11) NOT NULL AUTO_INCREMENT,
  `event_name` varchar(100) NOT NULL,
  `handler_path` varchar(400) NOT NULL,
  `handler_class` varchar(100) NOT NULL,
  `cond` text,
  `is_active` int(1) NOT NULL,
  `dependent_on` varchar(255) DEFAULT '[]',
  PRIMARY KEY (`eventhandler_id`,`event_name`,`handler_class`),
  UNIQUE KEY `eventhandler_idx` (`eventhandler_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `vtiger_eventhandlers`
--

INSERT INTO `vtiger_eventhandlers` (`eventhandler_id`, `event_name`, `handler_path`, `handler_class`, `cond`, `is_active`, `dependent_on`) VALUES
(1, 'vtiger.entity.aftersave', 'modules/SalesOrder/RecurringInvoiceHandler.php', 'RecurringInvoiceHandler', '', 1, '[]'),
(2, 'vtiger.entity.beforesave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(3, 'vtiger.entity.aftersave', 'data/VTEntityDelta.php', 'VTEntityDelta', '', 1, '[]'),
(4, 'vtiger.entity.aftersave', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '["VTEntityDelta"]'),
(5, 'vtiger.entity.afterrestore', 'modules/com_vtiger_workflow/VTEventHandler.inc', 'VTWorkflowEventHandler', '', 1, '[]'),
(6, 'vtiger.entity.aftersave.final', 'modules/HelpDesk/HelpDeskHandler.php', 'HelpDeskHandler', '', 1, '[]'),
(7, 'vtiger.entity.aftersave.final', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(8, 'vtiger.entity.beforedelete', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(9, 'vtiger.entity.afterrestore', 'modules/ModTracker/ModTrackerHandler.php', 'ModTrackerHandler', '', 1, '[]'),
(10, 'vtiger.entity.aftersave', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '["VTEntityDelta"]'),
(11, 'vtiger.entity.afterdelete', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '[]'),
(12, 'vtiger.entity.afterrestore', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerHandler', '', 1, '[]'),
(13, 'vtiger.batchevent.save', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerBatchHandler', '', 1, '[]'),
(14, 'vtiger.batchevent.delete', 'modules/PBXManager/PBXManagerHandler.php', 'PBXManagerBatchHandler', '', 1, '[]'),
(15, 'vtiger.entity.beforesave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(16, 'vtiger.entity.aftersave', 'modules/ServiceContracts/ServiceContractsHandler.php', 'ServiceContractsHandler', '', 1, '[]'),
(17, 'vtiger.entity.aftersave', 'modules/WSAPP/WorkFlowHandlers/WSAPPAssignToTracker.php', 'WSAPPAssignToTracker', '', 1, '["VTEntityDelta"]'),
(18, 'vtiger.entity.aftersave', 'modules/Vtiger/handlers/RecordLabelUpdater.php', 'Vtiger_RecordLabelUpdater_Handler', '', 1, '[]'),
(19, 'vtiger.entity.aftersave', 'modules/Invoice/InvoiceHandler.php', 'InvoiceHandler', '', 1, '[]'),
(20, 'vtiger.entity.aftersave', 'modules/PurchaseOrder/PurchaseOrderHandler.php', 'PurchaseOrderHandler', '', 1, '[]'),
(21, 'vtiger.entity.aftersave', 'modules/ModComments/ModCommentsHandler.php', 'ModCommentsHandler', '', 1, '[]'),
(22, 'vtiger.picklist.afterrename', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]'),
(23, 'vtiger.picklist.afterdelete', 'modules/Settings/Picklist/handlers/PickListHandler.php', 'PickListHandler', '', 1, '[]');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandlers_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandlers_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_eventhandlers_seq`
--

INSERT INTO `vtiger_eventhandlers_seq` (`id`) VALUES
(23);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandler_module` (
  `eventhandler_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `module_name` varchar(100) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`eventhandler_module_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_eventhandler_module`
--

INSERT INTO `vtiger_eventhandler_module` (`eventhandler_module_id`, `module_name`, `handler_class`) VALUES
(1, 'ModTracker', 'ModTrackerHandler'),
(2, 'ServiceContracts', 'ServiceContractsHandler'),
(3, 'Home', 'Vtiger_RecordLabelUpdater_Handler'),
(4, 'Invoice', 'InvoiceHandler'),
(5, 'PurchaseOrder', 'PurchaseOrderHandler');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventhandler_module_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventhandler_module_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_eventhandler_module_seq`
--

INSERT INTO `vtiger_eventhandler_module_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventstatus` (
  `eventstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `eventstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`eventstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_eventstatus`
--

INSERT INTO `vtiger_eventstatus` (`eventstatusid`, `eventstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Planned', 0, 38, 0),
(2, 'Held', 0, 39, 1),
(3, 'Not Held', 0, 40, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_eventstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_eventstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_eventstatus_seq`
--

INSERT INTO `vtiger_eventstatus_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse`
--

CREATE TABLE IF NOT EXISTS `vtiger_expectedresponse` (
  `expectedresponseid` int(19) NOT NULL AUTO_INCREMENT,
  `expectedresponse` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`expectedresponseid`),
  UNIQUE KEY `CampaignExpRes_UK01` (`expectedresponse`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_expectedresponse`
--

INSERT INTO `vtiger_expectedresponse` (`expectedresponseid`, `expectedresponse`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Excellent', 1, 42, 1),
(3, 'Good', 1, 43, 2),
(4, 'Average', 1, 44, 3),
(5, 'Poor', 1, 45, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_expectedresponse_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_expectedresponse_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_expectedresponse_seq`
--

INSERT INTO `vtiger_expectedresponse_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_extnstore_users`
--

CREATE TABLE IF NOT EXISTS `vtiger_extnstore_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(75) DEFAULT NULL,
  `instanceurl` varchar(255) DEFAULT NULL,
  `createdon` datetime DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faq`
--

CREATE TABLE IF NOT EXISTS `vtiger_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `faq_no` varchar(100) NOT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `question` text,
  `answer` text,
  `category` varchar(200) NOT NULL,
  `status` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `faq_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcategories` (
  `faqcategories_id` int(19) NOT NULL AUTO_INCREMENT,
  `faqcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`faqcategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_faqcategories`
--

INSERT INTO `vtiger_faqcategories` (`faqcategories_id`, `faqcategories`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'General', 1, 46, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcategories_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_faqcategories_seq`
--

INSERT INTO `vtiger_faqcategories_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcf` (
  `faqid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqcomments`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqcomments` (
  `commentid` int(19) NOT NULL AUTO_INCREMENT,
  `faqid` int(19) DEFAULT NULL,
  `comments` text,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `faqcomments_faqid_idx` (`faqid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqstatus` (
  `faqstatus_id` int(19) NOT NULL AUTO_INCREMENT,
  `faqstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`faqstatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_faqstatus`
--

INSERT INTO `vtiger_faqstatus` (`faqstatus_id`, `faqstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Draft', 0, 47, 0),
(2, 'Reviewed', 0, 48, 1),
(3, 'Published', 0, 49, 2),
(4, 'Obsolete', 0, 50, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_faqstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_faqstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_faqstatus_seq`
--

INSERT INTO `vtiger_faqstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_feedback`
--

CREATE TABLE IF NOT EXISTS `vtiger_feedback` (
  `userid` int(19) DEFAULT NULL,
  `dontshow` varchar(19) DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field`
--

CREATE TABLE IF NOT EXISTS `vtiger_field` (
  `tabid` int(19) NOT NULL,
  `fieldid` int(19) NOT NULL AUTO_INCREMENT,
  `columnname` varchar(30) NOT NULL,
  `tablename` varchar(50) NOT NULL,
  `generatedtype` int(19) NOT NULL DEFAULT '0',
  `uitype` varchar(30) NOT NULL,
  `fieldname` varchar(50) NOT NULL,
  `fieldlabel` varchar(50) NOT NULL,
  `readonly` int(1) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT '1',
  `defaultvalue` text,
  `maximumlength` int(19) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  `block` int(19) DEFAULT NULL,
  `displaytype` int(19) DEFAULT NULL,
  `typeofdata` varchar(100) DEFAULT NULL,
  `quickcreate` int(10) NOT NULL DEFAULT '1',
  `quickcreatesequence` int(19) DEFAULT NULL,
  `info_type` varchar(20) DEFAULT NULL,
  `masseditable` int(10) NOT NULL DEFAULT '1',
  `helpinfo` text,
  `summaryfield` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `field_tabid_idx` (`tabid`),
  KEY `field_fieldname_idx` (`fieldname`),
  KEY `field_block_idx` (`block`),
  KEY `field_displaytype_idx` (`displaytype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=761 ;

--
-- Dumping data for table `vtiger_field`
--

INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`) VALUES
(6, 1, 'accountname', 'vtiger_account', 1, '2', 'accountname', 'Account Name', 1, 0, '', 100, 1, 9, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(6, 2, 'account_no', 'vtiger_account', 1, '4', 'account_no', 'Account No', 1, 0, '', 100, 2, 9, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 3, 'phone', 'vtiger_account', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 4, 9, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1),
(6, 4, 'website', 'vtiger_account', 1, '17', 'website', 'Website', 1, 2, '', 100, 3, 9, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(6, 5, 'fax', 'vtiger_account', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 6, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 6, 'tickersymbol', 'vtiger_account', 1, '1', 'tickersymbol', 'Ticker Symbol', 1, 2, '', 100, 5, 9, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 7, 'otherphone', 'vtiger_account', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 8, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 8, 'parentid', 'vtiger_account', 1, '51', 'account_id', 'Member Of', 1, 2, '', 100, 7, 9, 1, 'I~O', 1, NULL, 'BAS', 0, NULL, 0),
(6, 9, 'email1', 'vtiger_account', 1, '13', 'email1', 'Email', 1, 2, '', 100, 10, 9, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 1),
(6, 10, 'employees', 'vtiger_account', 1, '7', 'employees', 'Employees', 1, 2, '', 100, 9, 9, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 11, 'email2', 'vtiger_account', 1, '13', 'email2', 'Other Email', 1, 2, '', 100, 11, 9, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 12, 'ownership', 'vtiger_account', 1, '1', 'ownership', 'Ownership', 1, 2, '', 100, 12, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 13, 'rating', 'vtiger_account', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 14, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 14, 'industry', 'vtiger_account', 1, '15', 'industry', 'industry', 1, 2, '', 100, 13, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 15, 'siccode', 'vtiger_account', 1, '1', 'siccode', 'SIC Code', 1, 2, '', 100, 16, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 16, 'account_type', 'vtiger_account', 1, '15', 'accounttype', 'Type', 1, 2, '', 100, 15, 9, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 17, 'annualrevenue', 'vtiger_account', 1, '71', 'annual_revenue', 'Annual Revenue', 1, 2, '', 100, 18, 9, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 18, 'emailoptout', 'vtiger_account', 1, '56', 'emailoptout', 'Email Opt Out', 1, 2, '', 100, 17, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 19, 'notify_owner', 'vtiger_account', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 20, 9, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(6, 20, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 9, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(6, 21, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 22, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 22, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 9, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 23, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 9, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(6, 24, 'bill_street', 'vtiger_accountbillads', 1, '21', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 25, 'ship_street', 'vtiger_accountshipads', 1, '21', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 26, 'bill_city', 'vtiger_accountbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(6, 27, 'ship_city', 'vtiger_accountshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 28, 'bill_state', 'vtiger_accountbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 29, 'ship_state', 'vtiger_accountshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 30, 'bill_code', 'vtiger_accountbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 31, 'ship_code', 'vtiger_accountshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 32, 'bill_country', 'vtiger_accountbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(6, 33, 'ship_country', 'vtiger_accountshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 34, 'bill_pobox', 'vtiger_accountbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 35, 'ship_pobox', 'vtiger_accountshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 11, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(6, 36, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 12, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 37, 'salutation', 'vtiger_leaddetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 13, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 38, 'firstname', 'vtiger_leaddetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 13, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1),
(7, 39, 'lead_no', 'vtiger_leaddetails', 1, '4', 'lead_no', 'Lead No', 1, 0, '', 100, 3, 13, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 40, 'phone', 'vtiger_leadaddress', 1, '11', 'phone', 'Phone', 1, 2, '', 100, 5, 13, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1),
(7, 41, 'lastname', 'vtiger_leaddetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 13, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1),
(7, 42, 'mobile', 'vtiger_leadaddress', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 43, 'company', 'vtiger_leaddetails', 1, '2', 'company', 'Company', 1, 2, '', 100, 6, 13, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(7, 44, 'fax', 'vtiger_leadaddress', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 9, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 45, 'designation', 'vtiger_leaddetails', 1, '1', 'designation', 'Designation', 1, 2, '', 100, 8, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 46, 'email', 'vtiger_leaddetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 11, 13, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 1),
(7, 47, 'leadsource', 'vtiger_leaddetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 10, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(7, 48, 'website', 'vtiger_leadsubdetails', 1, '17', 'website', 'Website', 1, 2, '', 100, 13, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 1),
(7, 49, 'industry', 'vtiger_leaddetails', 1, '15', 'industry', 'Industry', 1, 2, '', 100, 12, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 50, 'leadstatus', 'vtiger_leaddetails', 1, '15', 'leadstatus', 'Lead Status', 1, 2, '', 100, 15, 13, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 51, 'annualrevenue', 'vtiger_leaddetails', 1, '71', 'annualrevenue', 'Annual Revenue', 1, 2, '', 100, 14, 13, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 52, 'rating', 'vtiger_leaddetails', 1, '15', 'rating', 'Rating', 1, 2, '', 100, 17, 13, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 53, 'noofemployees', 'vtiger_leaddetails', 1, '1', 'noofemployees', 'No Of Employees', 1, 2, '', 100, 16, 13, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 54, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 19, 13, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(7, 55, 'secondaryemail', 'vtiger_leaddetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 18, 13, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0),
(7, 56, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 21, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 57, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 20, 13, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 58, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 23, 13, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(7, 59, 'lane', 'vtiger_leadaddress', 1, '21', 'lane', 'Street', 1, 2, '', 100, 1, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 60, 'code', 'vtiger_leadaddress', 1, '1', 'code', 'Postal Code', 1, 2, '', 100, 3, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 61, 'city', 'vtiger_leadaddress', 1, '1', 'city', 'City', 1, 2, '', 100, 4, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(7, 62, 'country', 'vtiger_leadaddress', 1, '1', 'country', 'Country', 1, 2, '', 100, 5, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(7, 63, 'state', 'vtiger_leadaddress', 1, '1', 'state', 'State', 1, 2, '', 100, 6, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 64, 'pobox', 'vtiger_leadaddress', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 15, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(7, 65, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 16, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 66, 'salutation', 'vtiger_contactdetails', 1, '55', 'salutationtype', 'Salutation', 1, 0, '', 100, 1, 4, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 67, 'firstname', 'vtiger_contactdetails', 1, '55', 'firstname', 'First Name', 1, 0, '', 100, 2, 4, 1, 'V~O', 2, 1, 'BAS', 1, NULL, 1),
(4, 68, 'contact_no', 'vtiger_contactdetails', 1, '4', 'contact_no', 'Contact Id', 1, 0, '', 100, 3, 4, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 69, 'phone', 'vtiger_contactdetails', 1, '11', 'phone', 'Office Phone', 1, 2, '', 100, 5, 4, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1),
(4, 70, 'lastname', 'vtiger_contactdetails', 1, '255', 'lastname', 'Last Name', 1, 0, '', 100, 4, 4, 1, 'V~M', 0, 2, 'BAS', 1, NULL, 1),
(4, 71, 'mobile', 'vtiger_contactdetails', 1, '11', 'mobile', 'Mobile', 1, 2, '', 100, 7, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 72, 'accountid', 'vtiger_contactdetails', 1, '51', 'account_id', 'Account Name', 1, 2, '', 100, 6, 4, 1, 'I~O', 2, 3, 'BAS', 1, NULL, 1),
(4, 73, 'homephone', 'vtiger_contactsubdetails', 1, '11', 'homephone', 'Home Phone', 1, 2, '', 100, 9, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 74, 'leadsource', 'vtiger_contactsubdetails', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 8, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 75, 'otherphone', 'vtiger_contactsubdetails', 1, '11', 'otherphone', 'Other Phone', 1, 2, '', 100, 11, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 76, 'title', 'vtiger_contactdetails', 1, '1', 'title', 'Title', 1, 2, '', 100, 10, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(4, 77, 'fax', 'vtiger_contactdetails', 1, '11', 'fax', 'Fax', 1, 2, '', 100, 13, 4, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 78, 'department', 'vtiger_contactdetails', 1, '1', 'department', 'Department', 1, 2, '', 100, 12, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 79, 'birthday', 'vtiger_contactsubdetails', 1, '5', 'birthday', 'Birthdate', 1, 2, '', 100, 16, 4, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 80, 'email', 'vtiger_contactdetails', 1, '13', 'email', 'Email', 1, 2, '', 100, 15, 4, 1, 'E~O', 2, 5, 'BAS', 1, NULL, 1),
(4, 81, 'reportsto', 'vtiger_contactdetails', 1, '57', 'contact_id', 'Reports To', 1, 2, '', 100, 18, 4, 1, 'V~O', 2, NULL, 'ADV', 2, NULL, 0),
(4, 82, 'assistant', 'vtiger_contactsubdetails', 1, '1', 'assistant', 'Assistant', 1, 2, '', 100, 17, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 83, 'secondaryemail', 'vtiger_contactdetails', 1, '13', 'secondaryemail', 'Secondary Email', 1, 2, '', 100, 20, 4, 1, 'E~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 84, 'assistantphone', 'vtiger_contactsubdetails', 1, '11', 'assistantphone', 'Assistant Phone', 1, 2, '', 100, 19, 4, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 85, 'donotcall', 'vtiger_contactdetails', 1, '56', 'donotcall', 'Do Not Call', 1, 2, '', 100, 22, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 86, 'emailoptout', 'vtiger_contactdetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 2, '', 100, 21, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 87, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 24, 4, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(4, 88, 'reference', 'vtiger_contactdetails', 1, '56', 'reference', 'Reference', 1, 2, '', 10, 23, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 89, 'notify_owner', 'vtiger_contactdetails', 1, '56', 'notify_owner', 'Notify Owner', 1, 2, '', 10, 26, 4, 1, 'C~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 90, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 25, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 91, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 27, 4, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 92, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 28, 4, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(4, 93, 'portal', 'vtiger_customerdetails', 1, '56', 'portal', 'Portal User', 1, 2, '', 100, 1, 6, 1, 'C~O', 1, NULL, 'ADV', 0, NULL, 0),
(4, 94, 'support_start_date', 'vtiger_customerdetails', 1, '5', 'support_start_date', 'Support Start Date', 1, 2, '', 100, 2, 6, 1, 'D~O', 1, NULL, 'ADV', 1, NULL, 0),
(4, 95, 'support_end_date', 'vtiger_customerdetails', 1, '5', 'support_end_date', 'Support End Date', 1, 2, '', 100, 3, 6, 1, 'D~O~OTH~GE~support_start_date~Support Start Date', 1, NULL, 'ADV', 1, NULL, 0),
(4, 96, 'mailingstreet', 'vtiger_contactaddress', 1, '21', 'mailingstreet', 'Mailing Street', 1, 2, '', 100, 1, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 97, 'otherstreet', 'vtiger_contactaddress', 1, '21', 'otherstreet', 'Other Street', 1, 2, '', 100, 2, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 98, 'mailingcity', 'vtiger_contactaddress', 1, '1', 'mailingcity', 'Mailing City', 1, 2, '', 100, 5, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(4, 99, 'othercity', 'vtiger_contactaddress', 1, '1', 'othercity', 'Other City', 1, 2, '', 100, 6, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 100, 'mailingstate', 'vtiger_contactaddress', 1, '1', 'mailingstate', 'Mailing State', 1, 2, '', 100, 7, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 101, 'otherstate', 'vtiger_contactaddress', 1, '1', 'otherstate', 'Other State', 1, 2, '', 100, 8, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 102, 'mailingzip', 'vtiger_contactaddress', 1, '1', 'mailingzip', 'Mailing Zip', 1, 2, '', 100, 9, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 103, 'otherzip', 'vtiger_contactaddress', 1, '1', 'otherzip', 'Other Zip', 1, 2, '', 100, 10, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 104, 'mailingcountry', 'vtiger_contactaddress', 1, '1', 'mailingcountry', 'Mailing Country', 1, 2, '', 100, 11, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(4, 105, 'othercountry', 'vtiger_contactaddress', 1, '1', 'othercountry', 'Other Country', 1, 2, '', 100, 12, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 106, 'mailingpobox', 'vtiger_contactaddress', 1, '1', 'mailingpobox', 'Mailing Po Box', 1, 2, '', 100, 3, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 107, 'otherpobox', 'vtiger_contactaddress', 1, '1', 'otherpobox', 'Other Po Box', 1, 2, '', 100, 4, 7, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 108, 'imagename', 'vtiger_contactdetails', 1, '69', 'imagename', 'Contact Image', 1, 2, '', 100, 1, 73, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0),
(4, 109, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 8, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 110, 'potentialname', 'vtiger_potential', 1, '2', 'potentialname', 'Potential Name', 1, 0, '', 100, 1, 1, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(2, 111, 'potential_no', 'vtiger_potential', 1, '4', 'potential_no', 'Potential No', 1, 0, '', 100, 2, 1, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 112, 'amount', 'vtiger_potential', 1, '71', 'amount', 'Amount', 1, 2, '', 100, 5, 1, 1, 'N~O', 2, 5, 'BAS', 1, NULL, 1),
(2, 113, 'related_to', 'vtiger_potential', 1, '10', 'related_to', 'Related To', 1, 0, '', 100, 3, 1, 1, 'V~O', 0, 2, 'BAS', 1, NULL, 1),
(2, 114, 'closingdate', 'vtiger_potential', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 1, 1, 'D~M', 2, 3, 'BAS', 1, NULL, 1),
(2, 115, 'potentialtype', 'vtiger_potential', 1, '15', 'opportunity_type', 'Type', 1, 2, '', 100, 7, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 116, 'nextstep', 'vtiger_potential', 1, '1', 'nextstep', 'Next Step', 1, 2, '', 100, 10, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 117, 'leadsource', 'vtiger_potential', 1, '15', 'leadsource', 'Lead Source', 1, 2, '', 100, 9, 1, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 118, 'sales_stage', 'vtiger_potential', 1, '15', 'sales_stage', 'Sales Stage', 1, 2, '', 100, 12, 1, 1, 'V~M', 2, 4, 'BAS', 1, NULL, 1),
(2, 119, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 11, 1, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(2, 120, 'probability', 'vtiger_potential', 1, '9', 'probability', 'Probability', 1, 2, '', 100, 14, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 121, 'campaignid', 'vtiger_potential', 1, '58', 'campaignid', 'Campaign Source', 1, 2, '', 100, 13, 1, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(2, 122, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 16, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 123, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 1, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 124, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 1, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(2, 125, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 3, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 126, 'campaignname', 'vtiger_campaign', 1, '2', 'campaignname', 'Campaign Name', 1, 0, '', 100, 1, 74, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(26, 127, 'campaign_no', 'vtiger_campaign', 1, '4', 'campaign_no', 'Campaign No', 1, 0, '', 100, 2, 74, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 128, 'campaigntype', 'vtiger_campaign', 1, '15', 'campaigntype', 'Campaign Type', 1, 2, '', 100, 5, 74, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(26, 129, 'product_id', 'vtiger_campaign', 1, '59', 'product_id', 'Product', 1, 2, '', 100, 6, 74, 1, 'I~O', 2, 5, 'BAS', 1, NULL, 0),
(26, 130, 'campaignstatus', 'vtiger_campaign', 1, '15', 'campaignstatus', 'Campaign Status', 1, 2, '', 100, 4, 74, 1, 'V~O', 2, 6, 'BAS', 1, NULL, 1),
(26, 131, 'closingdate', 'vtiger_campaign', 1, '23', 'closingdate', 'Expected Close Date', 1, 2, '', 100, 8, 74, 1, 'D~M', 2, 2, 'BAS', 1, NULL, 1),
(26, 132, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 3, 74, 1, 'V~M', 0, 7, 'BAS', 1, NULL, 1),
(26, 133, 'numsent', 'vtiger_campaign', 1, '9', 'numsent', 'Num Sent', 1, 2, '', 100, 12, 74, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 134, 'sponsor', 'vtiger_campaign', 1, '1', 'sponsor', 'Sponsor', 1, 2, '', 100, 9, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 135, 'targetaudience', 'vtiger_campaign', 1, '1', 'targetaudience', 'Target Audience', 1, 2, '', 100, 7, 74, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 136, 'targetsize', 'vtiger_campaign', 1, '1', 'targetsize', 'TargetSize', 1, 2, '', 100, 10, 74, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 137, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 11, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 138, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 74, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 139, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 74, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(26, 140, 'expectedresponse', 'vtiger_campaign', 1, '15', 'expectedresponse', 'Expected Response', 1, 2, '', 100, 3, 76, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 0),
(26, 141, 'expectedrevenue', 'vtiger_campaign', 1, '71', 'expectedrevenue', 'Expected Revenue', 1, 2, '', 100, 4, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1),
(26, 142, 'budgetcost', 'vtiger_campaign', 1, '71', 'budgetcost', 'Budget Cost', 1, 2, '', 100, 1, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 143, 'actualcost', 'vtiger_campaign', 1, '71', 'actualcost', 'Actual Cost', 1, 2, '', 100, 2, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 144, 'expectedresponsecount', 'vtiger_campaign', 1, '1', 'expectedresponsecount', 'Expected Response Count', 1, 2, '', 100, 7, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 145, 'expectedsalescount', 'vtiger_campaign', 1, '1', 'expectedsalescount', 'Expected Sales Count', 1, 2, '', 100, 5, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 146, 'expectedroi', 'vtiger_campaign', 1, '71', 'expectedroi', 'Expected ROI', 1, 2, '', 100, 9, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 147, 'actualresponsecount', 'vtiger_campaign', 1, '1', 'actualresponsecount', 'Actual Response Count', 1, 2, '', 100, 8, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 148, 'actualsalescount', 'vtiger_campaign', 1, '1', 'actualsalescount', 'Actual Sales Count', 1, 2, '', 100, 6, 76, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 149, 'actualroi', 'vtiger_campaign', 1, '71', 'actualroi', 'Actual ROI', 1, 2, '', 100, 10, 76, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 0),
(26, 150, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 81, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(4, 151, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(6, 152, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(7, 153, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(26, 154, 'campaignrelstatus', 'vtiger_campaignrelstatus', 1, '16', 'campaignrelstatus', 'Status', 1, 0, '0', 100, 1, NULL, 1, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(13, 155, 'ticket_no', 'vtiger_troubletickets', 1, '4', 'ticket_no', 'Ticket No', 1, 0, '', 100, 14, 25, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(13, 156, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 25, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(13, 157, 'parent_id', 'vtiger_troubletickets', 1, '10', 'parent_id', 'Related To', 1, 0, '', 100, 2, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1),
(13, 158, 'priority', 'vtiger_troubletickets', 1, '15', 'ticketpriorities', 'Priority', 1, 2, '', 100, 7, 25, 1, 'V~O', 2, 3, 'BAS', 1, NULL, 1),
(13, 159, 'product_id', 'vtiger_troubletickets', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 6, 25, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(13, 160, 'severity', 'vtiger_troubletickets', 1, '15', 'ticketseverities', 'Severity', 1, 2, '', 100, 9, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(13, 161, 'status', 'vtiger_troubletickets', 1, '15', 'ticketstatus', 'Status', 1, 2, '', 100, 8, 25, 1, 'V~M', 1, 2, 'BAS', 1, NULL, 1),
(13, 162, 'category', 'vtiger_troubletickets', 1, '15', 'ticketcategories', 'Category', 1, 2, '', 100, 11, 25, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(13, 163, 'update_log', 'vtiger_troubletickets', 1, '19', 'update_log', 'Update History', 1, 0, '', 100, 12, 25, 3, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(13, 164, 'hours', 'vtiger_troubletickets', 1, '1', 'hours', 'Hours', 1, 2, '', 100, 10, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated hours for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0),
(13, 165, 'days', 'vtiger_troubletickets', 1, '1', 'days', 'Days', 1, 2, '', 100, 11, 25, 1, 'N~O', 1, NULL, 'BAS', 1, 'This gives the estimated days for the Ticket.<br>When the same ticket is added to a Service Contract,based on the Tracking Unit of the Service Contract,Used units is updated whenever a ticket is Closed.', 0),
(13, 166, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 167, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 13, 25, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 168, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 25, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 169, 'title', 'vtiger_troubletickets', 1, '22', 'ticket_title', 'Title', 1, 0, '', 100, 1, 25, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(13, 170, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 28, 1, 'V~O', 2, 4, 'BAS', 1, NULL, 1),
(13, 171, 'solution', 'vtiger_troubletickets', 1, '19', 'solution', 'Solution', 1, 0, '', 100, 1, 29, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(13, 172, 'comments', 'vtiger_ticketcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 30, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 173, 'productname', 'vtiger_products', 1, '2', 'productname', 'Product Name', 1, 0, '', 100, 1, 31, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(14, 174, 'product_no', 'vtiger_products', 1, '4', 'product_no', 'Product No', 1, 0, '', 100, 2, 31, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 175, 'productcode', 'vtiger_products', 1, '1', 'productcode', 'Part Number', 1, 2, '', 100, 4, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(14, 176, 'discontinued', 'vtiger_products', 1, '56', 'discontinued', 'Product Active', 1, 2, '', 100, 3, 31, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 0),
(14, 177, 'manufacturer', 'vtiger_products', 1, '15', 'manufacturer', 'Manufacturer', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 178, 'productcategory', 'vtiger_products', 1, '15', 'productcategory', 'Product Category', 1, 2, '', 100, 6, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 179, 'sales_start_date', 'vtiger_products', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, '', 100, 5, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 180, 'sales_end_date', 'vtiger_products', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, '', 100, 8, 31, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, NULL, 0),
(14, 181, 'start_date', 'vtiger_products', 1, '5', 'start_date', 'Support Start Date', 1, 2, '', 100, 7, 31, 1, 'D~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 182, 'expiry_date', 'vtiger_products', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, '', 100, 10, 31, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, NULL, 0),
(14, 183, 'website', 'vtiger_products', 1, '17', 'website', 'Website', 1, 2, '', 100, 14, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 184, 'vendor_id', 'vtiger_products', 1, '75', 'vendor_id', 'Vendor Name', 1, 2, '', 100, 13, 31, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 185, 'mfr_part_no', 'vtiger_products', 1, '1', 'mfr_part_no', 'Mfr PartNo', 1, 2, '', 100, 16, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 186, 'vendor_part_no', 'vtiger_products', 1, '1', 'vendor_part_no', 'Vendor PartNo', 1, 2, '', 100, 15, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 187, 'serialno', 'vtiger_products', 1, '1', 'serial_no', 'Serial No', 1, 2, '', 100, 18, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 188, 'productsheet', 'vtiger_products', 1, '1', 'productsheet', 'Product Sheet', 1, 2, '', 100, 17, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 189, 'glacct', 'vtiger_products', 1, '15', 'glacct', 'GL Account', 1, 2, '', 100, 20, 31, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(14, 190, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 19, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 191, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 21, 31, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 192, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 31, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(14, 193, 'unit_price', 'vtiger_products', 1, '72', 'unit_price', 'Unit Price', 1, 0, '', 100, 1, 32, 1, 'N~O', 2, 3, 'BAS', 0, NULL, 1),
(14, 194, 'commissionrate', 'vtiger_products', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 32, 1, 'N~O', 1, NULL, 'BAS', 1, NULL, 1),
(14, 195, 'taxclass', 'vtiger_products', 1, '83', 'taxclass', 'Tax Class', 1, 2, '', 100, 4, 32, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(14, 196, 'usageunit', 'vtiger_products', 1, '15', 'usageunit', 'Usage Unit', 1, 2, '', 100, 1, 33, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(14, 197, 'qty_per_unit', 'vtiger_products', 1, '1', 'qty_per_unit', 'Qty/Unit', 1, 2, '', 100, 2, 33, 1, 'N~O', 1, NULL, 'ADV', 1, NULL, 1),
(14, 198, 'qtyinstock', 'vtiger_products', 1, '1', 'qtyinstock', 'Qty In Stock', 1, 2, '', 100, 3, 33, 1, 'NN~O', 0, 4, 'ADV', 1, NULL, 0),
(14, 199, 'reorderlevel', 'vtiger_products', 1, '1', 'reorderlevel', 'Reorder Level', 1, 2, '', 100, 4, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(14, 200, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Handler', 1, 0, '', 100, 5, 33, 1, 'V~M', 0, 5, 'BAS', 1, NULL, 0),
(14, 201, 'qtyindemand', 'vtiger_products', 1, '1', 'qtyindemand', 'Qty In Demand', 1, 2, '', 100, 6, 33, 1, 'I~O', 1, NULL, 'ADV', 1, NULL, 0),
(14, 202, 'imagename', 'vtiger_products', 1, '69', 'imagename', 'Product Image', 1, 2, '', 100, 1, 35, 1, 'V~O', 3, NULL, 'ADV', 0, NULL, 0),
(14, 203, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 36, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(8, 204, 'title', 'vtiger_notes', 1, '2', 'notes_title', 'Title', 1, 0, '', 100, 1, 17, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(8, 205, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(8, 206, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 17, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1),
(8, 207, 'filename', 'vtiger_notes', 1, '28', 'filename', 'File Name', 1, 2, '', 100, 3, 18, 1, 'V~O', 0, NULL, 'BAS', 0, NULL, 1),
(8, 208, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 4, 17, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 1),
(8, 209, 'notecontent', 'vtiger_notes', 1, '19', 'notecontent', 'Note', 1, 2, '', 100, 1, 84, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(8, 210, 'filetype', 'vtiger_notes', 1, '1', 'filetype', 'File Type', 1, 2, '', 100, 5, 18, 2, 'V~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 211, 'filesize', 'vtiger_notes', 1, '1', 'filesize', 'File Size', 1, 2, '', 100, 4, 18, 2, 'I~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 212, 'filelocationtype', 'vtiger_notes', 1, '27', 'filelocationtype', 'Download Type', 1, 0, '', 100, 1, 18, 1, 'V~O', 0, 0, 'BAS', 0, NULL, 0),
(8, 213, 'fileversion', 'vtiger_notes', 1, '1', 'fileversion', 'Version', 1, 2, '', 100, 6, 18, 1, 'V~O', 1, 0, 'BAS', 1, NULL, 0),
(8, 214, 'filestatus', 'vtiger_notes', 1, '56', 'filestatus', 'Active', 1, 2, '1', 100, 2, 18, 1, 'V~O', 1, 0, 'BAS', 1, NULL, 0),
(8, 215, 'filedownloadcount', 'vtiger_notes', 1, '1', 'filedownloadcount', 'Download Count', 1, 2, '', 100, 7, 18, 2, 'I~O', 3, 0, 'BAS', 0, NULL, 0),
(8, 216, 'folderid', 'vtiger_notes', 1, '26', 'folderid', 'Folder Name', 1, 2, '', 100, 2, 17, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1),
(8, 217, 'note_no', 'vtiger_notes', 1, '4', 'note_no', 'Document No', 1, 0, '', 100, 3, 17, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(8, 218, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 17, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 219, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Date & Time Sent', 1, 0, '', 100, 1, 21, 1, 'DT~M~time_start~Time Start', 1, NULL, 'BAS', 1, NULL, 0),
(10, 220, 'semodule', 'vtiger_activity', 1, '2', 'parent_type', 'Sales Enity Module', 1, 0, '', 100, 2, 21, 3, '', 1, NULL, 'BAS', 1, NULL, 0),
(10, 221, 'activitytype', 'vtiger_activity', 1, '2', 'activitytype', 'Activtiy Type', 1, 0, '', 100, 3, 21, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 222, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 5, 21, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(10, 223, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 23, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(10, 224, 'name', 'vtiger_attachments', 1, '61', 'filename', 'Attachment', 1, 0, '', 100, 2, 23, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 225, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 24, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 226, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 9, 23, 1, 'T~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 227, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 10, 22, 1, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 228, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 11, 21, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 229, 'access_count', 'vtiger_email_track', 1, '25', 'access_count', 'Access Count', 1, 0, '0', 100, 6, 21, 3, 'V~O', 1, NULL, 'BAS', 0, NULL, 0),
(10, 230, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(9, 231, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 19, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(9, 232, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 19, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(9, 233, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 19, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1),
(9, 234, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 235, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 4, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 236, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'Due Date', 1, 0, '', 100, 5, 19, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 1, NULL, 'BAS', 1, NULL, 1),
(9, 237, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 7, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 238, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 8, 19, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 239, 'status', 'vtiger_activity', 1, '15', 'taskstatus', 'Status', 1, 0, '', 100, 8, 19, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0),
(9, 240, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 9, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 241, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 10, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 242, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 19, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 243, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(9, 244, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 19, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(9, 245, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 16, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 246, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 17, 19, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 247, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 20, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 248, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 17, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 249, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 18, 19, 3, 'T~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 250, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 19, 19, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 251, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 19, 3, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 252, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 19, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 1),
(9, 253, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 20, 19, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(9, 254, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 19, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 255, 'subject', 'vtiger_activity', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 39, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(16, 256, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 39, 1, 'V~M', 0, 6, 'BAS', 1, NULL, 1),
(16, 257, 'date_start', 'vtiger_activity', 1, '6', 'date_start', 'Start Date & Time', 1, 0, '', 100, 3, 39, 1, 'DT~M~time_start', 0, 2, 'BAS', 1, NULL, 1),
(16, 258, 'time_start', 'vtiger_activity', 1, '2', 'time_start', 'Time Start', 1, 0, '', 100, 4, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1),
(16, 259, 'due_date', 'vtiger_activity', 1, '23', 'due_date', 'End Date', 1, 0, '', 100, 5, 39, 1, 'D~M~OTH~GE~date_start~Start Date & Time', 0, 5, 'BAS', 1, NULL, 1),
(16, 260, 'time_end', 'vtiger_activity', 1, '2', 'time_end', 'End Time', 1, 0, '', 100, 5, 39, 3, 'T~M', 1, NULL, 'BAS', 1, NULL, 1),
(16, 261, 'recurringtype', 'vtiger_activity', 1, '16', 'recurringtype', 'Recurrence', 1, 0, '', 100, 6, 117, 1, 'O~O', 1, NULL, 'BAS', 1, NULL, 1),
(16, 262, 'duration_hours', 'vtiger_activity', 1, '63', 'duration_hours', 'Duration', 1, 0, '', 100, 7, 39, 3, 'I~M', 1, NULL, 'BAS', 1, NULL, 0),
(16, 263, 'duration_minutes', 'vtiger_activity', 1, '16', 'duration_minutes', 'Duration Minutes', 1, 0, '', 100, 8, 39, 3, 'O~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 264, 'crmid', 'vtiger_seactivityrel', 1, '66', 'parent_id', 'Related To', 1, 0, '', 100, 9, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 1),
(16, 265, 'eventstatus', 'vtiger_activity', 1, '15', 'eventstatus', 'Status', 1, 0, '', 100, 10, 39, 1, 'V~M', 0, 3, 'BAS', 1, NULL, 0),
(16, 266, 'sendnotification', 'vtiger_activity', 1, '56', 'sendnotification', 'Send Notification', 1, 0, '', 100, 11, 39, 1, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 267, 'activitytype', 'vtiger_activity', 1, '15', 'activitytype', 'Activity Type', 1, 0, '', 100, 12, 39, 1, 'V~M', 0, 4, 'BAS', 1, NULL, 1),
(16, 268, 'location', 'vtiger_activity', 1, '1', 'location', 'Location', 1, 0, '', 100, 13, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 269, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 270, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 39, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 271, 'priority', 'vtiger_activity', 1, '15', 'taskpriority', 'Priority', 1, 0, '', 100, 16, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 272, 'notime', 'vtiger_activity', 1, '56', 'notime', 'No Time', 1, 0, '', 100, 17, 39, 3, 'C~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 273, 'visibility', 'vtiger_activity', 1, '16', 'visibility', 'Visibility', 1, 0, '', 100, 18, 39, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 274, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 39, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(16, 275, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 0, '', 100, 1, 41, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 276, 'reminder_time', 'vtiger_activity_reminder', 1, '30', 'reminder_time', 'Send Reminder', 1, 0, '', 100, 1, 40, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(16, 277, 'contactid', 'vtiger_cntactivityrel', 1, '57', 'contact_id', 'Contact Name', 1, 0, '', 100, 1, 119, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(15, 278, 'product_id', 'vtiger_faq', 1, '59', 'product_id', 'Product Name', 1, 2, '', 100, 1, 37, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1),
(15, 279, 'faq_no', 'vtiger_faq', 1, '4', 'faq_no', 'Faq No', 1, 0, '', 100, 2, 37, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(15, 280, 'category', 'vtiger_faq', 1, '15', 'faqcategories', 'Category', 1, 2, '', 100, 4, 37, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1),
(15, 281, 'status', 'vtiger_faq', 1, '15', 'faqstatus', 'Status', 1, 2, '', 100, 3, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(15, 282, 'question', 'vtiger_faq', 1, '20', 'question', 'Question', 1, 2, '', 100, 7, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(15, 283, 'answer', 'vtiger_faq', 1, '20', 'faq_answer', 'Answer', 1, 2, '', 100, 8, 37, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(15, 284, 'comments', 'vtiger_faqcomments', 1, '19', 'comments', 'Add Comment', 1, 1, '', 100, 1, 38, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(15, 285, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1),
(15, 286, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 37, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 1),
(15, 287, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 37, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 288, 'vendorname', 'vtiger_vendor', 1, '2', 'vendorname', 'Vendor Name', 1, 0, '', 100, 1, 42, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(18, 289, 'vendor_no', 'vtiger_vendor', 1, '4', 'vendor_no', 'Vendor No', 1, 0, '', 100, 2, 42, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 290, 'phone', 'vtiger_vendor', 1, '1', 'phone', 'Phone', 1, 2, '', 100, 4, 42, 1, 'V~O', 2, 2, 'BAS', 1, NULL, 1),
(18, 291, 'email', 'vtiger_vendor', 1, '13', 'email', 'Email', 1, 2, '', 100, 3, 42, 1, 'E~O', 2, 3, 'BAS', 1, NULL, 1),
(18, 292, 'website', 'vtiger_vendor', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(18, 293, 'glacct', 'vtiger_vendor', 1, '15', 'glacct', 'GL Account', 1, 2, '', 100, 5, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(18, 294, 'category', 'vtiger_vendor', 1, '1', 'category', 'Category', 1, 2, '', 100, 8, 42, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 1),
(18, 295, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 7, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 296, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 9, 42, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 297, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 12, 42, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(18, 298, 'street', 'vtiger_vendor', 1, '21', 'street', 'Street', 1, 2, '', 100, 1, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 299, 'pobox', 'vtiger_vendor', 1, '1', 'pobox', 'Po Box', 1, 2, '', 100, 2, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 300, 'city', 'vtiger_vendor', 1, '1', 'city', 'City', 1, 2, '', 100, 3, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 301, 'state', 'vtiger_vendor', 1, '1', 'state', 'State', 1, 2, '', 100, 4, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 302, 'postalcode', 'vtiger_vendor', 1, '1', 'postalcode', 'Postal Code', 1, 2, '', 100, 5, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 303, 'country', 'vtiger_vendor', 1, '1', 'country', 'Country', 1, 2, '', 100, 6, 44, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(18, 304, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 45, 1, 'V~O', 1, NULL, 'ADV', 1, NULL, 0),
(19, 305, 'bookname', 'vtiger_pricebook', 1, '2', 'bookname', 'Price Book Name', 1, 0, '', 100, 1, 46, 1, 'V~M', 0, 1, 'BAS', 1, NULL, 1),
(19, 306, 'pricebook_no', 'vtiger_pricebook', 1, '4', 'pricebook_no', 'PriceBook No', 1, 0, '', 100, 3, 46, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 307, 'active', 'vtiger_pricebook', 1, '56', 'active', 'Active', 1, 2, '1', 100, 2, 46, 1, 'C~O', 2, 2, 'BAS', 1, NULL, 1),
(19, 308, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 4, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 309, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 5, 46, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 310, 'currency_id', 'vtiger_pricebook', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 5, 46, 1, 'I~M', 0, 3, 'BAS', 0, NULL, 0),
(19, 311, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 46, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(19, 312, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 48, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(20, 313, 'quote_no', 'vtiger_quotes', 1, '4', 'quote_no', 'Quote No', 1, 0, '', 100, 3, 49, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(20, 314, 'subject', 'vtiger_quotes', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 49, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 1),
(20, 315, 'potentialid', 'vtiger_quotes', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 1),
(20, 316, 'quotestage', 'vtiger_quotes', 1, '15', 'quotestage', 'Quote Stage', 1, 2, '', 100, 4, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(20, 317, 'validtill', 'vtiger_quotes', 1, '5', 'validtill', 'Valid Till', 1, 2, '', 100, 5, 49, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 318, 'contactid', 'vtiger_quotes', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 319, 'carrier', 'vtiger_quotes', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 320, 'subtotal', 'vtiger_quotes', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 9, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 321, 'shipping', 'vtiger_quotes', 1, '1', 'shipping', 'Shipping', 1, 2, '', 100, 10, 49, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 322, 'inventorymanager', 'vtiger_quotes', 1, '77', 'assigned_user_id1', 'Inventory Manager', 1, 2, '', 100, 11, 49, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 323, 'adjustment', 'vtiger_quotes', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 20, 49, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 324, 'total', 'vtiger_quotes', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(20, 325, 'taxtype', 'vtiger_quotes', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 49, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 326, 'discount_percent', 'vtiger_quotes', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 327, 'discount_amount', 'vtiger_quotes', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 328, 's_h_amount', 'vtiger_quotes', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 329, 'accountid', 'vtiger_quotes', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 49, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1),
(20, 330, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 49, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(20, 331, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(20, 332, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 49, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(20, 333, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 49, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(20, 334, 'currency_id', 'vtiger_quotes', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 49, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 335, 'conversion_rate', 'vtiger_quotes', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 49, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 336, 'bill_street', 'vtiger_quotesbillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(20, 337, 'ship_street', 'vtiger_quotesshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 51, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(20, 338, 'bill_city', 'vtiger_quotesbillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 339, 'ship_city', 'vtiger_quotesshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 340, 'bill_state', 'vtiger_quotesbillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 341, 'ship_state', 'vtiger_quotesshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 342, 'bill_code', 'vtiger_quotesbillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 343, 'ship_code', 'vtiger_quotesshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 344, 'bill_country', 'vtiger_quotesbillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 345, 'ship_country', 'vtiger_quotesshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 346, 'bill_pobox', 'vtiger_quotesbillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 347, 'ship_pobox', 'vtiger_quotesshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 51, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(20, 348, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 54, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`) VALUES
(20, 349, 'terms_conditions', 'vtiger_quotes', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 53, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(21, 350, 'purchaseorder_no', 'vtiger_purchaseorder', 1, '4', 'purchaseorder_no', 'PurchaseOrder No', 1, 0, '', 100, 2, 55, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(21, 351, 'subject', 'vtiger_purchaseorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(21, 352, 'vendorid', 'vtiger_purchaseorder', 1, '81', 'vendor_id', 'Vendor Name', 1, 0, '', 100, 3, 55, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1),
(21, 353, 'requisition_no', 'vtiger_purchaseorder', 1, '1', 'requisition_no', 'Requisition No', 1, 2, '', 100, 4, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 354, 'tracking_no', 'vtiger_purchaseorder', 1, '1', 'tracking_no', 'Tracking Number', 1, 2, '', 100, 5, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1),
(21, 355, 'contactid', 'vtiger_purchaseorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 55, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 356, 'duedate', 'vtiger_purchaseorder', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 7, 55, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 357, 'carrier', 'vtiger_purchaseorder', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 8, 55, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 358, 'adjustment', 'vtiger_purchaseorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 10, 55, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 359, 'salescommission', 'vtiger_purchaseorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 100, 11, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 360, 'exciseduty', 'vtiger_purchaseorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 12, 55, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 361, 'total', 'vtiger_purchaseorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(21, 362, 'subtotal', 'vtiger_purchaseorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 363, 'taxtype', 'vtiger_purchaseorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 14, 55, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 364, 'discount_percent', 'vtiger_purchaseorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 365, 'discount_amount', 'vtiger_purchaseorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 0, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 366, 's_h_amount', 'vtiger_purchaseorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 367, 'postatus', 'vtiger_purchaseorder', 1, '15', 'postatus', 'Status', 1, 2, '', 100, 15, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(21, 368, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 55, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(21, 369, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(21, 370, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 55, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(21, 371, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 55, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(21, 372, 'currency_id', 'vtiger_purchaseorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 55, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 373, 'conversion_rate', 'vtiger_purchaseorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 55, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 374, 'bill_street', 'vtiger_pobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(21, 375, 'ship_street', 'vtiger_poshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 57, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(21, 376, 'bill_city', 'vtiger_pobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 377, 'ship_city', 'vtiger_poshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 378, 'bill_state', 'vtiger_pobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 379, 'ship_state', 'vtiger_poshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 380, 'bill_code', 'vtiger_pobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 381, 'ship_code', 'vtiger_poshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 382, 'bill_country', 'vtiger_pobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 383, 'ship_country', 'vtiger_poshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 384, 'bill_pobox', 'vtiger_pobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 385, 'ship_pobox', 'vtiger_poshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 57, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(21, 386, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 60, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(21, 387, 'terms_conditions', 'vtiger_purchaseorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 59, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(22, 388, 'salesorder_no', 'vtiger_salesorder', 1, '4', 'salesorder_no', 'SalesOrder No', 1, 0, '', 100, 4, 61, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(22, 389, 'subject', 'vtiger_salesorder', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(22, 390, 'potentialid', 'vtiger_salesorder', 1, '76', 'potential_id', 'Potential Name', 1, 2, '', 100, 2, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 391, 'customerno', 'vtiger_salesorder', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 392, 'quoteid', 'vtiger_salesorder', 1, '78', 'quote_id', 'Quote Name', 1, 2, '', 100, 5, 61, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1),
(22, 393, 'purchaseorder', 'vtiger_salesorder', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 5, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 394, 'contactid', 'vtiger_salesorder', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 6, 61, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 395, 'duedate', 'vtiger_salesorder', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 8, 61, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 396, 'carrier', 'vtiger_salesorder', 1, '15', 'carrier', 'Carrier', 1, 2, '', 100, 9, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 397, 'pending', 'vtiger_salesorder', 1, '1', 'pending', 'Pending', 1, 2, '', 100, 10, 61, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 398, 'sostatus', 'vtiger_salesorder', 1, '15', 'sostatus', 'Status', 1, 2, '', 100, 11, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(22, 399, 'adjustment', 'vtiger_salesorder', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 12, 61, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 400, 'salescommission', 'vtiger_salesorder', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 401, 'exciseduty', 'vtiger_salesorder', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 13, 61, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 402, 'total', 'vtiger_salesorder', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 14, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(22, 403, 'subtotal', 'vtiger_salesorder', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 404, 'taxtype', 'vtiger_salesorder', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 15, 61, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 405, 'discount_percent', 'vtiger_salesorder', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 406, 'discount_amount', 'vtiger_salesorder', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 0, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 407, 's_h_amount', 'vtiger_salesorder', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 15, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 408, 'accountid', 'vtiger_salesorder', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 16, 61, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 1),
(22, 409, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 17, 61, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(22, 410, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 18, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 411, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 19, 61, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 412, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 61, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 413, 'currency_id', 'vtiger_salesorder', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 20, 61, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 414, 'conversion_rate', 'vtiger_salesorder', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 21, 61, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 415, 'bill_street', 'vtiger_sobillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(22, 416, 'ship_street', 'vtiger_soshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 63, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(22, 417, 'bill_city', 'vtiger_sobillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 418, 'ship_city', 'vtiger_soshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 419, 'bill_state', 'vtiger_sobillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 420, 'ship_state', 'vtiger_soshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 421, 'bill_code', 'vtiger_sobillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 422, 'ship_code', 'vtiger_soshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 423, 'bill_country', 'vtiger_sobillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 424, 'ship_country', 'vtiger_soshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 425, 'bill_pobox', 'vtiger_sobillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 426, 'ship_pobox', 'vtiger_soshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 63, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(22, 427, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 66, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(22, 428, 'terms_conditions', 'vtiger_salesorder', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 65, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(22, 429, 'enable_recurring', 'vtiger_salesorder', 1, '56', 'enable_recurring', 'Enable Recurring', 1, 0, '', 100, 1, 85, 1, 'C~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 430, 'recurring_frequency', 'vtiger_invoice_recurring_info', 1, '16', 'recurring_frequency', 'Frequency', 1, 0, '', 100, 2, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 431, 'start_period', 'vtiger_invoice_recurring_info', 1, '5', 'start_period', 'Start Period', 1, 0, '', 100, 3, 85, 1, 'D~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 432, 'end_period', 'vtiger_invoice_recurring_info', 1, '5', 'end_period', 'End Period', 1, 0, '', 100, 4, 85, 1, 'D~O~OTH~G~start_period~Start Period', 3, NULL, 'BAS', 0, NULL, 0),
(22, 433, 'payment_duration', 'vtiger_invoice_recurring_info', 1, '16', 'payment_duration', 'Payment Duration', 1, 0, '', 100, 5, 85, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(22, 434, 'invoice_status', 'vtiger_invoice_recurring_info', 1, '15', 'invoicestatus', 'Invoice Status', 1, 0, '', 100, 6, 85, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0),
(23, 435, 'subject', 'vtiger_invoice', 1, '2', 'subject', 'Subject', 1, 0, '', 100, 1, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(23, 436, 'salesorderid', 'vtiger_invoice', 1, '80', 'salesorder_id', 'Sales Order', 1, 2, '', 100, 2, 67, 1, 'I~O', 3, NULL, 'BAS', 0, NULL, 1),
(23, 437, 'customerno', 'vtiger_invoice', 1, '1', 'customerno', 'Customer No', 1, 2, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 438, 'contactid', 'vtiger_invoice', 1, '57', 'contact_id', 'Contact Name', 1, 2, '', 100, 4, 67, 1, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 439, 'invoicedate', 'vtiger_invoice', 1, '5', 'invoicedate', 'Invoice Date', 1, 2, '', 100, 5, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 440, 'duedate', 'vtiger_invoice', 1, '5', 'duedate', 'Due Date', 1, 2, '', 100, 6, 67, 1, 'D~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 441, 'purchaseorder', 'vtiger_invoice', 1, '1', 'vtiger_purchaseorder', 'Purchase Order', 1, 2, '', 100, 8, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 442, 'adjustment', 'vtiger_invoice', 1, '72', 'txtAdjustment', 'Adjustment', 1, 2, '', 100, 9, 67, 3, 'NN~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 443, 'salescommission', 'vtiger_invoice', 1, '1', 'salescommission', 'Sales Commission', 1, 2, '', 10, 13, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 444, 'exciseduty', 'vtiger_invoice', 1, '1', 'exciseduty', 'Excise Duty', 1, 2, '', 100, 11, 67, 1, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 445, 'subtotal', 'vtiger_invoice', 1, '72', 'hdnSubTotal', 'Sub Total', 1, 2, '', 100, 12, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 446, 'total', 'vtiger_invoice', 1, '72', 'hdnGrandTotal', 'Total', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 1),
(23, 447, 'taxtype', 'vtiger_invoice', 1, '16', 'hdnTaxType', 'Tax Type', 1, 2, '', 100, 13, 67, 3, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 448, 'discount_percent', 'vtiger_invoice', 1, '1', 'hdnDiscountPercent', 'Discount Percent', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 449, 'discount_amount', 'vtiger_invoice', 1, '72', 'hdnDiscountAmount', 'Discount Amount', 1, 2, '', 100, 13, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 450, 's_h_amount', 'vtiger_invoice', 1, '72', 'hdnS_H_Amount', 'S&H Amount', 1, 2, '', 100, 14, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 451, 'accountid', 'vtiger_invoice', 1, '73', 'account_id', 'Account Name', 1, 2, '', 100, 14, 67, 1, 'I~M', 3, NULL, 'BAS', 1, NULL, 0),
(23, 452, 'invoicestatus', 'vtiger_invoice', 1, '15', 'invoicestatus', 'Status', 1, 2, '', 100, 15, 67, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 1),
(23, 453, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 16, 67, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 1),
(23, 454, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(23, 455, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 67, 2, 'DT~O', 3, NULL, 'BAS', 0, NULL, 0),
(23, 456, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 22, 67, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(23, 457, 'currency_id', 'vtiger_invoice', 1, '117', 'currency_id', 'Currency', 1, 2, '1', 100, 19, 67, 3, 'I~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 458, 'conversion_rate', 'vtiger_invoice', 1, '1', 'conversion_rate', 'Conversion Rate', 1, 2, '1', 100, 20, 67, 3, 'N~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 459, 'bill_street', 'vtiger_invoicebillads', 1, '24', 'bill_street', 'Billing Address', 1, 2, '', 100, 1, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(23, 460, 'ship_street', 'vtiger_invoiceshipads', 1, '24', 'ship_street', 'Shipping Address', 1, 2, '', 100, 2, 69, 1, 'V~M', 3, NULL, 'BAS', 1, NULL, 0),
(23, 461, 'bill_city', 'vtiger_invoicebillads', 1, '1', 'bill_city', 'Billing City', 1, 2, '', 100, 5, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 462, 'ship_city', 'vtiger_invoiceshipads', 1, '1', 'ship_city', 'Shipping City', 1, 2, '', 100, 6, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 463, 'bill_state', 'vtiger_invoicebillads', 1, '1', 'bill_state', 'Billing State', 1, 2, '', 100, 7, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 464, 'ship_state', 'vtiger_invoiceshipads', 1, '1', 'ship_state', 'Shipping State', 1, 2, '', 100, 8, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 465, 'bill_code', 'vtiger_invoicebillads', 1, '1', 'bill_code', 'Billing Code', 1, 2, '', 100, 9, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 466, 'ship_code', 'vtiger_invoiceshipads', 1, '1', 'ship_code', 'Shipping Code', 1, 2, '', 100, 10, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 467, 'bill_country', 'vtiger_invoicebillads', 1, '1', 'bill_country', 'Billing Country', 1, 2, '', 100, 11, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 468, 'ship_country', 'vtiger_invoiceshipads', 1, '1', 'ship_country', 'Shipping Country', 1, 2, '', 100, 12, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 469, 'bill_pobox', 'vtiger_invoicebillads', 1, '1', 'bill_pobox', 'Billing Po Box', 1, 2, '', 100, 3, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 470, 'ship_pobox', 'vtiger_invoiceshipads', 1, '1', 'ship_pobox', 'Shipping Po Box', 1, 2, '', 100, 4, 69, 1, 'V~O', 3, NULL, 'BAS', 1, NULL, 0),
(23, 471, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 72, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(23, 472, 'terms_conditions', 'vtiger_invoice', 1, '19', 'terms_conditions', 'Terms & Conditions', 1, 2, '', 100, 1, 71, 1, 'V~O', 3, NULL, 'ADV', 1, NULL, 0),
(23, 473, 'invoice_no', 'vtiger_invoice', 1, '4', 'invoice_no', 'Invoice No', 1, 0, '', 100, 3, 67, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 1),
(29, 474, 'user_name', 'vtiger_users', 1, '106', 'user_name', 'User Name', 1, 0, '', 11, 1, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 475, 'is_admin', 'vtiger_users', 1, '156', 'is_admin', 'Admin', 1, 0, '', 3, 7, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 476, 'user_password', 'vtiger_users', 1, '99', 'user_password', 'Password', 1, 0, '', 30, 5, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 477, 'confirm_password', 'vtiger_users', 1, '99', 'confirm_password', 'Confirm Password', 1, 0, '', 30, 6, 77, 4, 'P~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 478, 'first_name', 'vtiger_users', 1, '1', 'first_name', 'First Name', 1, 0, '', 30, 3, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 479, 'last_name', 'vtiger_users', 1, '2', 'last_name', 'Last Name', 1, 0, '', 30, 4, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 480, 'roleid', 'vtiger_user2role', 1, '98', 'roleid', 'Role', 1, 0, '', 200, 8, 77, 1, 'V~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 481, 'email1', 'vtiger_users', 1, '104', 'email1', 'Email', 1, 0, '', 100, 2, 77, 1, 'E~M', 1, NULL, 'BAS', 1, NULL, 0),
(29, 482, 'status', 'vtiger_users', 1, '115', 'status', 'Status', 1, 0, 'Active', 100, 10, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 483, 'activity_view', 'vtiger_users', 1, '16', 'activity_view', 'Default Activity View', 1, 0, '', 100, 6, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 484, 'lead_view', 'vtiger_users', 1, '16', 'lead_view', 'Default Lead View', 1, 0, '', 100, 9, 77, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 485, 'hour_format', 'vtiger_users', 1, '16', 'hour_format', 'Calendar Hour Format', 1, 0, '12', 100, 4, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 486, 'end_hour', 'vtiger_users', 1, '116', 'end_hour', 'Day ends at', 1, 0, '', 100, 11, 77, 3, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 487, 'start_hour', 'vtiger_users', 1, '16', 'start_hour', 'Day starts at', 1, 0, '', 100, 2, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 488, 'title', 'vtiger_users', 1, '1', 'title', 'Title', 1, 0, '', 50, 1, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 489, 'phone_work', 'vtiger_users', 1, '11', 'phone_work', 'Office Phone', 1, 0, '', 50, 5, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 490, 'department', 'vtiger_users', 1, '1', 'department', 'Department', 1, 0, '', 50, 3, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 491, 'phone_mobile', 'vtiger_users', 1, '11', 'phone_mobile', 'Mobile', 1, 0, '', 50, 7, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 492, 'reports_to_id', 'vtiger_users', 1, '101', 'reports_to_id', 'Reports To', 1, 0, '', 50, 8, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 493, 'phone_other', 'vtiger_users', 1, '11', 'phone_other', 'Other Phone', 1, 0, '', 50, 11, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 494, 'email2', 'vtiger_users', 1, '13', 'email2', 'Other Email', 1, 0, '', 100, 4, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 495, 'phone_fax', 'vtiger_users', 1, '11', 'phone_fax', 'Fax', 1, 0, '', 50, 2, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 496, 'secondaryemail', 'vtiger_users', 1, '13', 'secondaryemail', 'Secondary Email', 1, 0, '', 100, 6, 79, 1, 'E~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 497, 'phone_home', 'vtiger_users', 1, '11', 'phone_home', 'Home Phone', 1, 0, '', 50, 9, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 498, 'date_format', 'vtiger_users', 1, '16', 'date_format', 'Date Format', 1, 0, '', 30, 3, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 499, 'signature', 'vtiger_users', 1, '21', 'signature', 'Signature', 1, 0, '', 250, 13, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 500, 'description', 'vtiger_users', 1, '21', 'description', 'Documents', 1, 0, '', 250, 14, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 501, 'address_street', 'vtiger_users', 1, '21', 'address_street', 'Street Address', 1, 0, '', 250, 1, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 502, 'address_city', 'vtiger_users', 1, '1', 'address_city', 'City', 1, 0, '', 100, 3, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 503, 'address_state', 'vtiger_users', 1, '1', 'address_state', 'State', 1, 0, '', 100, 5, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 504, 'address_postalcode', 'vtiger_users', 1, '1', 'address_postalcode', 'Postal Code', 1, 0, '', 100, 4, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 505, 'address_country', 'vtiger_users', 1, '1', 'address_country', 'Country', 1, 0, '', 100, 2, 80, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 506, 'accesskey', 'vtiger_users', 1, '3', 'accesskey', 'Webservice Access Key', 1, 0, '', 100, 2, 83, 2, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 507, 'time_zone', 'vtiger_users', 1, '16', 'time_zone', 'Time Zone', 1, 0, '', 200, 5, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 508, 'currency_id', 'vtiger_users', 1, '117', 'currency_id', 'Currency', 1, 0, '', 100, 1, 78, 1, 'I~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 509, 'currency_grouping_pattern', 'vtiger_users', 1, '16', 'currency_grouping_pattern', 'Digit Grouping Pattern', 1, 0, '', 100, 2, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Digit Grouping Pattern</b> <br/><br/>This pattern specifies the format in which the currency separator will be placed.', 0),
(29, 510, 'currency_decimal_separator', 'vtiger_users', 1, '16', 'currency_decimal_separator', 'Decimal Separator', 1, 0, '', 2, 3, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Decimal Separator</b> <br/><br/>Decimal separator specifies the separator to be used to separate the fractional values from the whole number part. <br/><b>Eg:</b> <br/>. => 123.45 <br/>, => 123,45 <br/>'' => 123''45 <br/>  => 123 45 <br/>$ => 123$45 <br/>', 0),
(29, 511, 'currency_grouping_separator', 'vtiger_users', 1, '16', 'currency_grouping_separator', 'Digit Grouping Separator', 1, 0, '', 2, 4, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Grouping Separator</b> <br/><br/>Grouping separator specifies the separator to be used to group the whole number part into hundreds, thousands etc. <br/><b>Eg:</b> <br/>. => 123.456.789 <br/>, => 123,456,789 <br/>'' => 123''456''789 <br/>  => 123 456 789 <br/>$ => 123$456$789 <br/>', 0),
(29, 512, 'currency_symbol_placement', 'vtiger_users', 1, '16', 'currency_symbol_placement', 'Symbol Placement', 1, 0, '', 20, 5, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Symbol Placement</b> <br/><br/>Symbol Placement allows you to configure the position of the currency symbol with respect to the currency value.<br/><b>Eg:</b> <br/>$1.0 => $123,456,789.50 <br/>1.0$ => 123,456,789.50$ <br/>', 0),
(29, 513, 'imagename', 'vtiger_users', 1, '105', 'imagename', 'User Image', 1, 0, '', 250, 10, 82, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 514, 'internal_mailer', 'vtiger_users', 1, '56', 'internal_mailer', 'INTERNAL_MAIL_COMPOSER', 1, 0, '', 50, 15, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 515, 'theme', 'vtiger_users', 1, '31', 'theme', 'Theme', 1, 0, 'softed', 100, 16, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 516, 'language', 'vtiger_users', 1, '32', 'language', 'Language', 1, 0, '', 100, 17, 79, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(29, 517, 'reminder_interval', 'vtiger_users', 1, '16', 'reminder_interval', 'Reminder Interval', 1, 0, '', 100, 11, 118, 1, 'V~O', 1, NULL, 'BAS', 1, NULL, 0),
(10, 518, 'from_email', 'vtiger_emaildetails', 1, '12', 'from_email', 'From', 1, 2, '', 100, 1, 21, 3, 'V~M', 3, NULL, 'BAS', 0, NULL, 0),
(10, 519, 'to_email', 'vtiger_emaildetails', 1, '8', 'saved_toid', 'To', 1, 2, '', 100, 2, 21, 1, 'V~M', 3, NULL, 'BAS', 0, NULL, 0),
(10, 520, 'cc_email', 'vtiger_emaildetails', 1, '8', 'ccmail', 'CC', 1, 2, '', 1000, 3, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 521, 'bcc_email', 'vtiger_emaildetails', 1, '8', 'bccmail', 'BCC', 1, 2, '', 1000, 4, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 522, 'idlists', 'vtiger_emaildetails', 1, '357', 'parent_id', 'Parent ID', 1, 2, '', 1000, 5, 21, 1, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(10, 523, 'email_flag', 'vtiger_emaildetails', 1, '16', 'email_flag', 'Email Flag', 1, 2, '', 1000, 6, 21, 3, 'V~O', 3, NULL, 'BAS', 0, NULL, 0),
(34, 524, 'direction', 'vtiger_pbxmanager', 1, '1', 'direction', 'Direction', 1, 2, '', 100, 1, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(34, 525, 'callstatus', 'vtiger_pbxmanager', 1, '1', 'callstatus', 'Call Status', 1, 2, '', 100, 2, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(34, 526, 'starttime', 'vtiger_pbxmanager', 1, '70', 'starttime', 'Start Time', 1, 2, '', 100, 7, 88, 1, 'DT~O', 1, NULL, 'BAS', 1, '', 1),
(34, 527, 'endtime', 'vtiger_pbxmanager', 1, '70', 'endtime', 'End Time', 1, 2, '', 100, 8, 88, 1, 'DT~O', 1, NULL, 'BAS', 1, '', 0),
(34, 528, 'totalduration', 'vtiger_pbxmanager', 1, '7', 'totalduration', 'Total Duration', 1, 2, '', 100, 10, 88, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(34, 529, 'billduration', 'vtiger_pbxmanager', 1, '7', 'billduration', 'Bill Duration', 1, 2, '', 100, 11, 88, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(34, 530, 'recordingurl', 'vtiger_pbxmanager', 1, '17', 'recordingurl', 'Recording URL', 1, 2, '', 100, 9, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(34, 531, 'sourceuuid', 'vtiger_pbxmanager', 1, '1', 'sourceuuid', 'Source UUID', 1, 2, '', 100, 12, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(34, 532, 'gateway', 'vtiger_pbxmanager', 1, '1', 'gateway', 'Gateway', 1, 2, '', 100, 13, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(34, 533, 'customer', 'vtiger_pbxmanager', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 3, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(34, 534, 'user', 'vtiger_pbxmanager', 1, '52', 'user', 'User', 1, 2, '', 100, 4, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(34, 535, 'customernumber', 'vtiger_pbxmanager', 1, '11', 'customernumber', 'Customer Number', 1, 2, '', 100, 5, 88, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(34, 536, 'customertype', 'vtiger_pbxmanager', 1, '1', 'customertype', 'Customer Type', 1, 2, '', 100, 6, 88, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(34, 537, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 14, 88, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(34, 538, 'createdtime', 'vtiger_crmentity', 1, '70', 'CreatedTime', 'Created Time', 1, 2, '', 100, 15, 88, 2, 'DT~O', 1, NULL, 'BAS', 1, '', 0),
(34, 539, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'ModifiedTime', 'Modified Time', 1, 2, '', 100, 16, 88, 2, 'DT~O', 1, NULL, 'BAS', 1, '', 0),
(29, 540, 'phone_crm_extension', 'vtiger_users', 1, '11', 'phone_crm_extension', 'CRM Phone Extension', 1, 2, '', 100, 18, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(35, 541, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 89, 1, 'V~M', 2, 2, 'BAS', 1, '', 1),
(35, 542, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 17, 89, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(35, 543, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 18, 89, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(35, 544, 'start_date', 'vtiger_servicecontracts', 1, '5', 'start_date', 'Start Date', 1, 2, '', 100, 7, 89, 1, 'D~O', 2, 4, 'BAS', 1, '', 0),
(35, 545, 'end_date', 'vtiger_servicecontracts', 1, '5', 'end_date', 'End Date', 1, 2, '', 100, 11, 89, 2, 'D~O', 3, 0, 'BAS', 0, '', 0),
(35, 546, 'sc_related_to', 'vtiger_servicecontracts', 1, '10', 'sc_related_to', 'Related to', 1, 2, '', 100, 3, 89, 1, 'V~O', 2, 6, 'BAS', 1, '', 0),
(35, 547, 'tracking_unit', 'vtiger_servicecontracts', 1, '15', 'tracking_unit', 'Tracking Unit', 1, 2, '', 100, 6, 89, 1, 'V~O', 2, 7, 'BAS', 1, '', 0),
(35, 548, 'total_units', 'vtiger_servicecontracts', 1, '7', 'total_units', 'Total Units', 1, 2, '', 100, 8, 89, 1, 'V~O', 2, 8, 'BAS', 1, '', 1),
(35, 549, 'used_units', 'vtiger_servicecontracts', 1, '7', 'used_units', 'Used Units', 1, 2, '', 100, 10, 89, 1, 'V~O', 2, 9, 'BAS', 1, '', 1),
(35, 550, 'subject', 'vtiger_servicecontracts', 1, '1', 'subject', 'Subject', 1, 0, '', 100, 1, 89, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(35, 551, 'due_date', 'vtiger_servicecontracts', 1, '23', 'due_date', 'Due date', 1, 2, '', 100, 9, 89, 1, 'D~O', 2, 5, 'BAS', 1, '', 0),
(35, 552, 'planned_duration', 'vtiger_servicecontracts', 1, '1', 'planned_duration', 'Planned Duration', 1, 2, '', 100, 13, 89, 2, 'V~O', 3, 0, 'BAS', 0, '', 0),
(35, 553, 'actual_duration', 'vtiger_servicecontracts', 1, '1', 'actual_duration', 'Actual Duration', 1, 2, '', 100, 15, 89, 2, 'V~O', 3, 0, 'BAS', 0, '', 0),
(35, 554, 'contract_status', 'vtiger_servicecontracts', 1, '15', 'contract_status', 'Status', 1, 2, '', 100, 12, 89, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(35, 555, 'priority', 'vtiger_servicecontracts', 1, '15', 'contract_priority', 'Priority', 1, 2, '', 100, 14, 89, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(35, 556, 'contract_type', 'vtiger_servicecontracts', 1, '15', 'contract_type', 'Type', 1, 2, '', 100, 5, 89, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(35, 557, 'progress', 'vtiger_servicecontracts', 1, '9', 'progress', 'Progress', 1, 2, '', 100, 16, 89, 2, 'N~O~2~2', 3, 3, 'BAS', 0, '', 0),
(35, 558, 'contract_no', 'vtiger_servicecontracts', 1, '4', 'contract_no', 'Contract No', 1, 0, '', 100, 2, 89, 1, 'V~O', 3, 0, 'BAS', 0, '', 1),
(35, 559, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 17, 89, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(36, 560, 'servicename', 'vtiger_service', 1, '2', 'servicename', 'Service Name', 1, 0, '', 100, 1, 91, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(36, 561, 'service_no', 'vtiger_service', 1, '4', 'service_no', 'Service No', 1, 0, '', 100, 2, 91, 1, 'V~O', 3, 0, 'BAS', 0, '', 1),
(36, 562, 'discontinued', 'vtiger_service', 1, '56', 'discontinued', 'Service Active', 1, 2, '', 100, 4, 91, 1, 'V~O', 2, 3, 'BAS', 1, '', 0),
(36, 563, 'sales_start_date', 'vtiger_service', 1, '5', 'sales_start_date', 'Sales Start Date', 1, 2, '', 100, 9, 91, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(36, 564, 'sales_end_date', 'vtiger_service', 1, '5', 'sales_end_date', 'Sales End Date', 1, 2, '', 100, 10, 91, 1, 'D~O~OTH~GE~sales_start_date~Sales Start Date', 1, NULL, 'BAS', 1, '', 0),
(36, 565, 'start_date', 'vtiger_service', 1, '5', 'start_date', 'Support Start Date', 1, 2, '', 100, 11, 91, 1, 'D~O', 1, NULL, 'BAS', 1, '', 0),
(36, 566, 'expiry_date', 'vtiger_service', 1, '5', 'expiry_date', 'Support Expiry Date', 1, 2, '', 100, 12, 91, 1, 'D~O~OTH~GE~start_date~Start Date', 1, NULL, 'BAS', 1, '', 0),
(36, 567, 'website', 'vtiger_service', 1, '17', 'website', 'Website', 1, 2, '', 100, 6, 91, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 568, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 13, 91, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(36, 569, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 14, 91, 2, 'DT~O', 3, 0, 'BAS', 0, '', 0),
(36, 570, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 91, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(36, 571, 'service_usageunit', 'vtiger_service', 1, '15', 'service_usageunit', 'Usage Unit', 1, 2, '', 100, 3, 91, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 572, 'qty_per_unit', 'vtiger_service', 1, '1', 'qty_per_unit', 'No of Units', 1, 2, '', 100, 5, 91, 1, 'N~O', 1, NULL, 'BAS', 1, '', 1),
(36, 573, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Owner', 1, 0, '', 100, 8, 91, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(36, 574, 'servicecategory', 'vtiger_service', 1, '15', 'servicecategory', 'Service Category', 1, 2, '', 100, 7, 91, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 575, 'unit_price', 'vtiger_service', 1, '72', 'unit_price', 'Price', 1, 0, '', 100, 1, 92, 1, 'N~O', 2, 2, 'BAS', 0, '', 1),
(36, 576, 'taxclass', 'vtiger_service', 1, '83', 'taxclass', 'Tax Class', 1, 2, '', 100, 4, 92, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(36, 577, 'commissionrate', 'vtiger_service', 1, '9', 'commissionrate', 'Commission Rate', 1, 2, '', 100, 2, 92, 1, 'N~O', 1, NULL, 'BAS', 1, '', 1),
(36, 578, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Description', 1, 2, '', 100, 1, 94, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(38, 579, 'asset_no', 'vtiger_assets', 1, '4', 'asset_no', 'Asset No', 1, 0, '', 100, 2, 95, 1, 'V~O', 3, 0, 'BAS', 0, '\n                    ', 1),
(38, 580, 'product', 'vtiger_assets', 1, '10', 'product', 'Product Name', 1, 2, '', 100, 3, 95, 1, 'V~M', 0, 3, 'BAS', 1, '\n                    ', 1),
(38, 581, 'serialnumber', 'vtiger_assets', 1, '2', 'serialnumber', 'Serial Number', 1, 2, '', 100, 4, 95, 1, 'V~M', 0, 5, 'BAS', 1, '\n                    ', 0),
(38, 582, 'datesold', 'vtiger_assets', 1, '5', 'datesold', 'Date Sold', 1, 2, '', 100, 5, 95, 1, 'D~M~OTH~GE~datesold~Date Sold', 0, 0, 'BAS', 1, '\n                    ', 0),
(38, 583, 'dateinservice', 'vtiger_assets', 1, '5', 'dateinservice', 'Date in Service', 1, 2, '', 100, 6, 95, 1, 'D~M~OTH~GE~dateinservice~Date in Service', 0, 4, 'BAS', 1, '\n                    ', 0),
(38, 584, 'assetstatus', 'vtiger_assets', 1, '15', 'assetstatus', 'Status', 1, 2, '', 100, 7, 95, 1, 'V~M', 0, 0, 'BAS', 1, '\n                    ', 0),
(38, 585, 'tagnumber', 'vtiger_assets', 1, '2', 'tagnumber', 'Tag Number', 1, 2, '', 100, 8, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(38, 586, 'invoiceid', 'vtiger_assets', 1, '10', 'invoiceid', 'Invoice Name', 1, 2, '', 100, 9, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(38, 587, 'shippingmethod', 'vtiger_assets', 1, '2', 'shippingmethod', 'Shipping Method', 1, 2, '', 100, 10, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(38, 588, 'shippingtrackingnumber', 'vtiger_assets', 1, '2', 'shippingtrackingnumber', 'Shipping Tracking Number', 1, 2, '', 100, 11, 95, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(38, 589, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 95, 1, 'V~M', 0, 2, 'BAS', 1, '\n                    ', 0),
(38, 590, 'assetname', 'vtiger_assets', 1, '1', 'assetname', 'Asset Name', 1, 0, '', 100, 12, 95, 1, 'V~M', 0, 6, 'BAS', 1, '\n                    ', 1),
(38, 591, 'account', 'vtiger_assets', 1, '10', 'account', 'Customer Name', 1, 2, '', 100, 13, 95, 1, 'V~M', 0, 0, 'BAS', 1, '\n                    ', 1),
(38, 592, 'contact', 'vtiger_assets', 1, '10', 'contact', 'Contact Name', 1, 2, '', 100, 14, 95, 1, 'V~O', 0, 0, 'BAS', 1, '\n                    ', 0),
(38, 593, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 14, 95, 2, 'DT~O', 3, 0, 'BAS', 0, '\n                    ', 0),
(38, 594, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 15, 95, 2, 'DT~O', 3, 0, 'BAS', 0, '\n                    ', 0),
(38, 595, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 16, 95, 3, 'V~O', 3, 0, 'BAS', 0, '\n                    ', 0),
(38, 596, 'description', 'vtiger_crmentity', 1, '19', 'description', 'Notes', 1, 2, '', 100, 1, 97, 1, 'V~O', 1, NULL, 'BAS', 1, '\n                    ', 0),
(42, 597, 'commentcontent', 'vtiger_modcomments', 1, '19', 'commentcontent', 'Comment', 1, 0, '', 100, 4, 98, 1, 'V~M', 0, 4, 'BAS', 2, '', 1),
(42, 598, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 1, 99, 1, 'V~M', 0, 1, 'BAS', 2, '', 1),
(42, 599, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 99, 2, 'DT~O', 0, 2, 'BAS', 0, '', 0),
(42, 600, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 99, 2, 'DT~O', 0, 3, 'BAS', 0, '', 0),
(42, 601, 'related_to', 'vtiger_modcomments', 1, '10', 'related_to', 'Related To', 1, 2, '', 100, 2, 99, 1, 'V~M', 2, 5, 'BAS', 2, '', 0),
(42, 602, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'creator', 'Creator', 1, 2, '', 100, 4, 99, 2, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(42, 603, 'parent_comments', 'vtiger_modcomments', 1, '10', 'parent_comments', 'Related To Comments', 1, 2, '', 100, 7, 99, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(43, 604, 'projectmilestonename', 'vtiger_projectmilestone', 1, '2', 'projectmilestonename', 'Project Milestone Name', 1, 2, '', 100, 1, 101, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(43, 605, 'projectmilestonedate', 'vtiger_projectmilestone', 1, '5', 'projectmilestonedate', 'Milestone Date', 1, 2, '', 100, 5, 101, 1, 'D~O', 0, 3, 'BAS', 1, '', 1),
(43, 606, 'projectid', 'vtiger_projectmilestone', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 4, 101, 1, 'V~M', 0, 4, 'BAS', 1, '', 0),
(43, 607, 'projectmilestonetype', 'vtiger_projectmilestone', 1, '15', 'projectmilestonetype', 'Type', 1, 2, '', 100, 7, 101, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(43, 608, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 6, 101, 1, 'V~M', 0, 2, 'BAS', 1, '', 0),
(43, 609, 'projectmilestone_no', 'vtiger_projectmilestone', 2, '4', 'projectmilestone_no', 'Project Milestone No', 1, 0, '', 100, 2, 101, 1, 'V~O', 3, 4, 'BAS', 0, '', 0),
(43, 610, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 1, 102, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(43, 611, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 2, 102, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(43, 612, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 3, 102, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(43, 613, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 103, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(44, 614, 'projecttaskname', 'vtiger_projecttask', 1, '2', 'projecttaskname', 'Project Task Name', 1, 2, '', 100, 1, 104, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(44, 615, 'projecttasktype', 'vtiger_projecttask', 1, '15', 'projecttasktype', 'Type', 1, 2, '', 100, 4, 104, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(44, 616, 'projecttaskpriority', 'vtiger_projecttask', 1, '15', 'projecttaskpriority', 'Priority', 1, 2, '', 100, 3, 104, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(44, 617, 'projectid', 'vtiger_projecttask', 1, '10', 'projectid', 'Related to', 1, 0, '', 100, 6, 104, 1, 'V~M', 0, 5, 'BAS', 1, '', 0),
(44, 618, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 7, 104, 1, 'V~M', 0, 2, 'BAS', 1, '', 1),
(44, 619, 'projecttasknumber', 'vtiger_projecttask', 1, '7', 'projecttasknumber', 'Project Task Number', 1, 2, '', 100, 5, 104, 1, 'I~O', 1, NULL, 'BAS', 1, '', 0),
(44, 620, 'projecttask_no', 'vtiger_projecttask', 2, '4', 'projecttask_no', 'Project Task No', 1, 0, '', 100, 2, 104, 1, 'V~O', 3, 4, 'BAS', 0, '', 0),
(44, 621, 'projecttaskprogress', 'vtiger_projecttask', 1, '15', 'projecttaskprogress', 'Progress', 1, 2, '', 100, 1, 105, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(44, 622, 'projecttaskhours', 'vtiger_projecttask', 1, '7', 'projecttaskhours', 'Worked Hours', 1, 2, '', 100, 2, 105, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(44, 623, 'startdate', 'vtiger_projecttask', 1, '5', 'startdate', 'Start Date', 1, 2, '', 100, 3, 105, 1, 'D~O', 0, 3, 'BAS', 1, '', 1),
(44, 624, 'enddate', 'vtiger_projecttask', 1, '5', 'enddate', 'End Date', 1, 2, '', 100, 4, 105, 1, 'D~O~OTH~GE~startdate~Start Date', 1, NULL, 'BAS', 1, '', 1),
(44, 625, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 105, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(44, 626, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 105, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(44, 627, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 105, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(44, 628, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 106, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 629, 'projectname', 'vtiger_project', 1, '2', 'projectname', 'Project Name', 1, 2, '', 100, 1, 107, 1, 'V~M', 0, 1, 'BAS', 1, '', 1),
(45, 630, 'startdate', 'vtiger_project', 1, '23', 'startdate', 'Start Date', 1, 2, '', 100, 3, 107, 1, 'D~O', 0, 3, 'BAS', 1, '', 1),
(45, 631, 'targetenddate', 'vtiger_project', 1, '23', 'targetenddate', 'Target End Date', 1, 2, '', 100, 5, 107, 1, 'D~O~OTH~GE~startdate~Start Date', 0, 4, 'BAS', 1, '', 1),
(45, 632, 'actualenddate', 'vtiger_project', 1, '23', 'actualenddate', 'Actual End Date', 1, 2, '', 100, 6, 107, 1, 'D~O~OTH~GE~startdate~Start Date', 1, NULL, 'BAS', 1, '', 0),
(45, 633, 'projectstatus', 'vtiger_project', 1, '15', 'projectstatus', 'Status', 1, 2, '', 100, 7, 107, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(45, 634, 'projecttype', 'vtiger_project', 1, '15', 'projecttype', 'Type', 1, 2, '', 100, 8, 107, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(45, 635, 'linktoaccountscontacts', 'vtiger_project', 1, '10', 'linktoaccountscontacts', 'Related to', 1, 2, '', 100, 9, 107, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 636, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 4, 107, 1, 'V~M', 0, 2, 'BAS', 1, '', 1),
(45, 637, 'project_no', 'vtiger_project', 2, '4', 'project_no', 'Project No', 1, 0, '', 100, 2, 107, 1, 'V~O', 3, 0, 'BAS', 0, '', 0),
(45, 638, 'targetbudget', 'vtiger_project', 1, '7', 'targetbudget', 'Target Budget', 1, 2, '', 100, 1, 108, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 639, 'projecturl', 'vtiger_project', 1, '17', 'projecturl', 'Project Url', 1, 2, '', 100, 2, 108, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 640, 'projectpriority', 'vtiger_project', 1, '15', 'projectpriority', 'Priority', 1, 2, '', 100, 3, 108, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 641, 'progress', 'vtiger_project', 1, '15', 'progress', 'Progress', 1, 2, '', 100, 4, 108, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(45, 642, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 2, '', 100, 5, 108, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(45, 643, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 2, '', 100, 6, 108, 2, 'T~O', 1, NULL, 'BAS', 1, '', 0),
(45, 644, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 108, 3, 'V~O', 3, 0, 'BAS', 0, '', 0),
(45, 645, 'description', 'vtiger_crmentity', 1, '19', 'description', 'description', 1, 2, '', 100, 1, 109, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(47, 646, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 0, '', 100, 2, 110, 1, 'V~M', 1, NULL, 'BAS', 1, '', 1),
(47, 647, 'createdtime', 'vtiger_crmentity', 1, '70', 'createdtime', 'Created Time', 1, 0, '', 100, 5, 110, 2, 'DT~O', 1, NULL, 'BAS', 0, '', 0),
(47, 648, 'modifiedtime', 'vtiger_crmentity', 1, '70', 'modifiedtime', 'Modified Time', 1, 0, '', 100, 6, 110, 2, 'DT~O', 1, NULL, 'BAS', 0, '', 0),
(47, 649, 'message', 'vtiger_smsnotifier', 1, '21', 'message', 'message', 1, 0, '', 100, 1, 110, 1, 'V~M', 1, NULL, 'BAS', 1, '', 1),
(47, 650, 'modifiedby', 'vtiger_crmentity', 1, '52', 'modifiedby', 'Last Modified By', 1, 0, '', 100, 7, 110, 3, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(2, 651, 'forecast_amount', 'vtiger_potential', 1, '71', 'forecast_amount', 'Forecast Amount', 1, 2, '', 100, 18, 1, 1, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(29, 652, 'no_of_currency_decimals', 'vtiger_users', 1, '16', 'no_of_currency_decimals', 'Number Of Currency Decimals', 1, 2, '2', 100, 6, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b>Currency - Number of Decimal places</b> <br/><br/>Number of decimal places specifies how many number of decimals will be shown after decimal separator.<br/><b>Eg:</b> 123.00', 0),
(23, 653, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 113, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0),
(23, 654, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 113, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(23, 655, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 113, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(23, 656, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 657, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 113, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(23, 658, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 659, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 660, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 661, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 662, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 114, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0),
(22, 663, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 114, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(22, 664, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 114, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(22, 665, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 666, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 114, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(22, 667, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 668, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 669, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 670, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 671, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 115, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0),
(21, 672, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 115, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(21, 673, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 115, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(21, 674, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 675, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 115, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(21, 676, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 677, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 678, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 679, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 680, 'productid', 'vtiger_inventoryproductrel', 1, '10', 'productid', 'Item Name', 0, 2, '', 100, 1, 116, 5, 'V~M', 1, NULL, 'BAS', 0, '', 0);
INSERT INTO `vtiger_field` (`tabid`, `fieldid`, `columnname`, `tablename`, `generatedtype`, `uitype`, `fieldname`, `fieldlabel`, `readonly`, `presence`, `defaultvalue`, `maximumlength`, `sequence`, `block`, `displaytype`, `typeofdata`, `quickcreate`, `quickcreatesequence`, `info_type`, `masseditable`, `helpinfo`, `summaryfield`) VALUES
(20, 681, 'quantity', 'vtiger_inventoryproductrel', 1, '7', 'quantity', 'Quantity', 0, 2, '', 100, 2, 116, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(20, 682, 'listprice', 'vtiger_inventoryproductrel', 1, '71', 'listprice', 'List Price', 0, 2, '', 100, 3, 116, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(20, 683, 'comment', 'vtiger_inventoryproductrel', 1, '19', 'comment', 'Item Comment', 0, 2, '', 100, 4, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 684, 'discount_amount', 'vtiger_inventoryproductrel', 1, '71', 'discount_amount', 'Discount', 0, 2, '', 100, 5, 116, 5, 'N~O', 1, NULL, 'BAS', 0, '', 0),
(20, 685, 'discount_percent', 'vtiger_inventoryproductrel', 1, '7', 'discount_percent', 'Item Discount Percent', 0, 2, '', 100, 6, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 686, 'tax1', 'vtiger_inventoryproductrel', 1, '83', 'tax1', 'Tax1', 0, 2, '', 100, 7, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 687, 'tax2', 'vtiger_inventoryproductrel', 1, '83', 'tax2', 'Tax2', 0, 2, '', 100, 8, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 688, 'tax3', 'vtiger_inventoryproductrel', 1, '83', 'tax3', 'Tax3', 0, 2, '', 100, 9, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(29, 689, 'truncate_trailing_zeros', 'vtiger_users', 1, '56', 'truncate_trailing_zeros', 'Truncate Trailing Zeros', 1, 2, '0', 100, 7, 78, 1, 'V~O', 1, NULL, 'BAS', 1, '<b> Truncate Trailing Zeros </b> <br/><br/>It truncated trailing 0s in any of Currency, Decimal and Percentage Field types<br/><br/><b>Ex:</b><br/>If value is 89.00000 then <br/>decimal and Percentage fields were shows 89<br/>currency field type - shows 89.00<br/>', 0),
(44, 690, 'projecttaskstatus', 'vtiger_projecttask', 1, '15', 'projecttaskstatus', 'Status', 1, 2, '', 100, 8, 104, 1, 'V~O', 0, 6, 'BAS', 1, '', 0),
(42, 691, 'customer', 'vtiger_modcomments', 1, '10', 'customer', 'Customer', 1, 2, '', 100, 5, 98, 3, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 692, 'dayoftheweek', 'vtiger_users', 1, '16', 'dayoftheweek', 'Starting Day of the week', 1, 2, 'Monday', 100, 1, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 693, 'callduration', 'vtiger_users', 1, '16', 'callduration', 'Default Call Duration', 1, 2, '5', 100, 7, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 694, 'othereventduration', 'vtiger_users', 1, '16', 'othereventduration', 'Other Event Duration', 1, 2, '5', 100, 8, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(23, 695, 'pre_tax_total', 'vtiger_invoice', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 67, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(22, 696, 'pre_tax_total', 'vtiger_salesorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 61, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(21, 697, 'pre_tax_total', 'vtiger_purchaseorder', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 55, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(20, 698, 'pre_tax_total', 'vtiger_quotes', 1, '72', 'pre_tax_total', 'Pre Tax Total', 1, 2, '', 100, 23, 49, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(29, 699, 'calendarsharedtype', 'vtiger_users', 1, '16', 'calendarsharedtype', 'Calendar Shared Type', 1, 2, 'Public', 100, 12, 118, 3, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(6, 700, 'isconvertedfromlead', 'vtiger_account', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 24, 9, 2, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(4, 701, 'isconvertedfromlead', 'vtiger_contactdetails', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 29, 4, 2, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(2, 702, 'isconvertedfromlead', 'vtiger_potential', 1, '56', 'isconvertedfromlead', 'Is Converted From Lead', 1, 2, 'no', 100, 19, 1, 2, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(29, 703, 'default_record_view', 'vtiger_users', 1, '16', 'default_record_view', 'Default Record View', 1, 2, 'Summary', 100, 19, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(23, 704, 'received', 'vtiger_invoice', 1, '72', 'received', 'Received', 1, 2, '0', 100, 24, 67, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(23, 705, 'balance', 'vtiger_invoice', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 67, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(21, 706, 'paid', 'vtiger_purchaseorder', 1, '72', 'paid', 'Paid', 1, 2, '0', 100, 24, 55, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(21, 707, 'balance', 'vtiger_purchaseorder', 1, '72', 'balance', 'Balance', 1, 2, '0', 100, 25, 55, 3, 'N~O', 1, NULL, 'BAS', 1, '', 0),
(18, 708, 'smownerid', 'vtiger_crmentity', 1, '53', 'assigned_user_id', 'Assigned To', 1, 2, '', 100, 13, 42, 1, 'V~M', 1, NULL, 'BAS', 1, '', 0),
(7, 709, 'emailoptout', 'vtiger_leaddetails', 1, '56', 'emailoptout', 'Email Opt Out', 1, 2, '', 100, 24, 13, 1, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(42, 710, 'userid', 'vtiger_modcomments', 1, '10', 'userid', 'UserId', 1, 2, '', 100, 6, 98, 3, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(42, 711, 'reasontoedit', 'vtiger_modcomments', 1, '19', 'reasontoedit', 'ReasonToEdit', 1, 2, '', 100, 7, 98, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(23, 712, 's_h_percent', 'vtiger_invoice', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 113, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(20, 713, 's_h_percent', 'vtiger_quotes', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 116, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(21, 714, 's_h_percent', 'vtiger_purchaseorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 115, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(22, 715, 's_h_percent', 'vtiger_salesorder', 1, '1', 'hdnS_H_Percent', 'S&H Percent', 0, 2, '', 100, 10, 114, 5, 'N~O', 0, 1, 'BAS', 0, '', 0),
(29, 716, 'leftpanelhide', 'vtiger_users', 1, '56', 'leftpanelhide', 'Left Panel Hide', 1, 2, '0', 100, 20, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(2, 717, 'contact_id', 'vtiger_potential', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 20, 1, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(13, 718, 'contact_id', 'vtiger_troubletickets', 1, '10', 'contact_id', 'Contact Name', 1, 2, '', 100, 18, 25, 1, 'V~O', 1, NULL, 'BAS', 1, '', 1),
(29, 719, 'rowheight', 'vtiger_users', 1, '16', 'rowheight', 'Row Height', 1, 2, 'medium', 100, 21, 79, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(13, 720, 'from_portal', 'vtiger_ticketcf', 1, '56', 'from_portal', 'From Portal', 1, 0, '', 100, 19, 25, 3, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(29, 721, 'defaulteventstatus', 'vtiger_users', 1, '15', 'defaulteventstatus', 'Default Event Status', 1, 2, '', 100, 9, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 722, 'defaultactivitytype', 'vtiger_users', 1, '15', 'defaultactivitytype', 'Default Activity Type', 1, 2, '', 100, 10, 118, 1, 'V~O', 1, NULL, 'BAS', 1, '', 0),
(29, 723, 'hidecompletedevents', 'vtiger_users', 1, '56', 'hidecompletedevents', 'LBL_HIDE_COMPLETED_EVENTS', 1, 2, '0', 100, 13, 118, 1, 'C~O', 1, NULL, 'BAS', 1, '', 0),
(2, 724, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 21, 1, 2, 'V~O', 3, 7, 'BAS', 0, '', 0),
(4, 725, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 30, 4, 2, 'V~O', 3, 7, 'BAS', 0, '', 0),
(6, 726, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 25, 9, 2, 'V~O', 3, 5, 'BAS', 0, '', 0),
(7, 727, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 25, 13, 2, 'V~O', 3, 7, 'BAS', 0, '', 0),
(9, 729, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 23, 19, 2, 'V~O', 3, 5, 'BAS', 0, '', 0),
(13, 730, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 20, 25, 2, 'V~O', 3, 5, 'BAS', 0, '', 0),
(18, 734, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 14, 42, 2, 'V~O', 3, 4, 'BAS', 0, '', 0),
(21, 737, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 26, 55, 2, 'V~O', 3, 2, 'BAS', 0, '', 0),
(23, 739, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 26, 67, 2, 'V~O', 3, 2, 'BAS', 0, '', 0),
(42, 745, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 8, 98, 2, 'V~O', 3, 6, 'BAS', 0, '', 0),
(43, 746, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 8, 101, 2, 'V~O', 3, 5, 'BAS', 0, '', 0),
(44, 747, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 9, 104, 2, 'V~O', 3, 7, 'BAS', 0, '', 0),
(45, 748, 'smcreatorid', 'vtiger_crmentity', 1, '52', 'created_user_id', 'Created By', 1, 2, '', 100, 10, 107, 2, 'V~O', 3, 5, 'BAS', 0, '', 0),
(29, 750, 'is_owner', 'vtiger_users', 1, '1', 'is_owner', 'Account Owner', 0, 2, '0', 100, 12, 77, 5, 'V~O', 0, 1, 'BAS', 0, '', 0),
(14, 752, 'cf_751', 'vtiger_productcf', 2, '1', 'cf_751', 'TEst', 1, 2, '', 100, 5, 32, 1, 'V~O~LE~5', 1, NULL, 'BAS', 1, '', 0),
(23, 753, 'tax4', 'vtiger_inventoryproductrel', 1, '83', 'tax4', '444', 0, 2, '', 100, 11, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 754, 'tax4', 'vtiger_inventoryproductrel', 1, '83', 'tax4', '444', 0, 2, '', 100, 11, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 755, 'tax4', 'vtiger_inventoryproductrel', 1, '83', 'tax4', '444', 0, 2, '', 100, 11, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 756, 'tax4', 'vtiger_inventoryproductrel', 1, '83', 'tax4', '444', 0, 2, '', 100, 11, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(23, 757, 'tax5', 'vtiger_inventoryproductrel', 1, '83', 'tax5', 'test', 0, 2, '', 100, 12, 113, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(20, 758, 'tax5', 'vtiger_inventoryproductrel', 1, '83', 'tax5', 'test', 0, 2, '', 100, 12, 116, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(21, 759, 'tax5', 'vtiger_inventoryproductrel', 1, '83', 'tax5', 'test', 0, 2, '', 100, 12, 115, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0),
(22, 760, 'tax5', 'vtiger_inventoryproductrel', 1, '83', 'tax5', 'test', 0, 2, '', 100, 12, 114, 5, 'V~O', 1, NULL, 'BAS', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_fieldmodulerel`
--

CREATE TABLE IF NOT EXISTS `vtiger_fieldmodulerel` (
  `fieldid` int(11) NOT NULL,
  `module` varchar(100) NOT NULL,
  `relmodule` varchar(100) NOT NULL,
  `status` varchar(10) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_fieldmodulerel`
--

INSERT INTO `vtiger_fieldmodulerel` (`fieldid`, `module`, `relmodule`, `status`, `sequence`) VALUES
(113, 'Potentials', 'Accounts', NULL, 0),
(533, 'PBXManager', 'Leads', NULL, NULL),
(533, 'PBXManager', 'Contacts', NULL, NULL),
(533, 'PBXManager', 'Accounts', NULL, NULL),
(546, 'ServiceContracts', 'Contacts', NULL, NULL),
(546, 'ServiceContracts', 'Accounts', NULL, NULL),
(580, 'Assets', 'Products', NULL, NULL),
(586, 'Assets', 'Invoice', NULL, NULL),
(591, 'Assets', 'Accounts', NULL, NULL),
(592, 'Assets', 'Contacts', NULL, NULL),
(601, 'ModComments', 'Leads', NULL, NULL),
(601, 'ModComments', 'Contacts', NULL, NULL),
(601, 'ModComments', 'Accounts', NULL, NULL),
(603, 'ModComments', 'ModComments', NULL, NULL),
(601, 'ModComments', 'Potentials', NULL, NULL),
(606, 'ProjectMilestone', 'Project', NULL, NULL),
(617, 'ProjectTask', 'Project', NULL, NULL),
(601, 'ModComments', 'ProjectTask', NULL, NULL),
(635, 'Project', 'Accounts', NULL, NULL),
(635, 'Project', 'Contacts', NULL, NULL),
(601, 'ModComments', 'Project', NULL, NULL),
(653, 'Invoice', 'Products', NULL, NULL),
(653, 'Invoice', 'Services', NULL, NULL),
(662, 'SalesOrder', 'Products', NULL, NULL),
(662, 'SalesOrder', 'Services', NULL, NULL),
(671, 'PurchaseOrder', 'Products', NULL, NULL),
(671, 'PurchaseOrder', 'Services', NULL, NULL),
(680, 'Quotes', 'Products', NULL, NULL),
(680, 'Quotes', 'Services', NULL, NULL),
(601, 'ModComments', 'HelpDesk', NULL, NULL),
(601, 'ModComments', 'Faq', NULL, NULL),
(691, 'ModComments', 'Contacts', NULL, NULL),
(717, 'Potentials', 'Contacts', NULL, NULL),
(157, 'HelpDesk', 'Accounts', NULL, NULL),
(718, 'HelpDesk', 'Contacts', NULL, NULL),
(237, 'Accounts', 'Calendar', NULL, NULL),
(237, 'Leads', 'Calendar', NULL, NULL),
(237, 'HelpDesk', 'Calendar', NULL, NULL),
(237, 'Campaigns', 'Calendar', NULL, NULL),
(237, 'Potentials', 'Calendar', NULL, NULL),
(237, 'PurchaseOrder', 'Calendar', NULL, NULL),
(237, 'SalesOrder', 'Calendar', NULL, NULL),
(237, 'Quotes', 'Calendar', NULL, NULL),
(237, 'Invoice', 'Calendar', NULL, NULL),
(238, 'Contacts', 'Calendar', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_field_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_field_seq`
--

INSERT INTO `vtiger_field_seq` (`id`) VALUES
(760);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetagged_objects`
--

CREATE TABLE IF NOT EXISTS `vtiger_freetagged_objects` (
  `tag_id` int(20) NOT NULL DEFAULT '0',
  `tagger_id` int(20) NOT NULL DEFAULT '0',
  `object_id` int(20) NOT NULL DEFAULT '0',
  `tagged_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `module` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`,`tagger_id`,`object_id`),
  KEY `freetagged_objects_tag_id_tagger_id_object_id_idx` (`tag_id`,`tagger_id`,`object_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags`
--

CREATE TABLE IF NOT EXISTS `vtiger_freetags` (
  `id` int(19) NOT NULL,
  `tag` varchar(50) NOT NULL DEFAULT '',
  `raw_tag` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_freetags_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_freetags_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_freetags_seq`
--

INSERT INTO `vtiger_freetags_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct`
--

CREATE TABLE IF NOT EXISTS `vtiger_glacct` (
  `glacctid` int(19) NOT NULL AUTO_INCREMENT,
  `glacct` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`glacctid`),
  UNIQUE KEY `glacct_glacct_idx` (`glacct`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_glacct`
--

INSERT INTO `vtiger_glacct` (`glacctid`, `glacct`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, '300-Sales-Software', 1, 51, 0),
(2, '301-Sales-Hardware', 1, 52, 1),
(3, '302-Rental-Income', 1, 53, 2),
(4, '303-Interest-Income', 1, 54, 3),
(5, '304-Sales-Software-Support', 1, 55, 4),
(6, '305-Sales Other', 1, 56, 5),
(7, '306-Internet Sales', 1, 57, 6),
(8, '307-Service-Hardware Labor', 1, 58, 7),
(9, '308-Sales-Books', 1, 59, 8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_glacct_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_glacct_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_glacct_seq`
--

INSERT INTO `vtiger_glacct_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_oauth2`
--

CREATE TABLE IF NOT EXISTS `vtiger_google_oauth2` (
  `service` varchar(20) DEFAULT NULL,
  `access_token` varchar(500) DEFAULT NULL,
  `refresh_token` varchar(500) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync`
--

CREATE TABLE IF NOT EXISTS `vtiger_google_sync` (
  `googlemodule` varchar(50) DEFAULT NULL,
  `user` int(10) DEFAULT NULL,
  `synctime` datetime DEFAULT NULL,
  `lastsynctime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync_fieldmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_google_sync_fieldmapping` (
  `vtiger_field` varchar(255) DEFAULT NULL,
  `google_field` varchar(255) DEFAULT NULL,
  `google_field_type` varchar(255) DEFAULT NULL,
  `google_custom_label` varchar(255) DEFAULT NULL,
  `user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_google_sync_settings`
--

CREATE TABLE IF NOT EXISTS `vtiger_google_sync_settings` (
  `user` int(11) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `clientgroup` varchar(255) DEFAULT NULL,
  `direction` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2grouprel`
--

CREATE TABLE IF NOT EXISTS `vtiger_group2grouprel` (
  `groupid` int(19) NOT NULL,
  `containsgroupid` int(19) NOT NULL,
  PRIMARY KEY (`groupid`,`containsgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_group2role` (
  `groupid` int(19) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_group2role`
--

INSERT INTO `vtiger_group2role` (`groupid`, `roleid`) VALUES
(2, 'H4'),
(3, 'H2'),
(4, 'H3');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_group2rs`
--

CREATE TABLE IF NOT EXISTS `vtiger_group2rs` (
  `groupid` int(19) NOT NULL,
  `roleandsubid` varchar(255) NOT NULL,
  PRIMARY KEY (`groupid`,`roleandsubid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_group2rs`
--

INSERT INTO `vtiger_group2rs` (`groupid`, `roleandsubid`) VALUES
(2, 'H5'),
(3, 'H3'),
(4, 'H3');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_groups`
--

CREATE TABLE IF NOT EXISTS `vtiger_groups` (
  `groupid` int(19) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`groupid`),
  UNIQUE KEY `groups_groupname_idx` (`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_groups`
--

INSERT INTO `vtiger_groups` (`groupid`, `groupname`, `description`) VALUES
(2, 'Team Selling', 'Group Related to Sales'),
(3, 'Marketing Group', 'Group Related to Marketing Activities'),
(4, 'Support Group', 'Group Related to providing Support to Customers');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedashbd`
--

CREATE TABLE IF NOT EXISTS `vtiger_homedashbd` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `dashbdname` varchar(100) DEFAULT NULL,
  `dashbdtype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homedefault`
--

CREATE TABLE IF NOT EXISTS `vtiger_homedefault` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `hometype` varchar(30) NOT NULL,
  `maxentries` int(19) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_homedefault`
--

INSERT INTO `vtiger_homedefault` (`stuffid`, `hometype`, `maxentries`, `setype`) VALUES
(1, 'ALVT', 5, 'Accounts'),
(2, 'HDB', 5, 'Dashboard'),
(3, 'PLVT', 5, 'Potentials'),
(4, 'QLTQ', 5, 'Quotes'),
(5, 'CVLVT', 5, 'NULL'),
(6, 'HLT', 5, 'HelpDesk'),
(7, 'UA', 5, 'Calendar'),
(8, 'GRT', 5, 'NULL'),
(9, 'OLTSO', 5, 'SalesOrder'),
(10, 'ILTI', 5, 'Invoice'),
(11, 'MNL', 5, 'Leads'),
(12, 'OLTPO', 5, 'PurchaseOrder'),
(13, 'PA', 5, 'Calendar'),
(14, 'LTFAQ', 5, 'Faq'),
(16, 'ALVT', 5, 'Accounts'),
(17, 'HDB', 5, 'Dashboard'),
(18, 'PLVT', 5, 'Potentials'),
(19, 'QLTQ', 5, 'Quotes'),
(20, 'CVLVT', 5, 'NULL'),
(21, 'HLT', 5, 'HelpDesk'),
(22, 'UA', 5, 'Calendar'),
(23, 'GRT', 5, 'NULL'),
(24, 'OLTSO', 5, 'SalesOrder'),
(25, 'ILTI', 5, 'Invoice'),
(26, 'MNL', 5, 'Leads'),
(27, 'OLTPO', 5, 'PurchaseOrder'),
(28, 'PA', 5, 'Calendar'),
(29, 'LTFAQ', 5, 'Faq'),
(31, 'ALVT', 5, 'Accounts'),
(32, 'HDB', 5, 'Dashboard'),
(33, 'PLVT', 5, 'Potentials'),
(34, 'QLTQ', 5, 'Quotes'),
(35, 'CVLVT', 5, 'NULL'),
(36, 'HLT', 5, 'HelpDesk'),
(37, 'UA', 5, 'Calendar'),
(38, 'GRT', 5, 'NULL'),
(39, 'OLTSO', 5, 'SalesOrder'),
(40, 'ILTI', 5, 'Invoice'),
(41, 'MNL', 5, 'Leads'),
(42, 'OLTPO', 5, 'PurchaseOrder'),
(43, 'PA', 5, 'Calendar'),
(44, 'LTFAQ', 5, 'Faq'),
(46, 'ALVT', 5, 'Accounts'),
(47, 'HDB', 5, 'Dashboard'),
(48, 'PLVT', 5, 'Potentials'),
(49, 'QLTQ', 5, 'Quotes'),
(50, 'CVLVT', 5, 'NULL'),
(51, 'HLT', 5, 'HelpDesk'),
(52, 'UA', 5, 'Calendar'),
(53, 'GRT', 5, 'NULL'),
(54, 'OLTSO', 5, 'SalesOrder'),
(55, 'ILTI', 5, 'Invoice'),
(56, 'MNL', 5, 'Leads'),
(57, 'OLTPO', 5, 'PurchaseOrder'),
(58, 'PA', 5, 'Calendar'),
(59, 'LTFAQ', 5, 'Faq'),
(61, 'ALVT', 5, 'Accounts'),
(62, 'HDB', 5, 'Dashboard'),
(63, 'PLVT', 5, 'Potentials'),
(64, 'QLTQ', 5, 'Quotes'),
(65, 'CVLVT', 5, 'NULL'),
(66, 'HLT', 5, 'HelpDesk'),
(67, 'UA', 5, 'Calendar'),
(68, 'GRT', 5, 'NULL'),
(69, 'OLTSO', 5, 'SalesOrder'),
(70, 'ILTI', 5, 'Invoice'),
(71, 'MNL', 5, 'Leads'),
(72, 'OLTPO', 5, 'PurchaseOrder'),
(73, 'PA', 5, 'Calendar'),
(74, 'LTFAQ', 5, 'Faq'),
(76, 'ALVT', 5, 'Accounts'),
(77, 'HDB', 5, 'Dashboard'),
(78, 'PLVT', 5, 'Potentials'),
(79, 'QLTQ', 5, 'Quotes'),
(80, 'CVLVT', 5, 'NULL'),
(81, 'HLT', 5, 'HelpDesk'),
(82, 'UA', 5, 'Calendar'),
(83, 'GRT', 5, 'NULL'),
(84, 'OLTSO', 5, 'SalesOrder'),
(85, 'ILTI', 5, 'Invoice'),
(86, 'MNL', 5, 'Leads'),
(87, 'OLTPO', 5, 'PurchaseOrder'),
(88, 'PA', 5, 'Calendar'),
(89, 'LTFAQ', 5, 'Faq');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemodule`
--

CREATE TABLE IF NOT EXISTS `vtiger_homemodule` (
  `stuffid` int(19) NOT NULL,
  `modulename` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  `customviewid` int(19) NOT NULL,
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homemoduleflds`
--

CREATE TABLE IF NOT EXISTS `vtiger_homemoduleflds` (
  `stuffid` int(19) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homereportchart`
--

CREATE TABLE IF NOT EXISTS `vtiger_homereportchart` (
  `stuffid` int(11) NOT NULL,
  `reportid` int(19) DEFAULT NULL,
  `reportcharttype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homerss`
--

CREATE TABLE IF NOT EXISTS `vtiger_homerss` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `url` varchar(100) DEFAULT NULL,
  `maxentries` int(19) NOT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff`
--

CREATE TABLE IF NOT EXISTS `vtiger_homestuff` (
  `stuffid` int(19) NOT NULL DEFAULT '0',
  `stuffsequence` int(19) NOT NULL DEFAULT '0',
  `stufftype` varchar(100) DEFAULT NULL,
  `userid` int(19) NOT NULL,
  `visible` int(10) NOT NULL DEFAULT '0',
  `stufftitle` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`stuffid`),
  KEY `stuff_stuffid_idx` (`stuffid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_homestuff`
--

INSERT INTO `vtiger_homestuff` (`stuffid`, `stuffsequence`, `stufftype`, `userid`, `visible`, `stufftitle`) VALUES
(1, 1, 'Default', 1, 1, 'Top Accounts'),
(2, 2, 'Default', 1, 1, 'Home Page Dashboard'),
(3, 3, 'Default', 1, 1, 'Top Potentials'),
(4, 4, 'Default', 1, 1, 'Top Quotes'),
(5, 5, 'Default', 1, 1, 'Key Metrics'),
(6, 6, 'Default', 1, 1, 'Top Trouble Tickets'),
(7, 7, 'Default', 1, 1, 'Upcoming Activities'),
(8, 8, 'Default', 1, 1, 'My Group Allocation'),
(9, 9, 'Default', 1, 1, 'Top Sales Orders'),
(10, 10, 'Default', 1, 1, 'Top Invoices'),
(11, 11, 'Default', 1, 1, 'My New Leads'),
(12, 12, 'Default', 1, 1, 'Top Purchase Orders'),
(13, 13, 'Default', 1, 1, 'Pending Activities'),
(14, 14, 'Default', 1, 1, 'My Recent FAQs'),
(15, 15, 'Tag Cloud', 1, 1, 'Tag Cloud'),
(16, 1, 'Default', 5, 1, 'Top Accounts'),
(17, 2, 'Default', 5, 1, 'Home Page Dashboard'),
(18, 3, 'Default', 5, 0, 'Top Potentials'),
(19, 4, 'Default', 5, 1, 'Top Quotes'),
(20, 5, 'Default', 5, 0, 'Key Metrics'),
(21, 6, 'Default', 5, 1, 'Top Trouble Tickets'),
(22, 7, 'Default', 5, 0, 'Upcoming Activities'),
(23, 8, 'Default', 5, 1, 'My Group Allocation'),
(24, 9, 'Default', 5, 1, 'Top Sales Orders'),
(25, 10, 'Default', 5, 1, 'Top Invoices'),
(26, 11, 'Default', 5, 1, 'My New Leads'),
(27, 12, 'Default', 5, 1, 'Top Purchase Orders'),
(28, 13, 'Default', 5, 1, 'Pending Activities'),
(29, 14, 'Default', 5, 1, 'My Recent FAQs'),
(30, 15, 'Tag Cloud', 5, 0, 'Tag Cloud'),
(31, 1, 'Default', 6, 1, 'Top Accounts'),
(32, 2, 'Default', 6, 1, 'Home Page Dashboard'),
(33, 3, 'Default', 6, 0, 'Top Potentials'),
(34, 4, 'Default', 6, 1, 'Top Quotes'),
(35, 5, 'Default', 6, 0, 'Key Metrics'),
(36, 6, 'Default', 6, 1, 'Top Trouble Tickets'),
(37, 7, 'Default', 6, 0, 'Upcoming Activities'),
(38, 8, 'Default', 6, 1, 'My Group Allocation'),
(39, 9, 'Default', 6, 1, 'Top Sales Orders'),
(40, 10, 'Default', 6, 1, 'Top Invoices'),
(41, 11, 'Default', 6, 1, 'My New Leads'),
(42, 12, 'Default', 6, 1, 'Top Purchase Orders'),
(43, 13, 'Default', 6, 1, 'Pending Activities'),
(44, 14, 'Default', 6, 1, 'My Recent FAQs'),
(45, 15, 'Tag Cloud', 6, 0, 'Tag Cloud'),
(46, 1, 'Default', 7, 1, 'Top Accounts'),
(47, 2, 'Default', 7, 1, 'Home Page Dashboard'),
(48, 3, 'Default', 7, 0, 'Top Potentials'),
(49, 4, 'Default', 7, 1, 'Top Quotes'),
(50, 5, 'Default', 7, 0, 'Key Metrics'),
(51, 6, 'Default', 7, 1, 'Top Trouble Tickets'),
(52, 7, 'Default', 7, 0, 'Upcoming Activities'),
(53, 8, 'Default', 7, 1, 'My Group Allocation'),
(54, 9, 'Default', 7, 1, 'Top Sales Orders'),
(55, 10, 'Default', 7, 1, 'Top Invoices'),
(56, 11, 'Default', 7, 1, 'My New Leads'),
(57, 12, 'Default', 7, 1, 'Top Purchase Orders'),
(58, 13, 'Default', 7, 1, 'Pending Activities'),
(59, 14, 'Default', 7, 1, 'My Recent FAQs'),
(60, 15, 'Tag Cloud', 7, 0, 'Tag Cloud'),
(61, 1, 'Default', 8, 1, 'Top Accounts'),
(62, 2, 'Default', 8, 1, 'Home Page Dashboard'),
(63, 3, 'Default', 8, 0, 'Top Potentials'),
(64, 4, 'Default', 8, 1, 'Top Quotes'),
(65, 5, 'Default', 8, 0, 'Key Metrics'),
(66, 6, 'Default', 8, 1, 'Top Trouble Tickets'),
(67, 7, 'Default', 8, 0, 'Upcoming Activities'),
(68, 8, 'Default', 8, 1, 'My Group Allocation'),
(69, 9, 'Default', 8, 1, 'Top Sales Orders'),
(70, 10, 'Default', 8, 1, 'Top Invoices'),
(71, 11, 'Default', 8, 1, 'My New Leads'),
(72, 12, 'Default', 8, 1, 'Top Purchase Orders'),
(73, 13, 'Default', 8, 1, 'Pending Activities'),
(74, 14, 'Default', 8, 1, 'My Recent FAQs'),
(75, 15, 'Tag Cloud', 8, 0, 'Tag Cloud'),
(76, 1, 'Default', 9, 1, 'Top Accounts'),
(77, 2, 'Default', 9, 1, 'Home Page Dashboard'),
(78, 3, 'Default', 9, 0, 'Top Potentials'),
(79, 4, 'Default', 9, 1, 'Top Quotes'),
(80, 5, 'Default', 9, 0, 'Key Metrics'),
(81, 6, 'Default', 9, 1, 'Top Trouble Tickets'),
(82, 7, 'Default', 9, 0, 'Upcoming Activities'),
(83, 8, 'Default', 9, 1, 'My Group Allocation'),
(84, 9, 'Default', 9, 1, 'Top Sales Orders'),
(85, 10, 'Default', 9, 1, 'Top Invoices'),
(86, 11, 'Default', 9, 1, 'My New Leads'),
(87, 12, 'Default', 9, 1, 'Top Purchase Orders'),
(88, 13, 'Default', 9, 1, 'Pending Activities'),
(89, 14, 'Default', 9, 1, 'My Recent FAQs'),
(90, 15, 'Tag Cloud', 9, 0, 'Tag Cloud');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_homestuff_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_homestuff_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_homestuff_seq`
--

INSERT INTO `vtiger_homestuff_seq` (`id`) VALUES
(90);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_home_layout`
--

CREATE TABLE IF NOT EXISTS `vtiger_home_layout` (
  `userid` int(19) NOT NULL,
  `layout` int(19) NOT NULL DEFAULT '4',
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format`
--

CREATE TABLE IF NOT EXISTS `vtiger_hour_format` (
  `hour_formatid` int(11) NOT NULL AUTO_INCREMENT,
  `hour_format` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`hour_formatid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_hour_format`
--

INSERT INTO `vtiger_hour_format` (`hour_formatid`, `hour_format`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, '12', 1, 295, 1),
(2, '24', 1, 296, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_hour_format_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_hour_format_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_hour_format_seq`
--

INSERT INTO `vtiger_hour_format_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_locks`
--

CREATE TABLE IF NOT EXISTS `vtiger_import_locks` (
  `vtiger_import_lock_id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `importid` int(11) NOT NULL,
  `locked_since` datetime DEFAULT NULL,
  PRIMARY KEY (`vtiger_import_lock_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_maps`
--

CREATE TABLE IF NOT EXISTS `vtiger_import_maps` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(36) NOT NULL,
  `module` varchar(36) NOT NULL,
  `content` longblob,
  `has_header` int(1) NOT NULL DEFAULT '1',
  `deleted` int(1) NOT NULL DEFAULT '0',
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `is_published` varchar(3) NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `import_maps_assigned_user_id_module_name_deleted_idx` (`assigned_user_id`,`module`,`name`,`deleted`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_import_queue`
--

CREATE TABLE IF NOT EXISTS `vtiger_import_queue` (
  `importid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `field_mapping` text,
  `default_values` text,
  `merge_type` int(11) DEFAULT NULL,
  `merge_fields` text,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`importid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry`
--

CREATE TABLE IF NOT EXISTS `vtiger_industry` (
  `industryid` int(19) NOT NULL AUTO_INCREMENT,
  `industry` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`industryid`),
  UNIQUE KEY `industry_industry_idx` (`industry`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=33 ;

--
-- Dumping data for table `vtiger_industry`
--

INSERT INTO `vtiger_industry` (`industryid`, `industry`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Apparel', 1, 61, 1),
(3, 'Banking', 1, 62, 2),
(4, 'Biotechnology', 1, 63, 3),
(5, 'Chemicals', 1, 64, 4),
(6, 'Communications', 1, 65, 5),
(7, 'Construction', 1, 66, 6),
(8, 'Consulting', 1, 67, 7),
(9, 'Education', 1, 68, 8),
(10, 'Electronics', 1, 69, 9),
(11, 'Energy', 1, 70, 10),
(12, 'Engineering', 1, 71, 11),
(13, 'Entertainment', 1, 72, 12),
(14, 'Environmental', 1, 73, 13),
(15, 'Finance', 1, 74, 14),
(16, 'Food & Beverage', 1, 75, 15),
(17, 'Government', 1, 76, 16),
(18, 'Healthcare', 1, 77, 17),
(19, 'Hospitality', 1, 78, 18),
(20, 'Insurance', 1, 79, 19),
(21, 'Machinery', 1, 80, 20),
(22, 'Manufacturing', 1, 81, 21),
(23, 'Media', 1, 82, 22),
(24, 'Not For Profit', 1, 83, 23),
(25, 'Recreation', 1, 84, 24),
(26, 'Retail', 1, 85, 25),
(27, 'Shipping', 1, 86, 26),
(28, 'Technology', 1, 87, 27),
(29, 'Telecommunications', 1, 88, 28),
(30, 'Transportation', 1, 89, 29),
(31, 'Utilities', 1, 90, 30),
(32, 'Other', 1, 91, 31);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_industry_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_industry_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_industry_seq`
--

INSERT INTO `vtiger_industry_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorynotification` (
  `notificationid` int(19) NOT NULL AUTO_INCREMENT,
  `notificationname` varchar(200) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text,
  `label` varchar(50) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`notificationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_inventorynotification`
--

INSERT INTO `vtiger_inventorynotification` (`notificationid`, `notificationname`, `notificationsubject`, `notificationbody`, `label`, `status`) VALUES
(1, 'InvoiceNotification', '{PRODUCTNAME} Stock Level is Low', 'Dear {HANDLER},\n\nThe current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}. Kindly procure required number of units as the stock level is below reorder level {REORDERLEVELVALUE}.\n\nPlease treat this information as Urgent as the invoice is already sent  to the customer.\n\nSeverity: Critical\n\nThanks,\n{CURRENTUSER} ', 'InvoiceNotificationDescription', NULL),
(2, 'QuoteNotification', 'Quote given for {PRODUCTNAME}', 'Dear {HANDLER},\n\nQuote is generated for {QUOTEQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nSeverity: Minor\n\nThanks,\n{CURRENTUSER} ', 'QuoteNotificationDescription', NULL),
(3, 'SalesOrderNotification', 'Sales Order generated for {PRODUCTNAME}', 'Dear {HANDLER},\n\nSalesOrder is generated for {SOQUANTITY} units of {PRODUCTNAME}. The current stock of {PRODUCTNAME} in our warehouse is {CURRENTSTOCK}.\n\nPlease treat this information  with priority as the sales order is already generated.\n\nSeverity: Major\n\nThanks,\n{CURRENTUSER} ', 'SalesOrderNotificationDescription', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorynotification_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorynotification_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventorynotification_seq`
--

INSERT INTO `vtiger_inventorynotification_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventoryproductrel` (
  `id` int(19) DEFAULT NULL,
  `productid` int(19) DEFAULT NULL,
  `sequence_no` int(4) DEFAULT NULL,
  `quantity` decimal(25,3) DEFAULT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `discount_percent` decimal(7,3) DEFAULT NULL,
  `discount_amount` decimal(27,8) DEFAULT NULL,
  `comment` varchar(500) DEFAULT NULL,
  `description` text,
  `incrementondel` int(11) NOT NULL DEFAULT '0',
  `lineitem_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax1` decimal(7,3) DEFAULT NULL,
  `tax2` decimal(7,3) DEFAULT NULL,
  `tax3` decimal(7,3) DEFAULT NULL,
  `tax4` decimal(7,3) DEFAULT NULL,
  `tax5` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`lineitem_id`),
  KEY `inventoryproductrel_id_idx` (`id`),
  KEY `inventoryproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_inventoryproductrel`
--

INSERT INTO `vtiger_inventoryproductrel` (`id`, `productid`, `sequence_no`, `quantity`, `listprice`, `discount_percent`, `discount_amount`, `comment`, `description`, `incrementondel`, `lineitem_id`, `tax1`, `tax2`, `tax3`, `tax4`, `tax5`) VALUES
(39, 38, 1, '1.000', '100.00000000', NULL, NULL, '', NULL, 1, 1, '4.500', '10.000', '12.500', NULL, NULL),
(53, 38, 1, '100.000', '50.00000000', NULL, NULL, '', NULL, 0, 3, '4.500', '10.000', '12.500', NULL, NULL),
(50, 38, 1, '1.000', '100.00000000', NULL, NULL, '', NULL, 0, 4, '4.500', '10.000', '12.500', '0.000', NULL),
(50, 38, 2, '1.000', '100.00000000', NULL, NULL, '', NULL, 0, 5, '4.500', '10.000', '12.500', '0.000', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryproductrel_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventoryproductrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventoryproductrel_seq`
--

INSERT INTO `vtiger_inventoryproductrel_seq` (`id`) VALUES
(0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventoryshippingrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventoryshippingrel` (
  `id` int(19) DEFAULT NULL,
  `shtax1` decimal(7,3) DEFAULT NULL,
  `shtax2` decimal(7,3) DEFAULT NULL,
  `shtax3` decimal(7,3) DEFAULT NULL,
  `shtax4` decimal(7,3) DEFAULT NULL,
  KEY `inventoryishippingrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventoryshippingrel`
--

INSERT INTO `vtiger_inventoryshippingrel` (`id`, `shtax1`, `shtax2`, `shtax3`, `shtax4`) VALUES
(39, '4.500', '10.000', '12.500', NULL),
(53, '4.500', '10.000', '12.500', NULL),
(50, '4.500', '10.000', '12.500', '0.000');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorysubproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorysubproductrel` (
  `id` int(19) NOT NULL,
  `sequence_no` int(10) NOT NULL,
  `productid` int(19) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorytaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`taxid`),
  KEY `inventorytaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventorytaxinfo`
--

INSERT INTO `vtiger_inventorytaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`) VALUES
(1, 'tax1', 'VAT', '4.500', 0),
(2, 'tax2', 'Sales', '10.000', 0),
(3, 'tax3', 'Service', '12.500', 0),
(4, 'tax4', '444', '10.000', 0),
(5, 'tax5', 'test', '5.000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventorytaxinfo_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventorytaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventorytaxinfo_seq`
--

INSERT INTO `vtiger_inventorytaxinfo_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventory_tandc` (
  `id` int(19) NOT NULL,
  `type` varchar(30) NOT NULL,
  `tandc` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventory_tandc`
--

INSERT INTO `vtiger_inventory_tandc` (`id`, `type`, `tandc`) VALUES
(1, 'Inventory', '\n - Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_inventory_tandc_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_inventory_tandc_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_inventory_tandc_seq`
--

INSERT INTO `vtiger_inventory_tandc_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invitees`
--

CREATE TABLE IF NOT EXISTS `vtiger_invitees` (
  `activityid` int(19) NOT NULL,
  `inviteeid` int(19) NOT NULL,
  PRIMARY KEY (`activityid`,`inviteeid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoice` (
  `invoiceid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `salesorderid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `notes` varchar(100) DEFAULT NULL,
  `invoicedate` date DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `invoiceterms` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `invoice_no` varchar(100) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `received` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoiceid`),
  KEY `invoice_purchaseorderid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invoice`
--

INSERT INTO `vtiger_invoice` (`invoiceid`, `subject`, `salesorderid`, `customerno`, `contactid`, `notes`, `invoicedate`, `duedate`, `invoiceterms`, `type`, `adjustment`, `salescommission`, `exciseduty`, `subtotal`, `total`, `taxtype`, `discount_percent`, `discount_amount`, `s_h_amount`, `shipping`, `accountid`, `terms_conditions`, `purchaseorder`, `invoicestatus`, `invoice_no`, `currency_id`, `conversion_rate`, `pre_tax_total`, `received`, `balance`, `s_h_percent`) VALUES
(39, 'test', NULL, '', 0, NULL, NULL, NULL, NULL, NULL, '0.00000000', '0.000', '0.000', '100.00000000', '127.00000000', 'group', NULL, NULL, '0.00000000', NULL, 2, '- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.', '', '', 'INV1', 1, '1.000', '100.00000000', '0.00000000', '127.00000000', 27);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicebillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicebillads` (
  `invoicebilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoicebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invoicebillads`
--

INSERT INTO `vtiger_invoicebillads` (`invoicebilladdressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(39, '', '', '', '', 'dd', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicecf` (
  `invoiceid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invoicecf`
--

INSERT INTO `vtiger_invoicecf` (`invoiceid`) VALUES
(39);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoiceshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoiceshipads` (
  `invoiceshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`invoiceshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invoiceshipads`
--

INSERT INTO `vtiger_invoiceshipads` (`invoiceshipaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_street`, `ship_pobox`) VALUES
(39, '', '', '', '', 'dd', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicestatus` (
  `invoicestatusid` int(19) NOT NULL AUTO_INCREMENT,
  `invoicestatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`invoicestatusid`),
  UNIQUE KEY `invoicestatus_invoiestatus_idx` (`invoicestatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_invoicestatus`
--

INSERT INTO `vtiger_invoicestatus` (`invoicestatusid`, `invoicestatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'AutoCreated', 0, 92, 0),
(2, 'Created', 0, 93, 1),
(3, 'Approved', 0, 94, 2),
(4, 'Sent', 0, 95, 3),
(5, 'Credit Invoice', 0, 96, 4),
(6, 'Paid', 0, 97, 5),
(7, 'Cancel', 1, 288, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatushistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicestatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `invoiceid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `invoicestatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `invoicestatushistory_invoiceid_idx` (`invoiceid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoicestatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoicestatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_invoicestatus_seq`
--

INSERT INTO `vtiger_invoicestatus_seq` (`id`) VALUES
(7);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_invoice_recurring_info`
--

CREATE TABLE IF NOT EXISTS `vtiger_invoice_recurring_info` (
  `salesorderid` int(11) NOT NULL DEFAULT '0',
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `start_period` date DEFAULT NULL,
  `end_period` date DEFAULT NULL,
  `last_recurring_date` date DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `invoice_status` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language`
--

CREATE TABLE IF NOT EXISTS `vtiger_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `prefix` varchar(10) DEFAULT NULL,
  `label` varchar(30) DEFAULT NULL,
  `lastupdated` datetime DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `isdefault` int(1) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `vtiger_language`
--

INSERT INTO `vtiger_language` (`id`, `name`, `prefix`, `label`, `lastupdated`, `sequence`, `isdefault`, `active`) VALUES
(1, 'English', 'en_us', 'US English', '2015-03-10 08:07:27', NULL, 1, 1),
(2, 'Arabic', 'ar_ae', 'Arabic', '2015-03-10 08:18:09', NULL, 0, 1),
(3, 'Brazilian', 'pt_br', 'PT Brasil', '2015-03-10 08:14:11', NULL, 0, 1),
(4, 'British English', 'en_gb', 'British English', '2015-03-10 08:12:42', NULL, 0, 1),
(5, 'Deutsch', 'de_de', 'DE Deutsch', '2015-03-10 08:12:45', NULL, 0, 1),
(6, 'Dutch', 'nl_nl', 'NL-Dutch', '2015-03-10 08:12:45', NULL, 0, 1),
(7, 'Pack de langue français', 'fr_fr', 'Pack de langue français', '2015-03-10 08:14:11', NULL, 0, 1),
(8, 'Hungarian', 'hu_hu', 'HU Magyar', '2015-03-10 08:12:49', NULL, 0, 1),
(9, 'Italian', 'it_it', 'IT Italian', '2015-03-10 08:12:49', NULL, 0, 1),
(10, 'Mexican Spanish', 'es_mx', 'ES Mexico', '2015-03-10 08:12:50', NULL, 0, 1),
(11, 'J?zyk Polski', 'pl_pl', 'J?zyk Polski', '2015-03-10 08:14:11', NULL, 0, 1),
(12, 'Romana', 'ro_ro', 'Romana', '2015-03-10 08:14:11', NULL, 0, 1),
(13, 'Russian', 'ru_ru', 'Russian', '2015-03-10 08:13:49', NULL, 0, 1),
(14, 'Spanish', 'es_es', 'ES Spanish', '2015-03-10 08:13:58', NULL, 0, 1),
(15, 'Swedish', 'sv_se', 'Swedish', '2015-03-10 08:18:10', NULL, 0, 1),
(16, 'Turkce', 'tr_tr', 'Turkce Dil Paketi', '2015-03-10 08:13:59', NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_language_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_language_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_language_seq`
--

INSERT INTO `vtiger_language_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadaddress`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadaddress` (
  `leadaddressid` int(19) NOT NULL DEFAULT '0',
  `city` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `country` varchar(30) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `mobile` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `lane` varchar(250) DEFAULT NULL,
  `leadaddresstype` varchar(30) DEFAULT 'Billing',
  PRIMARY KEY (`leadaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadaddress`
--

INSERT INTO `vtiger_leadaddress` (`leadaddressid`, `city`, `code`, `state`, `pobox`, `country`, `phone`, `mobile`, `fax`, `lane`, `leadaddresstype`) VALUES
(5, '', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(7, '', '', '', '', '', '', '', '', '', 'Billing'),
(24, '', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(25, '', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(26, '', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(27, '', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(28, '', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(29, 'Test', '', '', '', '', '5555555555', '66666', '3333436345754', '', 'Billing'),
(30, '', '', '', '', '', '5555555555', '66666', '3333436345754', 'test', 'Billing'),
(67, '', '', '', '', '', '', '', '', '', 'Billing'),
(73, '', '', '', '', '', '3285499846', '3333', '', '', 'Billing');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leaddetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_leaddetails` (
  `leadid` int(19) NOT NULL,
  `lead_no` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `interest` varchar(50) DEFAULT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `salutation` varchar(200) DEFAULT NULL,
  `lastname` varchar(80) NOT NULL,
  `company` varchar(100) NOT NULL,
  `annualrevenue` decimal(25,8) DEFAULT NULL,
  `industry` varchar(200) DEFAULT NULL,
  `campaign` varchar(30) DEFAULT NULL,
  `rating` varchar(200) DEFAULT NULL,
  `leadstatus` varchar(50) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `converted` int(1) DEFAULT '0',
  `designation` varchar(50) DEFAULT 'SalesMan',
  `licencekeystatus` varchar(50) DEFAULT NULL,
  `space` varchar(250) DEFAULT NULL,
  `comments` text,
  `priority` varchar(50) DEFAULT NULL,
  `demorequest` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `productversion` varchar(20) DEFAULT NULL,
  `product` varchar(50) DEFAULT NULL,
  `maildate` date DEFAULT NULL,
  `nextstepdate` date DEFAULT NULL,
  `fundingsituation` varchar(50) DEFAULT NULL,
  `purpose` varchar(50) DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `transferdate` date DEFAULT NULL,
  `revenuetype` varchar(50) DEFAULT NULL,
  `noofemployees` int(50) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `assignleadchk` int(1) DEFAULT '0',
  `emailoptout` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`leadid`),
  KEY `leaddetails_converted_leadstatus_idx` (`converted`,`leadstatus`),
  KEY `email_idx` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leaddetails`
--

INSERT INTO `vtiger_leaddetails` (`leadid`, `lead_no`, `email`, `interest`, `firstname`, `salutation`, `lastname`, `company`, `annualrevenue`, `industry`, `campaign`, `rating`, `leadstatus`, `leadsource`, `converted`, `designation`, `licencekeystatus`, `space`, `comments`, `priority`, `demorequest`, `partnercontact`, `productversion`, `product`, `maildate`, `nextstepdate`, `fundingsituation`, `purpose`, `evaluationstatus`, `transferdate`, `revenuetype`, `noofemployees`, `secondaryemail`, `assignleadchk`, `emailoptout`) VALUES
(5, 'LEA1', 'test@test.it', NULL, 'nome', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Cold', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(7, 'LEA2', '', NULL, '', '', 'b', '', '0.00000000', '', NULL, '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0'),
(24, 'LEA3', 'test@test.it', NULL, 'nome', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Cold', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(25, 'LEA4', 'test@test.it', NULL, 'nome', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Cold', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(26, 'LEA5', 'test@test.it', NULL, 'nome', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Cold', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(27, 'LEA6', 'test@test.it', NULL, 'nome', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Cold', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(28, 'LEA7', 'test@test.it', NULL, 'nome', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Cold', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(29, 'LEA8', 'test@test.it', NULL, 'nomevdsgg', '', 'test', 'company name', '0.00000000', 'Banking', NULL, 'Acquired', 'Lost Lead', 'Cold Call', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(30, 'LEA9', 'test@test.it', NULL, 'nome', 'Mrs.', 'test', 'company name', '0.00000000', 'Not For Profit', NULL, 'Shutdown', 'Cold', 'Direct Mail', 0, 'test', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'emai2@email.it', 0, '0'),
(67, 'LEA10', '', NULL, 'test', '', ',,,', '', '0.00000000', '', NULL, '', '', '', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0'),
(73, 'LEA11', 'simonetravaglini@gmail.com', NULL, 'Test', 'Mrs.', 'Test', 'Greenity SRL', '0.00000000', 'Banking', NULL, '', 'Cold', 'Public Relations', 0, '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadscf` (
  `leadid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`leadid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadscf`
--

INSERT INTO `vtiger_leadscf` (`leadid`) VALUES
(5),
(7),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(67),
(73);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadsource` (
  `leadsourceid` int(19) NOT NULL AUTO_INCREMENT,
  `leadsource` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`leadsourceid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `vtiger_leadsource`
--

INSERT INTO `vtiger_leadsource` (`leadsourceid`, `leadsource`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Cold Call', 1, 99, 1),
(3, 'Existing Customer', 1, 100, 2),
(4, 'Self Generated', 1, 101, 3),
(5, 'Employee', 1, 102, 4),
(6, 'Partner', 1, 103, 5),
(7, 'Public Relations', 1, 104, 6),
(8, 'Direct Mail', 1, 105, 7),
(9, 'Conference', 1, 106, 8),
(10, 'Trade Show', 1, 107, 9),
(11, 'Web Site', 1, 108, 10),
(12, 'Word of mouth', 1, 109, 11),
(13, 'Other', 1, 110, 12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsource_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadsource_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadsource_seq`
--

INSERT INTO `vtiger_leadsource_seq` (`id`) VALUES
(13);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstage`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadstage` (
  `leadstageid` int(19) NOT NULL AUTO_INCREMENT,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`leadstageid`),
  UNIQUE KEY `leadstage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadstatus` (
  `leadstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `leadstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`leadstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vtiger_leadstatus`
--

INSERT INTO `vtiger_leadstatus` (`leadstatusid`, `leadstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Attempted to Contact', 1, 112, 1),
(3, 'Cold', 1, 113, 2),
(4, 'Contact in Future', 1, 114, 3),
(5, 'Contacted', 1, 115, 4),
(6, 'Hot', 1, 116, 5),
(7, 'Junk Lead', 1, 117, 6),
(8, 'Lost Lead', 1, 118, 7),
(9, 'Not Contacted', 1, 119, 8),
(10, 'Pre Qualified', 1, 120, 9),
(11, 'Qualified', 1, 121, 10),
(12, 'Warm', 1, 122, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadstatus_seq`
--

INSERT INTO `vtiger_leadstatus_seq` (`id`) VALUES
(12);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_leadsubdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_leadsubdetails` (
  `leadsubscriptionid` int(19) NOT NULL DEFAULT '0',
  `website` varchar(255) DEFAULT NULL,
  `callornot` int(1) DEFAULT '0',
  `readornot` int(1) DEFAULT '0',
  `empct` int(10) DEFAULT '0',
  PRIMARY KEY (`leadsubscriptionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_leadsubdetails`
--

INSERT INTO `vtiger_leadsubdetails` (`leadsubscriptionid`, `website`, `callornot`, `readornot`, `empct`) VALUES
(5, 'test.it', 0, 0, 0),
(7, '', 0, 0, 0),
(24, 'test.it', 0, 0, 0),
(25, 'test.it', 0, 0, 0),
(26, 'test.it', 0, 0, 0),
(27, 'test.it', 0, 0, 0),
(28, 'test.it', 0, 0, 0),
(29, 'test.it', 0, 0, 0),
(30, 'test.it', 0, 0, 0),
(67, '', 0, 0, 0),
(73, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view`
--

CREATE TABLE IF NOT EXISTS `vtiger_lead_view` (
  `lead_viewid` int(19) NOT NULL AUTO_INCREMENT,
  `lead_view` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`lead_viewid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_lead_view`
--

INSERT INTO `vtiger_lead_view` (`lead_viewid`, `lead_view`, `sortorderid`, `presence`) VALUES
(1, 'Today', 0, 1),
(2, 'Last 2 Days', 1, 1),
(3, 'Last Week', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_lead_view_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_lead_view_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_lead_view_seq`
--

INSERT INTO `vtiger_lead_view_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links`
--

CREATE TABLE IF NOT EXISTS `vtiger_links` (
  `linkid` int(11) NOT NULL,
  `tabid` int(11) DEFAULT NULL,
  `linktype` varchar(50) DEFAULT NULL,
  `linklabel` varchar(50) DEFAULT NULL,
  `linkurl` varchar(255) DEFAULT NULL,
  `linkicon` varchar(100) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `handler_path` varchar(128) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `handler` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`linkid`),
  KEY `link_tabidtype_idx` (`tabid`,`linktype`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_links`
--

INSERT INTO `vtiger_links` (`linkid`, `tabid`, `linktype`, `linklabel`, `linkurl`, `linkicon`, `sequence`, `handler_path`, `handler_class`, `handler`) VALUES
(1, 6, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(2, 6, 'DETAILVIEWBASIC', 'LBL_SHOW_ACCOUNT_HIERARCHY', 'index.php?module=Accounts&action=AccountHierarchy&accountid=$RECORD$', '', 0, NULL, NULL, NULL),
(3, 7, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(4, 4, 'DETAILVIEWBASIC', 'LBL_ADD_NOTE', 'index.php?module=Documents&action=EditView&return_module=$MODULE$&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', 'themes/images/bookMark.gif', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(5, 0, 'HEADERSCRIPT', 'Incoming Calls', 'modules/PBXManager/resources/PBXManagerJS.js', '', 0, 'modules/PBXManager/PBXManager.php', 'PBXManager', 'checkLinkPermission'),
(6, 4, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL),
(7, 7, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL),
(8, 6, 'DETAILVIEWSIDEBARWIDGET', 'Google Map', 'module=Google&view=Map&mode=showMap&viewtype=detail', '', 0, NULL, NULL, NULL),
(9, 4, 'LISTVIEWSIDEBARWIDGET', 'Google Contacts', 'module=Google&view=List&sourcemodule=Contacts', '', 0, NULL, NULL, NULL),
(10, 9, 'LISTVIEWSIDEBARWIDGET', 'Google Calendar', 'module=Google&view=List&sourcemodule=Calendar', '', 0, NULL, NULL, NULL),
(11, 42, 'HEADERSCRIPT', 'ModCommentsCommonHeaderScript', 'modules/ModComments/ModCommentsCommon.js', '', 0, NULL, NULL, NULL),
(12, 7, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(13, 4, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(14, 6, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(15, 2, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(21, 47, 'DETAILVIEWBASIC', 'LBL_CHECK_STATUS', 'javascript:SMSNotifier.checkstatus($RECORD$)', 'themes/images/reload.gif', 0, NULL, NULL, NULL),
(23, 47, 'HEADERSCRIPT', 'SMSNotifierCommonJS', 'modules/SMSNotifier/SMSNotifierCommon.js', '', 0, NULL, NULL, NULL),
(24, 7, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, ''$MODULE$'');', '', 0, NULL, NULL, NULL),
(25, 7, 'DETAILVIEWBASIC', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(''$MODULE$'', ''$RECORD$'');', '', 0, NULL, NULL, NULL),
(26, 4, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, ''$MODULE$'');', '', 0, NULL, NULL, NULL),
(27, 4, 'DETAILVIEWBASIC', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(''$MODULE$'', ''$RECORD$'');', '', 0, NULL, NULL, NULL),
(28, 6, 'LISTVIEWBASIC', 'Send SMS', 'SMSNotifierCommon.displaySelectWizard(this, ''$MODULE$'');', '', 0, NULL, NULL, NULL),
(29, 6, 'DETAILVIEWBASIC', 'Send SMS', 'javascript:SMSNotifierCommon.displaySelectWizard_DetailView(''$MODULE$'', ''$RECORD$'');', '', 0, NULL, NULL, NULL),
(30, 44, 'DETAILVIEWBASIC', 'Add Note', 'index.php?module=Documents&action=EditView&return_module=ProjectTask&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', '', 0, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(31, 44, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(32, 45, 'DETAILVIEWBASIC', 'Add Project Task', 'index.php?module=ProjectTask&action=EditView&projectid=$RECORD$&return_module=Project&return_action=DetailView&return_id=$RECORD$', '', 0, 'modules/ProjectTask/ProjectTask.php', 'ProjectTask', 'isLinkPermitted'),
(33, 45, 'DETAILVIEWBASIC', 'Add Note', 'index.php?module=Documents&action=EditView&return_module=Project&return_action=DetailView&return_id=$RECORD$&parent_id=$RECORD$', '', 1, 'modules/Documents/Documents.php', 'Documents', 'isLinkPermitted'),
(34, 45, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(35, 2, 'DASHBOARDWIDGET', 'History', 'index.php?module=Potentials&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(36, 2, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Potentials&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(37, 2, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL),
(38, 2, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL),
(39, 2, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL),
(40, 2, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL),
(41, 2, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL),
(42, 2, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Potentials&view=ShowWidget&name=OverdueActivities', '', 9, NULL, NULL, NULL),
(43, 6, 'DASHBOARDWIDGET', 'History', 'index.php?module=Accounts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(44, 6, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Accounts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(45, 6, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Accounts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL),
(46, 4, 'DASHBOARDWIDGET', 'History', 'index.php?module=Contacts&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(47, 4, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Contacts&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(48, 4, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Contacts&view=ShowWidget&name=OverdueActivities', '', 3, NULL, NULL, NULL),
(49, 7, 'DASHBOARDWIDGET', 'History', 'index.php?module=Leads&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(50, 7, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Leads&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(51, 7, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 4, NULL, NULL, NULL),
(52, 7, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 5, NULL, NULL, NULL),
(53, 7, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 6, NULL, NULL, NULL),
(54, 7, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Leads&view=ShowWidget&name=OverdueActivities', '', 7, NULL, NULL, NULL),
(55, 13, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 1, NULL, NULL, NULL),
(56, 13, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 2, NULL, NULL, NULL),
(57, 3, 'DASHBOARDWIDGET', 'History', 'index.php?module=Home&view=ShowWidget&name=History', '', 1, NULL, NULL, NULL),
(58, 3, 'DASHBOARDWIDGET', 'Upcoming Activities', 'index.php?module=Home&view=ShowWidget&name=CalendarActivities', '', 2, NULL, NULL, NULL),
(59, 3, 'DASHBOARDWIDGET', 'Funnel', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesStage', '', 3, NULL, NULL, NULL),
(60, 3, 'DASHBOARDWIDGET', 'Potentials by Stage', 'index.php?module=Potentials&view=ShowWidget&name=GroupedBySalesPerson', '', 4, NULL, NULL, NULL),
(61, 3, 'DASHBOARDWIDGET', 'Pipelined Amount', 'index.php?module=Potentials&view=ShowWidget&name=PipelinedAmountPerSalesPerson', '', 5, NULL, NULL, NULL),
(62, 3, 'DASHBOARDWIDGET', 'Total Revenue', 'index.php?module=Potentials&view=ShowWidget&name=TotalRevenuePerSalesPerson', '', 6, NULL, NULL, NULL),
(63, 3, 'DASHBOARDWIDGET', 'Top Potentials', 'index.php?module=Potentials&view=ShowWidget&name=TopPotentials', '', 7, NULL, NULL, NULL),
(64, 3, 'DASHBOARDWIDGET', 'Leads by Status', 'index.php?module=Leads&view=ShowWidget&name=LeadsByStatus', '', 10, NULL, NULL, NULL),
(65, 3, 'DASHBOARDWIDGET', 'Leads by Source', 'index.php?module=Leads&view=ShowWidget&name=LeadsBySource', '', 11, NULL, NULL, NULL),
(66, 3, 'DASHBOARDWIDGET', 'Leads by Industry', 'index.php?module=Leads&view=ShowWidget&name=LeadsByIndustry', '', 12, NULL, NULL, NULL),
(67, 3, 'DASHBOARDWIDGET', 'Overdue Activities', 'index.php?module=Home&view=ShowWidget&name=OverdueActivities', '', 13, NULL, NULL, NULL),
(68, 3, 'DASHBOARDWIDGET', 'Tickets by Status', 'index.php?module=HelpDesk&view=ShowWidget&name=TicketsByStatus', '', 13, NULL, NULL, NULL),
(69, 3, 'DASHBOARDWIDGET', 'Open Tickets', 'index.php?module=HelpDesk&view=ShowWidget&name=OpenTickets', '', 14, NULL, NULL, NULL),
(70, 13, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(71, 15, 'DETAILVIEWWIDGET', 'DetailViewBlockCommentWidget', 'block://ModComments:modules/ModComments/ModComments.php', '', 0, NULL, NULL, NULL),
(100, 3, 'DASHBOARDWIDGET', 'Key Metrics', 'index.php?module=Home&view=ShowWidget&name=KeyMetrics', '', 0, NULL, NULL, NULL),
(101, 3, 'DASHBOARDWIDGET', 'Mini List', 'index.php?module=Home&view=ShowWidget&name=MiniList', '', 0, NULL, NULL, NULL),
(102, 3, 'DASHBOARDWIDGET', 'Tag Cloud', 'index.php?module=Home&view=ShowWidget&name=TagCloud', '', 0, NULL, NULL, NULL),
(103, 2, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL),
(104, 3, 'DASHBOARDWIDGET', 'Funnel Amount', 'index.php?module=Potentials&view=ShowWidget&name=FunnelAmount', '', 10, NULL, NULL, NULL),
(105, 3, 'DASHBOARDWIDGET', 'Notebook', 'index.php?module=Home&view=ShowWidget&name=Notebook', '', 0, NULL, NULL, NULL),
(106, 49, 'HEADERSCRIPT', 'ExtensionStoreCommonHeaderScript', 'modules/ExtensionStore/ExtensionStore.js', '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_links_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_links_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_links_seq`
--

INSERT INTO `vtiger_links_seq` (`id`) VALUES
(106);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_loginhistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_loginhistory` (
  `login_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_ip` varchar(25) NOT NULL,
  `logout_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`login_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=510 ;

--
-- Dumping data for table `vtiger_loginhistory`
--

INSERT INTO `vtiger_loginhistory` (`login_id`, `user_name`, `user_ip`, `logout_time`, `login_time`, `status`) VALUES
(1, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-10 02:49:02', 'Signed in'),
(2, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-10 04:26:34', 'Signed in'),
(3, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-10 06:11:41', 'Signed in'),
(4, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-11 01:19:32', 'Signed in'),
(5, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-11 01:26:36', 'Signed in'),
(6, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-12 00:00:08', 'Signed in'),
(7, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-12 02:34:15', 'Signed in'),
(8, 'admin', '::1', '0000-00-00 00:00:00', '2015-03-12 05:09:54', 'Signed in'),
(9, 'admin', '122.161.126.122', '0000-00-00 00:00:00', '2015-03-12 13:48:40', 'Signed in'),
(10, 'admin', '122.161.114.34', '0000-00-00 00:00:00', '2015-03-13 06:13:10', 'Signed in'),
(11, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 11:23:47', 'Signed in'),
(12, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 11:30:42', 'Signed in'),
(13, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 11:32:51', 'Signed in'),
(14, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 11:36:10', 'Signed in'),
(15, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 11:41:23', 'Signed in'),
(16, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 11:56:06', 'Signed in'),
(17, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 12:03:02', 'Signed in'),
(18, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 12:15:25', 'Signed in'),
(19, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-03-14 12:29:45', 'Signed in'),
(20, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 12:34:52', 'Signed in'),
(21, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 13:10:10', 'Signed in'),
(22, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 13:27:09', 'Signed in'),
(23, 'admin', '122.161.222.80', '0000-00-00 00:00:00', '2015-03-14 13:34:45', 'Signed in'),
(24, 'admin', '78.134.57.169', '0000-00-00 00:00:00', '2015-03-14 13:44:30', 'Signed in'),
(25, 'admin', '94.38.255.6', '0000-00-00 00:00:00', '2015-03-14 13:52:29', 'Signed in'),
(26, 'admin', '151.51.96.149', '0000-00-00 00:00:00', '2015-03-15 22:41:26', 'Signed in'),
(27, 'admin', '217.200.199.5', '0000-00-00 00:00:00', '2015-03-15 22:54:48', 'Signed in'),
(28, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-03-16 08:08:12', 'Signed in'),
(29, 'admin', '84.223.116.85', '0000-00-00 00:00:00', '2015-03-16 08:18:49', 'Signed in'),
(30, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-03-16 08:45:39', 'Signed in'),
(31, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-03-16 08:47:04', 'Signed in'),
(32, 'admin', '78.134.75.50', '0000-00-00 00:00:00', '2015-03-16 12:06:59', 'Signed in'),
(33, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-17 06:52:00', 'Signed in'),
(34, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-18 09:46:28', 'Signed in'),
(35, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-18 09:51:24', 'Signed in'),
(36, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-03-18 09:56:22', 'Signed in'),
(37, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-03-18 09:56:56', 'Signed in'),
(38, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-18 10:31:46', 'Signed in'),
(39, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-18 10:32:16', 'Signed in'),
(40, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-19 05:36:49', 'Signed in'),
(41, 'admin', '122.161.161.227', '0000-00-00 00:00:00', '2015-03-19 10:35:22', 'Signed in'),
(42, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 05:31:31', 'Signed in'),
(43, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 05:31:53', 'Signed in'),
(44, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 06:28:17', 'Signed in'),
(45, 'admin', '122.161.30.79', '2015-03-20 08:07:16', '2015-03-20 06:30:42', 'Signed off'),
(46, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 08:07:22', 'Signed in'),
(47, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 14:01:19', 'Signed in'),
(48, 'admin', '78.134.12.219', '2015-03-20 14:49:57', '2015-03-20 14:08:27', 'Signed off'),
(49, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 14:10:18', 'Signed in'),
(50, 'admin', '122.161.30.79', '0000-00-00 00:00:00', '2015-03-20 14:17:26', 'Signed in'),
(51, 'admin', '78.134.12.219', '0000-00-00 00:00:00', '2015-03-20 14:50:07', 'Signed in'),
(52, 'admin', '84.223.119.197', '0000-00-00 00:00:00', '2015-03-20 14:54:37', 'Signed in'),
(53, 'admin', '95.252.53.165', '0000-00-00 00:00:00', '2015-03-20 15:00:41', 'Signed in'),
(54, 'admin', '122.161.30.79', '2015-03-20 15:13:42', '2015-03-20 15:04:23', 'Signed off'),
(55, 'admin', '84.223.119.197', '0000-00-00 00:00:00', '2015-03-20 15:05:53', 'Signed in'),
(56, 'admin', '151.65.42.120', '0000-00-00 00:00:00', '2015-03-20 15:05:56', 'Signed in'),
(57, 'admin', '151.65.42.120', '0000-00-00 00:00:00', '2015-03-20 15:06:00', 'Signed in'),
(58, 'admin', '5.157.121.86', '0000-00-00 00:00:00', '2015-03-20 20:14:35', 'Signed in'),
(59, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 09:42:36', 'Signed in'),
(60, 'admin', '78.134.72.110', '0000-00-00 00:00:00', '2015-03-21 09:47:58', 'Signed in'),
(61, 'admin', '93.61.35.250', '0000-00-00 00:00:00', '2015-03-21 09:50:36', 'Signed in'),
(62, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 09:51:46', 'Signed in'),
(63, 'admin', '78.134.72.110', '0000-00-00 00:00:00', '2015-03-21 09:53:33', 'Signed in'),
(64, 'admin', '78.134.72.110', '0000-00-00 00:00:00', '2015-03-21 09:54:13', 'Signed in'),
(65, 'admin', '78.134.72.110', '2015-03-21 10:14:50', '2015-03-21 10:04:02', 'Signed off'),
(66, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 10:09:01', 'Signed in'),
(67, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 10:14:10', 'Signed in'),
(68, 'admin', '78.134.72.110', '0000-00-00 00:00:00', '2015-03-21 10:15:22', 'Signed in'),
(69, 'admin', '78.134.72.110', '0000-00-00 00:00:00', '2015-03-21 10:16:27', 'Signed in'),
(70, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 10:17:33', 'Signed in'),
(71, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 10:22:43', 'Signed in'),
(72, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 10:26:47', 'Signed in'),
(73, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-21 10:31:53', 'Signed in'),
(74, 'admin', '84.223.119.197', '0000-00-00 00:00:00', '2015-03-22 01:10:58', 'Signed in'),
(75, 'admin', '84.223.119.197', '0000-00-00 00:00:00', '2015-03-22 22:33:04', 'Signed in'),
(76, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-23 05:46:27', 'Signed in'),
(77, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-03-23 05:51:34', 'Signed in'),
(78, 'admin', '122.161.104.198', '0000-00-00 00:00:00', '2015-03-23 05:55:45', 'Signed in'),
(79, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-03-23 12:30:18', 'Signed in'),
(80, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:13:24', 'Signed in'),
(81, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:18:22', 'Signed in'),
(82, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:20:59', 'Signed in'),
(83, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:24:52', 'Signed in'),
(84, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:27:47', 'Signed in'),
(85, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:33:19', 'Signed in'),
(86, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:33:40', 'Signed in'),
(87, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 06:55:18', 'Signed in'),
(88, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 11:08:41', 'Signed in'),
(89, 'admin', '78.134.22.95', '0000-00-00 00:00:00', '2015-03-24 11:57:53', 'Signed in'),
(90, 'admin', '78.134.22.95', '0000-00-00 00:00:00', '2015-03-24 11:59:46', 'Signed in'),
(91, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 12:08:57', 'Signed in'),
(92, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-24 12:10:14', 'Signed in'),
(93, 'admin', '91.252.22.138', '0000-00-00 00:00:00', '2015-03-24 12:39:57', 'Signed in'),
(94, 'admin', '84.223.119.197', '0000-00-00 00:00:00', '2015-03-24 20:32:38', 'Signed in'),
(95, 'admin', '122.161.229.24', '0000-00-00 00:00:00', '2015-03-25 06:52:15', 'Signed in'),
(96, 'admin', '122.161.5.160', '0000-00-00 00:00:00', '2015-03-25 11:13:47', 'Signed in'),
(97, 'admin', '122.161.5.160', '0000-00-00 00:00:00', '2015-03-25 11:31:29', 'Signed in'),
(98, 'admin', '94.38.254.133', '0000-00-00 00:00:00', '2015-03-25 20:46:36', 'Signed in'),
(99, 'admin', '94.38.254.133', '0000-00-00 00:00:00', '2015-03-26 08:56:32', 'Signed in'),
(100, 'admin', '122.161.5.160', '0000-00-00 00:00:00', '2015-03-27 09:56:46', 'Signed in'),
(101, 'admin', '84.223.116.56', '0000-00-00 00:00:00', '2015-03-27 14:24:08', 'Signed in'),
(102, 'admin', '78.134.77.122', '0000-00-00 00:00:00', '2015-03-27 15:26:41', 'Signed in'),
(103, 'admin', '78.134.77.122', '0000-00-00 00:00:00', '2015-03-27 15:26:42', 'Signed in'),
(104, 'admin', '78.134.77.122', '0000-00-00 00:00:00', '2015-03-27 15:27:32', 'Signed in'),
(105, 'admin', '84.223.116.56', '0000-00-00 00:00:00', '2015-03-27 15:29:00', 'Signed in'),
(106, 'admin', '84.223.116.56', '0000-00-00 00:00:00', '2015-03-27 15:32:56', 'Signed in'),
(107, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-03-27 15:44:29', 'Signed in'),
(108, 'admin', '84.223.116.56', '0000-00-00 00:00:00', '2015-03-27 15:53:22', 'Signed in'),
(109, 'admin', '149.71.153.205', '0000-00-00 00:00:00', '2015-03-28 07:40:47', 'Signed in'),
(110, 'admin', '149.71.153.205', '0000-00-00 00:00:00', '2015-03-28 07:45:28', 'Signed in'),
(111, 'admin', '122.161.5.160', '0000-00-00 00:00:00', '2015-03-28 12:23:33', 'Signed in'),
(112, 'admin', '122.161.5.160', '0000-00-00 00:00:00', '2015-03-28 12:24:00', 'Signed in'),
(113, 'admin', '122.161.5.160', '2015-03-28 14:35:26', '2015-03-28 14:34:27', 'Signed off'),
(114, 'admin', '78.134.113.244', '0000-00-00 00:00:00', '2015-03-28 21:11:53', 'Signed in'),
(115, 'admin', '78.134.113.244', '0000-00-00 00:00:00', '2015-03-28 21:12:05', 'Signed in'),
(116, 'admin', '78.134.113.244', '0000-00-00 00:00:00', '2015-03-28 21:45:02', 'Signed in'),
(117, 'admin', '78.134.11.184', '0000-00-00 00:00:00', '2015-03-30 11:57:04', 'Signed in'),
(118, 'admin', '78.134.11.184', '0000-00-00 00:00:00', '2015-03-30 11:58:01', 'Signed in'),
(119, 'admin', '84.223.119.201', '0000-00-00 00:00:00', '2015-03-30 12:02:56', 'Signed in'),
(120, 'admin', '91.253.190.196', '0000-00-00 00:00:00', '2015-03-30 12:45:41', 'Signed in'),
(121, 'admin', '122.161.81.179', '0000-00-00 00:00:00', '2015-03-31 11:16:43', 'Signed in'),
(122, 'admin', '84.223.119.201', '0000-00-00 00:00:00', '2015-03-31 15:02:09', 'Signed in'),
(123, 'admin', '122.161.51.34', '0000-00-00 00:00:00', '2015-04-01 13:34:54', 'Signed in'),
(124, 'admin', '78.134.49.63', '2015-04-01 15:13:20', '2015-04-01 14:22:51', 'Signed off'),
(125, 'admin', '78.134.49.63', '0000-00-00 00:00:00', '2015-04-01 15:13:23', 'Signed in'),
(126, 'admin', '78.134.49.63', '0000-00-00 00:00:00', '2015-04-01 15:14:36', 'Signed in'),
(127, 'admin', '122.161.29.32', '0000-00-00 00:00:00', '2015-04-03 11:58:17', 'Signed in'),
(128, 'admin', '78.134.94.192', '0000-00-00 00:00:00', '2015-04-04 07:55:49', 'Signed in'),
(129, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-06 19:47:46', 'Signed in'),
(130, 'admin', '78.134.80.152', '0000-00-00 00:00:00', '2015-04-07 14:56:17', 'Signed in'),
(131, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-07 18:41:26', 'Signed in'),
(132, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-08 13:23:39', 'Signed in'),
(133, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-08 13:43:13', 'Signed in'),
(134, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-08 13:43:47', 'Signed in'),
(135, 'admin', '86.98.69.18', '0000-00-00 00:00:00', '2015-04-09 09:21:04', 'Signed in'),
(136, 'admin', '5.157.127.47', '0000-00-00 00:00:00', '2015-04-09 12:16:26', 'Signed in'),
(137, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-09 12:55:07', 'Signed in'),
(138, 'admin', '79.24.56.109', '0000-00-00 00:00:00', '2015-04-09 12:57:19', 'Signed in'),
(139, 'admin', '78.134.71.219', '0000-00-00 00:00:00', '2015-04-09 15:59:33', 'Signed in'),
(140, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 07:45:17', 'Signed in'),
(141, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 08:22:34', 'Signed in'),
(142, 'admin', '78.134.20.77', '0000-00-00 00:00:00', '2015-04-10 08:24:33', 'Signed in'),
(143, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 08:32:56', 'Signed in'),
(144, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 08:36:36', 'Signed in'),
(145, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 08:42:58', 'Signed in'),
(146, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-10 09:59:37', 'Signed in'),
(147, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-10 10:38:21', 'Signed in'),
(148, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-10 10:57:51', 'Signed in'),
(149, 'admin', '78.134.20.77', '0000-00-00 00:00:00', '2015-04-10 12:59:16', 'Signed in'),
(150, 'admin', '78.134.104.59', '0000-00-00 00:00:00', '2015-04-10 13:02:41', 'Signed in'),
(151, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 13:05:31', 'Signed in'),
(152, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 13:05:37', 'Signed in'),
(153, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-10 13:12:35', 'Signed in'),
(154, 'admin', '78.134.104.59', '0000-00-00 00:00:00', '2015-04-10 13:21:13', 'Signed in'),
(155, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-10 13:37:44', 'Signed in'),
(156, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-10 13:38:39', 'Signed in'),
(157, 'admin', '87.9.40.64', '0000-00-00 00:00:00', '2015-04-10 17:47:23', 'Signed in'),
(158, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-10 20:53:02', 'Signed in'),
(159, 'admin', '122.161.108.140', '2015-04-11 12:25:48', '2015-04-11 12:25:18', 'Signed off'),
(160, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-11 13:42:11', 'Signed in'),
(161, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-11 14:04:22', 'Signed in'),
(162, 'admin', '78.134.94.26', '0000-00-00 00:00:00', '2015-04-12 15:24:26', 'Signed in'),
(163, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 07:12:51', 'Signed in'),
(164, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 07:14:50', 'Signed in'),
(165, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 07:21:53', 'Signed in'),
(166, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 07:25:01', 'Signed in'),
(167, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 07:27:53', 'Signed in'),
(168, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 07:28:08', 'Signed in'),
(169, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 09:48:45', 'Signed in'),
(170, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:14:49', 'Signed in'),
(171, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:22:33', 'Signed in'),
(172, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:39:11', 'Signed in'),
(173, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:39:26', 'Signed in'),
(174, 'admin', '122.161.108.140', '2015-04-13 10:40:00', '2015-04-13 10:39:46', 'Signed off'),
(175, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:40:08', 'Signed in'),
(176, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:40:36', 'Signed in'),
(177, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:41:08', 'Signed in'),
(178, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:41:40', 'Signed in'),
(179, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:42:05', 'Signed in'),
(180, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:42:47', 'Signed in'),
(181, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 10:43:13', 'Signed in'),
(182, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 11:02:49', 'Signed in'),
(183, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 11:03:22', 'Signed in'),
(184, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 11:04:12', 'Signed in'),
(185, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-13 13:22:38', 'Signed in'),
(186, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 14:09:00', 'Signed in'),
(187, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 14:09:23', 'Signed in'),
(188, 'admin', '78.134.19.236', '0000-00-00 00:00:00', '2015-04-13 14:09:24', 'Signed in'),
(189, 'admin', '78.134.19.236', '0000-00-00 00:00:00', '2015-04-13 14:12:05', 'Signed in'),
(190, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 14:14:59', 'Signed in'),
(191, 'admin', '78.134.19.236', '0000-00-00 00:00:00', '2015-04-13 14:22:50', 'Signed in'),
(192, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 14:25:32', 'Signed in'),
(193, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 14:52:01', 'Signed in'),
(194, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 14:54:13', 'Signed in'),
(195, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:13:45', 'Signed in'),
(196, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:16:28', 'Signed in'),
(197, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:16:33', 'Signed in'),
(198, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:17:59', 'Signed in'),
(199, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:20:25', 'Signed in'),
(200, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:28:48', 'Signed in'),
(201, 'admin', '87.5.99.60', '0000-00-00 00:00:00', '2015-04-13 15:29:54', 'Signed in'),
(202, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 15:33:17', 'Signed in'),
(203, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-13 15:43:45', 'Signed in'),
(204, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-14 05:10:42', 'Signed in'),
(205, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 08:03:42', 'Signed in'),
(206, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 08:08:23', 'Signed in'),
(207, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 08:15:57', 'Signed in'),
(208, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 09:45:45', 'Signed in'),
(209, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 10:11:03', 'Signed in'),
(210, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 12:01:37', 'Signed in'),
(211, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 12:01:40', 'Signed in'),
(212, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 12:01:42', 'Signed in'),
(213, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 12:01:46', 'Signed in'),
(214, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 12:18:43', 'Signed in'),
(215, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 12:23:30', 'Signed in'),
(216, 'admin', '78.134.30.125', '0000-00-00 00:00:00', '2015-04-14 12:30:50', 'Signed in'),
(217, 'admin', '78.134.30.125', '0000-00-00 00:00:00', '2015-04-14 12:47:00', 'Signed in'),
(218, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 13:15:03', 'Signed in'),
(219, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-14 13:15:18', 'Signed in'),
(220, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-14 13:33:44', 'Signed in'),
(221, 'admin', '217.200.203.210', '0000-00-00 00:00:00', '2015-04-14 13:38:14', 'Signed in'),
(222, 'admin', '93.66.203.130', '0000-00-00 00:00:00', '2015-04-14 13:56:04', 'Signed in'),
(223, 'admin', '93.66.203.130', '0000-00-00 00:00:00', '2015-04-14 13:56:20', 'Signed in'),
(224, 'admin', '91.253.77.232', '0000-00-00 00:00:00', '2015-04-14 15:34:58', 'Signed in'),
(225, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-15 05:27:09', 'Signed in'),
(226, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-15 11:16:12', 'Signed in'),
(227, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-15 11:17:19', 'Signed in'),
(228, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-15 13:35:06', 'Signed in'),
(229, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-15 14:28:50', 'Signed in'),
(230, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-15 15:49:29', 'Signed in'),
(231, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-15 15:52:07', 'Signed in'),
(232, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-15 15:57:07', 'Signed in'),
(233, 'admin', '217.200.199.8', '0000-00-00 00:00:00', '2015-04-15 17:46:32', 'Signed in'),
(234, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-16 07:55:51', 'Signed in'),
(235, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-16 07:56:29', 'Signed in'),
(236, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-16 10:26:28', 'Signed in'),
(237, 'admin', '122.161.108.140', '0000-00-00 00:00:00', '2015-04-17 05:42:14', 'Signed in'),
(238, 'admin', '91.253.254.209', '0000-00-00 00:00:00', '2015-04-17 11:10:27', 'Signed in'),
(239, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-17 13:00:08', 'Signed in'),
(240, 'admin', '78.134.44.13', '0000-00-00 00:00:00', '2015-04-17 13:48:46', 'Signed in'),
(241, 'admin', '78.134.44.13', '0000-00-00 00:00:00', '2015-04-17 13:49:39', 'Signed in'),
(242, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-17 14:22:56', 'Signed in'),
(243, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-17 14:28:02', 'Signed in'),
(244, 'admin', '78.134.44.13', '0000-00-00 00:00:00', '2015-04-17 14:37:37', 'Signed in'),
(245, 'admin', '122.161.69.94', '0000-00-00 00:00:00', '2015-04-18 05:40:01', 'Signed in'),
(246, 'admin', '122.161.69.94', '0000-00-00 00:00:00', '2015-04-18 05:43:04', 'Signed in'),
(247, 'admin', '122.161.69.94', '0000-00-00 00:00:00', '2015-04-18 06:18:45', 'Signed in'),
(248, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-18 10:17:40', 'Signed in'),
(249, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-18 15:22:55', 'Signed in'),
(250, 'admin', '84.223.118.232', '0000-00-00 00:00:00', '2015-04-18 15:23:25', 'Signed in'),
(251, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-20 07:11:17', 'Signed in'),
(252, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-20 07:14:12', 'Signed in'),
(253, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-20 07:14:13', 'Signed in'),
(254, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-20 07:20:27', 'Signed in'),
(255, 'admin', '122.161.95.184', '0000-00-00 00:00:00', '2015-04-20 07:42:11', 'Signed in'),
(256, 'admin', '217.200.202.31', '2015-04-20 08:35:54', '2015-04-20 07:51:02', 'Signed off'),
(257, 'admin', '78.134.46.7', '0000-00-00 00:00:00', '2015-04-21 06:31:48', 'Signed in'),
(258, 'admin', '78.134.46.7', '0000-00-00 00:00:00', '2015-04-21 06:42:04', 'Signed in'),
(259, 'admin', '122.161.36.162', '0000-00-00 00:00:00', '2015-04-21 07:02:44', 'Signed in'),
(260, 'admin', '122.161.36.162', '0000-00-00 00:00:00', '2015-04-21 07:05:00', 'Signed in'),
(261, 'admin', '122.161.36.162', '0000-00-00 00:00:00', '2015-04-21 07:05:47', 'Signed in'),
(262, 'admin', '122.161.36.162', '0000-00-00 00:00:00', '2015-04-21 07:11:01', 'Signed in'),
(263, 'admin', '78.134.46.7', '0000-00-00 00:00:00', '2015-04-21 09:07:02', 'Signed in'),
(264, 'admin', '78.134.74.115', '2015-04-21 09:20:11', '2015-04-21 09:10:43', 'Signed off'),
(265, 'admin', '78.134.74.115', '0000-00-00 00:00:00', '2015-04-21 09:20:15', 'Signed in'),
(266, 'admin', '5.90.140.170', '0000-00-00 00:00:00', '2015-04-21 09:27:03', 'Signed in'),
(267, 'admin', '122.161.36.162', '0000-00-00 00:00:00', '2015-04-21 09:53:43', 'Signed in'),
(268, 'admin', '122.161.36.162', '0000-00-00 00:00:00', '2015-04-21 10:06:54', 'Signed in'),
(269, 'admin', '5.90.140.170', '0000-00-00 00:00:00', '2015-04-21 10:38:33', 'Signed in'),
(270, 'admin', '217.200.203.217', '0000-00-00 00:00:00', '2015-04-21 15:36:47', 'Signed in'),
(271, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-04-21 15:37:03', 'Signed in'),
(272, 'admin', '5.157.112.3', '0000-00-00 00:00:00', '2015-04-21 15:52:38', 'Signed in'),
(273, 'admin', '149.71.143.206', '0000-00-00 00:00:00', '2015-04-22 05:57:54', 'Signed in'),
(274, 'admin', '122.161.161.112', '0000-00-00 00:00:00', '2015-04-22 06:37:19', 'Signed in'),
(275, 'admin', '122.161.161.112', '0000-00-00 00:00:00', '2015-04-22 06:37:33', 'Signed in'),
(276, 'admin', '122.161.161.112', '0000-00-00 00:00:00', '2015-04-22 07:44:40', 'Signed in'),
(277, 'admin', '217.200.199.28', '0000-00-00 00:00:00', '2015-04-22 08:28:25', 'Signed in'),
(278, 'admin', '122.161.161.112', '0000-00-00 00:00:00', '2015-04-22 09:15:06', 'Signed in'),
(279, 'admin', '117.215.245.165', '0000-00-00 00:00:00', '2015-04-22 12:47:34', 'Signed in'),
(280, 'admin', '117.215.245.165', '0000-00-00 00:00:00', '2015-04-22 12:47:40', 'Signed in'),
(281, 'admin', '117.215.245.165', '0000-00-00 00:00:00', '2015-04-22 12:47:41', 'Signed in'),
(282, 'admin', '117.215.245.165', '0000-00-00 00:00:00', '2015-04-22 12:47:42', 'Signed in'),
(283, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-03 06:57:30', 'Signed in'),
(284, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-03 07:37:55', 'Signed in'),
(285, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-03 08:26:30', 'Signed in'),
(286, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-03 10:12:33', 'Signed in'),
(287, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-03 11:32:27', 'Signed in'),
(288, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-04 13:37:30', 'Signed in'),
(289, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-04 14:24:50', 'Signed in'),
(290, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-04 14:40:15', 'Signed in'),
(291, 'admin', '212.124.169.162', '0000-00-00 00:00:00', '2015-09-04 14:43:28', 'Signed in'),
(292, 'admin', '84.223.118.151', '0000-00-00 00:00:00', '2015-09-05 07:39:22', 'Signed in'),
(293, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-07 12:14:27', 'Signed in'),
(294, 'admin', '182.75.32.182', '2015-09-07 13:46:35', '2015-09-07 13:42:22', 'Signed off'),
(295, 'admin', '182.75.32.182', '2015-09-08 07:26:10', '2015-09-07 13:46:44', 'Signed off'),
(296, 'admin', '88.147.43.230', '0000-00-00 00:00:00', '2015-09-08 05:01:41', 'Signed in'),
(297, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-08 07:26:16', 'Signed in'),
(298, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-08 07:27:11', 'Signed in'),
(299, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-08 07:54:05', 'Signed in'),
(300, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-08 12:27:41', 'Signed in'),
(301, 'admin', '91.253.112.220', '0000-00-00 00:00:00', '2015-09-08 12:42:20', 'Signed in'),
(302, 'admin', '84.223.118.151', '0000-00-00 00:00:00', '2015-09-08 12:46:13', 'Signed in'),
(303, 'admin', '213.187.17.73', '0000-00-00 00:00:00', '2015-09-08 12:56:12', 'Signed in'),
(304, 'admin', '2.37.63.65', '0000-00-00 00:00:00', '2015-09-08 13:01:42', 'Signed in'),
(305, 'admin', '91.252.182.68', '0000-00-00 00:00:00', '2015-09-08 13:08:38', 'Signed in'),
(306, 'admin', '79.21.21.45', '0000-00-00 00:00:00', '2015-09-08 14:07:13', 'Signed in'),
(307, 'admin', '79.21.21.45', '0000-00-00 00:00:00', '2015-09-08 14:09:24', 'Signed in'),
(308, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-09 07:48:31', 'Signed in'),
(309, 'admin', '78.134.98.124', '0000-00-00 00:00:00', '2015-09-10 12:06:53', 'Signed in'),
(310, 'admin', '78.134.98.124', '0000-00-00 00:00:00', '2015-09-10 12:07:54', 'Signed in'),
(311, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-10 13:35:09', 'Signed in'),
(312, 'admin', '182.75.32.182', '2015-09-10 14:00:20', '2015-09-10 13:56:01', 'Signed off'),
(313, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-10 14:00:40', 'Signed in'),
(314, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-10 14:13:06', 'Signed in'),
(315, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-10 14:15:20', 'Signed in'),
(316, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-11 06:00:10', 'Signed in'),
(317, 'admin', '81.174.50.218', '0000-00-00 00:00:00', '2015-09-11 06:34:50', 'Signed in'),
(318, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-11 06:43:58', 'Signed in'),
(319, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-11 06:45:30', 'Signed in'),
(320, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-11 06:49:14', 'Signed in'),
(321, 'admin', '81.174.50.218', '0000-00-00 00:00:00', '2015-09-11 06:51:12', 'Signed in'),
(322, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-11 07:24:21', 'Signed in'),
(323, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-11 07:27:53', 'Signed in'),
(324, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-11 07:27:57', 'Signed in'),
(325, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-11 07:30:03', 'Signed in'),
(326, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-11 07:41:17', 'Signed in'),
(327, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-11 07:41:48', 'Signed in'),
(328, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-11 07:43:05', 'Signed in'),
(329, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-11 08:10:09', 'Signed in'),
(330, 'admin', '123.231.123.3', '0000-00-00 00:00:00', '2015-09-11 09:26:19', 'Signed in'),
(331, 'admin', '5.169.4.144', '0000-00-00 00:00:00', '2015-09-11 09:40:21', 'Signed in'),
(332, 'admin', '123.231.123.3', '0000-00-00 00:00:00', '2015-09-11 09:47:01', 'Signed in'),
(333, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-11 09:47:18', 'Signed in'),
(334, 'admin', '5.157.110.60', '0000-00-00 00:00:00', '2015-09-12 10:03:19', 'Signed in'),
(335, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-12 10:08:13', 'Signed in'),
(336, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-12 10:32:44', 'Signed in'),
(337, 'admin', '78.134.91.52', '0000-00-00 00:00:00', '2015-09-14 06:39:32', 'Signed in'),
(338, 'admin', '78.134.91.52', '0000-00-00 00:00:00', '2015-09-14 06:40:52', 'Signed in'),
(339, 'admin', '182.75.32.182', '2015-09-14 07:10:20', '2015-09-14 07:09:43', 'Signed off'),
(340, 'admin', '213.187.17.73', '0000-00-00 00:00:00', '2015-09-14 08:14:53', 'Signed in'),
(341, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-14 09:13:00', 'Signed in'),
(342, 'admin', '91.252.127.254', '0000-00-00 00:00:00', '2015-09-14 12:31:23', 'Signed in'),
(343, 'admin', '79.1.162.186', '0000-00-00 00:00:00', '2015-09-14 12:35:17', 'Signed in'),
(344, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-14 15:24:56', 'Signed in'),
(345, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-15 05:09:42', 'Signed in'),
(346, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-15 08:06:02', 'Signed in'),
(347, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-15 09:38:09', 'Signed in'),
(348, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-15 10:55:02', 'Signed in'),
(349, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-15 10:55:03', 'Signed in'),
(350, 'admin', '81.174.50.219', '0000-00-00 00:00:00', '2015-09-15 11:14:24', 'Signed in'),
(351, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-15 11:28:32', 'Signed in'),
(352, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-15 11:31:11', 'Signed in'),
(353, 'admin', '81.174.50.219', '0000-00-00 00:00:00', '2015-09-15 11:35:24', 'Signed in'),
(354, 'admin', '81.174.50.219', '0000-00-00 00:00:00', '2015-09-15 11:39:54', 'Signed in'),
(355, 'admin', '81.174.50.219', '0000-00-00 00:00:00', '2015-09-15 11:44:25', 'Signed in'),
(356, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-15 11:58:13', 'Signed in'),
(357, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-16 05:37:54', 'Signed in'),
(358, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-16 11:05:22', 'Signed in'),
(359, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-16 13:32:37', 'Signed in'),
(360, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-16 13:37:51', 'Signed in'),
(361, 'admin', '88.147.38.73', '0000-00-00 00:00:00', '2015-09-16 14:42:30', 'Signed in'),
(362, 'admin', '88.147.38.73', '0000-00-00 00:00:00', '2015-09-16 14:56:42', 'Signed in'),
(363, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-17 05:01:27', 'Signed in'),
(364, 'admin', '91.253.158.26', '0000-00-00 00:00:00', '2015-09-17 05:50:32', 'Signed in'),
(365, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-17 07:11:56', 'Signed in'),
(366, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-17 07:12:14', 'Signed in'),
(367, 'admin', '84.223.117.13', '0000-00-00 00:00:00', '2015-09-17 07:59:08', 'Signed in'),
(368, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-17 09:33:28', 'Signed in'),
(369, 'admin', '87.28.187.94', '0000-00-00 00:00:00', '2015-09-17 11:20:13', 'Signed in'),
(370, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-17 12:38:17', 'Signed in'),
(371, 'admin', '5.157.123.203', '0000-00-00 00:00:00', '2015-09-17 12:55:33', 'Signed in'),
(372, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-17 12:59:11', 'Signed in'),
(373, 'admin', '5.157.123.203', '0000-00-00 00:00:00', '2015-09-17 14:18:07', 'Signed in'),
(374, 'admin', '87.4.138.229', '0000-00-00 00:00:00', '2015-09-17 14:29:05', 'Signed in'),
(375, 'admin', '79.106.16.18', '0000-00-00 00:00:00', '2015-09-17 14:55:29', 'Signed in'),
(376, 'admin', '87.4.138.229', '0000-00-00 00:00:00', '2015-09-17 15:31:55', 'Signed in'),
(377, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-18 05:37:44', 'Signed in'),
(378, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-18 06:14:53', 'Signed in'),
(379, 'admin', '95.224.194.160', '0000-00-00 00:00:00', '2015-09-18 07:40:27', 'Signed in'),
(380, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-18 10:48:06', 'Signed in'),
(381, 'admin', '5.77.82.165', '0000-00-00 00:00:00', '2015-09-18 13:12:27', 'Signed in'),
(382, 'admin', '78.134.49.76', '0000-00-00 00:00:00', '2015-09-18 13:14:51', 'Signed in'),
(383, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-18 14:00:28', 'Signed in'),
(384, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-19 05:21:04', 'Signed in'),
(385, 'admin', '81.174.51.100', '0000-00-00 00:00:00', '2015-09-19 08:55:52', 'Signed in'),
(386, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-19 09:09:32', 'Signed in'),
(387, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-19 10:38:27', 'Signed in'),
(388, 'admin', '5.157.111.163', '0000-00-00 00:00:00', '2015-09-20 17:28:43', 'Signed in'),
(389, 'admin', '5.157.111.163', '0000-00-00 00:00:00', '2015-09-20 17:34:53', 'Signed in'),
(390, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-21 09:47:00', 'Signed in'),
(391, 'admin', '88.147.21.6', '0000-00-00 00:00:00', '2015-09-21 09:55:21', 'Signed in'),
(392, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-21 10:07:32', 'Signed in'),
(393, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-21 11:26:26', 'Signed in'),
(394, 'admin', '122.180.240.34', '2015-09-21 12:50:30', '2015-09-21 12:25:48', 'Signed off'),
(395, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-21 12:51:05', 'Signed in'),
(396, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-21 12:51:27', 'Signed in'),
(397, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-21 13:01:46', 'Signed in'),
(398, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-09-21 13:03:12', 'Signed in'),
(399, 'admin', '88.147.21.6', '0000-00-00 00:00:00', '2015-09-21 13:34:51', 'Signed in'),
(400, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-22 04:32:15', 'Signed in'),
(401, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-22 05:31:30', 'Signed in'),
(402, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-22 07:31:03', 'Signed in'),
(403, 'admin', '78.134.97.237', '0000-00-00 00:00:00', '2015-09-22 10:59:18', 'Signed in'),
(404, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-23 05:28:26', 'Signed in'),
(405, 'admin', '88.147.5.65', '0000-00-00 00:00:00', '2015-09-23 13:02:26', 'Signed in'),
(406, 'admin', '79.106.16.18', '0000-00-00 00:00:00', '2015-09-23 13:05:59', 'Signed in'),
(407, 'admin', '79.106.16.18', '0000-00-00 00:00:00', '2015-09-23 13:20:42', 'Signed in'),
(408, 'admin', '88.147.5.65', '0000-00-00 00:00:00', '2015-09-23 13:21:43', 'Signed in'),
(409, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-24 06:04:07', 'Signed in'),
(410, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-24 07:49:46', 'Signed in'),
(411, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-24 12:49:18', 'Signed in'),
(412, 'admin', '88.147.7.32', '0000-00-00 00:00:00', '2015-09-24 13:30:49', 'Signed in'),
(413, 'admin', '88.147.7.32', '0000-00-00 00:00:00', '2015-09-24 13:32:00', 'Signed in'),
(414, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-25 06:43:34', 'Signed in'),
(415, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-25 10:35:32', 'Signed in'),
(416, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-25 10:59:57', 'Signed in'),
(417, 'admin', '88.147.62.179', '0000-00-00 00:00:00', '2015-09-25 14:31:04', 'Signed in'),
(418, 'admin', '88.147.62.179', '0000-00-00 00:00:00', '2015-09-25 14:31:47', 'Signed in'),
(419, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-28 05:47:14', 'Signed in'),
(420, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-28 07:19:44', 'Signed in'),
(421, 'admin', '213.187.17.73', '0000-00-00 00:00:00', '2015-09-28 08:23:00', 'Signed in'),
(422, 'admin', '213.187.17.73', '0000-00-00 00:00:00', '2015-09-28 08:49:07', 'Signed in'),
(423, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-28 11:30:14', 'Signed in'),
(424, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-28 11:39:50', 'Signed in'),
(425, 'admin', '88.147.14.217', '0000-00-00 00:00:00', '2015-09-28 11:41:47', 'Signed in'),
(426, 'admin', '88.147.14.217', '0000-00-00 00:00:00', '2015-09-28 11:47:40', 'Signed in'),
(427, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-28 12:16:54', 'Signed in'),
(428, 'admin', '84.223.117.168', '0000-00-00 00:00:00', '2015-09-28 15:16:20', 'Signed in'),
(429, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-29 05:23:50', 'Signed in'),
(430, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-29 09:11:45', 'Signed in'),
(431, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-29 09:11:47', 'Signed in'),
(432, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-09-29 13:46:17', 'Signed in'),
(433, 'admin', '88.147.55.96', '0000-00-00 00:00:00', '2015-09-29 15:20:08', 'Signed in'),
(434, 'admin', '78.134.51.47', '0000-00-00 00:00:00', '2015-09-30 09:37:14', 'Signed in'),
(435, 'admin', '79.106.16.18', '0000-00-00 00:00:00', '2015-09-30 09:44:39', 'Signed in'),
(436, 'admin', '213.187.17.73', '0000-00-00 00:00:00', '2015-09-30 15:48:01', 'Signed in'),
(437, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-09-30 16:03:19', 'Signed in'),
(438, 'admin', '84.223.117.168', '0000-00-00 00:00:00', '2015-09-30 18:15:02', 'Signed in'),
(439, 'admin', '84.223.117.168', '0000-00-00 00:00:00', '2015-10-02 11:59:16', 'Signed in'),
(440, 'admin', '84.223.117.168', '0000-00-00 00:00:00', '2015-10-02 12:53:46', 'Signed in'),
(441, 'admin', '84.223.117.168', '0000-00-00 00:00:00', '2015-10-02 12:54:40', 'Signed in'),
(442, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-03 06:48:57', 'Signed in'),
(443, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-03 13:12:58', 'Signed in'),
(444, 'admin', '78.134.99.26', '0000-00-00 00:00:00', '2015-10-05 06:49:00', 'Signed in'),
(445, 'admin', '78.134.99.26', '0000-00-00 00:00:00', '2015-10-05 06:50:39', 'Signed in'),
(446, 'admin', '78.134.99.26', '0000-00-00 00:00:00', '2015-10-05 06:55:03', 'Signed in'),
(447, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-05 11:16:13', 'Signed in'),
(448, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-05 12:27:07', 'Signed in'),
(449, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-05 13:11:45', 'Signed in'),
(450, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-05 13:39:03', 'Signed in'),
(451, 'admin', '78.134.103.6', '0000-00-00 00:00:00', '2015-10-05 13:50:13', 'Signed in'),
(452, 'admin', '78.134.103.6', '0000-00-00 00:00:00', '2015-10-05 13:52:39', 'Signed in'),
(453, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-05 13:56:44', 'Signed in'),
(454, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-05 14:24:50', 'Signed in'),
(455, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-06 10:55:16', 'Signed in'),
(456, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-06 11:00:13', 'Signed in'),
(457, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-06 14:37:12', 'Signed in'),
(458, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-06 14:39:05', 'Signed in'),
(459, 'admin', '78.134.22.180', '0000-00-00 00:00:00', '2015-10-06 14:42:28', 'Signed in'),
(460, 'admin', '78.134.22.180', '0000-00-00 00:00:00', '2015-10-06 14:43:29', 'Signed in'),
(461, 'admin', '78.134.22.180', '0000-00-00 00:00:00', '2015-10-06 14:44:47', 'Signed in'),
(462, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-07 10:48:08', 'Signed in'),
(463, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-07 10:48:08', 'Signed in'),
(464, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-07 10:59:08', 'Signed in'),
(465, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 15:12:40', 'Signed in'),
(466, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 15:40:18', 'Signed in'),
(467, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-07 15:42:15', 'Signed in'),
(468, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-07 17:05:01', 'Signed in'),
(469, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 17:08:41', 'Signed in'),
(470, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 17:09:27', 'Signed in'),
(471, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 17:11:55', 'Signed in'),
(472, 'admin', '79.106.16.18', '0000-00-00 00:00:00', '2015-10-07 17:20:30', 'Signed in'),
(473, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-07 17:23:57', 'Signed in'),
(474, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 17:24:17', 'Signed in'),
(475, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 17:30:02', 'Signed in'),
(476, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 17:32:16', 'Signed in'),
(477, 'admin', '84.223.119.243', '0000-00-00 00:00:00', '2015-10-07 17:43:37', 'Signed in'),
(478, 'admin', '84.223.119.243', '0000-00-00 00:00:00', '2015-10-07 17:44:23', 'Signed in'),
(479, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 18:26:19', 'Signed in'),
(480, 'admin', '78.134.93.215', '0000-00-00 00:00:00', '2015-10-07 19:28:38', 'Signed in'),
(481, 'admin', '84.223.119.243', '0000-00-00 00:00:00', '2015-10-07 19:59:32', 'Signed in'),
(482, 'admin', '84.223.119.243', '0000-00-00 00:00:00', '2015-10-07 20:28:10', 'Signed in'),
(483, 'admin', '78.134.69.177', '0000-00-00 00:00:00', '2015-10-08 15:42:22', 'Signed in'),
(484, 'admin', '81.174.41.134', '0000-00-00 00:00:00', '2015-10-09 01:26:32', 'Signed in'),
(485, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-09 14:47:45', 'Signed in'),
(486, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-09 14:47:47', 'Signed in'),
(487, 'admin', '88.147.38.129', '0000-00-00 00:00:00', '2015-10-09 15:33:35', 'Signed in'),
(488, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-09 17:58:07', 'Signed in'),
(489, 'admin', '182.75.32.182', '0000-00-00 00:00:00', '2015-10-10 17:10:48', 'Signed in'),
(490, 'admin', '88.147.28.238', '0000-00-00 00:00:00', '2015-10-12 13:01:01', 'Signed in'),
(491, 'admin', '88.147.28.238', '0000-00-00 00:00:00', '2015-10-12 13:21:10', 'Signed in'),
(492, 'admin', '84.223.119.114', '0000-00-00 00:00:00', '2015-10-12 13:30:37', 'Signed in'),
(493, 'admin', '79.106.16.18', '0000-00-00 00:00:00', '2015-10-12 13:32:23', 'Signed in'),
(494, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-12 14:21:02', 'Signed in'),
(495, 'admin', '88.147.3.171', '0000-00-00 00:00:00', '2015-10-12 19:00:11', 'Signed in'),
(496, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-13 14:27:29', 'Signed in'),
(497, 'admin', '14.141.249.34', '0000-00-00 00:00:00', '2015-10-13 15:37:04', 'Signed in'),
(498, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-13 18:18:35', 'Signed in'),
(499, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-14 11:55:29', 'Signed in'),
(500, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-14 11:59:26', 'Signed in'),
(501, 'admin', '88.147.9.215', '0000-00-00 00:00:00', '2015-10-14 12:40:23', 'Signed in'),
(502, 'admin', '88.147.9.215', '0000-00-00 00:00:00', '2015-10-14 12:42:08', 'Signed in'),
(503, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-14 13:43:26', 'Signed in'),
(504, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-14 13:47:17', 'Signed in'),
(505, 'admin', '85.18.94.248', '0000-00-00 00:00:00', '2015-10-14 16:42:41', 'Signed in'),
(506, 'admin', '62.18.9.38', '0000-00-00 00:00:00', '2015-10-14 16:51:14', 'Signed in'),
(507, 'admin', '62.18.9.38', '0000-00-00 00:00:00', '2015-10-14 17:19:04', 'Signed in'),
(508, 'admin', '122.180.240.34', '0000-00-00 00:00:00', '2015-10-15 15:18:11', 'Signed in'),
(509, 'admin', '81.174.51.255', '0000-00-00 00:00:00', '2015-10-15 17:16:21', 'Signed in');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailattachments`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailmanager_mailattachments` (
  `userid` int(11) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `aname` varchar(100) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  `attachid` int(19) NOT NULL,
  `path` varchar(200) NOT NULL,
  `cid` varchar(50) DEFAULT NULL,
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrecord`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailmanager_mailrecord` (
  `userid` int(11) DEFAULT NULL,
  `mfrom` varchar(255) DEFAULT NULL,
  `mto` varchar(255) DEFAULT NULL,
  `mcc` varchar(500) DEFAULT NULL,
  `mbcc` varchar(500) DEFAULT NULL,
  `mdate` varchar(20) DEFAULT NULL,
  `msubject` varchar(500) DEFAULT NULL,
  `mbody` text,
  `mcharset` varchar(10) DEFAULT NULL,
  `misbodyhtml` int(1) DEFAULT NULL,
  `mplainmessage` int(1) DEFAULT NULL,
  `mhtmlmessage` int(1) DEFAULT NULL,
  `muniqueid` varchar(500) DEFAULT NULL,
  `mbodyparsed` int(1) DEFAULT NULL,
  `muid` int(11) DEFAULT NULL,
  `lastsavedtime` int(11) DEFAULT NULL,
  KEY `userid_lastsavedtime_idx` (`userid`,`lastsavedtime`),
  KEY `userid_muid_idx` (`userid`,`muid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailmanager_mailrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailmanager_mailrel` (
  `mailuid` varchar(999) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  `emailid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner` (
  `scannerid` int(11) NOT NULL AUTO_INCREMENT,
  `scannername` varchar(30) DEFAULT NULL,
  `server` varchar(100) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `ssltype` varchar(10) DEFAULT NULL,
  `sslmethod` varchar(30) DEFAULT NULL,
  `connecturl` varchar(255) DEFAULT NULL,
  `searchfor` varchar(10) DEFAULT NULL,
  `markas` varchar(10) DEFAULT NULL,
  `isvalid` int(1) DEFAULT NULL,
  `time_zone` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`scannerid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_actions`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_actions` (
  `actionid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `actiontype` varchar(10) DEFAULT NULL,
  `module` varchar(30) DEFAULT NULL,
  `lookup` varchar(30) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  PRIMARY KEY (`actionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_folders`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_folders` (
  `folderid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `foldername` varchar(255) DEFAULT NULL,
  `lastscan` varchar(30) DEFAULT NULL,
  `rescan` int(1) DEFAULT NULL,
  `enabled` int(1) DEFAULT NULL,
  PRIMARY KEY (`folderid`),
  KEY `folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ids`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_ids` (
  `scannerid` int(11) DEFAULT NULL,
  `messageid` varchar(512) DEFAULT NULL,
  `crmid` int(11) DEFAULT NULL,
  KEY `scanner_message_ids_idx` (`scannerid`,`messageid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_ruleactions`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_ruleactions` (
  `ruleid` int(11) DEFAULT NULL,
  `actionid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mailscanner_rules`
--

CREATE TABLE IF NOT EXISTS `vtiger_mailscanner_rules` (
  `ruleid` int(11) NOT NULL AUTO_INCREMENT,
  `scannerid` int(11) DEFAULT NULL,
  `fromaddress` varchar(255) DEFAULT NULL,
  `toaddress` varchar(255) DEFAULT NULL,
  `subjectop` varchar(20) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `bodyop` varchar(20) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `matchusing` varchar(5) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `assigned_to` int(10) DEFAULT NULL,
  `cc` varchar(255) DEFAULT NULL,
  `bcc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ruleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mail_accounts`
--

CREATE TABLE IF NOT EXISTS `vtiger_mail_accounts` (
  `account_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `mail_id` varchar(50) DEFAULT NULL,
  `account_name` varchar(50) DEFAULT NULL,
  `mail_protocol` varchar(20) DEFAULT NULL,
  `mail_username` varchar(50) NOT NULL,
  `mail_password` varchar(250) NOT NULL,
  `mail_servername` varchar(50) DEFAULT NULL,
  `box_refresh` int(10) DEFAULT NULL,
  `mails_per_page` int(10) DEFAULT NULL,
  `ssltype` varchar(50) DEFAULT NULL,
  `sslmeth` varchar(50) DEFAULT NULL,
  `int_mailer` int(1) DEFAULT '0',
  `status` varchar(10) DEFAULT NULL,
  `set_default` int(2) DEFAULT NULL,
  `sent_folder` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer`
--

CREATE TABLE IF NOT EXISTS `vtiger_manufacturer` (
  `manufacturerid` int(19) NOT NULL AUTO_INCREMENT,
  `manufacturer` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`manufacturerid`),
  UNIQUE KEY `manufacturer_manufacturer_idx` (`manufacturer`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_manufacturer`
--

INSERT INTO `vtiger_manufacturer` (`manufacturerid`, `manufacturer`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'AltvetPet Inc.', 1, 124, 1),
(3, 'LexPon Inc.', 1, 125, 2),
(4, 'MetBeat Corp', 1, 126, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_manufacturer_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_manufacturer_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_manufacturer_seq`
--

INSERT INTO `vtiger_manufacturer_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_mobile_alerts`
--

CREATE TABLE IF NOT EXISTS `vtiger_mobile_alerts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `handler_path` varchar(500) DEFAULT NULL,
  `handler_class` varchar(50) DEFAULT NULL,
  `sequence` int(11) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `vtiger_mobile_alerts`
--

INSERT INTO `vtiger_mobile_alerts` (`id`, `handler_path`, `handler_class`, `sequence`, `deleted`) VALUES
(1, 'modules/Mobile/api/ws/models/alerts/IdleTicketsOfMine.php', 'Mobile_WS_AlertModel_IdleTicketsOfMine', NULL, 0),
(2, 'modules/Mobile/api/ws/models/alerts/NewTicketOfMine.php', 'Mobile_WS_AlertModel_NewTicketOfMine', NULL, 0),
(3, 'modules/Mobile/api/ws/models/alerts/PendingTicketsOfMine.php', 'Mobile_WS_AlertModel_PendingTicketsOfMine', NULL, 0),
(4, 'modules/Mobile/api/ws/models/alerts/PotentialsDueIn5Days.php', 'Mobile_WS_AlertModel_PotentialsDueIn5Days', NULL, 0),
(5, 'modules/Mobile/api/ws/models/alerts/EventsOfMineToday.php', 'Mobile_WS_AlertModel_EventsOfMineToday', NULL, 0),
(6, 'modules/Mobile/api/ws/models/alerts/ProjectTasksOfMine.php', 'Mobile_WS_AlertModel_ProjectTasksOfMine', NULL, 0),
(7, 'modules/Mobile/api/ws/models/alerts/Projects.php', 'Mobile_WS_AlertModel_Projects', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcomments`
--

CREATE TABLE IF NOT EXISTS `vtiger_modcomments` (
  `modcommentsid` int(11) DEFAULT NULL,
  `commentcontent` text,
  `related_to` int(19) DEFAULT NULL,
  `parent_comments` varchar(100) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `userid` varchar(100) DEFAULT NULL,
  `reasontoedit` varchar(100) DEFAULT NULL,
  KEY `relatedto_idx` (`related_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modcomments`
--

INSERT INTO `vtiger_modcomments` (`modcommentsid`, `commentcontent`, `related_to`, `parent_comments`, `customer`, `userid`, `reasontoedit`) VALUES
(45, 'Commento banale', 22, '', '', '1', ''),
(51, 'I comment', 30, '', '', '1', ''),
(61, 'commento', 30, '', '', '1', ''),
(63, 'test', 49, '', '', '1', ''),
(64, 'test', 36, '', '', '1', ''),
(65, 'test', 23, '', '', '1', ''),
(68, 'test', 67, '', '', '1', ''),
(74, 'Test', 73, '', '', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modcommentscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_modcommentscf` (
  `modcommentsid` int(11) NOT NULL,
  PRIMARY KEY (`modcommentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modcommentscf`
--

INSERT INTO `vtiger_modcommentscf` (`modcommentsid`) VALUES
(45),
(51),
(61),
(63),
(64),
(65),
(68),
(74);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num`
--

CREATE TABLE IF NOT EXISTS `vtiger_modentity_num` (
  `num_id` int(19) NOT NULL,
  `semodule` varchar(50) NOT NULL,
  `prefix` varchar(50) NOT NULL DEFAULT '',
  `start_id` varchar(50) NOT NULL,
  `cur_id` varchar(50) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`num_id`),
  UNIQUE KEY `num_idx` (`num_id`),
  KEY `semodule_active_idx` (`semodule`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_modentity_num`
--

INSERT INTO `vtiger_modentity_num` (`num_id`, `semodule`, `prefix`, `start_id`, `cur_id`, `active`) VALUES
(1, 'Leads', 'LEA', '1', '12', '1'),
(2, 'Accounts', 'ACC', '1', '3', '1'),
(3, 'Campaigns', 'CAM', '1', '3', '1'),
(4, 'Contacts', 'CON', '1', '4', '1'),
(5, 'Potentials', 'POT', '1', '5', '1'),
(6, 'HelpDesk', 'TT', '1', '5', '1'),
(7, 'Quotes', 'QUO', '1', '2', '1'),
(8, 'SalesOrder', 'SO', '1', '2', '1'),
(9, 'PurchaseOrder', 'PO', '1', '1', '1'),
(10, 'Invoice', 'INV', '1', '2', '1'),
(11, 'Products', 'PRO', '1', '3', '1'),
(12, 'Vendors', 'VEN', '1', '1', '1'),
(13, 'PriceBooks', 'PB', '1', '2', '1'),
(14, 'Faq', 'FAQ', '1', '1', '1'),
(15, 'Documents', 'DOC', '1', '3', '1'),
(16, 'ServiceContracts', 'SERCON', '1', '1', '1'),
(17, 'Services', 'SER', '1', '1', '1'),
(18, 'Assets', 'ASSET', '1', '1', '1'),
(19, 'ProjectMilestone', 'PM', '1', '1', '1'),
(20, 'ProjectTask', 'PT', '1', '1', '1'),
(21, 'Project', 'PROJ', '1', '2', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modentity_num_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_modentity_num_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_modentity_num_seq`
--

INSERT INTO `vtiger_modentity_num_seq` (`id`) VALUES
(21);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_basic` (
  `id` int(20) NOT NULL,
  `crmid` int(20) DEFAULT NULL,
  `module` varchar(50) DEFAULT NULL,
  `whodid` int(20) DEFAULT NULL,
  `changedon` datetime DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `crmidx` (`crmid`),
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_basic`
--

INSERT INTO `vtiger_modtracker_basic` (`id`, `crmid`, `module`, `whodid`, `changedon`, `status`) VALUES
(1, 2, 'Accounts', 1, '2015-03-13 08:03:22', 2),
(2, 3, 'Potentials', 1, '2015-03-14 12:32:32', 2),
(3, 4, 'Events', 1, '2015-03-20 08:29:57', 2),
(4, 5, 'Leads', 1, '2015-03-20 14:58:44', 2),
(5, 5, 'Leads', 1, '2015-03-20 14:59:25', 0),
(6, 6, 'Campaigns', 1, '2015-03-22 01:13:20', 2),
(7, 7, 'Leads', 1, '2015-03-22 01:15:02', 2),
(8, 6, 'Campaigns', 1, '2015-03-22 01:15:02', 4),
(9, 5, 'Leads', 1, '2015-03-28 21:57:59', 0),
(10, 5, 'Leads', 1, '2015-03-28 21:58:06', 0),
(11, 5, 'Leads', 1, '2015-03-28 21:58:15', 0),
(12, 5, 'Leads', 1, '2015-03-28 21:58:19', 0),
(13, 5, 'Leads', 1, '2015-03-28 21:58:23', 0),
(14, 5, 'Leads', 1, '2015-03-28 21:58:32', 0),
(15, 8, 'Events', 1, '2015-03-30 12:03:48', 2),
(16, 9, 'Events', 1, '2015-03-30 12:04:39', 2),
(17, 9, 'Events', 1, '2015-03-30 12:05:14', 0),
(18, 10, 'Events', 1, '2015-03-30 12:05:43', 2),
(19, 11, 'Events', 1, '2015-03-30 12:10:23', 2),
(20, 12, 'Events', 1, '2015-03-30 12:10:50', 2),
(21, 13, 'Events', 1, '2015-03-30 12:11:14', 2),
(22, 12, 'Events', 1, '2015-03-30 12:11:47', 0),
(23, 14, 'Events', 1, '2015-03-30 12:12:08', 2),
(24, 15, 'Events', 1, '2015-03-30 12:12:27', 2),
(25, 16, 'Events', 1, '2015-03-30 12:12:42', 2),
(26, 17, 'Events', 1, '2015-03-30 12:13:03', 2),
(27, 12, 'Events', 1, '2015-03-30 12:13:10', 0),
(28, 12, 'Events', 1, '2015-03-30 12:13:13', 0),
(29, 18, 'Events', 1, '2015-03-30 12:13:37', 2),
(30, 8, 'Events', 1, '2015-03-30 12:14:11', 0),
(31, 8, 'Events', 1, '2015-03-30 12:14:55', 0),
(32, 8, 'Events', 1, '2015-03-30 12:15:10', 0),
(33, 19, 'Documents', 1, '2015-04-06 19:50:20', 2),
(34, 5, 'Leads', 1, '2015-04-06 19:50:20', 4),
(35, 20, 'Events', 1, '2015-04-10 08:25:40', 2),
(36, 21, 'Potentials', 1, '2015-04-10 13:08:40', 2),
(37, 2, 'Accounts', 1, '2015-04-10 13:08:40', 4),
(38, 22, 'Potentials', 1, '2015-04-10 13:09:13', 2),
(39, 2, 'Accounts', 1, '2015-04-10 13:09:13', 4),
(40, 23, 'Contacts', 1, '2015-04-10 13:31:16', 2),
(41, 5, 'Leads', 1, '2015-04-13 14:16:18', 0),
(42, 5, 'Leads', 1, '2015-04-13 14:16:21', 0),
(43, 5, 'Leads', 1, '2015-04-13 14:16:26', 0),
(44, 5, 'Leads', 1, '2015-04-13 14:16:31', 0),
(45, 5, 'Leads', 1, '2015-04-13 14:16:33', 0),
(46, 5, 'Leads', 1, '2015-04-13 14:16:40', 0),
(47, 24, 'Leads', 1, '2015-04-13 14:17:19', 2),
(48, 25, 'Leads', 1, '2015-04-13 14:17:35', 2),
(49, 26, 'Leads', 1, '2015-04-13 14:17:59', 2),
(50, 27, 'Leads', 1, '2015-04-13 14:18:05', 2),
(51, 28, 'Leads', 1, '2015-04-13 14:18:12', 2),
(52, 29, 'Leads', 1, '2015-04-13 14:18:18', 2),
(53, 30, 'Leads', 1, '2015-04-13 14:18:26', 2),
(54, 31, 'Project', 1, '2015-04-13 14:32:20', 2),
(55, 32, 'Events', 1, '2015-04-14 12:39:03', 2),
(56, 33, 'Events', 1, '2015-04-14 12:39:21', 2),
(57, 34, 'Events', 1, '2015-04-14 12:40:25', 2),
(58, 35, 'Events', 1, '2015-04-14 12:41:31', 2),
(59, 36, 'Contacts', 1, '2015-04-14 12:43:25', 2),
(60, 37, 'HelpDesk', 1, '2015-04-14 12:43:40', 2),
(61, 36, 'Contacts', 1, '2015-04-14 12:43:40', 4),
(62, 22, 'Potentials', 1, '2015-04-15 13:37:20', 0),
(63, 38, 'Products', 1, '2015-04-15 14:32:35', 2),
(64, 39, 'Invoice', 1, '2015-04-15 14:32:54', 2),
(65, 40, 'Events', 1, '2015-04-16 08:03:13', 2),
(66, 34, 'Events', 1, '2015-04-17 05:46:05', 0),
(67, 41, 'Events', 1, '2015-04-17 06:04:29', 2),
(68, 41, 'Events', 1, '2015-04-17 06:05:55', 0),
(69, 42, 'Events', 1, '2015-04-17 06:26:17', 2),
(70, 43, 'Events', 1, '2015-04-20 07:42:47', 2),
(71, 44, 'Events', 1, '2015-04-20 07:43:43', 2),
(72, 6, 'Campaigns', 1, '2015-04-20 07:56:13', 0),
(73, 2, 'Accounts', 1, '2015-04-20 08:01:04', 0),
(74, 45, 'ModComments', 1, '2015-04-20 08:01:59', 2),
(75, 22, 'Potentials', 1, '2015-04-20 08:02:30', 0),
(76, 46, 'HelpDesk', 1, '2015-04-20 08:06:19', 2),
(77, 47, 'PriceBooks', 1, '2015-04-20 08:14:55', 2),
(78, 48, 'Calendar', 1, '2015-04-20 08:21:02', 2),
(79, 49, 'Contacts', 1, '2015-09-04 14:44:16', 2),
(80, 50, 'Quotes', 1, '2015-09-05 07:41:29', 2),
(81, 30, 'Leads', 1, '2015-09-07 12:15:57', 0),
(82, 30, 'Leads', 1, '2015-09-11 06:37:29', 0),
(83, 51, 'ModComments', 1, '2015-09-11 06:39:02', 2),
(84, 52, 'HelpDesk', 1, '2015-09-11 07:42:43', 2),
(85, 53, 'SalesOrder', 1, '2015-09-11 07:56:41', 2),
(86, 54, 'Events', 1, '2015-09-11 08:14:09', 2),
(87, 55, 'Events', 1, '2015-09-11 08:14:24', 2),
(88, 2, 'Accounts', 1, '2015-09-11 08:22:24', 0),
(89, 56, 'Documents', 1, '2015-09-11 08:27:12', 2),
(90, 58, 'HelpDesk', 1, '2015-09-11 08:36:19', 2),
(91, 59, 'Events', 1, '2015-09-14 06:43:44', 2),
(92, 59, 'Events', 1, '2015-09-14 06:53:02', 0),
(93, 59, 'Events', 1, '2015-09-14 06:53:12', 0),
(94, 60, 'Events', 1, '2015-09-15 11:25:58', 2),
(95, 61, 'ModComments', 1, '2015-09-17 15:32:01', 2),
(96, 49, 'Contacts', 1, '2015-09-22 05:57:08', 0),
(97, 62, 'Events', 1, '2015-09-23 13:09:46', 2),
(98, 63, 'ModComments', 1, '2015-09-23 13:20:19', 2),
(99, 64, 'ModComments', 1, '2015-09-23 13:20:20', 2),
(100, 65, 'ModComments', 1, '2015-09-23 13:20:20', 2),
(101, 66, 'Events', 1, '2015-09-24 13:34:00', 2),
(102, 29, 'Leads', 1, '2015-09-24 13:34:01', 4),
(103, 67, 'Leads', 1, '2015-09-24 13:37:15', 2),
(104, 49, 'Contacts', 1, '2015-09-24 13:42:01', 0),
(105, 62, 'Events', 1, '2015-09-30 10:06:51', 0),
(106, 68, 'ModComments', 1, '2015-09-30 10:15:32', 2),
(107, 67, 'Leads', 1, '2015-09-30 10:19:17', 4),
(108, 69, 'Products', 1, '2015-09-30 12:23:17', 2),
(109, 49, 'Contacts', 1, '2015-10-06 14:38:42', 0),
(110, 2, 'Accounts', 1, '2015-10-06 14:40:38', 0),
(111, 49, 'Contacts', 1, '2015-10-06 14:45:36', 0),
(112, 49, 'Contacts', 1, '2015-10-06 14:46:10', 0),
(113, 49, 'Contacts', 1, '2015-10-06 14:46:23', 0),
(114, 49, 'Contacts', 1, '2015-10-06 14:46:41', 0),
(115, 72, 'Campaigns', 1, '2015-10-07 11:16:13', 2),
(116, 36, 'Contacts', 1, '2015-10-07 11:21:52', 0),
(117, 2, 'Accounts', 1, '2015-10-07 12:16:37', 0),
(118, 2, 'Accounts', 1, '2015-10-07 13:09:56', 0),
(119, 29, 'Leads', 1, '2015-10-07 13:19:33', 0),
(120, 73, 'Leads', 1, '2015-10-07 13:34:01', 2),
(121, 74, 'ModComments', 1, '2015-10-07 13:35:26', 2),
(122, 73, 'Leads', 1, '2015-10-07 13:36:53', 0),
(123, 29, 'Leads', 1, '2015-10-08 21:29:54', 0),
(124, 36, 'Contacts', 1, '2015-10-12 09:23:13', 0),
(125, 50, 'Quotes', 1, '2015-10-12 09:24:40', 0),
(126, 50, 'Quotes', 1, '2015-10-12 09:26:13', 0),
(127, 38, 'Products', 1, '2015-10-14 08:17:45', 0),
(128, 38, 'Products', 1, '2015-10-14 08:21:06', 0),
(129, 73, 'Leads', 1, '2015-10-14 08:40:45', 0),
(130, 73, 'Leads', 1, '2015-10-14 08:41:02', 0),
(131, 73, 'Leads', 1, '2015-10-14 08:43:30', 0),
(132, 73, 'Leads', 1, '2015-10-14 08:43:39', 0),
(133, 73, 'Leads', 1, '2015-10-14 08:43:50', 0),
(134, 73, 'Leads', 1, '2015-10-14 08:44:07', 0),
(135, 73, 'Leads', 1, '2015-10-14 08:44:20', 0),
(136, 73, 'Leads', 1, '2015-10-14 08:44:38', 0),
(137, 73, 'Leads', 1, '2015-10-14 08:44:51', 0),
(138, 75, 'Accounts', 1, '2015-10-14 13:17:40', 2),
(139, 2, 'Accounts', 1, '2015-10-15 11:23:46', 0),
(140, 38, 'Products', 1, '2015-10-15 11:25:11', 0),
(141, 38, 'Products', 1, '2015-10-15 11:25:18', 0),
(142, 38, 'Products', 1, '2015-10-15 11:25:28', 0),
(143, 29, 'Leads', 1, '2015-10-15 13:17:14', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_basic_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_basic_seq` (
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `vtiger_modtracker_basic_seq`
--

INSERT INTO `vtiger_modtracker_basic_seq` (`id`) VALUES
(143);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_detail`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_detail` (
  `id` int(11) DEFAULT NULL,
  `fieldname` varchar(100) DEFAULT NULL,
  `prevalue` text,
  `postvalue` text,
  KEY `idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_detail`
--

INSERT INTO `vtiger_modtracker_detail` (`id`, `fieldname`, `prevalue`, `postvalue`) VALUES
(1, 'accountname', NULL, 'awsedh'),
(1, 'account_no', NULL, 'ACC1'),
(1, 'annual_revenue', NULL, '0.00000000'),
(1, 'assigned_user_id', NULL, '3'),
(1, 'createdtime', NULL, '2015-03-13 08:03:22'),
(1, 'modifiedby', NULL, '1'),
(1, 'created_user_id', NULL, '1'),
(1, 'record_id', NULL, '2'),
(1, 'record_module', NULL, 'Accounts'),
(2, 'potentialname', NULL, 'testing'),
(2, 'potential_no', NULL, 'POT1'),
(2, 'amount', NULL, '0.00000000'),
(2, 'closingdate', NULL, '2015-03-14'),
(2, 'sales_stage', NULL, 'Prospecting'),
(2, 'assigned_user_id', NULL, '3'),
(2, 'probability', NULL, '0.000'),
(2, 'createdtime', NULL, '2015-03-14 12:32:32'),
(2, 'modifiedby', NULL, '1'),
(2, 'forecast_amount', NULL, '0.00000000'),
(2, 'created_user_id', NULL, '1'),
(2, 'record_id', NULL, '3'),
(2, 'record_module', NULL, 'Potentials'),
(3, 'subject', NULL, 'grgh'),
(3, 'assigned_user_id', NULL, '3'),
(3, 'date_start', NULL, '2015-03-20'),
(3, 'time_start', NULL, '08:29:00'),
(3, 'time_end', NULL, '10:00:00'),
(3, 'due_date', NULL, '2015-03-25'),
(3, 'eventstatus', NULL, 'Planned'),
(3, 'createdtime', NULL, '2015-03-20 08:29:57'),
(3, 'activitytype', NULL, 'Call'),
(3, 'modifiedby', NULL, '1'),
(3, 'created_user_id', NULL, '1'),
(3, 'record_id', NULL, '4'),
(3, 'record_module', NULL, 'Events'),
(4, 'lead_no', NULL, 'LEA1'),
(4, 'lastname', NULL, 'test'),
(4, 'annualrevenue', NULL, '0.00000000'),
(4, 'assigned_user_id', NULL, '1'),
(4, 'createdtime', NULL, '2015-03-20 14:58:44'),
(4, 'modifiedby', NULL, '1'),
(4, 'created_user_id', NULL, '1'),
(4, 'record_id', NULL, '5'),
(4, 'record_module', NULL, 'Leads'),
(5, 'leadstatus', '', 'Cold'),
(6, 'campaignname', NULL, 'testqqq'),
(6, 'campaign_no', NULL, 'CAM1'),
(6, 'campaignstatus', NULL, 'Planning'),
(6, 'closingdate', NULL, '2015-03-18'),
(6, 'assigned_user_id', NULL, '1'),
(6, 'createdtime', NULL, '2015-03-22 01:13:20'),
(6, 'modifiedby', NULL, '1'),
(6, 'expectedrevenue', NULL, '0.00000000'),
(6, 'budgetcost', NULL, '0.00000000'),
(6, 'actualcost', NULL, '0.00000000'),
(6, 'expectedroi', NULL, '0.00000000'),
(6, 'actualroi', NULL, '0.00000000'),
(6, 'record_id', NULL, '6'),
(6, 'record_module', NULL, 'Campaigns'),
(7, 'lead_no', NULL, 'LEA2'),
(7, 'lastname', NULL, 'b'),
(7, 'annualrevenue', NULL, '0.00000000'),
(7, 'assigned_user_id', NULL, '1'),
(7, 'createdtime', NULL, '2015-03-22 01:15:02'),
(7, 'modifiedby', NULL, '1'),
(7, 'created_user_id', NULL, '1'),
(7, 'record_id', NULL, '7'),
(7, 'record_module', NULL, 'Leads'),
(9, 'rating', '', 'Acquired'),
(10, 'email', '', 'test@test.it'),
(11, 'website', '', 'test.it'),
(12, 'fax', '', '3333436345754'),
(13, 'phone', '', '5555555555'),
(14, 'mobile', '', '66666'),
(15, 'subject', NULL, 'test'),
(15, 'assigned_user_id', NULL, '1'),
(15, 'date_start', NULL, '2015-03-29'),
(15, 'time_start', NULL, '19:00:00'),
(15, 'time_end', NULL, '19:05:00'),
(15, 'due_date', NULL, '2015-03-29'),
(15, 'eventstatus', NULL, 'Planned'),
(15, 'createdtime', NULL, '2015-03-30 12:03:48'),
(15, 'activitytype', NULL, 'Call'),
(15, 'visibility', NULL, 'Public'),
(15, 'modifiedby', NULL, '1'),
(15, 'created_user_id', NULL, '1'),
(15, 'record_id', NULL, '8'),
(15, 'record_module', NULL, 'Events'),
(16, 'subject', NULL, 'test1111'),
(16, 'assigned_user_id', NULL, '1'),
(16, 'date_start', NULL, '2015-03-31'),
(16, 'time_start', NULL, '07:00:00'),
(16, 'time_end', NULL, '11:30:00'),
(16, 'due_date', NULL, '2015-03-31'),
(16, 'eventstatus', NULL, 'Planned'),
(16, 'createdtime', NULL, '2015-03-30 12:04:39'),
(16, 'activitytype', NULL, 'Meeting'),
(16, 'visibility', NULL, 'Public'),
(16, 'modifiedby', NULL, '1'),
(16, 'created_user_id', NULL, '1'),
(16, 'record_id', NULL, '9'),
(16, 'record_module', NULL, 'Events'),
(17, 'time_start', '07:00:00', '04:00:00'),
(17, 'recurringtype', '', '--None--'),
(18, 'subject', NULL, 'test1'),
(18, 'assigned_user_id', NULL, '1'),
(18, 'date_start', NULL, '2015-03-31'),
(18, 'time_start', NULL, '04:15:00'),
(18, 'time_end', NULL, '10:00:00'),
(18, 'due_date', NULL, '2015-03-31'),
(18, 'eventstatus', NULL, 'Planned'),
(18, 'createdtime', NULL, '2015-03-30 12:05:43'),
(18, 'activitytype', NULL, 'Call'),
(18, 'visibility', NULL, 'Public'),
(18, 'modifiedby', NULL, '1'),
(18, 'created_user_id', NULL, '1'),
(18, 'record_id', NULL, '10'),
(18, 'record_module', NULL, 'Events'),
(19, 'subject', NULL, 'test'),
(19, 'assigned_user_id', NULL, '1'),
(19, 'date_start', NULL, '2015-03-29'),
(19, 'time_start', NULL, '18:30:00'),
(19, 'time_end', NULL, '20:30:00'),
(19, 'due_date', NULL, '2015-03-29'),
(19, 'eventstatus', NULL, 'Planned'),
(19, 'createdtime', NULL, '2015-03-30 12:10:23'),
(19, 'activitytype', NULL, 'Call'),
(19, 'visibility', NULL, 'Public'),
(19, 'modifiedby', NULL, '1'),
(19, 'created_user_id', NULL, '1'),
(19, 'record_id', NULL, '11'),
(19, 'record_module', NULL, 'Events'),
(20, 'subject', NULL, 'test'),
(20, 'assigned_user_id', NULL, '1'),
(20, 'date_start', NULL, '2015-03-29'),
(20, 'time_start', NULL, '19:30:00'),
(20, 'time_end', NULL, '20:30:00'),
(20, 'due_date', NULL, '2015-03-29'),
(20, 'eventstatus', NULL, 'Planned'),
(20, 'createdtime', NULL, '2015-03-30 12:10:50'),
(20, 'activitytype', NULL, 'Call'),
(20, 'visibility', NULL, 'Public'),
(20, 'modifiedby', NULL, '1'),
(20, 'created_user_id', NULL, '1'),
(20, 'record_id', NULL, '12'),
(20, 'record_module', NULL, 'Events'),
(21, 'subject', NULL, 'test'),
(21, 'assigned_user_id', NULL, '1'),
(21, 'date_start', NULL, '2015-03-30'),
(21, 'time_start', NULL, '19:30:00'),
(21, 'time_end', NULL, '21:30:00'),
(21, 'due_date', NULL, '2015-03-30'),
(21, 'eventstatus', NULL, 'Planned'),
(21, 'createdtime', NULL, '2015-03-30 12:11:14'),
(21, 'activitytype', NULL, 'Meeting'),
(21, 'visibility', NULL, 'Public'),
(21, 'modifiedby', NULL, '1'),
(21, 'created_user_id', NULL, '1'),
(21, 'record_id', NULL, '13'),
(21, 'record_module', NULL, 'Events'),
(22, 'time_end', '20:30:00', '21:15:00'),
(23, 'subject', NULL, 'test'),
(23, 'assigned_user_id', NULL, '1'),
(23, 'date_start', NULL, '2015-03-29'),
(23, 'time_start', NULL, '18:30:00'),
(23, 'time_end', NULL, '22:30:00'),
(23, 'due_date', NULL, '2015-03-29'),
(23, 'eventstatus', NULL, 'Planned'),
(23, 'createdtime', NULL, '2015-03-30 12:12:08'),
(23, 'activitytype', NULL, 'Call'),
(23, 'visibility', NULL, 'Public'),
(23, 'modifiedby', NULL, '1'),
(23, 'created_user_id', NULL, '1'),
(23, 'record_id', NULL, '14'),
(23, 'record_module', NULL, 'Events'),
(24, 'subject', NULL, 'test'),
(24, 'assigned_user_id', NULL, '1'),
(24, 'date_start', NULL, '2015-03-29'),
(24, 'time_start', NULL, '18:30:00'),
(24, 'time_end', NULL, '19:00:00'),
(24, 'due_date', NULL, '2015-03-29'),
(24, 'eventstatus', NULL, 'Planned'),
(24, 'createdtime', NULL, '2015-03-30 12:12:27'),
(24, 'activitytype', NULL, 'Call'),
(24, 'visibility', NULL, 'Public'),
(24, 'modifiedby', NULL, '1'),
(24, 'created_user_id', NULL, '1'),
(24, 'record_id', NULL, '15'),
(24, 'record_module', NULL, 'Events'),
(25, 'subject', NULL, 'testtt'),
(25, 'assigned_user_id', NULL, '1'),
(25, 'date_start', NULL, '2015-03-30'),
(25, 'time_start', NULL, '00:30:00'),
(25, 'time_end', NULL, '01:30:00'),
(25, 'due_date', NULL, '2015-03-30'),
(25, 'eventstatus', NULL, 'Planned'),
(25, 'createdtime', NULL, '2015-03-30 12:12:42'),
(25, 'activitytype', NULL, 'Call'),
(25, 'visibility', NULL, 'Public'),
(25, 'modifiedby', NULL, '1'),
(25, 'created_user_id', NULL, '1'),
(25, 'record_id', NULL, '16'),
(25, 'record_module', NULL, 'Events'),
(26, 'subject', NULL, 'test'),
(26, 'assigned_user_id', NULL, '1'),
(26, 'date_start', NULL, '2015-03-29'),
(26, 'time_start', NULL, '18:30:00'),
(26, 'time_end', NULL, '19:00:00'),
(26, 'due_date', NULL, '2015-03-29'),
(26, 'eventstatus', NULL, 'Planned'),
(26, 'createdtime', NULL, '2015-03-30 12:13:03'),
(26, 'activitytype', NULL, 'Call'),
(26, 'visibility', NULL, 'Public'),
(26, 'modifiedby', NULL, '1'),
(26, 'created_user_id', NULL, '1'),
(26, 'record_id', NULL, '17'),
(26, 'record_module', NULL, 'Events'),
(27, 'time_start', '19:30:00', '19:00:00'),
(27, 'time_end', '21:15:00', '20:45:00'),
(28, 'time_start', '19:00:00', '19:30:00'),
(28, 'time_end', '20:45:00', '21:15:00'),
(29, 'subject', NULL, 'vai'),
(29, 'assigned_user_id', NULL, '1'),
(29, 'date_start', NULL, '2015-03-29'),
(29, 'time_start', NULL, '21:45:00'),
(29, 'time_end', NULL, '02:00:00'),
(29, 'due_date', NULL, '2015-03-30'),
(29, 'eventstatus', NULL, 'Planned'),
(29, 'createdtime', NULL, '2015-03-30 12:13:37'),
(29, 'activitytype', NULL, 'Call'),
(29, 'visibility', NULL, 'Public'),
(29, 'modifiedby', NULL, '1'),
(29, 'created_user_id', NULL, '1'),
(29, 'record_id', NULL, '18'),
(29, 'record_module', NULL, 'Events'),
(30, 'time_end', '19:05:00', '20:05:00'),
(31, 'time_start', '19:00:00', '20:00:00'),
(31, 'time_end', '20:05:00', '21:05:00'),
(32, 'time_start', '20:00:00', '19:15:00'),
(32, 'time_end', '21:05:00', '20:20:00'),
(33, 'notes_title', NULL, '123'),
(33, 'createdtime', NULL, '2015-04-06 19:50:20'),
(33, 'assigned_user_id', NULL, '1'),
(33, 'filelocationtype', NULL, 'I'),
(33, 'filestatus', NULL, '1'),
(33, 'folderid', NULL, '1'),
(33, 'note_no', NULL, 'DOC1'),
(33, 'modifiedby', NULL, '1'),
(33, 'record_id', NULL, '19'),
(33, 'record_module', NULL, 'Documents'),
(35, 'subject', NULL, 'test'),
(35, 'assigned_user_id', NULL, '1'),
(35, 'date_start', NULL, '2015-04-10'),
(35, 'time_start', NULL, '08:24:00'),
(35, 'time_end', NULL, '08:29:00'),
(35, 'due_date', NULL, '2015-04-10'),
(35, 'eventstatus', NULL, 'Planned'),
(35, 'createdtime', NULL, '2015-04-10 08:25:40'),
(35, 'activitytype', NULL, 'Call'),
(35, 'visibility', NULL, 'Public'),
(35, 'modifiedby', NULL, '1'),
(35, 'created_user_id', NULL, '1'),
(35, 'record_id', NULL, '20'),
(35, 'record_module', NULL, 'Events'),
(36, 'potentialname', NULL, 'test'),
(36, 'potential_no', NULL, 'POT2'),
(36, 'amount', NULL, '1000.00000000'),
(36, 'related_to', NULL, '2'),
(36, 'closingdate', NULL, '2015-04-11'),
(36, 'sales_stage', NULL, 'Prospecting'),
(36, 'assigned_user_id', NULL, '1'),
(36, 'probability', NULL, '0.000'),
(36, 'createdtime', NULL, '2015-04-10 13:08:40'),
(36, 'modifiedby', NULL, '1'),
(36, 'forecast_amount', NULL, '0.00000000'),
(36, 'created_user_id', NULL, '1'),
(36, 'record_id', NULL, '21'),
(36, 'record_module', NULL, 'Potentials'),
(38, 'potentialname', NULL, 'ritest'),
(38, 'potential_no', NULL, 'POT3'),
(38, 'amount', NULL, '0.00000000'),
(38, 'related_to', NULL, '2'),
(38, 'closingdate', NULL, '2015-04-11'),
(38, 'sales_stage', NULL, 'Prospecting'),
(38, 'assigned_user_id', NULL, '1'),
(38, 'probability', NULL, '0.000'),
(38, 'createdtime', NULL, '2015-04-10 13:09:13'),
(38, 'modifiedby', NULL, '1'),
(38, 'forecast_amount', NULL, '0.00000000'),
(38, 'created_user_id', NULL, '1'),
(38, 'record_id', NULL, '22'),
(38, 'record_module', NULL, 'Potentials'),
(40, 'contact_no', NULL, 'CON1'),
(40, 'lastname', NULL, 'test'),
(40, 'assigned_user_id', NULL, '1'),
(40, 'createdtime', NULL, '2015-04-10 13:31:16'),
(40, 'modifiedby', NULL, '1'),
(40, 'support_start_date', NULL, '2015-04-10'),
(40, 'support_end_date', NULL, '2016-04-10'),
(40, 'created_user_id', NULL, '1'),
(40, 'record_id', NULL, '23'),
(40, 'record_module', NULL, 'Contacts'),
(41, 'leadsource', '', 'Cold Call'),
(42, 'designation', '', 'test'),
(43, 'company', '', 'company name'),
(44, 'firstname', '', 'nome'),
(45, 'industry', '', 'Banking'),
(46, 'secondaryemail', '', 'emai2@email.it'),
(47, 'firstname', NULL, 'nome'),
(47, 'lead_no', NULL, 'LEA3'),
(47, 'phone', NULL, '5555555555'),
(47, 'lastname', NULL, 'test'),
(47, 'mobile', NULL, '66666'),
(47, 'company', NULL, 'company name'),
(47, 'fax', NULL, '3333436345754'),
(47, 'designation', NULL, 'test'),
(47, 'email', NULL, 'test@test.it'),
(47, 'leadsource', NULL, 'Cold Call'),
(47, 'website', NULL, 'test.it'),
(47, 'industry', NULL, 'Banking'),
(47, 'leadstatus', NULL, 'Cold'),
(47, 'annualrevenue', NULL, '0.00000000'),
(47, 'rating', NULL, 'Acquired'),
(47, 'assigned_user_id', NULL, '1'),
(47, 'secondaryemail', NULL, 'emai2@email.it'),
(47, 'createdtime', NULL, '2015-04-13 14:17:19'),
(47, 'modifiedby', NULL, '1'),
(47, 'created_user_id', NULL, '1'),
(47, 'record_id', NULL, '24'),
(47, 'record_module', NULL, 'Leads'),
(48, 'firstname', NULL, 'nome'),
(48, 'lead_no', NULL, 'LEA4'),
(48, 'phone', NULL, '5555555555'),
(48, 'lastname', NULL, 'test'),
(48, 'mobile', NULL, '66666'),
(48, 'company', NULL, 'company name'),
(48, 'fax', NULL, '3333436345754'),
(48, 'designation', NULL, 'test'),
(48, 'email', NULL, 'test@test.it'),
(48, 'leadsource', NULL, 'Cold Call'),
(48, 'website', NULL, 'test.it'),
(48, 'industry', NULL, 'Banking'),
(48, 'leadstatus', NULL, 'Cold'),
(48, 'annualrevenue', NULL, '0.00000000'),
(48, 'rating', NULL, 'Acquired'),
(48, 'assigned_user_id', NULL, '1'),
(48, 'secondaryemail', NULL, 'emai2@email.it'),
(48, 'createdtime', NULL, '2015-04-13 14:17:35'),
(48, 'modifiedby', NULL, '1'),
(48, 'created_user_id', NULL, '1'),
(48, 'record_id', NULL, '25'),
(48, 'record_module', NULL, 'Leads'),
(49, 'firstname', NULL, 'nome'),
(49, 'lead_no', NULL, 'LEA5'),
(49, 'phone', NULL, '5555555555'),
(49, 'lastname', NULL, 'test'),
(49, 'mobile', NULL, '66666'),
(49, 'company', NULL, 'company name'),
(49, 'fax', NULL, '3333436345754'),
(49, 'designation', NULL, 'test'),
(49, 'email', NULL, 'test@test.it'),
(49, 'leadsource', NULL, 'Cold Call'),
(49, 'website', NULL, 'test.it'),
(49, 'industry', NULL, 'Banking'),
(49, 'leadstatus', NULL, 'Cold'),
(49, 'annualrevenue', NULL, '0.00000000'),
(49, 'rating', NULL, 'Acquired'),
(49, 'assigned_user_id', NULL, '1'),
(49, 'secondaryemail', NULL, 'emai2@email.it'),
(49, 'createdtime', NULL, '2015-04-13 14:17:59'),
(49, 'modifiedby', NULL, '1'),
(49, 'created_user_id', NULL, '1'),
(49, 'record_id', NULL, '26'),
(49, 'record_module', NULL, 'Leads'),
(50, 'firstname', NULL, 'nome'),
(50, 'lead_no', NULL, 'LEA6'),
(50, 'phone', NULL, '5555555555'),
(50, 'lastname', NULL, 'test'),
(50, 'mobile', NULL, '66666'),
(50, 'company', NULL, 'company name'),
(50, 'fax', NULL, '3333436345754'),
(50, 'designation', NULL, 'test'),
(50, 'email', NULL, 'test@test.it'),
(50, 'leadsource', NULL, 'Cold Call'),
(50, 'website', NULL, 'test.it'),
(50, 'industry', NULL, 'Banking'),
(50, 'leadstatus', NULL, 'Cold'),
(50, 'annualrevenue', NULL, '0.00000000'),
(50, 'rating', NULL, 'Acquired'),
(50, 'assigned_user_id', NULL, '1'),
(50, 'secondaryemail', NULL, 'emai2@email.it'),
(50, 'createdtime', NULL, '2015-04-13 14:18:05'),
(50, 'modifiedby', NULL, '1'),
(50, 'created_user_id', NULL, '1'),
(50, 'record_id', NULL, '27'),
(50, 'record_module', NULL, 'Leads'),
(51, 'firstname', NULL, 'nome'),
(51, 'lead_no', NULL, 'LEA7'),
(51, 'phone', NULL, '5555555555'),
(51, 'lastname', NULL, 'test'),
(51, 'mobile', NULL, '66666'),
(51, 'company', NULL, 'company name'),
(51, 'fax', NULL, '3333436345754'),
(51, 'designation', NULL, 'test'),
(51, 'email', NULL, 'test@test.it'),
(51, 'leadsource', NULL, 'Cold Call'),
(51, 'website', NULL, 'test.it'),
(51, 'industry', NULL, 'Banking'),
(51, 'leadstatus', NULL, 'Cold'),
(51, 'annualrevenue', NULL, '0.00000000'),
(51, 'rating', NULL, 'Acquired'),
(51, 'assigned_user_id', NULL, '1'),
(51, 'secondaryemail', NULL, 'emai2@email.it'),
(51, 'createdtime', NULL, '2015-04-13 14:18:12'),
(51, 'modifiedby', NULL, '1'),
(51, 'created_user_id', NULL, '1'),
(51, 'record_id', NULL, '28'),
(51, 'record_module', NULL, 'Leads'),
(52, 'firstname', NULL, 'nome'),
(52, 'lead_no', NULL, 'LEA8'),
(52, 'phone', NULL, '5555555555'),
(52, 'lastname', NULL, 'test'),
(52, 'mobile', NULL, '66666'),
(52, 'company', NULL, 'company name'),
(52, 'fax', NULL, '3333436345754'),
(52, 'designation', NULL, 'test'),
(52, 'email', NULL, 'test@test.it'),
(52, 'leadsource', NULL, 'Cold Call'),
(52, 'website', NULL, 'test.it'),
(52, 'industry', NULL, 'Banking'),
(52, 'leadstatus', NULL, 'Cold'),
(52, 'annualrevenue', NULL, '0.00000000'),
(52, 'rating', NULL, 'Acquired'),
(52, 'assigned_user_id', NULL, '1'),
(52, 'secondaryemail', NULL, 'emai2@email.it'),
(52, 'createdtime', NULL, '2015-04-13 14:18:18'),
(52, 'modifiedby', NULL, '1'),
(52, 'created_user_id', NULL, '1'),
(52, 'record_id', NULL, '29'),
(52, 'record_module', NULL, 'Leads'),
(53, 'firstname', NULL, 'nome'),
(53, 'lead_no', NULL, 'LEA9'),
(53, 'phone', NULL, '5555555555'),
(53, 'lastname', NULL, 'test'),
(53, 'mobile', NULL, '66666'),
(53, 'company', NULL, 'company name'),
(53, 'fax', NULL, '3333436345754'),
(53, 'designation', NULL, 'test'),
(53, 'email', NULL, 'test@test.it'),
(53, 'leadsource', NULL, 'Cold Call'),
(53, 'website', NULL, 'test.it'),
(53, 'industry', NULL, 'Banking'),
(53, 'leadstatus', NULL, 'Cold'),
(53, 'annualrevenue', NULL, '0.00000000'),
(53, 'rating', NULL, 'Acquired'),
(53, 'assigned_user_id', NULL, '1'),
(53, 'secondaryemail', NULL, 'emai2@email.it'),
(53, 'createdtime', NULL, '2015-04-13 14:18:26'),
(53, 'modifiedby', NULL, '1'),
(53, 'created_user_id', NULL, '1'),
(53, 'record_id', NULL, '30'),
(53, 'record_module', NULL, 'Leads'),
(54, 'projectname', NULL, 'test1'),
(54, 'assigned_user_id', NULL, '1'),
(54, 'project_no', NULL, 'PROJ1'),
(54, 'createdtime', NULL, '2015-04-13 14:32:20'),
(54, 'modifiedby', NULL, '1'),
(54, 'created_user_id', NULL, '1'),
(54, 'record_id', NULL, '31'),
(54, 'record_module', NULL, 'Project'),
(55, 'subject', NULL, 'test'),
(55, 'assigned_user_id', NULL, '1'),
(55, 'date_start', NULL, '2015-04-12'),
(55, 'time_start', NULL, '19:00:00'),
(55, 'time_end', NULL, '19:05:00'),
(55, 'due_date', NULL, '2015-04-12'),
(55, 'eventstatus', NULL, 'Planned'),
(55, 'createdtime', NULL, '2015-04-14 12:39:03'),
(55, 'activitytype', NULL, 'Call'),
(55, 'visibility', NULL, 'Public'),
(55, 'modifiedby', NULL, '1'),
(55, 'created_user_id', NULL, '1'),
(55, 'record_id', NULL, '32'),
(55, 'record_module', NULL, 'Events'),
(56, 'subject', NULL, 'test'),
(56, 'assigned_user_id', NULL, '1'),
(56, 'date_start', NULL, '2015-04-13'),
(56, 'time_start', NULL, '18:45:00'),
(56, 'time_end', NULL, '21:00:00'),
(56, 'due_date', NULL, '2015-04-13'),
(56, 'eventstatus', NULL, 'Planned'),
(56, 'createdtime', NULL, '2015-04-14 12:39:21'),
(56, 'activitytype', NULL, 'Call'),
(56, 'visibility', NULL, 'Public'),
(56, 'modifiedby', NULL, '1'),
(56, 'created_user_id', NULL, '1'),
(56, 'record_id', NULL, '33'),
(56, 'record_module', NULL, 'Events'),
(57, 'subject', NULL, 'test'),
(57, 'assigned_user_id', NULL, '1'),
(57, 'date_start', NULL, '2015-04-14'),
(57, 'time_start', NULL, '08:45:00'),
(57, 'time_end', NULL, '11:00:00'),
(57, 'due_date', NULL, '2015-04-14'),
(57, 'eventstatus', NULL, 'Planned'),
(57, 'createdtime', NULL, '2015-04-14 12:40:25'),
(57, 'activitytype', NULL, 'Call'),
(57, 'visibility', NULL, 'Public'),
(57, 'modifiedby', NULL, '1'),
(57, 'created_user_id', NULL, '1'),
(57, 'record_id', NULL, '34'),
(57, 'record_module', NULL, 'Events'),
(58, 'subject', NULL, 'cg'),
(58, 'assigned_user_id', NULL, '1'),
(58, 'date_start', NULL, '2015-04-14'),
(58, 'time_start', NULL, '10:00:00'),
(58, 'time_end', NULL, '10:30:00'),
(58, 'due_date', NULL, '2015-04-14'),
(58, 'eventstatus', NULL, 'Planned'),
(58, 'createdtime', NULL, '2015-04-14 12:41:31'),
(58, 'activitytype', NULL, 'Call'),
(58, 'visibility', NULL, 'Public'),
(58, 'modifiedby', NULL, '1'),
(58, 'created_user_id', NULL, '1'),
(58, 'record_id', NULL, '35'),
(58, 'record_module', NULL, 'Events'),
(59, 'firstname', NULL, 'test'),
(59, 'contact_no', NULL, 'CON2'),
(59, 'lastname', NULL, 'test'),
(59, 'account_id', NULL, '2'),
(59, 'assigned_user_id', NULL, '1'),
(59, 'createdtime', NULL, '2015-04-14 12:43:25'),
(59, 'modifiedby', NULL, '1'),
(59, 'support_start_date', NULL, '2015-04-14'),
(59, 'support_end_date', NULL, '2016-04-14'),
(59, 'created_user_id', NULL, '1'),
(59, 'record_id', NULL, '36'),
(59, 'record_module', NULL, 'Contacts'),
(60, 'ticket_no', NULL, 'TT1'),
(60, 'assigned_user_id', NULL, '1'),
(60, 'ticketstatus', NULL, 'Open'),
(60, 'hours', NULL, '0.00000000'),
(60, 'days', NULL, '0.00000000'),
(60, 'createdtime', NULL, '2015-04-14 12:43:40'),
(60, 'modifiedby', NULL, '1'),
(60, 'ticket_title', NULL, 'test'),
(60, 'contact_id', NULL, '36'),
(60, 'created_user_id', NULL, '1'),
(60, 'record_id', NULL, '37'),
(60, 'record_module', NULL, 'HelpDesk'),
(62, 'campaignid', '0', '6'),
(63, 'productname', NULL, 'product1'),
(63, 'product_no', NULL, 'PRO1'),
(63, 'discontinued', NULL, '1'),
(63, 'createdtime', NULL, '2015-04-15 14:32:35'),
(63, 'modifiedby', NULL, '1'),
(63, 'unit_price', NULL, '100.00000000'),
(63, 'commissionrate', NULL, '0.000'),
(63, 'qty_per_unit', NULL, '0.00'),
(63, 'qtyinstock', NULL, '0.000'),
(63, 'assigned_user_id', NULL, '1'),
(63, 'record_id', NULL, '38'),
(63, 'record_module', NULL, 'Products'),
(64, 'subject', NULL, 'test'),
(64, 'txtadjustment', NULL, '0.00000000'),
(64, 'salescommission', NULL, '0.000'),
(64, 'exciseduty', NULL, '0.000'),
(64, 'hdnsubtotal', NULL, '100.00000000'),
(64, 'hdngrandtotal', NULL, '127.00000000'),
(64, 'hdntaxtype', NULL, 'group'),
(64, 'hdns_h_amount', NULL, '0.00000000'),
(64, 'account_id', NULL, '2'),
(64, 'assigned_user_id', NULL, '1'),
(64, 'createdtime', NULL, '2015-04-15 14:32:54'),
(64, 'modifiedby', NULL, '1'),
(64, 'currency_id', NULL, '1'),
(64, 'conversion_rate', NULL, '1.000'),
(64, 'bill_street', NULL, 'dd'),
(64, 'ship_street', NULL, 'dd'),
(64, 'terms_conditions', NULL, '- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(64, 'invoice_no', NULL, 'INV1'),
(64, 'productid', NULL, '38'),
(64, 'quantity', NULL, '1.000'),
(64, 'listprice', NULL, '100.00000000'),
(64, 'tax1', NULL, '4.500'),
(64, 'tax2', NULL, '10.000'),
(64, 'tax3', NULL, '12.500'),
(64, 'pre_tax_total', NULL, '100.00000000'),
(64, 'received', NULL, '0.00000000'),
(64, 'balance', NULL, '127.00000000'),
(64, 'hdns_h_percent', NULL, '27'),
(64, 'created_user_id', NULL, '1'),
(64, 'record_id', NULL, '39'),
(64, 'record_module', NULL, 'Invoice'),
(65, 'subject', NULL, 'ghjkhy'),
(65, 'assigned_user_id', NULL, '1'),
(65, 'date_start', NULL, '2015-04-16'),
(65, 'time_start', NULL, '11:30:00'),
(65, 'time_end', NULL, '11:35:00'),
(65, 'due_date', NULL, '2015-04-16'),
(65, 'eventstatus', NULL, 'Planned'),
(65, 'createdtime', NULL, '2015-04-16 08:03:13'),
(65, 'activitytype', NULL, 'Call'),
(65, 'visibility', NULL, 'Public'),
(65, 'modifiedby', NULL, '1'),
(65, 'created_user_id', NULL, '1'),
(65, 'record_id', NULL, '40'),
(65, 'record_module', NULL, 'Events'),
(66, 'recurringtype', '', '--None--'),
(67, 'subject', NULL, 'test'),
(67, 'assigned_user_id', NULL, '1'),
(67, 'date_start', NULL, '2015-04-17'),
(67, 'time_start', NULL, '11:30:00'),
(67, 'time_end', NULL, '11:35:00'),
(67, 'due_date', NULL, '2015-04-17'),
(67, 'eventstatus', NULL, 'Planned'),
(67, 'createdtime', NULL, '2015-04-17 06:04:29'),
(67, 'activitytype', NULL, 'Call'),
(67, 'visibility', NULL, 'Public'),
(67, 'modifiedby', NULL, '1'),
(67, 'created_user_id', NULL, '1'),
(67, 'record_id', NULL, '41'),
(67, 'record_module', NULL, 'Events'),
(68, 'date_start', '2015-04-17', '2015-04-16'),
(68, 'time_start', '11:30:00', '23:30:00'),
(68, 'recurringtype', '', '--None--'),
(69, 'subject', NULL, 'test'),
(69, 'assigned_user_id', NULL, '1'),
(69, 'date_start', NULL, '2015-04-17'),
(69, 'time_start', NULL, '14:30:00'),
(69, 'time_end', NULL, '14:35:00'),
(69, 'due_date', NULL, '2015-04-17'),
(69, 'eventstatus', NULL, 'Planned'),
(69, 'createdtime', NULL, '2015-04-17 06:26:17'),
(69, 'activitytype', NULL, 'Call'),
(69, 'visibility', NULL, 'Public'),
(69, 'recurringtype', NULL, '--None--'),
(69, 'modifiedby', NULL, '1'),
(69, 'created_user_id', NULL, '1'),
(69, 'record_id', NULL, '42'),
(69, 'record_module', NULL, 'Events'),
(70, 'subject', NULL, 'nfgn2pm'),
(70, 'assigned_user_id', NULL, '1'),
(70, 'date_start', NULL, '2015-04-20'),
(70, 'time_start', NULL, '08:30:00'),
(70, 'time_end', NULL, '08:35:00'),
(70, 'due_date', NULL, '2015-04-20'),
(70, 'eventstatus', NULL, 'Planned'),
(70, 'createdtime', NULL, '2015-04-20 07:42:47'),
(70, 'activitytype', NULL, 'Call'),
(70, 'visibility', NULL, 'Public'),
(70, 'modifiedby', NULL, '1'),
(70, 'created_user_id', NULL, '1'),
(70, 'record_id', NULL, '43'),
(70, 'record_module', NULL, 'Events'),
(71, 'subject', NULL, 'nfgn'),
(71, 'assigned_user_id', NULL, '1'),
(71, 'date_start', NULL, '2015-04-20'),
(71, 'time_start', NULL, '19:30:00'),
(71, 'time_end', NULL, '19:35:00'),
(71, 'due_date', NULL, '2015-04-20'),
(71, 'eventstatus', NULL, 'Planned'),
(71, 'createdtime', NULL, '2015-04-20 07:43:43'),
(71, 'activitytype', NULL, 'Call'),
(71, 'visibility', NULL, 'Public'),
(71, 'modifiedby', NULL, '1'),
(71, 'created_user_id', NULL, '1'),
(71, 'record_id', NULL, '44'),
(71, 'record_module', NULL, 'Events'),
(72, 'campaigntype', '', 'Public Relations'),
(72, 'expectedsalescount', '0', '10000'),
(73, 'phone', '', '0443367488'),
(73, 'annual_revenue', '0.00000000', '12.00000000'),
(74, 'commentcontent', NULL, 'Commento banale'),
(74, 'assigned_user_id', NULL, '1'),
(74, 'createdtime', NULL, '2015-04-20 08:01:59'),
(74, 'related_to', NULL, '22'),
(74, 'creator', NULL, '1'),
(74, 'userid', NULL, '1'),
(74, 'created_user_id', NULL, '1'),
(74, 'record_id', NULL, '45'),
(74, 'record_module', NULL, 'ModComments'),
(75, 'description', '', 'Dettaglio'),
(76, 'ticket_no', NULL, 'TT2'),
(76, 'assigned_user_id', NULL, '1'),
(76, 'parent_id', NULL, '2'),
(76, 'ticketpriorities', NULL, 'Normal'),
(76, 'ticketseverities', NULL, 'Major'),
(76, 'ticketstatus', NULL, 'Open'),
(76, 'ticketcategories', NULL, 'Small Problem'),
(76, 'hours', NULL, '0.00000000'),
(76, 'days', NULL, '0.00000000'),
(76, 'createdtime', NULL, '2015-04-20 08:06:19'),
(76, 'modifiedby', NULL, '1'),
(76, 'ticket_title', NULL, 'intervenire'),
(76, 'description', NULL, 'Testare template responsive'),
(76, 'created_user_id', NULL, '1'),
(76, 'record_id', NULL, '46'),
(76, 'record_module', NULL, 'HelpDesk'),
(77, 'bookname', NULL, 'asas'),
(77, 'pricebook_no', NULL, 'PB1'),
(77, 'active', NULL, '1'),
(77, 'createdtime', NULL, '2015-04-20 08:14:55'),
(77, 'currency_id', NULL, '1'),
(77, 'modifiedby', NULL, '1'),
(77, 'record_id', NULL, '47'),
(77, 'record_module', NULL, 'PriceBooks'),
(78, 'subject', NULL, 'test template'),
(78, 'assigned_user_id', NULL, '1'),
(78, 'date_start', NULL, '2015-04-20'),
(78, 'time_start', NULL, '08:20:00'),
(78, 'due_date', NULL, '2015-04-20'),
(78, 'taskstatus', NULL, 'In Progress'),
(78, 'createdtime', NULL, '2015-04-20 08:21:02'),
(78, 'activitytype', NULL, 'Task'),
(78, 'visibility', NULL, 'Private'),
(78, 'modifiedby', NULL, '1'),
(78, 'created_user_id', NULL, '1'),
(78, 'record_id', NULL, '48'),
(78, 'record_module', NULL, 'Calendar'),
(79, 'firstname', NULL, 'test'),
(79, 'contact_no', NULL, 'CON3'),
(79, 'lastname', NULL, 'test'),
(79, 'assigned_user_id', NULL, '1'),
(79, 'createdtime', NULL, '2015-09-04 14:44:16'),
(79, 'modifiedby', NULL, '1'),
(79, 'support_start_date', NULL, '2015-09-04'),
(79, 'support_end_date', NULL, '2016-09-04'),
(79, 'created_user_id', NULL, '1'),
(79, 'record_id', NULL, '49'),
(79, 'record_module', NULL, 'Contacts'),
(80, 'quote_no', NULL, 'QUO1'),
(80, 'subject', NULL, 'test'),
(80, 'quotestage', NULL, 'Created'),
(80, 'hdnSubTotal', NULL, '100.00000000'),
(80, 'txtAdjustment', NULL, '0.00000000'),
(80, 'hdnGrandTotal', NULL, '127.00000000'),
(80, 'hdnTaxType', NULL, 'group'),
(80, 'hdnS_H_Amount', NULL, '0.00000000'),
(80, 'account_id', NULL, '2'),
(80, 'assigned_user_id', NULL, '1'),
(80, 'createdtime', NULL, '2015-09-05 07:41:29'),
(80, 'modifiedby', NULL, '1'),
(80, 'currency_id', NULL, '1'),
(80, 'conversion_rate', NULL, '1.000'),
(80, 'bill_street', NULL, 'dd'),
(80, 'ship_street', NULL, 'sadf'),
(80, 'terms_conditions', NULL, '- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(80, 'productid', NULL, '38'),
(80, 'quantity', NULL, '1.000'),
(80, 'listprice', NULL, '100.00000000'),
(80, 'tax1', NULL, '4.500'),
(80, 'tax2', NULL, '10.000'),
(80, 'tax3', NULL, '12.500'),
(80, 'pre_tax_total', NULL, '100.00000000'),
(80, 'hdnS_H_Percent', NULL, '27'),
(80, 'record_id', NULL, '50'),
(80, 'record_module', NULL, 'Quotes'),
(81, 'lane', '', 'test'),
(82, 'salutationtype', '', 'Mrs.'),
(82, 'leadsource', 'Cold Call', 'Direct Mail'),
(82, 'industry', 'Banking', 'Not For Profit'),
(82, 'rating', 'Acquired', 'Shutdown'),
(83, 'commentcontent', NULL, 'I comment'),
(83, 'assigned_user_id', NULL, '1'),
(83, 'createdtime', NULL, '2015-09-11 06:39:02'),
(83, 'related_to', NULL, '30'),
(83, 'creator', NULL, '1'),
(83, 'userid', NULL, '1'),
(83, 'created_user_id', NULL, '1'),
(83, 'record_id', NULL, '51'),
(83, 'record_module', NULL, 'ModComments'),
(84, 'ticket_no', NULL, 'TT3'),
(84, 'assigned_user_id', NULL, '1'),
(84, 'ticketpriorities', NULL, 'Normal'),
(84, 'ticketstatus', NULL, 'Wait For Response'),
(84, 'hours', NULL, '0.00000000'),
(84, 'days', NULL, '0.00000000'),
(84, 'createdtime', NULL, '2015-09-11 07:42:43'),
(84, 'modifiedby', NULL, '1'),
(84, 'ticket_title', NULL, 'Prova'),
(84, 'description', NULL, 'Xhuidgiidfhjoov. Vgdyhb. Cho. Ddyiijnmmnvfagbczsx%&#039;&quot;:,vhxzgji'),
(84, 'created_user_id', NULL, '1'),
(84, 'record_id', NULL, '52'),
(84, 'record_module', NULL, 'HelpDesk'),
(85, 'salesorder_no', NULL, 'SO1'),
(85, 'subject', NULL, 'Cavalli'),
(85, 'potential_id', NULL, '22'),
(85, 'customerno', NULL, '12346'),
(85, 'quote_id', NULL, '50'),
(85, 'contact_id', NULL, '49'),
(85, 'duedate', NULL, '2015-09-18'),
(85, 'carrier', NULL, 'UPS'),
(85, 'sostatus', NULL, 'Created'),
(85, 'txtAdjustment', NULL, '-0.05000000'),
(85, 'salescommission', NULL, '0.000'),
(85, 'exciseduty', NULL, '0.000'),
(85, 'hdnGrandTotal', NULL, '6369.00000000'),
(85, 'hdnSubTotal', NULL, '5000.00000000'),
(85, 'hdnTaxType', NULL, 'group'),
(85, 'hdnS_H_Amount', NULL, '15.00000000'),
(85, 'account_id', NULL, '2'),
(85, 'assigned_user_id', NULL, '3'),
(85, 'createdtime', NULL, '2015-09-11 07:56:41'),
(85, 'modifiedby', NULL, '1'),
(85, 'currency_id', NULL, '1'),
(85, 'conversion_rate', NULL, '1.000'),
(85, 'bill_street', NULL, 'Kcfghjh'),
(85, 'ship_street', NULL, 'Hjigg'),
(85, 'description', NULL, 'Vjifdcvnj'),
(85, 'terms_conditions', NULL, '- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.'),
(85, 'productid', NULL, '38'),
(85, 'quantity', NULL, '100.000'),
(85, 'listprice', NULL, '50.00000000'),
(85, 'tax1', NULL, '4.500'),
(85, 'tax2', NULL, '10.000'),
(85, 'tax3', NULL, '12.500'),
(85, 'pre_tax_total', NULL, '5015.00000000'),
(85, 'hdnS_H_Percent', NULL, '27'),
(85, 'record_id', NULL, '53'),
(85, 'record_module', NULL, 'SalesOrder'),
(86, 'subject', NULL, 'prova'),
(86, 'assigned_user_id', NULL, '3'),
(86, 'date_start', NULL, '2015-09-11'),
(86, 'time_start', NULL, '08:10:00'),
(86, 'time_end', NULL, '10:30:00'),
(86, 'due_date', NULL, '2015-09-11'),
(86, 'eventstatus', NULL, 'Planned'),
(86, 'createdtime', NULL, '2015-09-11 08:14:09'),
(86, 'activitytype', NULL, 'Call'),
(86, 'visibility', NULL, 'Private'),
(86, 'duration_hours', NULL, '2'),
(86, 'duration_minutes', NULL, '20'),
(86, 'recurringtype', NULL, '--None--'),
(86, 'modifiedby', NULL, '1'),
(86, 'created_user_id', NULL, '1'),
(86, 'record_id', NULL, '54'),
(86, 'record_module', NULL, 'Events'),
(87, 'subject', NULL, 'vhjv'),
(87, 'assigned_user_id', NULL, '1'),
(87, 'date_start', NULL, '2015-09-08'),
(87, 'time_start', NULL, '23:00:00'),
(87, 'time_end', NULL, '23:30:00'),
(87, 'due_date', NULL, '2015-09-08'),
(87, 'eventstatus', NULL, 'Held'),
(87, 'createdtime', NULL, '2015-09-11 08:14:24'),
(87, 'activitytype', NULL, 'Meeting'),
(87, 'visibility', NULL, 'Public'),
(87, 'duration_minutes', NULL, '30'),
(87, 'modifiedby', NULL, '1'),
(87, 'created_user_id', NULL, '1'),
(87, 'record_id', NULL, '55'),
(87, 'record_module', NULL, 'Events'),
(88, 'accountname', 'awsedh', 'awsedh44'),
(89, 'notes_title', NULL, 'prova'),
(89, 'createdtime', NULL, '2015-09-11 08:27:12'),
(89, 'filename', NULL, 'prova.txt'),
(89, 'assigned_user_id', NULL, '1'),
(89, 'notecontent', NULL, '&nbsp;'),
(89, 'filetype', NULL, 'text/plain'),
(89, 'filesize', NULL, '4'),
(89, 'filelocationtype', NULL, 'I'),
(89, 'filestatus', NULL, '1'),
(89, 'folderid', NULL, '1'),
(89, 'note_no', NULL, 'DOC2'),
(89, 'modifiedby', NULL, '1'),
(89, 'record_id', NULL, '56'),
(89, 'record_module', NULL, 'Documents'),
(90, 'ticket_no', NULL, 'TT4'),
(90, 'assigned_user_id', NULL, '1'),
(90, 'ticketstatus', NULL, 'Open'),
(90, 'hours', NULL, '0.00000000'),
(90, 'days', NULL, '0.00000000'),
(90, 'createdtime', NULL, '2015-09-11 08:36:19'),
(90, 'modifiedby', NULL, '1'),
(90, 'ticket_title', NULL, 'test 1'),
(90, 'created_user_id', NULL, '1'),
(90, 'record_id', NULL, '58'),
(90, 'record_module', NULL, 'HelpDesk'),
(91, 'subject', NULL, 'test'),
(91, 'assigned_user_id', NULL, '1'),
(91, 'date_start', NULL, '2015-09-14'),
(91, 'time_start', NULL, '07:00:00'),
(91, 'time_end', NULL, '07:30:00'),
(91, 'due_date', NULL, '2015-09-14'),
(91, 'eventstatus', NULL, 'Planned'),
(91, 'createdtime', NULL, '2015-09-14 06:43:44'),
(91, 'activitytype', NULL, 'Call'),
(91, 'visibility', NULL, 'Public'),
(91, 'duration_minutes', NULL, '30'),
(91, 'modifiedby', NULL, '1'),
(91, 'created_user_id', NULL, '1'),
(91, 'record_id', NULL, '59'),
(91, 'record_module', NULL, 'Events'),
(92, 'time_end', '07:30:00', '08:00:00'),
(93, 'time_end', '08:00:00', '08:15:00'),
(94, 'subject', NULL, 'test'),
(94, 'assigned_user_id', NULL, '1'),
(94, 'date_start', NULL, '2015-09-14'),
(94, 'time_start', NULL, '23:15:00'),
(94, 'time_end', NULL, '23:45:00'),
(94, 'due_date', NULL, '2015-09-14'),
(94, 'eventstatus', NULL, 'Planned'),
(94, 'createdtime', NULL, '2015-09-15 11:25:58'),
(94, 'activitytype', NULL, 'Meeting'),
(94, 'visibility', NULL, 'Public'),
(94, 'duration_minutes', NULL, '30'),
(94, 'modifiedby', NULL, '1'),
(94, 'created_user_id', NULL, '1'),
(94, 'record_id', NULL, '60'),
(94, 'record_module', NULL, 'Events'),
(95, 'commentcontent', NULL, 'commento'),
(95, 'assigned_user_id', NULL, '1'),
(95, 'createdtime', NULL, '2015-09-17 15:32:01'),
(95, 'related_to', NULL, '30'),
(95, 'creator', NULL, '1'),
(95, 'userid', NULL, '1'),
(95, 'created_user_id', NULL, '1'),
(95, 'record_id', NULL, '61'),
(95, 'record_module', NULL, 'ModComments'),
(96, 'phone', '', 'test'),
(96, 'mobile', '', 'test'),
(96, 'leadsource', '', 'Cold Call'),
(96, 'otherphone', '', 'test'),
(96, 'title', '', 'test'),
(96, 'fax', '', 'test'),
(96, 'department', '', 'test'),
(96, 'birthday', '', '2015-09-17'),
(96, 'email', '', 'test@GMAIL.V'),
(97, 'subject', NULL, 'test'),
(97, 'assigned_user_id', NULL, '1'),
(97, 'date_start', NULL, '2015-09-23'),
(97, 'time_start', NULL, '13:09:00'),
(97, 'time_end', NULL, '14:00:00'),
(97, 'due_date', NULL, '2015-09-30'),
(97, 'eventstatus', NULL, 'Planned'),
(97, 'createdtime', NULL, '2015-09-23 13:09:46'),
(97, 'activitytype', NULL, 'Call'),
(97, 'visibility', NULL, 'Private'),
(97, 'duration_hours', NULL, '168'),
(97, 'duration_minutes', NULL, '51'),
(97, 'modifiedby', NULL, '1'),
(97, 'created_user_id', NULL, '1'),
(97, 'record_id', NULL, '62'),
(97, 'record_module', NULL, 'Events'),
(98, 'commentcontent', NULL, 'test'),
(98, 'assigned_user_id', NULL, '1'),
(98, 'createdtime', NULL, '2015-09-23 13:20:19'),
(98, 'related_to', NULL, '49'),
(98, 'creator', NULL, '1'),
(98, 'userid', NULL, '1'),
(98, 'created_user_id', NULL, '1'),
(98, 'record_id', NULL, '63'),
(98, 'record_module', NULL, 'ModComments'),
(99, 'commentcontent', NULL, 'test'),
(99, 'assigned_user_id', NULL, '1'),
(99, 'createdtime', NULL, '2015-09-23 13:20:20'),
(99, 'related_to', NULL, '36'),
(99, 'creator', NULL, '1'),
(99, 'userid', NULL, '1'),
(99, 'created_user_id', NULL, '1'),
(99, 'record_id', NULL, '64'),
(99, 'record_module', NULL, 'ModComments'),
(100, 'commentcontent', NULL, 'test'),
(100, 'assigned_user_id', NULL, '1'),
(100, 'createdtime', NULL, '2015-09-23 13:20:20'),
(100, 'related_to', NULL, '23'),
(100, 'creator', NULL, '1'),
(100, 'userid', NULL, '1'),
(100, 'created_user_id', NULL, '1'),
(100, 'record_id', NULL, '65'),
(100, 'record_module', NULL, 'ModComments'),
(101, 'subject', NULL, 'test'),
(101, 'assigned_user_id', NULL, '1'),
(101, 'date_start', NULL, '2015-09-24'),
(101, 'time_start', NULL, '13:33:00'),
(101, 'time_end', NULL, '14:03:00'),
(101, 'due_date', NULL, '2015-09-24'),
(101, 'parent_id', NULL, '29'),
(101, 'eventstatus', NULL, 'Planned'),
(101, 'createdtime', NULL, '2015-09-24 13:34:00'),
(101, 'activitytype', NULL, 'Call'),
(101, 'visibility', NULL, 'Private'),
(101, 'duration_minutes', NULL, '30'),
(101, 'modifiedby', NULL, '1'),
(101, 'created_user_id', NULL, '1'),
(101, 'record_id', NULL, '66'),
(101, 'record_module', NULL, 'Events'),
(103, 'firstname', NULL, 'test'),
(103, 'lead_no', NULL, 'LEA10'),
(103, 'lastname', NULL, ',,,'),
(103, 'annualrevenue', NULL, '0.00000000'),
(103, 'assigned_user_id', NULL, '1'),
(103, 'createdtime', NULL, '2015-09-24 13:37:15'),
(103, 'modifiedby', NULL, '1'),
(103, 'created_user_id', NULL, '1'),
(103, 'record_id', NULL, '67'),
(103, 'record_module', NULL, 'Leads'),
(104, 'contact_id', '0', '36'),
(105, 'time_end', '14:00:00', '13:45:00'),
(106, 'commentcontent', NULL, 'test'),
(106, 'assigned_user_id', NULL, '1'),
(106, 'createdtime', NULL, '2015-09-30 10:15:32'),
(106, 'related_to', NULL, '67'),
(106, 'creator', NULL, '1'),
(106, 'userid', NULL, '1'),
(106, 'created_user_id', NULL, '1'),
(106, 'record_id', NULL, '68'),
(106, 'record_module', NULL, 'ModComments'),
(108, 'productname', NULL, 'sssss'),
(108, 'product_no', NULL, 'PRO2'),
(108, 'discontinued', NULL, '1'),
(108, 'createdtime', NULL, '2015-09-30 12:23:17'),
(108, 'modifiedby', NULL, '1'),
(108, 'unit_price', NULL, '100.00000000'),
(108, 'commissionrate', NULL, '3.000'),
(108, 'usageunit', NULL, 'Pieces'),
(108, 'qty_per_unit', NULL, '100.00'),
(108, 'qtyinstock', NULL, '100.000'),
(108, 'assigned_user_id', NULL, '1'),
(108, 'imagename', NULL, 'converting.jpg'),
(108, 'record_id', NULL, '69'),
(108, 'record_module', NULL, 'Products'),
(109, 'firstname', 'test', 'test123'),
(110, 'accountname', 'awsedh44', 'sadfsfdawsedh44'),
(111, 'leadsource', 'Cold Call', 'Self Generated'),
(112, 'leadsource', 'Self Generated', 'Existing Customer'),
(113, 'leadsource', 'Existing Customer', 'Partner'),
(114, 'leadsource', 'Partner', 'Conference'),
(115, 'campaignname', NULL, 'test'),
(115, 'campaign_no', NULL, 'CAM2'),
(115, 'product_id', NULL, '38'),
(115, 'closingdate', NULL, '2015-10-28'),
(115, 'assigned_user_id', NULL, '1'),
(115, 'createdtime', NULL, '2015-10-07 11:16:13'),
(115, 'modifiedby', NULL, '1'),
(115, 'expectedrevenue', NULL, '0.00000000'),
(115, 'budgetcost', NULL, '0.00000000'),
(115, 'actualcost', NULL, '0.00000000'),
(115, 'expectedroi', NULL, '0.00000000'),
(115, 'actualroi', NULL, '0.00000000'),
(115, 'record_id', NULL, '72'),
(115, 'record_module', NULL, 'Campaigns'),
(116, 'leadsource', '', 'Direct Mail'),
(117, 'accountname', 'sadfsfdawsedh44', 'sdas'),
(118, 'accountname', 'sdas', 'FDSFGDsdas'),
(119, 'firstname', 'nome', 'nomevdsgg'),
(120, 'salutationtype', NULL, 'Mrs.'),
(120, 'firstname', NULL, 'Test'),
(120, 'lead_no', NULL, 'LEA11'),
(120, 'phone', NULL, '3285499846'),
(120, 'lastname', NULL, 'Test'),
(120, 'company', NULL, 'Greenity SRL'),
(120, 'email', NULL, 'simonetravaglini@gmail.com'),
(120, 'annualrevenue', NULL, '0.00000000'),
(120, 'assigned_user_id', NULL, '1'),
(120, 'createdtime', NULL, '2015-10-07 13:34:01'),
(120, 'modifiedby', NULL, '1'),
(120, 'created_user_id', NULL, '1'),
(120, 'record_id', NULL, '73'),
(120, 'record_module', NULL, 'Leads'),
(121, 'commentcontent', NULL, 'Test'),
(121, 'assigned_user_id', NULL, '1'),
(121, 'createdtime', NULL, '2015-10-07 13:35:26'),
(121, 'related_to', NULL, '73'),
(121, 'creator', NULL, '1'),
(121, 'userid', NULL, '1'),
(121, 'created_user_id', NULL, '1'),
(121, 'record_id', NULL, '74'),
(121, 'record_module', NULL, 'ModComments'),
(122, 'mobile', '', '3333'),
(123, 'leadstatus', 'Cold', 'Lost Lead'),
(124, 'firstname', 'test', 'testa'),
(125, 'shipping', '', 'Rt'),
(125, 'hdnDiscountPercent', '', '0.000'),
(125, 'hdnDiscountAmount', '', '0.00000000'),
(126, 'hdnSubTotal', '100.00000000', '200.00000000'),
(126, 'hdnGrandTotal', '127.00000000', '254.00000000'),
(126, 'hdnDiscountAmount', '0.00000000', ''),
(126, 'pre_tax_total', '100.00000000', '200.00000000'),
(126, 'tax4', '', '0.000'),
(127, 'productcategory', '', 'CRM Applications'),
(128, 'productcategory', 'CRM Applications', 'Software'),
(129, 'leadstatus', '', 'Not Contacted'),
(130, 'industry', '', 'Telecommunications'),
(131, 'leadsource', '', 'Public Relations'),
(132, 'industry', 'Telecommunications', 'Finance'),
(133, 'industry', 'Finance', 'Entertainment'),
(134, 'industry', 'Entertainment', 'Education'),
(135, 'industry', 'Education', 'Banking'),
(136, 'leadstatus', 'Not Contacted', 'Qualified'),
(137, 'leadstatus', 'Qualified', 'Cold'),
(138, 'accountname', NULL, 'prova descrizione lunga'),
(138, 'account_no', NULL, 'ACC2'),
(138, 'annual_revenue', NULL, '0.00000000'),
(138, 'assigned_user_id', NULL, '1'),
(138, 'createdtime', NULL, '2015-10-14 13:17:40'),
(138, 'modifiedby', NULL, '1'),
(138, 'description', NULL, 'Ciao, bello! questa &egrave; una descrizione lunga.\nCiao, bello! questa &egrave; una descrizione lunga lunga.\nCiao, bello! questa &egrave; una descrizione lunga lunga lunga\nCiao, bello! questa &egrave; una descrizione lunga lunga lunga lunga\nCiao, bello! questa &egrave; una descrizione lunga lunga lunga lunga lunga'),
(138, 'created_user_id', NULL, '1'),
(138, 'record_id', NULL, '75'),
(138, 'record_module', NULL, 'Accounts'),
(139, 'industry', '', 'Banking'),
(140, 'productcategory', 'Software', 'Hardware'),
(141, 'productcategory', 'Hardware', 'CRM Applications'),
(142, 'productcategory', 'CRM Applications', 'Hardware'),
(143, 'city', '', 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_relations`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_relations` (
  `id` int(19) NOT NULL,
  `targetmodule` varchar(100) NOT NULL,
  `targetid` int(19) NOT NULL,
  `changedon` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_relations`
--

INSERT INTO `vtiger_modtracker_relations` (`id`, `targetmodule`, `targetid`, `changedon`) VALUES
(8, 'Leads', 7, '2015-03-22 01:15:02'),
(34, 'Documents', 19, '2015-04-06 19:50:20'),
(37, 'Potentials', 21, '2015-04-10 13:08:40'),
(39, 'Potentials', 22, '2015-04-10 13:09:13'),
(61, 'HelpDesk', 37, '2015-04-14 12:43:40'),
(102, 'Calendar', 66, '2015-09-24 13:34:01'),
(107, 'Products', 38, '2015-09-30 10:19:17');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_modtracker_tabs`
--

CREATE TABLE IF NOT EXISTS `vtiger_modtracker_tabs` (
  `tabid` int(11) NOT NULL,
  `visible` int(11) DEFAULT '0',
  PRIMARY KEY (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_modtracker_tabs`
--

INSERT INTO `vtiger_modtracker_tabs` (`tabid`, `visible`) VALUES
(2, 1),
(4, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(26, 1),
(28, 1),
(34, 1),
(35, 1),
(36, 1),
(38, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(47, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_module_dashboard_widgets`
--

CREATE TABLE IF NOT EXISTS `vtiger_module_dashboard_widgets` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `linkid` int(19) DEFAULT NULL,
  `userid` int(19) DEFAULT NULL,
  `filterid` int(19) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `data` text,
  `position` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;

--
-- Dumping data for table `vtiger_module_dashboard_widgets`
--

INSERT INTO `vtiger_module_dashboard_widgets` (`id`, `linkid`, `userid`, `filterid`, `title`, `data`, `position`) VALUES
(42, 43, 1, NULL, NULL, 'null', '{"row":"1","col":"1"}'),
(45, 100, 1, NULL, NULL, 'null', '{"row":"3","col":"1"}'),
(47, 63, 1, NULL, NULL, 'null', '{"row":"5","col":"1"}'),
(48, 58, 1, NULL, NULL, 'null', '{"row":"2","col":"5"}'),
(49, 67, 1, NULL, NULL, 'null', '{"row":"4","col":"1"}'),
(50, 57, 1, NULL, NULL, 'null', '{"row":"6","col":"1"}'),
(51, 62, 1, NULL, NULL, 'null', '{"row":"2","col":"1"}'),
(52, 60, 1, NULL, NULL, 'null', '{"row":"1","col":"1"}'),
(53, 64, 1, NULL, NULL, 'null', '{"row":"4","col":"5"}'),
(54, 66, 1, NULL, NULL, 'null', '{"row":"3","col":"5"}'),
(55, 69, 1, NULL, NULL, 'null', '{"row":"9","col":"1"}'),
(56, 102, 1, NULL, NULL, 'null', '{"row":"5","col":"5"}'),
(57, 65, 1, NULL, NULL, 'null', '{"row":"10","col":"1"}'),
(58, 104, 1, NULL, NULL, 'null', '{"row":"5","col":"5"}'),
(59, 68, 1, NULL, NULL, 'null', '{"row":"11","col":"1"}'),
(60, 61, 1, NULL, NULL, 'null', '{"row":"6","col":"5"}'),
(61, 59, 1, NULL, NULL, 'null', '{"row":"8","col":"5"}'),
(62, 105, 1, 0, 'test', '{"contents":"","lastSavedOn":"2015-03-20 15:03:23"}', '{"row":"7","col":"5"}'),
(63, 44, 1, NULL, NULL, 'null', '{"row":"1","col":"5"}'),
(64, 45, 1, NULL, NULL, 'null', '{"row":"1","col":"10"}'),
(65, 101, 1, 7, NULL, '{"module":"Contacts","fields":["firstname","lastname"]}', '{"row":"8","col":"1"}');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notebook_contents`
--

CREATE TABLE IF NOT EXISTS `vtiger_notebook_contents` (
  `userid` int(19) NOT NULL,
  `notebookid` int(19) NOT NULL,
  `contents` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notes`
--

CREATE TABLE IF NOT EXISTS `vtiger_notes` (
  `notesid` int(19) NOT NULL DEFAULT '0',
  `note_no` varchar(100) NOT NULL,
  `title` varchar(50) NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `notecontent` text,
  `folderid` int(19) NOT NULL DEFAULT '1',
  `filetype` varchar(50) DEFAULT NULL,
  `filelocationtype` varchar(5) DEFAULT NULL,
  `filedownloadcount` int(19) DEFAULT NULL,
  `filestatus` int(19) DEFAULT NULL,
  `filesize` int(19) NOT NULL DEFAULT '0',
  `fileversion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`notesid`),
  KEY `notes_title_idx` (`title`),
  KEY `notes_notesid_idx` (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_notes`
--

INSERT INTO `vtiger_notes` (`notesid`, `note_no`, `title`, `filename`, `notecontent`, `folderid`, `filetype`, `filelocationtype`, `filedownloadcount`, `filestatus`, `filesize`, `fileversion`) VALUES
(19, 'DOC1', '123', '', '', 1, '', 'I', NULL, 1, 0, ''),
(56, 'DOC2', 'prova', 'prova.txt', ' ', 1, 'text/plain', 'I', 1, 1, 4, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notescf`
--

CREATE TABLE IF NOT EXISTS `vtiger_notescf` (
  `notesid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`notesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_notescf`
--

INSERT INTO `vtiger_notescf` (`notesid`) VALUES
(19),
(56);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler`
--

CREATE TABLE IF NOT EXISTS `vtiger_notificationscheduler` (
  `schedulednotificationid` int(19) NOT NULL AUTO_INCREMENT,
  `schedulednotificationname` varchar(200) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `notificationsubject` varchar(200) DEFAULT NULL,
  `notificationbody` text,
  `label` varchar(50) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`schedulednotificationid`),
  UNIQUE KEY `notificationscheduler_schedulednotificationname_idx` (`schedulednotificationname`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vtiger_notificationscheduler`
--

INSERT INTO `vtiger_notificationscheduler` (`schedulednotificationid`, `schedulednotificationname`, `active`, `notificationsubject`, `notificationbody`, `label`, `type`) VALUES
(1, 'LBL_TASK_NOTIFICATION_DESCRITPION', 1, 'Task Delay Notification', 'Tasks delayed beyond 24 hrs ', 'LBL_TASK_NOTIFICATION', NULL),
(2, 'LBL_BIG_DEAL_DESCRIPTION', 1, 'Big Deal notification', 'Success! A big deal has been won! ', 'LBL_BIG_DEAL', NULL),
(3, 'LBL_TICKETS_DESCRIPTION', 1, 'Pending Tickets notification', 'Ticket pending please ', 'LBL_PENDING_TICKETS', NULL),
(4, 'LBL_MANY_TICKETS_DESCRIPTION', 1, 'Too many tickets Notification', 'Too many tickets pending against this entity ', 'LBL_MANY_TICKETS', NULL),
(5, 'LBL_START_DESCRIPTION', 1, 'Support Start Notification', '10', 'LBL_START_NOTIFICATION', 'select'),
(6, 'LBL_SUPPORT_DESCRIPTION', 1, 'Support ending please', '11', 'LBL_SUPPORT_NOTICIATION', 'select'),
(7, 'LBL_SUPPORT_DESCRIPTION_MONTH', 1, 'Support ending please', '12', 'LBL_SUPPORT_NOTICIATION_MONTH', 'select'),
(8, 'LBL_ACTIVITY_REMINDER_DESCRIPTION', 1, 'Activity Reminder Notification', 'This is a reminder notification for the Activity', 'LBL_ACTIVITY_NOTIFICATION', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_notificationscheduler_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_notificationscheduler_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_notificationscheduler_seq`
--

INSERT INTO `vtiger_notificationscheduler_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals`
--

CREATE TABLE IF NOT EXISTS `vtiger_no_of_currency_decimals` (
  `no_of_currency_decimalsid` int(11) NOT NULL AUTO_INCREMENT,
  `no_of_currency_decimals` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`no_of_currency_decimalsid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_no_of_currency_decimals`
--

INSERT INTO `vtiger_no_of_currency_decimals` (`no_of_currency_decimalsid`, `no_of_currency_decimals`, `sortorderid`, `presence`) VALUES
(2, '2', 2, 1),
(3, '3', 3, 1),
(4, '4', 4, 1),
(5, '5', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_no_of_currency_decimals_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_no_of_currency_decimals_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_no_of_currency_decimals_seq`
--

INSERT INTO `vtiger_no_of_currency_decimals_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunitystage`
--

CREATE TABLE IF NOT EXISTS `vtiger_opportunitystage` (
  `potstageid` int(19) NOT NULL AUTO_INCREMENT,
  `stage` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  `probability` decimal(3,2) DEFAULT '0.00',
  PRIMARY KEY (`potstageid`),
  UNIQUE KEY `opportunitystage_stage_idx` (`stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type`
--

CREATE TABLE IF NOT EXISTS `vtiger_opportunity_type` (
  `opptypeid` int(19) NOT NULL AUTO_INCREMENT,
  `opportunity_type` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`opptypeid`),
  UNIQUE KEY `opportunity_type_opportunity_type_idx` (`opportunity_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_opportunity_type`
--

INSERT INTO `vtiger_opportunity_type` (`opptypeid`, `opportunity_type`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Existing Business', 1, 128, 1),
(3, 'New Business', 1, 129, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_opportunity_type_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_opportunity_type_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_opportunity_type_seq`
--

INSERT INTO `vtiger_opportunity_type_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_organizationdetails` (
  `organization_id` int(11) NOT NULL,
  `organizationname` varchar(60) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `fax` varchar(30) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `logoname` varchar(50) DEFAULT NULL,
  `logo` text,
  `vatid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`organization_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_organizationdetails`
--

INSERT INTO `vtiger_organizationdetails` (`organization_id`, `organizationname`, `address`, `city`, `state`, `country`, `code`, `phone`, `fax`, `website`, `logoname`, `logo`, `vatid`) VALUES
(1, 'vtiger', '95, 12th Main Road, 3rd Block, Rajajinagar', 'Bangalore', 'Karnataka', 'India', '560010', '+91 9243602352', '+91 9243602352', 'www.vtiger.com', 'vtiger-crm-logo.png', NULL, '1234-5678-9012');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_organizationdetails_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_organizationdetails_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_organizationdetails_seq`
--

INSERT INTO `vtiger_organizationdetails_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action2tab`
--

CREATE TABLE IF NOT EXISTS `vtiger_org_share_action2tab` (
  `share_action_id` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  PRIMARY KEY (`share_action_id`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_org_share_action2tab`
--

INSERT INTO `vtiger_org_share_action2tab` (`share_action_id`, `tabid`) VALUES
(0, 2),
(0, 4),
(0, 6),
(0, 7),
(0, 8),
(0, 9),
(0, 10),
(0, 13),
(0, 14),
(0, 16),
(0, 18),
(0, 20),
(0, 21),
(0, 22),
(0, 23),
(0, 26),
(0, 34),
(0, 35),
(0, 36),
(0, 38),
(0, 42),
(0, 43),
(0, 44),
(0, 45),
(0, 47),
(1, 2),
(1, 4),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 13),
(1, 14),
(1, 16),
(1, 18),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 26),
(1, 34),
(1, 35),
(1, 36),
(1, 38),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 47),
(2, 2),
(2, 4),
(2, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(2, 13),
(2, 14),
(2, 16),
(2, 18),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 26),
(2, 34),
(2, 35),
(2, 36),
(2, 38),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 47),
(3, 2),
(3, 4),
(3, 6),
(3, 7),
(3, 8),
(3, 9),
(3, 10),
(3, 13),
(3, 14),
(3, 16),
(3, 18),
(3, 20),
(3, 21),
(3, 22),
(3, 23),
(3, 26),
(3, 34),
(3, 35),
(3, 36),
(3, 38),
(3, 42),
(3, 43),
(3, 44),
(3, 45),
(3, 47);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_org_share_action_mapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_org_share_action_mapping` (
  `share_action_id` int(19) NOT NULL,
  `share_action_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`share_action_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_org_share_action_mapping`
--

INSERT INTO `vtiger_org_share_action_mapping` (`share_action_id`, `share_action_name`) VALUES
(0, 'Public: Read Only'),
(1, 'Public: Read, Create/Edit'),
(2, 'Public: Read, Create/Edit, Delete'),
(3, 'Private'),
(4, 'Hide Details'),
(5, 'Hide Details and Add Events'),
(6, 'Show Details'),
(7, 'Show Details and Add Events');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration`
--

CREATE TABLE IF NOT EXISTS `vtiger_othereventduration` (
  `othereventdurationid` int(11) NOT NULL AUTO_INCREMENT,
  `othereventduration` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`othereventdurationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_othereventduration`
--

INSERT INTO `vtiger_othereventduration` (`othereventdurationid`, `othereventduration`, `sortorderid`, `presence`) VALUES
(1, '5', 1, 1),
(2, '10', 2, 1),
(3, '30', 3, 1),
(4, '60', 4, 1),
(5, '120', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_othereventduration_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_othereventduration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_othereventduration_seq`
--

INSERT INTO `vtiger_othereventduration_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttab`
--

CREATE TABLE IF NOT EXISTS `vtiger_parenttab` (
  `parenttabid` int(19) NOT NULL,
  `parenttab_label` varchar(100) NOT NULL,
  `sequence` int(10) NOT NULL,
  `visible` int(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`parenttabid`),
  KEY `parenttab_parenttabid_parenttabl_label_visible_idx` (`parenttabid`,`parenttab_label`,`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_parenttab`
--

INSERT INTO `vtiger_parenttab` (`parenttabid`, `parenttab_label`, `sequence`, `visible`) VALUES
(1, 'My Home Page', 1, 0),
(2, 'Marketing', 2, 0),
(3, 'Sales', 3, 0),
(4, 'Support', 4, 0),
(5, 'Analytics', 5, 0),
(6, 'Inventory', 6, 0),
(7, 'Tools', 7, 0),
(8, 'Settings', 8, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_parenttabrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_parenttabrel` (
  `parenttabid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sequence` int(3) NOT NULL,
  KEY `parenttabrel_tabid_parenttabid_idx` (`tabid`,`parenttabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_parenttabrel`
--

INSERT INTO `vtiger_parenttabrel` (`parenttabid`, `tabid`, `sequence`) VALUES
(1, 9, 2),
(1, 28, 4),
(1, 3, 1),
(3, 7, 1),
(3, 6, 2),
(3, 4, 3),
(3, 2, 4),
(3, 20, 5),
(3, 22, 6),
(3, 23, 7),
(3, 19, 8),
(3, 8, 9),
(4, 13, 1),
(4, 15, 2),
(4, 6, 3),
(4, 4, 4),
(4, 8, 5),
(5, 1, 2),
(5, 25, 1),
(6, 14, 1),
(6, 18, 2),
(6, 19, 3),
(6, 21, 4),
(6, 22, 5),
(6, 20, 6),
(6, 23, 7),
(7, 24, 1),
(7, 27, 2),
(7, 8, 3),
(2, 26, 1),
(2, 6, 2),
(2, 4, 3),
(2, 28, 4),
(4, 28, 7),
(2, 7, 5),
(2, 9, 6),
(4, 9, 8),
(2, 8, 8),
(3, 9, 11),
(7, 31, 4),
(7, 31, 5),
(7, 34, 6),
(7, 34, 7),
(4, 35, 9),
(4, 35, 10),
(6, 36, 8),
(6, 36, 9),
(6, 38, 10),
(6, 38, 11),
(7, 40, 8),
(7, 40, 9),
(7, 42, 10),
(7, 42, 11),
(4, 43, 11),
(4, 43, 12),
(4, 44, 13),
(4, 44, 14),
(4, 45, 15),
(4, 45, 16),
(7, 46, 12),
(7, 46, 13),
(7, 47, 14),
(7, 47, 15),
(8, 49, 1),
(8, 49, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration`
--

CREATE TABLE IF NOT EXISTS `vtiger_payment_duration` (
  `payment_duration_id` int(11) DEFAULT NULL,
  `payment_duration` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_payment_duration`
--

INSERT INTO `vtiger_payment_duration` (`payment_duration_id`, `payment_duration`, `sortorderid`, `presence`) VALUES
(1, 'Net 30 days', 0, 1),
(2, 'Net 45 days', 1, 1),
(3, 'Net 60 days', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_payment_duration_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_payment_duration_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_payment_duration_seq`
--

INSERT INTO `vtiger_payment_duration_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager` (
  `pbxmanagerid` int(20) NOT NULL AUTO_INCREMENT,
  `direction` varchar(10) DEFAULT NULL,
  `callstatus` varchar(20) DEFAULT NULL,
  `starttime` datetime DEFAULT NULL,
  `endtime` datetime DEFAULT NULL,
  `totalduration` int(11) DEFAULT NULL,
  `billduration` int(11) DEFAULT NULL,
  `recordingurl` varchar(200) DEFAULT NULL,
  `sourceuuid` varchar(100) DEFAULT NULL,
  `gateway` varchar(20) DEFAULT NULL,
  `customer` varchar(100) DEFAULT NULL,
  `user` varchar(100) DEFAULT NULL,
  `customernumber` varchar(100) DEFAULT NULL,
  `customertype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pbxmanagerid`),
  KEY `index_sourceuuid` (`sourceuuid`),
  KEY `index_pbxmanager_id` (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanagercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanagercf` (
  `pbxmanagerid` int(11) NOT NULL,
  PRIMARY KEY (`pbxmanagerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_gateway`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager_gateway` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway` varchar(20) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pbxmanager_phonelookup`
--

CREATE TABLE IF NOT EXISTS `vtiger_pbxmanager_phonelookup` (
  `crmid` int(20) DEFAULT NULL,
  `setype` varchar(30) DEFAULT NULL,
  `fnumber` varchar(100) DEFAULT NULL,
  `rnumber` varchar(100) DEFAULT NULL,
  `fieldname` varchar(50) DEFAULT NULL,
  UNIQUE KEY `unique_key` (`crmid`,`setype`,`fieldname`),
  KEY `index_phone_number` (`fnumber`,`rnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_pbxmanager_phonelookup`
--

INSERT INTO `vtiger_pbxmanager_phonelookup` (`crmid`, `setype`, `fnumber`, `rnumber`, `fieldname`) VALUES
(5, 'Leads', '3333436345754', '4575436343333', 'fax'),
(5, 'Leads', '5555555555', '5555555555', 'phone'),
(5, 'Leads', '66666', '66666', 'mobile'),
(24, 'Leads', '5555555555', '5555555555', 'phone'),
(24, 'Leads', '66666', '66666', 'mobile'),
(24, 'Leads', '3333436345754', '4575436343333', 'fax'),
(25, 'Leads', '5555555555', '5555555555', 'phone'),
(25, 'Leads', '66666', '66666', 'mobile'),
(25, 'Leads', '3333436345754', '4575436343333', 'fax'),
(26, 'Leads', '5555555555', '5555555555', 'phone'),
(26, 'Leads', '66666', '66666', 'mobile'),
(26, 'Leads', '3333436345754', '4575436343333', 'fax'),
(27, 'Leads', '5555555555', '5555555555', 'phone'),
(27, 'Leads', '66666', '66666', 'mobile'),
(27, 'Leads', '3333436345754', '4575436343333', 'fax'),
(28, 'Leads', '5555555555', '5555555555', 'phone'),
(28, 'Leads', '66666', '66666', 'mobile'),
(28, 'Leads', '3333436345754', '4575436343333', 'fax'),
(29, 'Leads', '5555555555', '5555555555', 'phone'),
(29, 'Leads', '66666', '66666', 'mobile'),
(29, 'Leads', '3333436345754', '4575436343333', 'fax'),
(30, 'Leads', '5555555555', '5555555555', 'phone'),
(30, 'Leads', '66666', '66666', 'mobile'),
(30, 'Leads', '3333436345754', '4575436343333', 'fax'),
(2, 'Accounts', '0443367488', '8847633440', 'phone'),
(49, 'Contacts', 'test', 'tset', 'phone'),
(49, 'Contacts', 'test', 'tset', 'mobile'),
(49, 'Contacts', 'test', 'tset', 'otherphone'),
(49, 'Contacts', 'test', 'tset', 'fax'),
(73, 'Leads', '3285499846', '6489945823', 'phone'),
(73, 'Leads', '3333', '3333', 'mobile');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklist` (
  `picklistid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`picklistid`),
  UNIQUE KEY `picklist_name_idx` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `vtiger_picklist`
--

INSERT INTO `vtiger_picklist` (`picklistid`, `name`) VALUES
(1, 'accounttype'),
(2, 'activitytype'),
(37, 'assetstatus'),
(3, 'campaignstatus'),
(4, 'campaigntype'),
(5, 'carrier'),
(33, 'contract_priority'),
(32, 'contract_status'),
(34, 'contract_type'),
(50, 'defaultactivitytype'),
(49, 'defaulteventstatus'),
(6, 'eventstatus'),
(7, 'expectedresponse'),
(8, 'faqcategories'),
(9, 'faqstatus'),
(10, 'glacct'),
(47, 'hour_format'),
(11, 'industry'),
(12, 'invoicestatus'),
(13, 'leadsource'),
(14, 'leadstatus'),
(15, 'manufacturer'),
(16, 'opportunity_type'),
(17, 'postatus'),
(18, 'productcategory'),
(45, 'progress'),
(38, 'projectmilestonetype'),
(44, 'projectpriority'),
(42, 'projectstatus'),
(40, 'projecttaskpriority'),
(41, 'projecttaskprogress'),
(46, 'projecttaskstatus'),
(39, 'projecttasktype'),
(43, 'projecttype'),
(19, 'quotestage'),
(20, 'rating'),
(21, 'sales_stage'),
(22, 'salutationtype'),
(36, 'servicecategory'),
(35, 'service_usageunit'),
(23, 'sostatus'),
(48, 'start_hour'),
(24, 'taskpriority'),
(25, 'taskstatus'),
(26, 'ticketcategories'),
(27, 'ticketpriorities'),
(28, 'ticketseverities'),
(29, 'ticketstatus'),
(31, 'tracking_unit'),
(30, 'usageunit');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklistvalues_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklistvalues_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_picklistvalues_seq`
--

INSERT INTO `vtiger_picklistvalues_seq` (`id`) VALUES
(326);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_dependency`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklist_dependency` (
  `id` int(11) NOT NULL,
  `tabid` int(19) NOT NULL,
  `sourcefield` varchar(255) DEFAULT NULL,
  `targetfield` varchar(255) DEFAULT NULL,
  `sourcevalue` varchar(100) DEFAULT NULL,
  `targetvalues` text,
  `criteria` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_picklist_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_picklist_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_picklist_seq`
--

INSERT INTO `vtiger_picklist_seq` (`id`) VALUES
(50);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pobillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_pobillads` (
  `pobilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portal`
--

CREATE TABLE IF NOT EXISTS `vtiger_portal` (
  `portalid` int(19) NOT NULL,
  `portalname` varchar(200) NOT NULL,
  `portalurl` varchar(255) NOT NULL,
  `sequence` int(3) NOT NULL,
  `setdefault` int(3) NOT NULL DEFAULT '0',
  `createdtime` datetime DEFAULT NULL,
  PRIMARY KEY (`portalid`),
  KEY `portal_portalname_idx` (`portalname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_portal`
--

INSERT INTO `vtiger_portal` (`portalid`, `portalname`, `portalurl`, `sequence`, `setdefault`, `createdtime`) VALUES
(1, 'test', 'www.google.com', 0, 0, '2015-10-12 12:50:53');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portalinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_portalinfo` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_password` varchar(30) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `login_time` datetime DEFAULT NULL,
  `logout_time` datetime DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_portal_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_portal_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_portal_seq`
--

INSERT INTO `vtiger_portal_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_poshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_poshipads` (
  `poshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`poshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_postatus` (
  `postatusid` int(19) NOT NULL AUTO_INCREMENT,
  `postatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`postatusid`),
  UNIQUE KEY `postatus_postatus_idx` (`postatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_postatus`
--

INSERT INTO `vtiger_postatus` (`postatusid`, `postatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Created', 0, 130, 0),
(2, 'Approved', 0, 131, 1),
(3, 'Delivered', 0, 132, 2),
(4, 'Cancelled', 0, 133, 3),
(5, 'Received Shipment', 0, 134, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatushistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_postatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `purchaseorderid` int(19) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `postatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `postatushistory_purchaseorderid_idx` (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_postatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_postatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_postatus_seq`
--

INSERT INTO `vtiger_postatus_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potential`
--

CREATE TABLE IF NOT EXISTS `vtiger_potential` (
  `potentialid` int(19) NOT NULL DEFAULT '0',
  `potential_no` varchar(100) NOT NULL,
  `related_to` int(19) DEFAULT NULL,
  `potentialname` varchar(120) NOT NULL,
  `amount` decimal(25,8) DEFAULT NULL,
  `currency` varchar(20) DEFAULT NULL,
  `closingdate` date DEFAULT NULL,
  `typeofrevenue` varchar(50) DEFAULT NULL,
  `nextstep` varchar(100) DEFAULT NULL,
  `private` int(1) DEFAULT '0',
  `probability` decimal(7,3) DEFAULT '0.000',
  `campaignid` int(19) DEFAULT NULL,
  `sales_stage` varchar(200) DEFAULT NULL,
  `potentialtype` varchar(200) DEFAULT NULL,
  `leadsource` varchar(200) DEFAULT NULL,
  `productid` int(50) DEFAULT NULL,
  `productversion` varchar(50) DEFAULT NULL,
  `quotationref` varchar(50) DEFAULT NULL,
  `partnercontact` varchar(50) DEFAULT NULL,
  `remarks` varchar(50) DEFAULT NULL,
  `runtimefee` int(19) DEFAULT '0',
  `followupdate` date DEFAULT NULL,
  `evaluationstatus` varchar(50) DEFAULT NULL,
  `description` text,
  `forecastcategory` int(19) DEFAULT '0',
  `outcomeanalysis` int(19) DEFAULT '0',
  `forecast_amount` decimal(25,8) DEFAULT NULL,
  `isconvertedfromlead` varchar(3) DEFAULT '0',
  `contact_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`potentialid`),
  KEY `potential_relatedto_idx` (`related_to`),
  KEY `potentail_sales_stage_idx` (`sales_stage`),
  KEY `potentail_sales_stage_amount_idx` (`amount`,`sales_stage`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_potential`
--

INSERT INTO `vtiger_potential` (`potentialid`, `potential_no`, `related_to`, `potentialname`, `amount`, `currency`, `closingdate`, `typeofrevenue`, `nextstep`, `private`, `probability`, `campaignid`, `sales_stage`, `potentialtype`, `leadsource`, `productid`, `productversion`, `quotationref`, `partnercontact`, `remarks`, `runtimefee`, `followupdate`, `evaluationstatus`, `description`, `forecastcategory`, `outcomeanalysis`, `forecast_amount`, `isconvertedfromlead`, `contact_id`) VALUES
(3, 'POT1', 0, 'testing', '0.00000000', NULL, '2015-03-14', NULL, '', 0, '0.000', 0, 'Prospecting', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '0.00000000', '0', 0),
(21, 'POT2', 2, 'test', '1000.00000000', NULL, '2015-04-11', NULL, '', 0, '0.000', 0, 'Prospecting', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '0.00000000', '0', 0),
(22, 'POT3', 2, 'ritest', '0.00000000', NULL, '2015-04-11', NULL, '', 0, '0.000', 6, 'Prospecting', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '0.00000000', '0', 0),
(71, 'POT4', 2, 'Ciao', '12333.00000000', NULL, '2015-10-15', NULL, '', 0, '0.000', 0, 'Value Proposition', '', '', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, 0, '0.00000000', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potentialscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_potentialscf` (
  `potentialid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_potentialscf`
--

INSERT INTO `vtiger_potentialscf` (`potentialid`) VALUES
(3),
(21),
(22),
(71);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_potstagehistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_potstagehistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `potentialid` int(19) NOT NULL,
  `amount` decimal(10,0) DEFAULT NULL,
  `stage` varchar(100) DEFAULT NULL,
  `probability` decimal(7,3) DEFAULT NULL,
  `expectedrevenue` decimal(10,0) DEFAULT NULL,
  `closedate` date DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `potstagehistory_potentialid_idx` (`potentialid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebook`
--

CREATE TABLE IF NOT EXISTS `vtiger_pricebook` (
  `pricebookid` int(19) NOT NULL DEFAULT '0',
  `pricebook_no` varchar(100) NOT NULL,
  `bookname` varchar(100) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_pricebook`
--

INSERT INTO `vtiger_pricebook` (`pricebookid`, `pricebook_no`, `bookname`, `active`, `currency_id`) VALUES
(47, 'PB1', 'asas', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_pricebookcf` (
  `pricebookid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pricebookid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_pricebookcf`
--

INSERT INTO `vtiger_pricebookcf` (`pricebookid`) VALUES
(47);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_pricebookproductrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_pricebookproductrel` (
  `pricebookid` int(19) NOT NULL,
  `productid` int(19) NOT NULL,
  `listprice` decimal(27,8) DEFAULT NULL,
  `usedcurrency` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`pricebookid`,`productid`),
  KEY `pricebookproductrel_pricebookid_idx` (`pricebookid`),
  KEY `pricebookproductrel_productid_idx` (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_priority`
--

CREATE TABLE IF NOT EXISTS `vtiger_priority` (
  `priorityid` int(19) NOT NULL AUTO_INCREMENT,
  `priority` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`priorityid`),
  UNIQUE KEY `priority_priority_idx` (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcategory` (
  `productcategoryid` int(19) NOT NULL AUTO_INCREMENT,
  `productcategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`productcategoryid`),
  UNIQUE KEY `productcategory_productcategory_idx` (`productcategory`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_productcategory`
--

INSERT INTO `vtiger_productcategory` (`productcategoryid`, `productcategory`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Hardware', 1, 136, 1),
(3, 'Software', 1, 137, 2),
(4, 'CRM Applications', 1, 138, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcategory_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_productcategory_seq`
--

INSERT INTO `vtiger_productcategory_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcf` (
  `productid` int(19) NOT NULL DEFAULT '0',
  `cf_751` varchar(5) DEFAULT '',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_productcf`
--

INSERT INTO `vtiger_productcf` (`productid`, `cf_751`) VALUES
(38, ''),
(69, '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_productcurrencyrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_productcurrencyrel` (
  `productid` int(11) NOT NULL,
  `currencyid` int(11) NOT NULL,
  `converted_price` decimal(28,8) DEFAULT NULL,
  `actual_price` decimal(28,8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_productcurrencyrel`
--

INSERT INTO `vtiger_productcurrencyrel` (`productid`, `currencyid`, `converted_price`, `actual_price`) VALUES
(38, 1, '100.00000000', '100.00000000'),
(69, 1, '100.00000000', '100.00000000');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_products`
--

CREATE TABLE IF NOT EXISTS `vtiger_products` (
  `productid` int(11) NOT NULL,
  `product_no` varchar(100) NOT NULL,
  `productname` varchar(100) DEFAULT NULL,
  `productcode` varchar(40) DEFAULT NULL,
  `productcategory` varchar(200) DEFAULT NULL,
  `manufacturer` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT '0.00',
  `unit_price` decimal(25,8) DEFAULT NULL,
  `weight` decimal(11,3) DEFAULT NULL,
  `pack_size` int(11) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `cost_factor` int(11) DEFAULT NULL,
  `commissionrate` decimal(7,3) DEFAULT NULL,
  `commissionmethod` varchar(50) DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT '0',
  `usageunit` varchar(200) DEFAULT NULL,
  `reorderlevel` int(11) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `mfr_part_no` varchar(200) DEFAULT NULL,
  `vendor_part_no` varchar(200) DEFAULT NULL,
  `serialno` varchar(200) DEFAULT NULL,
  `qtyinstock` decimal(25,3) DEFAULT NULL,
  `productsheet` varchar(200) DEFAULT NULL,
  `qtyindemand` int(11) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `imagename` text,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_products`
--

INSERT INTO `vtiger_products` (`productid`, `product_no`, `productname`, `productcode`, `productcategory`, `manufacturer`, `qty_per_unit`, `unit_price`, `weight`, `pack_size`, `sales_start_date`, `sales_end_date`, `start_date`, `expiry_date`, `cost_factor`, `commissionrate`, `commissionmethod`, `discontinued`, `usageunit`, `reorderlevel`, `website`, `taxclass`, `mfr_part_no`, `vendor_part_no`, `serialno`, `qtyinstock`, `productsheet`, `qtyindemand`, `glacct`, `vendor_id`, `imagename`, `currency_id`) VALUES
(38, 'PRO1', 'product1', '', 'Hardware', '', '0.00', '100.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '0.000', NULL, 1, '', 0, '', '', '', '', '', '-1.000', '', 0, '', 0, '', 1),
(69, 'PRO2', 'sssss', '', '', '', '100.00', '100.00000000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '3.000', NULL, 1, 'Pieces', 0, '', '', '', '', '', '100.000', '', 0, '', 0, 'converting.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_producttaxrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_producttaxrel` (
  `productid` int(11) NOT NULL,
  `taxid` int(3) NOT NULL,
  `taxpercentage` decimal(7,3) DEFAULT NULL,
  KEY `producttaxrel_productid_idx` (`productid`),
  KEY `producttaxrel_taxid_idx` (`taxid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_producttaxrel`
--

INSERT INTO `vtiger_producttaxrel` (`productid`, `taxid`, `taxpercentage`) VALUES
(38, 1, '4.500'),
(38, 3, '12.500'),
(69, 1, '4.500'),
(69, 2, '10.000'),
(69, 3, '12.500');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile` (
  `profileid` int(10) NOT NULL AUTO_INCREMENT,
  `profilename` varchar(50) NOT NULL,
  `description` text,
  `directly_related_to_role` int(1) DEFAULT '0',
  PRIMARY KEY (`profileid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_profile`
--

INSERT INTO `vtiger_profile` (`profileid`, `profilename`, `description`, `directly_related_to_role`) VALUES
(1, 'Administrator', 'Admin Profile', 0),
(2, 'Sales Profile', 'Profile Related to Sales', 0),
(3, 'Support Profile', 'Profile Related to Support', 0),
(4, 'Guest Profile', 'Guest Profile for Test Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2field`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2field` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `fieldid` int(19) NOT NULL,
  `visible` int(19) DEFAULT NULL,
  `readonly` int(19) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`fieldid`),
  KEY `profile2field_profileid_tabid_fieldname_idx` (`profileid`,`tabid`),
  KEY `profile2field_tabid_profileid_idx` (`tabid`,`profileid`),
  KEY `profile2field_visible_profileid_idx` (`visible`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2field`
--

INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(1, 6, 1, 0, 0),
(1, 6, 2, 0, 0),
(1, 6, 3, 0, 0),
(1, 6, 4, 0, 0),
(1, 6, 5, 0, 0),
(1, 6, 6, 0, 0),
(1, 6, 7, 0, 0),
(1, 6, 8, 0, 0),
(1, 6, 9, 0, 0),
(1, 6, 10, 0, 0),
(1, 6, 11, 0, 0),
(1, 6, 12, 0, 0),
(1, 6, 13, 0, 0),
(1, 6, 14, 0, 0),
(1, 6, 15, 0, 0),
(1, 6, 16, 0, 0),
(1, 6, 17, 0, 0),
(1, 6, 18, 0, 0),
(1, 6, 19, 0, 0),
(1, 6, 20, 0, 0),
(1, 6, 21, 0, 0),
(1, 6, 22, 0, 0),
(1, 6, 23, 0, 0),
(1, 6, 24, 0, 0),
(1, 6, 25, 0, 0),
(1, 6, 26, 0, 0),
(1, 6, 27, 0, 0),
(1, 6, 28, 0, 0),
(1, 6, 29, 0, 0),
(1, 6, 30, 0, 0),
(1, 6, 31, 0, 0),
(1, 6, 32, 0, 0),
(1, 6, 33, 0, 0),
(1, 6, 34, 0, 0),
(1, 6, 35, 0, 0),
(1, 6, 36, 0, 0),
(1, 7, 37, 0, 0),
(1, 7, 38, 0, 0),
(1, 7, 39, 0, 0),
(1, 7, 40, 0, 0),
(1, 7, 41, 0, 0),
(1, 7, 42, 0, 0),
(1, 7, 43, 0, 0),
(1, 7, 44, 0, 0),
(1, 7, 45, 0, 0),
(1, 7, 46, 0, 0),
(1, 7, 47, 0, 0),
(1, 7, 48, 0, 0),
(1, 7, 49, 0, 0),
(1, 7, 50, 0, 0),
(1, 7, 51, 0, 0),
(1, 7, 52, 0, 0),
(1, 7, 53, 0, 0),
(1, 7, 54, 0, 0),
(1, 7, 55, 0, 0),
(1, 7, 56, 0, 0),
(1, 7, 57, 0, 0),
(1, 7, 58, 0, 0),
(1, 7, 59, 0, 0),
(1, 7, 60, 0, 0),
(1, 7, 61, 0, 0),
(1, 7, 62, 0, 0),
(1, 7, 63, 0, 0),
(1, 7, 64, 0, 0),
(1, 7, 65, 0, 0),
(1, 4, 66, 0, 0),
(1, 4, 67, 0, 0),
(1, 4, 68, 0, 0),
(1, 4, 69, 0, 0),
(1, 4, 70, 0, 0),
(1, 4, 71, 0, 0),
(1, 4, 72, 0, 0),
(1, 4, 73, 0, 0),
(1, 4, 74, 0, 0),
(1, 4, 75, 0, 0),
(1, 4, 76, 0, 0),
(1, 4, 77, 0, 0),
(1, 4, 78, 0, 0),
(1, 4, 79, 0, 0),
(1, 4, 80, 0, 0),
(1, 4, 81, 0, 0),
(1, 4, 82, 0, 0),
(1, 4, 83, 0, 0),
(1, 4, 84, 0, 0),
(1, 4, 85, 0, 0),
(1, 4, 86, 0, 0),
(1, 4, 87, 0, 0),
(1, 4, 88, 0, 0),
(1, 4, 89, 0, 0),
(1, 4, 90, 0, 0),
(1, 4, 91, 0, 0),
(1, 4, 92, 0, 0),
(1, 4, 93, 0, 0),
(1, 4, 94, 0, 0),
(1, 4, 95, 0, 0),
(1, 4, 96, 0, 0),
(1, 4, 97, 0, 0),
(1, 4, 98, 0, 0),
(1, 4, 99, 0, 0),
(1, 4, 100, 0, 0),
(1, 4, 101, 0, 0),
(1, 4, 102, 0, 0),
(1, 4, 103, 0, 0),
(1, 4, 104, 0, 0),
(1, 4, 105, 0, 0),
(1, 4, 106, 0, 0),
(1, 4, 107, 0, 0),
(1, 4, 108, 0, 0),
(1, 4, 109, 0, 0),
(1, 2, 110, 0, 0),
(1, 2, 111, 0, 0),
(1, 2, 112, 0, 0),
(1, 2, 113, 0, 0),
(1, 2, 114, 0, 0),
(1, 2, 115, 0, 0),
(1, 2, 116, 0, 0),
(1, 2, 117, 0, 0),
(1, 2, 118, 0, 0),
(1, 2, 119, 0, 0),
(1, 2, 120, 0, 0),
(1, 2, 121, 0, 0),
(1, 2, 122, 0, 0),
(1, 2, 123, 0, 0),
(1, 2, 124, 0, 0),
(1, 2, 125, 0, 0),
(1, 26, 126, 0, 0),
(1, 26, 127, 0, 0),
(1, 26, 128, 0, 0),
(1, 26, 129, 0, 0),
(1, 26, 130, 0, 0),
(1, 26, 131, 0, 0),
(1, 26, 132, 0, 0),
(1, 26, 133, 0, 0),
(1, 26, 134, 0, 0),
(1, 26, 135, 0, 0),
(1, 26, 136, 0, 0),
(1, 26, 137, 0, 0),
(1, 26, 138, 0, 0),
(1, 26, 139, 0, 0),
(1, 26, 140, 0, 0),
(1, 26, 141, 0, 0),
(1, 26, 142, 0, 0),
(1, 26, 143, 0, 0),
(1, 26, 144, 0, 0),
(1, 26, 145, 0, 0),
(1, 26, 146, 0, 0),
(1, 26, 147, 0, 0),
(1, 26, 148, 0, 0),
(1, 26, 149, 0, 0),
(1, 26, 150, 0, 0),
(1, 4, 151, 0, 0),
(1, 6, 152, 0, 0),
(1, 7, 153, 0, 0),
(1, 26, 154, 0, 0),
(1, 13, 155, 0, 0),
(1, 13, 156, 0, 0),
(1, 13, 157, 0, 0),
(1, 13, 158, 0, 0),
(1, 13, 159, 0, 0),
(1, 13, 160, 0, 0),
(1, 13, 161, 0, 0),
(1, 13, 162, 0, 0),
(1, 13, 163, 0, 0),
(1, 13, 164, 0, 0),
(1, 13, 165, 0, 0),
(1, 13, 166, 0, 0),
(1, 13, 167, 0, 0),
(1, 13, 168, 0, 0),
(1, 13, 169, 0, 0),
(1, 13, 170, 0, 0),
(1, 13, 171, 0, 0),
(1, 13, 172, 0, 0),
(1, 14, 173, 0, 0),
(1, 14, 174, 0, 0),
(1, 14, 175, 0, 0),
(1, 14, 176, 0, 0),
(1, 14, 177, 0, 0),
(1, 14, 178, 0, 0),
(1, 14, 179, 0, 0),
(1, 14, 180, 0, 0),
(1, 14, 181, 0, 0),
(1, 14, 182, 0, 0),
(1, 14, 183, 0, 0),
(1, 14, 184, 0, 0),
(1, 14, 185, 0, 0),
(1, 14, 186, 0, 0),
(1, 14, 187, 0, 0),
(1, 14, 188, 0, 0),
(1, 14, 189, 0, 0),
(1, 14, 190, 0, 0),
(1, 14, 191, 0, 0),
(1, 14, 192, 0, 0),
(1, 14, 193, 0, 0),
(1, 14, 194, 0, 0),
(1, 14, 195, 0, 0),
(1, 14, 196, 0, 0),
(1, 14, 197, 0, 0),
(1, 14, 198, 0, 0),
(1, 14, 199, 0, 0),
(1, 14, 200, 0, 0),
(1, 14, 201, 0, 0),
(1, 14, 202, 0, 0),
(1, 14, 203, 0, 0),
(1, 8, 204, 0, 0),
(1, 8, 205, 0, 0),
(1, 8, 206, 0, 0),
(1, 8, 207, 0, 0),
(1, 8, 208, 0, 0),
(1, 8, 209, 0, 0),
(1, 8, 210, 0, 0),
(1, 8, 211, 0, 0),
(1, 8, 212, 0, 0),
(1, 8, 213, 0, 0),
(1, 8, 214, 0, 0),
(1, 8, 215, 0, 0),
(1, 8, 216, 0, 0),
(1, 8, 217, 0, 0),
(1, 8, 218, 0, 0),
(1, 10, 219, 0, 0),
(1, 10, 220, 0, 0),
(1, 10, 221, 0, 0),
(1, 10, 222, 0, 0),
(1, 10, 223, 0, 0),
(1, 10, 224, 0, 0),
(1, 10, 225, 0, 0),
(1, 10, 226, 0, 0),
(1, 10, 227, 0, 0),
(1, 10, 228, 0, 0),
(1, 10, 229, 0, 0),
(1, 10, 230, 0, 0),
(1, 9, 231, 0, 0),
(1, 9, 232, 0, 0),
(1, 9, 233, 0, 0),
(1, 9, 234, 0, 0),
(1, 9, 235, 0, 0),
(1, 9, 236, 0, 0),
(1, 9, 237, 0, 0),
(1, 9, 238, 0, 0),
(1, 9, 239, 0, 0),
(1, 9, 240, 0, 0),
(1, 9, 241, 0, 0),
(1, 9, 242, 0, 0),
(1, 9, 243, 0, 0),
(1, 9, 244, 0, 0),
(1, 9, 245, 0, 0),
(1, 9, 246, 0, 0),
(1, 9, 247, 0, 0),
(1, 9, 248, 0, 0),
(1, 9, 249, 0, 0),
(1, 9, 250, 0, 0),
(1, 9, 251, 0, 0),
(1, 9, 252, 0, 0),
(1, 9, 253, 0, 0),
(1, 9, 254, 0, 0),
(1, 16, 255, 0, 0),
(1, 16, 256, 0, 0),
(1, 16, 257, 0, 0),
(1, 16, 258, 0, 0),
(1, 16, 259, 0, 0),
(1, 16, 260, 0, 0),
(1, 16, 261, 0, 0),
(1, 16, 262, 0, 0),
(1, 16, 263, 0, 0),
(1, 16, 264, 0, 0),
(1, 16, 265, 0, 0),
(1, 16, 266, 0, 0),
(1, 16, 267, 0, 0),
(1, 16, 268, 0, 0),
(1, 16, 269, 0, 0),
(1, 16, 270, 0, 0),
(1, 16, 271, 0, 0),
(1, 16, 272, 0, 0),
(1, 16, 273, 0, 0),
(1, 16, 274, 0, 0),
(1, 16, 275, 0, 0),
(1, 16, 276, 0, 0),
(1, 16, 277, 0, 0),
(1, 15, 278, 0, 0),
(1, 15, 279, 0, 0),
(1, 15, 280, 0, 0),
(1, 15, 281, 0, 0),
(1, 15, 282, 0, 0),
(1, 15, 283, 0, 0),
(1, 15, 284, 0, 0),
(1, 15, 285, 0, 0),
(1, 15, 286, 0, 0),
(1, 15, 287, 0, 0),
(1, 18, 288, 0, 0),
(1, 18, 289, 0, 0),
(1, 18, 290, 0, 0),
(1, 18, 291, 0, 0),
(1, 18, 292, 0, 0),
(1, 18, 293, 0, 0),
(1, 18, 294, 0, 0),
(1, 18, 295, 0, 0),
(1, 18, 296, 0, 0),
(1, 18, 297, 0, 0),
(1, 18, 298, 0, 0),
(1, 18, 299, 0, 0),
(1, 18, 300, 0, 0),
(1, 18, 301, 0, 0),
(1, 18, 302, 0, 0),
(1, 18, 303, 0, 0),
(1, 18, 304, 0, 0),
(1, 19, 305, 0, 0),
(1, 19, 306, 0, 0),
(1, 19, 307, 0, 0),
(1, 19, 308, 0, 0),
(1, 19, 309, 0, 0),
(1, 19, 310, 0, 0),
(1, 19, 311, 0, 0),
(1, 19, 312, 0, 0),
(1, 20, 313, 0, 0),
(1, 20, 314, 0, 0),
(1, 20, 315, 0, 0),
(1, 20, 316, 0, 0),
(1, 20, 317, 0, 0),
(1, 20, 318, 0, 0),
(1, 20, 319, 0, 0),
(1, 20, 320, 0, 0),
(1, 20, 321, 0, 0),
(1, 20, 322, 0, 0),
(1, 20, 323, 0, 0),
(1, 20, 324, 0, 0),
(1, 20, 325, 0, 0),
(1, 20, 326, 0, 0),
(1, 20, 327, 0, 0),
(1, 20, 328, 0, 0),
(1, 20, 329, 0, 0),
(1, 20, 330, 0, 0),
(1, 20, 331, 0, 0),
(1, 20, 332, 0, 0),
(1, 20, 333, 0, 0),
(1, 20, 334, 0, 0),
(1, 20, 335, 0, 0),
(1, 20, 336, 0, 0),
(1, 20, 337, 0, 0),
(1, 20, 338, 0, 0),
(1, 20, 339, 0, 0),
(1, 20, 340, 0, 0),
(1, 20, 341, 0, 0),
(1, 20, 342, 0, 0),
(1, 20, 343, 0, 0),
(1, 20, 344, 0, 0),
(1, 20, 345, 0, 0),
(1, 20, 346, 0, 0),
(1, 20, 347, 0, 0),
(1, 20, 348, 0, 0),
(1, 20, 349, 0, 0),
(1, 21, 350, 0, 0),
(1, 21, 351, 0, 0),
(1, 21, 352, 0, 0),
(1, 21, 353, 0, 0),
(1, 21, 354, 0, 0),
(1, 21, 355, 0, 0),
(1, 21, 356, 0, 0),
(1, 21, 357, 0, 0),
(1, 21, 358, 0, 0),
(1, 21, 359, 0, 0),
(1, 21, 360, 0, 0),
(1, 21, 361, 0, 0),
(1, 21, 362, 0, 0),
(1, 21, 363, 0, 0),
(1, 21, 364, 0, 0),
(1, 21, 365, 0, 0),
(1, 21, 366, 0, 0),
(1, 21, 367, 0, 0),
(1, 21, 368, 0, 0),
(1, 21, 369, 0, 0),
(1, 21, 370, 0, 0),
(1, 21, 371, 0, 0),
(1, 21, 372, 0, 0),
(1, 21, 373, 0, 0),
(1, 21, 374, 0, 0),
(1, 21, 375, 0, 0),
(1, 21, 376, 0, 0),
(1, 21, 377, 0, 0),
(1, 21, 378, 0, 0),
(1, 21, 379, 0, 0),
(1, 21, 380, 0, 0),
(1, 21, 381, 0, 0),
(1, 21, 382, 0, 0),
(1, 21, 383, 0, 0),
(1, 21, 384, 0, 0),
(1, 21, 385, 0, 0),
(1, 21, 386, 0, 0),
(1, 21, 387, 0, 0),
(1, 22, 388, 0, 0),
(1, 22, 389, 0, 0),
(1, 22, 390, 0, 0),
(1, 22, 391, 0, 0),
(1, 22, 392, 0, 0),
(1, 22, 393, 0, 0),
(1, 22, 394, 0, 0),
(1, 22, 395, 0, 0),
(1, 22, 396, 0, 0),
(1, 22, 397, 0, 0),
(1, 22, 398, 0, 0),
(1, 22, 399, 0, 0),
(1, 22, 400, 0, 0),
(1, 22, 401, 0, 0),
(1, 22, 402, 0, 0),
(1, 22, 403, 0, 0),
(1, 22, 404, 0, 0),
(1, 22, 405, 0, 0),
(1, 22, 406, 0, 0),
(1, 22, 407, 0, 0),
(1, 22, 408, 0, 0),
(1, 22, 409, 0, 0),
(1, 22, 410, 0, 0),
(1, 22, 411, 0, 0),
(1, 22, 412, 0, 0),
(1, 22, 413, 0, 0),
(1, 22, 414, 0, 0),
(1, 22, 415, 0, 0),
(1, 22, 416, 0, 0),
(1, 22, 417, 0, 0),
(1, 22, 418, 0, 0),
(1, 22, 419, 0, 0),
(1, 22, 420, 0, 0),
(1, 22, 421, 0, 0),
(1, 22, 422, 0, 0),
(1, 22, 423, 0, 0),
(1, 22, 424, 0, 0),
(1, 22, 425, 0, 0),
(1, 22, 426, 0, 0),
(1, 22, 427, 0, 0),
(1, 22, 428, 0, 0),
(1, 22, 429, 0, 0),
(1, 22, 430, 0, 0),
(1, 22, 431, 0, 0),
(1, 22, 432, 0, 0),
(1, 22, 433, 0, 0),
(1, 22, 434, 0, 0),
(1, 23, 435, 0, 0),
(1, 23, 436, 0, 0),
(1, 23, 437, 0, 0),
(1, 23, 438, 0, 0),
(1, 23, 439, 0, 0),
(1, 23, 440, 0, 0),
(1, 23, 441, 0, 0),
(1, 23, 442, 0, 0),
(1, 23, 443, 0, 0),
(1, 23, 444, 0, 0),
(1, 23, 445, 0, 0),
(1, 23, 446, 0, 0),
(1, 23, 447, 0, 0),
(1, 23, 448, 0, 0),
(1, 23, 449, 0, 0),
(1, 23, 450, 0, 0),
(1, 23, 451, 0, 0),
(1, 23, 452, 0, 0),
(1, 23, 453, 0, 0),
(1, 23, 454, 0, 0),
(1, 23, 455, 0, 0),
(1, 23, 456, 0, 0),
(1, 23, 457, 0, 0),
(1, 23, 458, 0, 0),
(1, 23, 459, 0, 0),
(1, 23, 460, 0, 0),
(1, 23, 461, 0, 0),
(1, 23, 462, 0, 0),
(1, 23, 463, 0, 0),
(1, 23, 464, 0, 0),
(1, 23, 465, 0, 0),
(1, 23, 466, 0, 0),
(1, 23, 467, 0, 0),
(1, 23, 468, 0, 0),
(1, 23, 469, 0, 0),
(1, 23, 470, 0, 0),
(1, 23, 471, 0, 0),
(1, 23, 472, 0, 0),
(1, 23, 473, 0, 0),
(1, 29, 474, 0, 0),
(1, 29, 478, 0, 0),
(1, 29, 479, 0, 0),
(1, 29, 481, 0, 0),
(1, 29, 488, 0, 0),
(1, 29, 489, 0, 0),
(1, 29, 490, 0, 0),
(1, 29, 491, 0, 0),
(1, 29, 493, 0, 0),
(1, 29, 494, 0, 0),
(1, 29, 495, 0, 0),
(1, 29, 496, 0, 0),
(1, 29, 497, 0, 0),
(1, 29, 502, 0, 0),
(1, 29, 503, 0, 0),
(1, 29, 504, 0, 0),
(1, 29, 505, 0, 0),
(1, 29, 513, 0, 0),
(1, 10, 518, 0, 0),
(1, 10, 519, 0, 0),
(1, 10, 520, 0, 0),
(1, 10, 521, 0, 0),
(1, 10, 522, 0, 0),
(1, 10, 523, 0, 0),
(1, 34, 524, 0, 0),
(1, 34, 525, 0, 0),
(1, 34, 526, 0, 0),
(1, 34, 527, 0, 0),
(1, 34, 528, 0, 0),
(1, 34, 529, 0, 0),
(1, 34, 530, 0, 0),
(1, 34, 531, 0, 0),
(1, 34, 532, 0, 0),
(1, 34, 533, 0, 0),
(1, 34, 534, 0, 0),
(1, 34, 535, 0, 0),
(1, 34, 536, 0, 0),
(1, 34, 537, 0, 0),
(1, 34, 538, 0, 0),
(1, 34, 539, 0, 0),
(1, 29, 540, 0, 0),
(1, 35, 541, 0, 0),
(1, 35, 542, 0, 0),
(1, 35, 543, 0, 0),
(1, 35, 544, 0, 0),
(1, 35, 545, 0, 0),
(1, 35, 546, 0, 0),
(1, 35, 547, 0, 0),
(1, 35, 548, 0, 0),
(1, 35, 549, 0, 0),
(1, 35, 550, 0, 0),
(1, 35, 551, 0, 0),
(1, 35, 552, 0, 0),
(1, 35, 553, 0, 0),
(1, 35, 554, 0, 0),
(1, 35, 555, 0, 0),
(1, 35, 556, 0, 0),
(1, 35, 557, 0, 0),
(1, 35, 558, 0, 0),
(1, 35, 559, 0, 0),
(1, 36, 560, 0, 0),
(1, 36, 561, 0, 0),
(1, 36, 562, 0, 0),
(1, 36, 563, 0, 0),
(1, 36, 564, 0, 0),
(1, 36, 565, 0, 0),
(1, 36, 566, 0, 0),
(1, 36, 567, 0, 0),
(1, 36, 568, 0, 0),
(1, 36, 569, 0, 0),
(1, 36, 570, 0, 0),
(1, 36, 571, 0, 0),
(1, 36, 572, 0, 0),
(1, 36, 573, 0, 0),
(1, 36, 574, 0, 0),
(1, 36, 575, 0, 0),
(1, 36, 576, 0, 0),
(1, 36, 577, 0, 0),
(1, 36, 578, 0, 0),
(1, 38, 579, 0, 0),
(1, 38, 580, 0, 0),
(1, 38, 581, 0, 0),
(1, 38, 582, 0, 0),
(1, 38, 583, 0, 0),
(1, 38, 584, 0, 0),
(1, 38, 585, 0, 0),
(1, 38, 586, 0, 0),
(1, 38, 587, 0, 0),
(1, 38, 588, 0, 0),
(1, 38, 589, 0, 0),
(1, 38, 590, 0, 0),
(1, 38, 591, 0, 0),
(1, 38, 592, 0, 0),
(1, 38, 593, 0, 0),
(1, 38, 594, 0, 0),
(1, 38, 595, 0, 0),
(1, 38, 596, 0, 0),
(1, 42, 597, 0, 0),
(1, 42, 598, 0, 0),
(1, 42, 599, 0, 0),
(1, 42, 600, 0, 0),
(1, 42, 601, 0, 0),
(1, 42, 602, 0, 0),
(1, 42, 603, 0, 0),
(1, 43, 604, 0, 0),
(1, 43, 605, 0, 0),
(1, 43, 606, 0, 0),
(1, 43, 607, 0, 0),
(1, 43, 608, 0, 0),
(1, 43, 609, 0, 0),
(1, 43, 610, 0, 0),
(1, 43, 611, 0, 0),
(1, 43, 612, 0, 0),
(1, 43, 613, 0, 0),
(1, 44, 614, 0, 0),
(1, 44, 615, 0, 0),
(1, 44, 616, 0, 0),
(1, 44, 617, 0, 0),
(1, 44, 618, 0, 0),
(1, 44, 619, 0, 0),
(1, 44, 620, 0, 0),
(1, 44, 621, 0, 0),
(1, 44, 622, 0, 0),
(1, 44, 623, 0, 0),
(1, 44, 624, 0, 0),
(1, 44, 625, 0, 0),
(1, 44, 626, 0, 0),
(1, 44, 627, 0, 0),
(1, 44, 628, 0, 0),
(1, 45, 629, 0, 0),
(1, 45, 630, 0, 0),
(1, 45, 631, 0, 0),
(1, 45, 632, 0, 0),
(1, 45, 633, 0, 0),
(1, 45, 634, 0, 0),
(1, 45, 635, 0, 0),
(1, 45, 636, 0, 0),
(1, 45, 637, 0, 0),
(1, 45, 638, 0, 0),
(1, 45, 639, 0, 0),
(1, 45, 640, 0, 0),
(1, 45, 641, 0, 0),
(1, 45, 642, 0, 0),
(1, 45, 643, 0, 0),
(1, 45, 644, 0, 0),
(1, 45, 645, 0, 0),
(1, 47, 646, 0, 0),
(1, 47, 647, 0, 0),
(1, 47, 648, 0, 0),
(1, 47, 649, 0, 0),
(1, 47, 650, 0, 0),
(1, 2, 651, 0, 0),
(1, 29, 652, 0, 0),
(1, 23, 653, 0, 0),
(1, 23, 654, 0, 0),
(1, 23, 655, 0, 0),
(1, 23, 656, 0, 0),
(1, 23, 657, 0, 0),
(1, 23, 658, 0, 0),
(1, 23, 659, 0, 0),
(1, 23, 660, 0, 0),
(1, 23, 661, 0, 0),
(1, 22, 662, 0, 0),
(1, 22, 663, 0, 0),
(1, 22, 664, 0, 0),
(1, 22, 665, 0, 0),
(1, 22, 666, 0, 0),
(1, 22, 667, 0, 0),
(1, 22, 668, 0, 0),
(1, 22, 669, 0, 0),
(1, 22, 670, 0, 0),
(1, 21, 671, 0, 0),
(1, 21, 672, 0, 0),
(1, 21, 673, 0, 0),
(1, 21, 674, 0, 0),
(1, 21, 675, 0, 0),
(1, 21, 676, 0, 0),
(1, 21, 677, 0, 0),
(1, 21, 678, 0, 0),
(1, 21, 679, 0, 0),
(1, 20, 680, 0, 0),
(1, 20, 681, 0, 0),
(1, 20, 682, 0, 0),
(1, 20, 683, 0, 0),
(1, 20, 684, 0, 0),
(1, 20, 685, 0, 0),
(1, 20, 686, 0, 0),
(1, 20, 687, 0, 0),
(1, 20, 688, 0, 0),
(1, 29, 689, 0, 0),
(1, 44, 690, 0, 0),
(1, 42, 691, 0, 0),
(1, 29, 692, 0, 0),
(1, 29, 693, 0, 0),
(1, 29, 694, 0, 0),
(1, 23, 695, 0, 0),
(1, 22, 696, 0, 0),
(1, 21, 697, 0, 0),
(1, 20, 698, 0, 0),
(1, 29, 699, 0, 0),
(1, 6, 700, 0, 0),
(1, 4, 701, 0, 0),
(1, 2, 702, 0, 0),
(1, 29, 703, 0, 0),
(1, 23, 704, 0, 0),
(1, 23, 705, 0, 0),
(1, 21, 706, 0, 0),
(1, 21, 707, 0, 0),
(1, 18, 708, 0, 0),
(1, 7, 709, 0, 0),
(1, 42, 710, 0, 0),
(1, 42, 711, 0, 0),
(1, 23, 712, 0, 0),
(1, 20, 713, 0, 0),
(1, 21, 714, 0, 0),
(1, 22, 715, 0, 0),
(1, 29, 716, 0, 0),
(1, 2, 717, 0, 0),
(1, 13, 718, 0, 0),
(1, 29, 719, 0, 0),
(1, 13, 720, 0, 0),
(1, 29, 721, 0, 0),
(1, 29, 722, 0, 0),
(1, 29, 723, 0, 0),
(1, 2, 724, 0, 0),
(1, 4, 725, 0, 0),
(1, 6, 726, 0, 0),
(1, 7, 727, 0, 0),
(1, 9, 729, 0, 0),
(1, 13, 730, 0, 0),
(1, 18, 734, 0, 0),
(1, 21, 737, 0, 0),
(1, 23, 739, 0, 0),
(1, 42, 745, 0, 0),
(1, 43, 746, 0, 0),
(1, 44, 747, 0, 0),
(1, 45, 748, 0, 0),
(1, 29, 750, 0, 0),
(1, 14, 752, 0, 0),
(1, 23, 753, 0, 0),
(1, 20, 754, 0, 0),
(1, 21, 755, 0, 0),
(1, 22, 756, 0, 0),
(1, 23, 757, 0, 0),
(1, 20, 758, 0, 0),
(1, 21, 759, 0, 0),
(1, 22, 760, 0, 0),
(2, 6, 1, 0, 0),
(2, 6, 2, 0, 0),
(2, 6, 3, 0, 0),
(2, 6, 4, 0, 0),
(2, 6, 5, 0, 0),
(2, 6, 6, 0, 0),
(2, 6, 7, 0, 0),
(2, 6, 8, 0, 0),
(2, 6, 9, 0, 0),
(2, 6, 10, 0, 0),
(2, 6, 11, 0, 0),
(2, 6, 12, 0, 0),
(2, 6, 13, 0, 0),
(2, 6, 14, 0, 0),
(2, 6, 15, 0, 0),
(2, 6, 16, 0, 0),
(2, 6, 17, 0, 0),
(2, 6, 18, 0, 0),
(2, 6, 19, 0, 0),
(2, 6, 20, 0, 0),
(2, 6, 21, 0, 0),
(2, 6, 22, 0, 0),
(2, 6, 23, 0, 0),
(2, 6, 24, 0, 0),
(2, 6, 25, 0, 0),
(2, 6, 26, 0, 0),
(2, 6, 27, 0, 0),
(2, 6, 28, 0, 0),
(2, 6, 29, 0, 0),
(2, 6, 30, 0, 0),
(2, 6, 31, 0, 0),
(2, 6, 32, 0, 0),
(2, 6, 33, 0, 0),
(2, 6, 34, 0, 0),
(2, 6, 35, 0, 0),
(2, 6, 36, 0, 0),
(2, 7, 37, 0, 0),
(2, 7, 38, 0, 0),
(2, 7, 39, 0, 0),
(2, 7, 40, 0, 0),
(2, 7, 41, 0, 0),
(2, 7, 42, 0, 0),
(2, 7, 43, 0, 0),
(2, 7, 44, 0, 0),
(2, 7, 45, 0, 0),
(2, 7, 46, 0, 0),
(2, 7, 47, 0, 0),
(2, 7, 48, 0, 0),
(2, 7, 49, 0, 0),
(2, 7, 50, 0, 0),
(2, 7, 51, 0, 0),
(2, 7, 52, 0, 0),
(2, 7, 53, 0, 0),
(2, 7, 54, 0, 0),
(2, 7, 55, 0, 0),
(2, 7, 56, 0, 0),
(2, 7, 57, 0, 0),
(2, 7, 58, 0, 0),
(2, 7, 59, 0, 0),
(2, 7, 60, 0, 0),
(2, 7, 61, 0, 0),
(2, 7, 62, 0, 0),
(2, 7, 63, 0, 0),
(2, 7, 64, 0, 0),
(2, 7, 65, 0, 0),
(2, 4, 66, 0, 0),
(2, 4, 67, 0, 0),
(2, 4, 68, 0, 0),
(2, 4, 69, 0, 0),
(2, 4, 70, 0, 0),
(2, 4, 71, 0, 0),
(2, 4, 72, 0, 0),
(2, 4, 73, 0, 0),
(2, 4, 74, 0, 0),
(2, 4, 75, 0, 0),
(2, 4, 76, 0, 0),
(2, 4, 77, 0, 0),
(2, 4, 78, 0, 0),
(2, 4, 79, 0, 0),
(2, 4, 80, 0, 0),
(2, 4, 81, 0, 0),
(2, 4, 82, 0, 0),
(2, 4, 83, 0, 0),
(2, 4, 84, 0, 0),
(2, 4, 85, 0, 0),
(2, 4, 86, 0, 0),
(2, 4, 87, 0, 0),
(2, 4, 88, 0, 0),
(2, 4, 89, 0, 0),
(2, 4, 90, 0, 0),
(2, 4, 91, 0, 0),
(2, 4, 92, 0, 0),
(2, 4, 93, 0, 0),
(2, 4, 94, 0, 0),
(2, 4, 95, 0, 0),
(2, 4, 96, 0, 0),
(2, 4, 97, 0, 0),
(2, 4, 98, 0, 0),
(2, 4, 99, 0, 0),
(2, 4, 100, 0, 0),
(2, 4, 101, 0, 0),
(2, 4, 102, 0, 0),
(2, 4, 103, 0, 0),
(2, 4, 104, 0, 0),
(2, 4, 105, 0, 0),
(2, 4, 106, 0, 0),
(2, 4, 107, 0, 0),
(2, 4, 108, 0, 0),
(2, 4, 109, 0, 0),
(2, 2, 110, 0, 0),
(2, 2, 111, 0, 0),
(2, 2, 112, 0, 0),
(2, 2, 113, 0, 0),
(2, 2, 114, 0, 0),
(2, 2, 115, 0, 0),
(2, 2, 116, 0, 0),
(2, 2, 117, 0, 0),
(2, 2, 118, 0, 0),
(2, 2, 119, 0, 0),
(2, 2, 120, 0, 0),
(2, 2, 121, 0, 0),
(2, 2, 122, 0, 0),
(2, 2, 123, 0, 0),
(2, 2, 124, 0, 0),
(2, 2, 125, 0, 0),
(2, 26, 126, 0, 0),
(2, 26, 127, 0, 0),
(2, 26, 128, 0, 0),
(2, 26, 129, 0, 0),
(2, 26, 130, 0, 0),
(2, 26, 131, 0, 0),
(2, 26, 132, 0, 0),
(2, 26, 133, 0, 0),
(2, 26, 134, 0, 0),
(2, 26, 135, 0, 0),
(2, 26, 136, 0, 0),
(2, 26, 137, 0, 0),
(2, 26, 138, 0, 0),
(2, 26, 139, 0, 0),
(2, 26, 140, 0, 0),
(2, 26, 141, 0, 0),
(2, 26, 142, 0, 0),
(2, 26, 143, 0, 0),
(2, 26, 144, 0, 0),
(2, 26, 145, 0, 0),
(2, 26, 146, 0, 0),
(2, 26, 147, 0, 0),
(2, 26, 148, 0, 0),
(2, 26, 149, 0, 0),
(2, 26, 150, 0, 0),
(2, 4, 151, 0, 0),
(2, 6, 152, 0, 0),
(2, 7, 153, 0, 0),
(2, 26, 154, 0, 0),
(2, 13, 155, 0, 0),
(2, 13, 156, 0, 0),
(2, 13, 157, 0, 0),
(2, 13, 158, 0, 0),
(2, 13, 159, 0, 0),
(2, 13, 160, 0, 0),
(2, 13, 161, 0, 0),
(2, 13, 162, 0, 0),
(2, 13, 163, 0, 0),
(2, 13, 164, 0, 0),
(2, 13, 165, 0, 0),
(2, 13, 166, 0, 0),
(2, 13, 167, 0, 0),
(2, 13, 168, 0, 0),
(2, 13, 169, 0, 0),
(2, 13, 170, 0, 0),
(2, 13, 171, 0, 0),
(2, 13, 172, 0, 0),
(2, 14, 173, 0, 0),
(2, 14, 174, 0, 0),
(2, 14, 175, 0, 0),
(2, 14, 176, 0, 0),
(2, 14, 177, 0, 0),
(2, 14, 178, 0, 0),
(2, 14, 179, 0, 0),
(2, 14, 180, 0, 0),
(2, 14, 181, 0, 0),
(2, 14, 182, 0, 0),
(2, 14, 183, 0, 0),
(2, 14, 184, 0, 0),
(2, 14, 185, 0, 0),
(2, 14, 186, 0, 0),
(2, 14, 187, 0, 0),
(2, 14, 188, 0, 0),
(2, 14, 189, 0, 0),
(2, 14, 190, 0, 0),
(2, 14, 191, 0, 0),
(2, 14, 192, 0, 0),
(2, 14, 193, 0, 0),
(2, 14, 194, 0, 0),
(2, 14, 195, 0, 0),
(2, 14, 196, 0, 0),
(2, 14, 197, 0, 0),
(2, 14, 198, 0, 0),
(2, 14, 199, 0, 0),
(2, 14, 200, 0, 0),
(2, 14, 201, 0, 0),
(2, 14, 202, 0, 0),
(2, 14, 203, 0, 0),
(2, 8, 204, 0, 0),
(2, 8, 205, 0, 0),
(2, 8, 206, 0, 0),
(2, 8, 207, 0, 0),
(2, 8, 208, 0, 0),
(2, 8, 209, 0, 0),
(2, 8, 210, 0, 0),
(2, 8, 211, 0, 0),
(2, 8, 212, 0, 0),
(2, 8, 213, 0, 0),
(2, 8, 214, 0, 0),
(2, 8, 215, 0, 0),
(2, 8, 216, 0, 0),
(2, 8, 217, 0, 0),
(2, 8, 218, 0, 0),
(2, 10, 219, 0, 0),
(2, 10, 220, 0, 0),
(2, 10, 221, 0, 0),
(2, 10, 222, 0, 0),
(2, 10, 223, 0, 0),
(2, 10, 224, 0, 0),
(2, 10, 225, 0, 0),
(2, 10, 226, 0, 0),
(2, 10, 227, 0, 0),
(2, 10, 228, 0, 0),
(2, 10, 229, 0, 0),
(2, 10, 230, 0, 0),
(2, 9, 231, 0, 0),
(2, 9, 232, 0, 0),
(2, 9, 233, 0, 0),
(2, 9, 234, 0, 0),
(2, 9, 235, 0, 0),
(2, 9, 236, 0, 0),
(2, 9, 237, 0, 0),
(2, 9, 238, 0, 0),
(2, 9, 239, 0, 0),
(2, 9, 240, 0, 0),
(2, 9, 241, 0, 0),
(2, 9, 242, 0, 0),
(2, 9, 243, 0, 0),
(2, 9, 244, 0, 0),
(2, 9, 245, 0, 0),
(2, 9, 246, 0, 0),
(2, 9, 247, 0, 0),
(2, 9, 248, 0, 0),
(2, 9, 249, 0, 0),
(2, 9, 250, 0, 0),
(2, 9, 251, 0, 0),
(2, 9, 252, 0, 0),
(2, 9, 253, 0, 0),
(2, 9, 254, 0, 0),
(2, 16, 255, 0, 0),
(2, 16, 256, 0, 0),
(2, 16, 257, 0, 0),
(2, 16, 258, 0, 0),
(2, 16, 259, 0, 0),
(2, 16, 260, 0, 0),
(2, 16, 261, 0, 0),
(2, 16, 262, 0, 0),
(2, 16, 263, 0, 0),
(2, 16, 264, 0, 0),
(2, 16, 265, 0, 0),
(2, 16, 266, 0, 0),
(2, 16, 267, 0, 0),
(2, 16, 268, 0, 0),
(2, 16, 269, 0, 0),
(2, 16, 270, 0, 0),
(2, 16, 271, 0, 0),
(2, 16, 272, 0, 0),
(2, 16, 273, 0, 0),
(2, 16, 274, 0, 0),
(2, 16, 275, 0, 0),
(2, 16, 276, 0, 0),
(2, 16, 277, 0, 0),
(2, 15, 278, 0, 0),
(2, 15, 279, 0, 0),
(2, 15, 280, 0, 0),
(2, 15, 281, 0, 0),
(2, 15, 282, 0, 0),
(2, 15, 283, 0, 0),
(2, 15, 284, 0, 0),
(2, 15, 285, 0, 0),
(2, 15, 286, 0, 0),
(2, 15, 287, 0, 0),
(2, 18, 288, 0, 0),
(2, 18, 289, 0, 0),
(2, 18, 290, 0, 0),
(2, 18, 291, 0, 0),
(2, 18, 292, 0, 0),
(2, 18, 293, 0, 0),
(2, 18, 294, 0, 0),
(2, 18, 295, 0, 0),
(2, 18, 296, 0, 0),
(2, 18, 297, 0, 0),
(2, 18, 298, 0, 0),
(2, 18, 299, 0, 0),
(2, 18, 300, 0, 0),
(2, 18, 301, 0, 0),
(2, 18, 302, 0, 0),
(2, 18, 303, 0, 0),
(2, 18, 304, 0, 0),
(2, 19, 305, 0, 0),
(2, 19, 306, 0, 0),
(2, 19, 307, 0, 0),
(2, 19, 308, 0, 0),
(2, 19, 309, 0, 0),
(2, 19, 310, 0, 0),
(2, 19, 311, 0, 0),
(2, 19, 312, 0, 0),
(2, 20, 313, 0, 0),
(2, 20, 314, 0, 0),
(2, 20, 315, 0, 0),
(2, 20, 316, 0, 0),
(2, 20, 317, 0, 0),
(2, 20, 318, 0, 0),
(2, 20, 319, 0, 0),
(2, 20, 320, 0, 0),
(2, 20, 321, 0, 0),
(2, 20, 322, 0, 0),
(2, 20, 323, 0, 0),
(2, 20, 324, 0, 0),
(2, 20, 325, 0, 0),
(2, 20, 326, 0, 0),
(2, 20, 327, 0, 0),
(2, 20, 328, 0, 0),
(2, 20, 329, 0, 0),
(2, 20, 330, 0, 0),
(2, 20, 331, 0, 0),
(2, 20, 332, 0, 0),
(2, 20, 333, 0, 0),
(2, 20, 334, 0, 0),
(2, 20, 335, 0, 0),
(2, 20, 336, 0, 0),
(2, 20, 337, 0, 0),
(2, 20, 338, 0, 0),
(2, 20, 339, 0, 0),
(2, 20, 340, 0, 0),
(2, 20, 341, 0, 0),
(2, 20, 342, 0, 0),
(2, 20, 343, 0, 0),
(2, 20, 344, 0, 0),
(2, 20, 345, 0, 0),
(2, 20, 346, 0, 0),
(2, 20, 347, 0, 0),
(2, 20, 348, 0, 0),
(2, 20, 349, 0, 0),
(2, 21, 350, 0, 0),
(2, 21, 351, 0, 0),
(2, 21, 352, 0, 0),
(2, 21, 353, 0, 0),
(2, 21, 354, 0, 0),
(2, 21, 355, 0, 0),
(2, 21, 356, 0, 0),
(2, 21, 357, 0, 0),
(2, 21, 358, 0, 0),
(2, 21, 359, 0, 0),
(2, 21, 360, 0, 0),
(2, 21, 361, 0, 0),
(2, 21, 362, 0, 0),
(2, 21, 363, 0, 0),
(2, 21, 364, 0, 0),
(2, 21, 365, 0, 0),
(2, 21, 366, 0, 0),
(2, 21, 367, 0, 0),
(2, 21, 368, 0, 0),
(2, 21, 369, 0, 0),
(2, 21, 370, 0, 0),
(2, 21, 371, 0, 0),
(2, 21, 372, 0, 0),
(2, 21, 373, 0, 0),
(2, 21, 374, 0, 0),
(2, 21, 375, 0, 0),
(2, 21, 376, 0, 0),
(2, 21, 377, 0, 0),
(2, 21, 378, 0, 0),
(2, 21, 379, 0, 0),
(2, 21, 380, 0, 0),
(2, 21, 381, 0, 0),
(2, 21, 382, 0, 0),
(2, 21, 383, 0, 0),
(2, 21, 384, 0, 0),
(2, 21, 385, 0, 0),
(2, 21, 386, 0, 0),
(2, 21, 387, 0, 0),
(2, 22, 388, 0, 0),
(2, 22, 389, 0, 0),
(2, 22, 390, 0, 0),
(2, 22, 391, 0, 0),
(2, 22, 392, 0, 0),
(2, 22, 393, 0, 0),
(2, 22, 394, 0, 0),
(2, 22, 395, 0, 0),
(2, 22, 396, 0, 0),
(2, 22, 397, 0, 0),
(2, 22, 398, 0, 0),
(2, 22, 399, 0, 0),
(2, 22, 400, 0, 0),
(2, 22, 401, 0, 0),
(2, 22, 402, 0, 0),
(2, 22, 403, 0, 0),
(2, 22, 404, 0, 0),
(2, 22, 405, 0, 0),
(2, 22, 406, 0, 0),
(2, 22, 407, 0, 0),
(2, 22, 408, 0, 0),
(2, 22, 409, 0, 0),
(2, 22, 410, 0, 0),
(2, 22, 411, 0, 0),
(2, 22, 412, 0, 0),
(2, 22, 413, 0, 0),
(2, 22, 414, 0, 0),
(2, 22, 415, 0, 0),
(2, 22, 416, 0, 0),
(2, 22, 417, 0, 0),
(2, 22, 418, 0, 0),
(2, 22, 419, 0, 0),
(2, 22, 420, 0, 0),
(2, 22, 421, 0, 0),
(2, 22, 422, 0, 0),
(2, 22, 423, 0, 0),
(2, 22, 424, 0, 0),
(2, 22, 425, 0, 0),
(2, 22, 426, 0, 0),
(2, 22, 427, 0, 0),
(2, 22, 428, 0, 0),
(2, 22, 429, 0, 0),
(2, 22, 430, 0, 0),
(2, 22, 431, 0, 0),
(2, 22, 432, 0, 0),
(2, 22, 433, 0, 0),
(2, 22, 434, 0, 0),
(2, 23, 435, 0, 0),
(2, 23, 436, 0, 0),
(2, 23, 437, 0, 0),
(2, 23, 438, 0, 0),
(2, 23, 439, 0, 0),
(2, 23, 440, 0, 0),
(2, 23, 441, 0, 0),
(2, 23, 442, 0, 0),
(2, 23, 443, 0, 0),
(2, 23, 444, 0, 0),
(2, 23, 445, 0, 0),
(2, 23, 446, 0, 0),
(2, 23, 447, 0, 0),
(2, 23, 448, 0, 0),
(2, 23, 449, 0, 0),
(2, 23, 450, 0, 0),
(2, 23, 451, 0, 0),
(2, 23, 452, 0, 0),
(2, 23, 453, 0, 0),
(2, 23, 454, 0, 0),
(2, 23, 455, 0, 0),
(2, 23, 456, 0, 0),
(2, 23, 457, 0, 0),
(2, 23, 458, 0, 0),
(2, 23, 459, 0, 0),
(2, 23, 460, 0, 0),
(2, 23, 461, 0, 0),
(2, 23, 462, 0, 0),
(2, 23, 463, 0, 0),
(2, 23, 464, 0, 0),
(2, 23, 465, 0, 0),
(2, 23, 466, 0, 0),
(2, 23, 467, 0, 0),
(2, 23, 468, 0, 0),
(2, 23, 469, 0, 0),
(2, 23, 470, 0, 0),
(2, 23, 471, 0, 0),
(2, 23, 472, 0, 0),
(2, 23, 473, 0, 0),
(2, 29, 474, 0, 0),
(2, 29, 478, 0, 0),
(2, 29, 479, 0, 0),
(2, 29, 481, 0, 0),
(2, 29, 488, 0, 0),
(2, 29, 489, 0, 0),
(2, 29, 490, 0, 0),
(2, 29, 491, 0, 0),
(2, 29, 493, 0, 0),
(2, 29, 494, 0, 0),
(2, 29, 495, 0, 0),
(2, 29, 496, 0, 0),
(2, 29, 497, 0, 0),
(2, 29, 502, 0, 0),
(2, 29, 503, 0, 0),
(2, 29, 504, 0, 0),
(2, 29, 505, 0, 0),
(2, 29, 513, 0, 0),
(2, 10, 518, 0, 0),
(2, 10, 519, 0, 0),
(2, 10, 520, 0, 0),
(2, 10, 521, 0, 0),
(2, 10, 522, 0, 0),
(2, 10, 523, 0, 0),
(2, 34, 524, 0, 0),
(2, 34, 525, 0, 0),
(2, 34, 526, 0, 0),
(2, 34, 527, 0, 0),
(2, 34, 528, 0, 0),
(2, 34, 529, 0, 0),
(2, 34, 530, 0, 0),
(2, 34, 531, 0, 0),
(2, 34, 532, 0, 0),
(2, 34, 533, 0, 0),
(2, 34, 534, 0, 0),
(2, 34, 535, 0, 0),
(2, 34, 536, 0, 0),
(2, 34, 537, 0, 0),
(2, 34, 538, 0, 0),
(2, 34, 539, 0, 0),
(2, 29, 540, 0, 0),
(2, 35, 541, 0, 0),
(2, 35, 542, 0, 0),
(2, 35, 543, 0, 0),
(2, 35, 544, 0, 0),
(2, 35, 545, 0, 0),
(2, 35, 546, 0, 0),
(2, 35, 547, 0, 0),
(2, 35, 548, 0, 0),
(2, 35, 549, 0, 0),
(2, 35, 550, 0, 0),
(2, 35, 551, 0, 0),
(2, 35, 552, 0, 0),
(2, 35, 553, 0, 0),
(2, 35, 554, 0, 0),
(2, 35, 555, 0, 0),
(2, 35, 556, 0, 0),
(2, 35, 557, 0, 0),
(2, 35, 558, 0, 0),
(2, 35, 559, 0, 0),
(2, 36, 560, 0, 0),
(2, 36, 561, 0, 0),
(2, 36, 562, 0, 0),
(2, 36, 563, 0, 0),
(2, 36, 564, 0, 0),
(2, 36, 565, 0, 0),
(2, 36, 566, 0, 0),
(2, 36, 567, 0, 0),
(2, 36, 568, 0, 0),
(2, 36, 569, 0, 0),
(2, 36, 570, 0, 0),
(2, 36, 571, 0, 0),
(2, 36, 572, 0, 0),
(2, 36, 573, 0, 0),
(2, 36, 574, 0, 0),
(2, 36, 575, 0, 0),
(2, 36, 576, 0, 0),
(2, 36, 577, 0, 0),
(2, 36, 578, 0, 0),
(2, 38, 579, 0, 0),
(2, 38, 580, 0, 0),
(2, 38, 581, 0, 0),
(2, 38, 582, 0, 0),
(2, 38, 583, 0, 0),
(2, 38, 584, 0, 0),
(2, 38, 585, 0, 0),
(2, 38, 586, 0, 0),
(2, 38, 587, 0, 0),
(2, 38, 588, 0, 0),
(2, 38, 589, 0, 0),
(2, 38, 590, 0, 0),
(2, 38, 591, 0, 0),
(2, 38, 592, 0, 0),
(2, 38, 593, 0, 0),
(2, 38, 594, 0, 0),
(2, 38, 595, 0, 0),
(2, 38, 596, 0, 0),
(2, 42, 597, 0, 0),
(2, 42, 598, 0, 0),
(2, 42, 599, 0, 0),
(2, 42, 600, 0, 0),
(2, 42, 601, 0, 0),
(2, 42, 602, 0, 0),
(2, 42, 603, 0, 0),
(2, 43, 604, 0, 0),
(2, 43, 605, 0, 0),
(2, 43, 606, 0, 0),
(2, 43, 607, 0, 0),
(2, 43, 608, 0, 0),
(2, 43, 609, 0, 0),
(2, 43, 610, 0, 0),
(2, 43, 611, 0, 0),
(2, 43, 612, 0, 0),
(2, 43, 613, 0, 0),
(2, 44, 614, 0, 0),
(2, 44, 615, 0, 0),
(2, 44, 616, 0, 0),
(2, 44, 617, 0, 0),
(2, 44, 618, 0, 0),
(2, 44, 619, 0, 0),
(2, 44, 620, 0, 0),
(2, 44, 621, 0, 0),
(2, 44, 622, 0, 0),
(2, 44, 623, 0, 0),
(2, 44, 624, 0, 0),
(2, 44, 625, 0, 0),
(2, 44, 626, 0, 0),
(2, 44, 627, 0, 0),
(2, 44, 628, 0, 0),
(2, 45, 629, 0, 0),
(2, 45, 630, 0, 0),
(2, 45, 631, 0, 0),
(2, 45, 632, 0, 0),
(2, 45, 633, 0, 0),
(2, 45, 634, 0, 0),
(2, 45, 635, 0, 0),
(2, 45, 636, 0, 0),
(2, 45, 637, 0, 0),
(2, 45, 638, 0, 0),
(2, 45, 639, 0, 0),
(2, 45, 640, 0, 0),
(2, 45, 641, 0, 0),
(2, 45, 642, 0, 0),
(2, 45, 643, 0, 0),
(2, 45, 644, 0, 0),
(2, 45, 645, 0, 0),
(2, 47, 646, 0, 0),
(2, 47, 647, 0, 0),
(2, 47, 648, 0, 0),
(2, 47, 649, 0, 0),
(2, 47, 650, 0, 0),
(2, 2, 651, 0, 0),
(2, 29, 652, 0, 0),
(2, 23, 653, 0, 0),
(2, 23, 654, 0, 0),
(2, 23, 655, 0, 0),
(2, 23, 656, 0, 0),
(2, 23, 657, 0, 0),
(2, 23, 658, 0, 0),
(2, 23, 659, 0, 0),
(2, 23, 660, 0, 0),
(2, 23, 661, 0, 0),
(2, 22, 662, 0, 0),
(2, 22, 663, 0, 0),
(2, 22, 664, 0, 0),
(2, 22, 665, 0, 0),
(2, 22, 666, 0, 0),
(2, 22, 667, 0, 0),
(2, 22, 668, 0, 0),
(2, 22, 669, 0, 0),
(2, 22, 670, 0, 0),
(2, 21, 671, 0, 0),
(2, 21, 672, 0, 0),
(2, 21, 673, 0, 0),
(2, 21, 674, 0, 0),
(2, 21, 675, 0, 0),
(2, 21, 676, 0, 0),
(2, 21, 677, 0, 0),
(2, 21, 678, 0, 0),
(2, 21, 679, 0, 0),
(2, 20, 680, 0, 0),
(2, 20, 681, 0, 0),
(2, 20, 682, 0, 0),
(2, 20, 683, 0, 0),
(2, 20, 684, 0, 0),
(2, 20, 685, 0, 0),
(2, 20, 686, 0, 0),
(2, 20, 687, 0, 0),
(2, 20, 688, 0, 0),
(2, 29, 689, 0, 0),
(2, 44, 690, 0, 0),
(2, 42, 691, 0, 0),
(2, 29, 692, 0, 0),
(2, 29, 693, 0, 0),
(2, 29, 694, 0, 0),
(2, 23, 695, 0, 0),
(2, 22, 696, 0, 0),
(2, 21, 697, 0, 0),
(2, 20, 698, 0, 0),
(2, 29, 699, 0, 0),
(2, 6, 700, 0, 0),
(2, 4, 701, 0, 0),
(2, 2, 702, 0, 0),
(2, 29, 703, 0, 0),
(2, 23, 704, 0, 0),
(2, 23, 705, 0, 0),
(2, 21, 706, 0, 0),
(2, 21, 707, 0, 0),
(2, 18, 708, 0, 0),
(2, 7, 709, 0, 0),
(2, 42, 710, 0, 0),
(2, 42, 711, 0, 0),
(2, 23, 712, 0, 0),
(2, 20, 713, 0, 0),
(2, 21, 714, 0, 0),
(2, 22, 715, 0, 0),
(2, 29, 716, 0, 0),
(2, 2, 717, 0, 0),
(2, 13, 718, 0, 0),
(2, 29, 719, 0, 0),
(2, 13, 720, 0, 0),
(2, 29, 721, 0, 0),
(2, 29, 722, 0, 0),
(2, 29, 723, 0, 0),
(2, 2, 724, 0, 0),
(2, 4, 725, 0, 0),
(2, 6, 726, 0, 0),
(2, 7, 727, 0, 0),
(2, 9, 729, 0, 0),
(2, 13, 730, 0, 0),
(2, 18, 734, 0, 0),
(2, 21, 737, 0, 0),
(2, 23, 739, 0, 0),
(2, 42, 745, 0, 0),
(2, 43, 746, 0, 0),
(2, 44, 747, 0, 0),
(2, 45, 748, 0, 0),
(2, 29, 750, 0, 0),
(2, 14, 752, 0, 0),
(2, 23, 753, 0, 0),
(2, 20, 754, 0, 0),
(2, 21, 755, 0, 0),
(2, 22, 756, 0, 0),
(2, 23, 757, 0, 0),
(2, 20, 758, 0, 0),
(2, 21, 759, 0, 0),
(2, 22, 760, 0, 0),
(3, 6, 1, 0, 0),
(3, 6, 2, 0, 0),
(3, 6, 3, 0, 0),
(3, 6, 4, 0, 0),
(3, 6, 5, 0, 0),
(3, 6, 6, 0, 0),
(3, 6, 7, 0, 0),
(3, 6, 8, 0, 0),
(3, 6, 9, 0, 0),
(3, 6, 10, 0, 0),
(3, 6, 11, 0, 0),
(3, 6, 12, 0, 0),
(3, 6, 13, 0, 0),
(3, 6, 14, 0, 0),
(3, 6, 15, 0, 0),
(3, 6, 16, 0, 0),
(3, 6, 17, 0, 0),
(3, 6, 18, 0, 0),
(3, 6, 19, 0, 0),
(3, 6, 20, 0, 0),
(3, 6, 21, 0, 0),
(3, 6, 22, 0, 0),
(3, 6, 23, 0, 0),
(3, 6, 24, 0, 0),
(3, 6, 25, 0, 0),
(3, 6, 26, 0, 0),
(3, 6, 27, 0, 0),
(3, 6, 28, 0, 0),
(3, 6, 29, 0, 0),
(3, 6, 30, 0, 0),
(3, 6, 31, 0, 0),
(3, 6, 32, 0, 0),
(3, 6, 33, 0, 0),
(3, 6, 34, 0, 0),
(3, 6, 35, 0, 0),
(3, 6, 36, 0, 0),
(3, 7, 37, 0, 0),
(3, 7, 38, 0, 0),
(3, 7, 39, 0, 0),
(3, 7, 40, 0, 0),
(3, 7, 41, 0, 0),
(3, 7, 42, 0, 0),
(3, 7, 43, 0, 0),
(3, 7, 44, 0, 0),
(3, 7, 45, 0, 0),
(3, 7, 46, 0, 0),
(3, 7, 47, 0, 0),
(3, 7, 48, 0, 0),
(3, 7, 49, 0, 0),
(3, 7, 50, 0, 0),
(3, 7, 51, 0, 0),
(3, 7, 52, 0, 0),
(3, 7, 53, 0, 0),
(3, 7, 54, 0, 0),
(3, 7, 55, 0, 0),
(3, 7, 56, 0, 0),
(3, 7, 57, 0, 0),
(3, 7, 58, 0, 0),
(3, 7, 59, 0, 0),
(3, 7, 60, 0, 0),
(3, 7, 61, 0, 0),
(3, 7, 62, 0, 0),
(3, 7, 63, 0, 0),
(3, 7, 64, 0, 0),
(3, 7, 65, 0, 0),
(3, 4, 66, 0, 0),
(3, 4, 67, 0, 0),
(3, 4, 68, 0, 0),
(3, 4, 69, 0, 0),
(3, 4, 70, 0, 0),
(3, 4, 71, 0, 0),
(3, 4, 72, 0, 0),
(3, 4, 73, 0, 0),
(3, 4, 74, 0, 0),
(3, 4, 75, 0, 0),
(3, 4, 76, 0, 0),
(3, 4, 77, 0, 0),
(3, 4, 78, 0, 0),
(3, 4, 79, 0, 0),
(3, 4, 80, 0, 0),
(3, 4, 81, 0, 0),
(3, 4, 82, 0, 0),
(3, 4, 83, 0, 0),
(3, 4, 84, 0, 0),
(3, 4, 85, 0, 0),
(3, 4, 86, 0, 0),
(3, 4, 87, 0, 0),
(3, 4, 88, 0, 0),
(3, 4, 89, 0, 0),
(3, 4, 90, 0, 0),
(3, 4, 91, 0, 0),
(3, 4, 92, 0, 0),
(3, 4, 93, 0, 0),
(3, 4, 94, 0, 0),
(3, 4, 95, 0, 0),
(3, 4, 96, 0, 0),
(3, 4, 97, 0, 0),
(3, 4, 98, 0, 0),
(3, 4, 99, 0, 0),
(3, 4, 100, 0, 0),
(3, 4, 101, 0, 0),
(3, 4, 102, 0, 0),
(3, 4, 103, 0, 0),
(3, 4, 104, 0, 0),
(3, 4, 105, 0, 0),
(3, 4, 106, 0, 0),
(3, 4, 107, 0, 0),
(3, 4, 108, 0, 0),
(3, 4, 109, 0, 0),
(3, 2, 110, 0, 0),
(3, 2, 111, 0, 0),
(3, 2, 112, 0, 0),
(3, 2, 113, 0, 0),
(3, 2, 114, 0, 0),
(3, 2, 115, 0, 0),
(3, 2, 116, 0, 0),
(3, 2, 117, 0, 0),
(3, 2, 118, 0, 0),
(3, 2, 119, 0, 0),
(3, 2, 120, 0, 0),
(3, 2, 121, 0, 0),
(3, 2, 122, 0, 0),
(3, 2, 123, 0, 0),
(3, 2, 124, 0, 0),
(3, 2, 125, 0, 0),
(3, 26, 126, 0, 0),
(3, 26, 127, 0, 0),
(3, 26, 128, 0, 0),
(3, 26, 129, 0, 0),
(3, 26, 130, 0, 0),
(3, 26, 131, 0, 0),
(3, 26, 132, 0, 0),
(3, 26, 133, 0, 0),
(3, 26, 134, 0, 0),
(3, 26, 135, 0, 0),
(3, 26, 136, 0, 0),
(3, 26, 137, 0, 0),
(3, 26, 138, 0, 0),
(3, 26, 139, 0, 0),
(3, 26, 140, 0, 0),
(3, 26, 141, 0, 0),
(3, 26, 142, 0, 0),
(3, 26, 143, 0, 0),
(3, 26, 144, 0, 0),
(3, 26, 145, 0, 0),
(3, 26, 146, 0, 0),
(3, 26, 147, 0, 0),
(3, 26, 148, 0, 0),
(3, 26, 149, 0, 0),
(3, 26, 150, 0, 0),
(3, 4, 151, 0, 0),
(3, 6, 152, 0, 0),
(3, 7, 153, 0, 0),
(3, 26, 154, 0, 0),
(3, 13, 155, 0, 0),
(3, 13, 156, 0, 0),
(3, 13, 157, 0, 0),
(3, 13, 158, 0, 0),
(3, 13, 159, 0, 0),
(3, 13, 160, 0, 0),
(3, 13, 161, 0, 0),
(3, 13, 162, 0, 0),
(3, 13, 163, 0, 0),
(3, 13, 164, 0, 0),
(3, 13, 165, 0, 0),
(3, 13, 166, 0, 0),
(3, 13, 167, 0, 0),
(3, 13, 168, 0, 0),
(3, 13, 169, 0, 0),
(3, 13, 170, 0, 0),
(3, 13, 171, 0, 0),
(3, 13, 172, 0, 0),
(3, 14, 173, 0, 0),
(3, 14, 174, 0, 0),
(3, 14, 175, 0, 0),
(3, 14, 176, 0, 0),
(3, 14, 177, 0, 0),
(3, 14, 178, 0, 0),
(3, 14, 179, 0, 0),
(3, 14, 180, 0, 0),
(3, 14, 181, 0, 0),
(3, 14, 182, 0, 0),
(3, 14, 183, 0, 0),
(3, 14, 184, 0, 0),
(3, 14, 185, 0, 0),
(3, 14, 186, 0, 0),
(3, 14, 187, 0, 0),
(3, 14, 188, 0, 0),
(3, 14, 189, 0, 0),
(3, 14, 190, 0, 0),
(3, 14, 191, 0, 0),
(3, 14, 192, 0, 0),
(3, 14, 193, 0, 0),
(3, 14, 194, 0, 0),
(3, 14, 195, 0, 0),
(3, 14, 196, 0, 0),
(3, 14, 197, 0, 0),
(3, 14, 198, 0, 0),
(3, 14, 199, 0, 0),
(3, 14, 200, 0, 0),
(3, 14, 201, 0, 0),
(3, 14, 202, 0, 0),
(3, 14, 203, 0, 0),
(3, 8, 204, 0, 0),
(3, 8, 205, 0, 0),
(3, 8, 206, 0, 0),
(3, 8, 207, 0, 0),
(3, 8, 208, 0, 0),
(3, 8, 209, 0, 0),
(3, 8, 210, 0, 0),
(3, 8, 211, 0, 0),
(3, 8, 212, 0, 0),
(3, 8, 213, 0, 0),
(3, 8, 214, 0, 0),
(3, 8, 215, 0, 0),
(3, 8, 216, 0, 0),
(3, 8, 217, 0, 0),
(3, 8, 218, 0, 0),
(3, 10, 219, 0, 0),
(3, 10, 220, 0, 0),
(3, 10, 221, 0, 0),
(3, 10, 222, 0, 0),
(3, 10, 223, 0, 0),
(3, 10, 224, 0, 0),
(3, 10, 225, 0, 0),
(3, 10, 226, 0, 0),
(3, 10, 227, 0, 0),
(3, 10, 228, 0, 0),
(3, 10, 229, 0, 0),
(3, 10, 230, 0, 0),
(3, 9, 231, 0, 0),
(3, 9, 232, 0, 0),
(3, 9, 233, 0, 0),
(3, 9, 234, 0, 0),
(3, 9, 235, 0, 0),
(3, 9, 236, 0, 0),
(3, 9, 237, 0, 0),
(3, 9, 238, 0, 0),
(3, 9, 239, 0, 0),
(3, 9, 240, 0, 0),
(3, 9, 241, 0, 0),
(3, 9, 242, 0, 0),
(3, 9, 243, 0, 0),
(3, 9, 244, 0, 0),
(3, 9, 245, 0, 0),
(3, 9, 246, 0, 0),
(3, 9, 247, 0, 0),
(3, 9, 248, 0, 0),
(3, 9, 249, 0, 0),
(3, 9, 250, 0, 0),
(3, 9, 251, 0, 0),
(3, 9, 252, 0, 0),
(3, 9, 253, 0, 0),
(3, 9, 254, 0, 0),
(3, 16, 255, 0, 0),
(3, 16, 256, 0, 0),
(3, 16, 257, 0, 0),
(3, 16, 258, 0, 0),
(3, 16, 259, 0, 0),
(3, 16, 260, 0, 0),
(3, 16, 261, 0, 0),
(3, 16, 262, 0, 0),
(3, 16, 263, 0, 0),
(3, 16, 264, 0, 0),
(3, 16, 265, 0, 0),
(3, 16, 266, 0, 0),
(3, 16, 267, 0, 0),
(3, 16, 268, 0, 0),
(3, 16, 269, 0, 0),
(3, 16, 270, 0, 0),
(3, 16, 271, 0, 0),
(3, 16, 272, 0, 0),
(3, 16, 273, 0, 0),
(3, 16, 274, 0, 0),
(3, 16, 275, 0, 0),
(3, 16, 276, 0, 0),
(3, 16, 277, 0, 0),
(3, 15, 278, 0, 0),
(3, 15, 279, 0, 0),
(3, 15, 280, 0, 0),
(3, 15, 281, 0, 0),
(3, 15, 282, 0, 0),
(3, 15, 283, 0, 0),
(3, 15, 284, 0, 0),
(3, 15, 285, 0, 0),
(3, 15, 286, 0, 0),
(3, 15, 287, 0, 0),
(3, 18, 288, 0, 0),
(3, 18, 289, 0, 0),
(3, 18, 290, 0, 0),
(3, 18, 291, 0, 0),
(3, 18, 292, 0, 0),
(3, 18, 293, 0, 0),
(3, 18, 294, 0, 0),
(3, 18, 295, 0, 0),
(3, 18, 296, 0, 0),
(3, 18, 297, 0, 0),
(3, 18, 298, 0, 0),
(3, 18, 299, 0, 0),
(3, 18, 300, 0, 0),
(3, 18, 301, 0, 0),
(3, 18, 302, 0, 0),
(3, 18, 303, 0, 0),
(3, 18, 304, 0, 0),
(3, 19, 305, 0, 0),
(3, 19, 306, 0, 0),
(3, 19, 307, 0, 0),
(3, 19, 308, 0, 0),
(3, 19, 309, 0, 0),
(3, 19, 310, 0, 0),
(3, 19, 311, 0, 0),
(3, 19, 312, 0, 0),
(3, 20, 313, 0, 0),
(3, 20, 314, 0, 0),
(3, 20, 315, 0, 0),
(3, 20, 316, 0, 0),
(3, 20, 317, 0, 0),
(3, 20, 318, 0, 0),
(3, 20, 319, 0, 0),
(3, 20, 320, 0, 0),
(3, 20, 321, 0, 0),
(3, 20, 322, 0, 0),
(3, 20, 323, 0, 0),
(3, 20, 324, 0, 0),
(3, 20, 325, 0, 0),
(3, 20, 326, 0, 0),
(3, 20, 327, 0, 0),
(3, 20, 328, 0, 0),
(3, 20, 329, 0, 0),
(3, 20, 330, 0, 0),
(3, 20, 331, 0, 0),
(3, 20, 332, 0, 0),
(3, 20, 333, 0, 0),
(3, 20, 334, 0, 0),
(3, 20, 335, 0, 0),
(3, 20, 336, 0, 0),
(3, 20, 337, 0, 0),
(3, 20, 338, 0, 0),
(3, 20, 339, 0, 0),
(3, 20, 340, 0, 0),
(3, 20, 341, 0, 0),
(3, 20, 342, 0, 0),
(3, 20, 343, 0, 0),
(3, 20, 344, 0, 0),
(3, 20, 345, 0, 0),
(3, 20, 346, 0, 0),
(3, 20, 347, 0, 0),
(3, 20, 348, 0, 0),
(3, 20, 349, 0, 0),
(3, 21, 350, 0, 0),
(3, 21, 351, 0, 0),
(3, 21, 352, 0, 0),
(3, 21, 353, 0, 0),
(3, 21, 354, 0, 0),
(3, 21, 355, 0, 0),
(3, 21, 356, 0, 0),
(3, 21, 357, 0, 0),
(3, 21, 358, 0, 0),
(3, 21, 359, 0, 0),
(3, 21, 360, 0, 0),
(3, 21, 361, 0, 0),
(3, 21, 362, 0, 0),
(3, 21, 363, 0, 0),
(3, 21, 364, 0, 0),
(3, 21, 365, 0, 0),
(3, 21, 366, 0, 0),
(3, 21, 367, 0, 0),
(3, 21, 368, 0, 0),
(3, 21, 369, 0, 0),
(3, 21, 370, 0, 0),
(3, 21, 371, 0, 0),
(3, 21, 372, 0, 0),
(3, 21, 373, 0, 0),
(3, 21, 374, 0, 0),
(3, 21, 375, 0, 0),
(3, 21, 376, 0, 0),
(3, 21, 377, 0, 0),
(3, 21, 378, 0, 0),
(3, 21, 379, 0, 0),
(3, 21, 380, 0, 0),
(3, 21, 381, 0, 0),
(3, 21, 382, 0, 0),
(3, 21, 383, 0, 0),
(3, 21, 384, 0, 0),
(3, 21, 385, 0, 0),
(3, 21, 386, 0, 0),
(3, 21, 387, 0, 0),
(3, 22, 388, 0, 0),
(3, 22, 389, 0, 0),
(3, 22, 390, 0, 0),
(3, 22, 391, 0, 0),
(3, 22, 392, 0, 0),
(3, 22, 393, 0, 0),
(3, 22, 394, 0, 0),
(3, 22, 395, 0, 0),
(3, 22, 396, 0, 0),
(3, 22, 397, 0, 0),
(3, 22, 398, 0, 0),
(3, 22, 399, 0, 0),
(3, 22, 400, 0, 0),
(3, 22, 401, 0, 0),
(3, 22, 402, 0, 0),
(3, 22, 403, 0, 0),
(3, 22, 404, 0, 0),
(3, 22, 405, 0, 0),
(3, 22, 406, 0, 0),
(3, 22, 407, 0, 0),
(3, 22, 408, 0, 0),
(3, 22, 409, 0, 0),
(3, 22, 410, 0, 0),
(3, 22, 411, 0, 0),
(3, 22, 412, 0, 0),
(3, 22, 413, 0, 0),
(3, 22, 414, 0, 0),
(3, 22, 415, 0, 0),
(3, 22, 416, 0, 0),
(3, 22, 417, 0, 0),
(3, 22, 418, 0, 0),
(3, 22, 419, 0, 0),
(3, 22, 420, 0, 0),
(3, 22, 421, 0, 0),
(3, 22, 422, 0, 0),
(3, 22, 423, 0, 0),
(3, 22, 424, 0, 0),
(3, 22, 425, 0, 0),
(3, 22, 426, 0, 0),
(3, 22, 427, 0, 0),
(3, 22, 428, 0, 0),
(3, 22, 429, 0, 0),
(3, 22, 430, 0, 0),
(3, 22, 431, 0, 0),
(3, 22, 432, 0, 0),
(3, 22, 433, 0, 0),
(3, 22, 434, 0, 0),
(3, 23, 435, 0, 0),
(3, 23, 436, 0, 0),
(3, 23, 437, 0, 0),
(3, 23, 438, 0, 0),
(3, 23, 439, 0, 0),
(3, 23, 440, 0, 0),
(3, 23, 441, 0, 0),
(3, 23, 442, 0, 0),
(3, 23, 443, 0, 0),
(3, 23, 444, 0, 0),
(3, 23, 445, 0, 0),
(3, 23, 446, 0, 0),
(3, 23, 447, 0, 0),
(3, 23, 448, 0, 0),
(3, 23, 449, 0, 0),
(3, 23, 450, 0, 0),
(3, 23, 451, 0, 0),
(3, 23, 452, 0, 0),
(3, 23, 453, 0, 0),
(3, 23, 454, 0, 0),
(3, 23, 455, 0, 0),
(3, 23, 456, 0, 0),
(3, 23, 457, 0, 0),
(3, 23, 458, 0, 0),
(3, 23, 459, 0, 0),
(3, 23, 460, 0, 0),
(3, 23, 461, 0, 0),
(3, 23, 462, 0, 0),
(3, 23, 463, 0, 0),
(3, 23, 464, 0, 0),
(3, 23, 465, 0, 0),
(3, 23, 466, 0, 0),
(3, 23, 467, 0, 0),
(3, 23, 468, 0, 0),
(3, 23, 469, 0, 0),
(3, 23, 470, 0, 0),
(3, 23, 471, 0, 0),
(3, 23, 472, 0, 0),
(3, 23, 473, 0, 0),
(3, 29, 474, 0, 0),
(3, 29, 478, 0, 0),
(3, 29, 479, 0, 0),
(3, 29, 481, 0, 0),
(3, 29, 488, 0, 0),
(3, 29, 489, 0, 0),
(3, 29, 490, 0, 0),
(3, 29, 491, 0, 0),
(3, 29, 493, 0, 0),
(3, 29, 494, 0, 0),
(3, 29, 495, 0, 0),
(3, 29, 496, 0, 0),
(3, 29, 497, 0, 0),
(3, 29, 502, 0, 0),
(3, 29, 503, 0, 0),
(3, 29, 504, 0, 0),
(3, 29, 505, 0, 0),
(3, 29, 513, 0, 0),
(3, 10, 518, 0, 0),
(3, 10, 519, 0, 0),
(3, 10, 520, 0, 0),
(3, 10, 521, 0, 0),
(3, 10, 522, 0, 0),
(3, 10, 523, 0, 0),
(3, 34, 524, 0, 0),
(3, 34, 525, 0, 0),
(3, 34, 526, 0, 0),
(3, 34, 527, 0, 0),
(3, 34, 528, 0, 0),
(3, 34, 529, 0, 0),
(3, 34, 530, 0, 0),
(3, 34, 531, 0, 0),
(3, 34, 532, 0, 0),
(3, 34, 533, 0, 0),
(3, 34, 534, 0, 0),
(3, 34, 535, 0, 0),
(3, 34, 536, 0, 0),
(3, 34, 537, 0, 0),
(3, 34, 538, 0, 0),
(3, 34, 539, 0, 0),
(3, 29, 540, 0, 0),
(3, 35, 541, 0, 0),
(3, 35, 542, 0, 0),
(3, 35, 543, 0, 0),
(3, 35, 544, 0, 0),
(3, 35, 545, 0, 0),
(3, 35, 546, 0, 0),
(3, 35, 547, 0, 0),
(3, 35, 548, 0, 0),
(3, 35, 549, 0, 0),
(3, 35, 550, 0, 0),
(3, 35, 551, 0, 0),
(3, 35, 552, 0, 0),
(3, 35, 553, 0, 0),
(3, 35, 554, 0, 0),
(3, 35, 555, 0, 0),
(3, 35, 556, 0, 0),
(3, 35, 557, 0, 0),
(3, 35, 558, 0, 0),
(3, 35, 559, 0, 0),
(3, 36, 560, 0, 0),
(3, 36, 561, 0, 0),
(3, 36, 562, 0, 0),
(3, 36, 563, 0, 0),
(3, 36, 564, 0, 0),
(3, 36, 565, 0, 0),
(3, 36, 566, 0, 0),
(3, 36, 567, 0, 0),
(3, 36, 568, 0, 0),
(3, 36, 569, 0, 0),
(3, 36, 570, 0, 0),
(3, 36, 571, 0, 0),
(3, 36, 572, 0, 0),
(3, 36, 573, 0, 0),
(3, 36, 574, 0, 0),
(3, 36, 575, 0, 0),
(3, 36, 576, 0, 0),
(3, 36, 577, 0, 0),
(3, 36, 578, 0, 0),
(3, 38, 579, 0, 0),
(3, 38, 580, 0, 0),
(3, 38, 581, 0, 0),
(3, 38, 582, 0, 0),
(3, 38, 583, 0, 0),
(3, 38, 584, 0, 0),
(3, 38, 585, 0, 0),
(3, 38, 586, 0, 0),
(3, 38, 587, 0, 0),
(3, 38, 588, 0, 0),
(3, 38, 589, 0, 0),
(3, 38, 590, 0, 0),
(3, 38, 591, 0, 0),
(3, 38, 592, 0, 0),
(3, 38, 593, 0, 0),
(3, 38, 594, 0, 0),
(3, 38, 595, 0, 0),
(3, 38, 596, 0, 0),
(3, 42, 597, 0, 0),
(3, 42, 598, 0, 0),
(3, 42, 599, 0, 0),
(3, 42, 600, 0, 0),
(3, 42, 601, 0, 0),
(3, 42, 602, 0, 0),
(3, 42, 603, 0, 0),
(3, 43, 604, 0, 0),
(3, 43, 605, 0, 0),
(3, 43, 606, 0, 0),
(3, 43, 607, 0, 0),
(3, 43, 608, 0, 0),
(3, 43, 609, 0, 0),
(3, 43, 610, 0, 0),
(3, 43, 611, 0, 0),
(3, 43, 612, 0, 0),
(3, 43, 613, 0, 0),
(3, 44, 614, 0, 0),
(3, 44, 615, 0, 0),
(3, 44, 616, 0, 0),
(3, 44, 617, 0, 0),
(3, 44, 618, 0, 0),
(3, 44, 619, 0, 0),
(3, 44, 620, 0, 0),
(3, 44, 621, 0, 0),
(3, 44, 622, 0, 0),
(3, 44, 623, 0, 0),
(3, 44, 624, 0, 0),
(3, 44, 625, 0, 0),
(3, 44, 626, 0, 0),
(3, 44, 627, 0, 0),
(3, 44, 628, 0, 0),
(3, 45, 629, 0, 0),
(3, 45, 630, 0, 0),
(3, 45, 631, 0, 0),
(3, 45, 632, 0, 0),
(3, 45, 633, 0, 0),
(3, 45, 634, 0, 0),
(3, 45, 635, 0, 0),
(3, 45, 636, 0, 0),
(3, 45, 637, 0, 0),
(3, 45, 638, 0, 0),
(3, 45, 639, 0, 0),
(3, 45, 640, 0, 0),
(3, 45, 641, 0, 0),
(3, 45, 642, 0, 0),
(3, 45, 643, 0, 0),
(3, 45, 644, 0, 0),
(3, 45, 645, 0, 0),
(3, 47, 646, 0, 0),
(3, 47, 647, 0, 0),
(3, 47, 648, 0, 0),
(3, 47, 649, 0, 0),
(3, 47, 650, 0, 0),
(3, 2, 651, 0, 0),
(3, 29, 652, 0, 0),
(3, 23, 653, 0, 0),
(3, 23, 654, 0, 0),
(3, 23, 655, 0, 0),
(3, 23, 656, 0, 0),
(3, 23, 657, 0, 0),
(3, 23, 658, 0, 0),
(3, 23, 659, 0, 0),
(3, 23, 660, 0, 0),
(3, 23, 661, 0, 0),
(3, 22, 662, 0, 0),
(3, 22, 663, 0, 0),
(3, 22, 664, 0, 0),
(3, 22, 665, 0, 0),
(3, 22, 666, 0, 0),
(3, 22, 667, 0, 0),
(3, 22, 668, 0, 0),
(3, 22, 669, 0, 0),
(3, 22, 670, 0, 0),
(3, 21, 671, 0, 0),
(3, 21, 672, 0, 0),
(3, 21, 673, 0, 0),
(3, 21, 674, 0, 0),
(3, 21, 675, 0, 0),
(3, 21, 676, 0, 0),
(3, 21, 677, 0, 0),
(3, 21, 678, 0, 0),
(3, 21, 679, 0, 0),
(3, 20, 680, 0, 0),
(3, 20, 681, 0, 0),
(3, 20, 682, 0, 0),
(3, 20, 683, 0, 0),
(3, 20, 684, 0, 0),
(3, 20, 685, 0, 0),
(3, 20, 686, 0, 0),
(3, 20, 687, 0, 0),
(3, 20, 688, 0, 0),
(3, 29, 689, 0, 0),
(3, 44, 690, 0, 0),
(3, 42, 691, 0, 0),
(3, 29, 692, 0, 0),
(3, 29, 693, 0, 0),
(3, 29, 694, 0, 0),
(3, 23, 695, 0, 0),
(3, 22, 696, 0, 0),
(3, 21, 697, 0, 0),
(3, 20, 698, 0, 0),
(3, 29, 699, 0, 0),
(3, 6, 700, 0, 0),
(3, 4, 701, 0, 0),
(3, 2, 702, 0, 0),
(3, 29, 703, 0, 0),
(3, 23, 704, 0, 0),
(3, 23, 705, 0, 0),
(3, 21, 706, 0, 0),
(3, 21, 707, 0, 0),
(3, 18, 708, 0, 0),
(3, 7, 709, 0, 0),
(3, 42, 710, 0, 0),
(3, 42, 711, 0, 0),
(3, 23, 712, 0, 0),
(3, 20, 713, 0, 0),
(3, 21, 714, 0, 0),
(3, 22, 715, 0, 0),
(3, 29, 716, 0, 0),
(3, 2, 717, 0, 0),
(3, 13, 718, 0, 0),
(3, 29, 719, 0, 0),
(3, 13, 720, 0, 0),
(3, 29, 721, 0, 0),
(3, 29, 722, 0, 0),
(3, 29, 723, 0, 0),
(3, 2, 724, 0, 0),
(3, 4, 725, 0, 0),
(3, 6, 726, 0, 0),
(3, 7, 727, 0, 0),
(3, 9, 729, 0, 0),
(3, 13, 730, 0, 0),
(3, 18, 734, 0, 0),
(3, 21, 737, 0, 0),
(3, 23, 739, 0, 0),
(3, 42, 745, 0, 0),
(3, 43, 746, 0, 0),
(3, 44, 747, 0, 0),
(3, 45, 748, 0, 0),
(3, 29, 750, 0, 0),
(3, 14, 752, 0, 0),
(3, 23, 753, 0, 0),
(3, 20, 754, 0, 0),
(3, 21, 755, 0, 0),
(3, 22, 756, 0, 0),
(3, 23, 757, 0, 0),
(3, 20, 758, 0, 0),
(3, 21, 759, 0, 0),
(3, 22, 760, 0, 0),
(4, 6, 1, 0, 0),
(4, 6, 2, 0, 0),
(4, 6, 3, 0, 0),
(4, 6, 4, 0, 0),
(4, 6, 5, 0, 0),
(4, 6, 6, 0, 0),
(4, 6, 7, 0, 0),
(4, 6, 8, 0, 0),
(4, 6, 9, 0, 0),
(4, 6, 10, 0, 0),
(4, 6, 11, 0, 0),
(4, 6, 12, 0, 0),
(4, 6, 13, 0, 0),
(4, 6, 14, 0, 0),
(4, 6, 15, 0, 0),
(4, 6, 16, 0, 0),
(4, 6, 17, 0, 0),
(4, 6, 18, 0, 0),
(4, 6, 19, 0, 0),
(4, 6, 20, 0, 0),
(4, 6, 21, 0, 0),
(4, 6, 22, 0, 0),
(4, 6, 23, 0, 0),
(4, 6, 24, 0, 0),
(4, 6, 25, 0, 0),
(4, 6, 26, 0, 0),
(4, 6, 27, 0, 0),
(4, 6, 28, 0, 0),
(4, 6, 29, 0, 0),
(4, 6, 30, 0, 0),
(4, 6, 31, 0, 0),
(4, 6, 32, 0, 0),
(4, 6, 33, 0, 0),
(4, 6, 34, 0, 0),
(4, 6, 35, 0, 0),
(4, 6, 36, 0, 0),
(4, 7, 37, 0, 0),
(4, 7, 38, 0, 0),
(4, 7, 39, 0, 0),
(4, 7, 40, 0, 0),
(4, 7, 41, 0, 0),
(4, 7, 42, 0, 0),
(4, 7, 43, 0, 0),
(4, 7, 44, 0, 0),
(4, 7, 45, 0, 0),
(4, 7, 46, 0, 0),
(4, 7, 47, 0, 0),
(4, 7, 48, 0, 0),
(4, 7, 49, 0, 0),
(4, 7, 50, 0, 0),
(4, 7, 51, 0, 0),
(4, 7, 52, 0, 0),
(4, 7, 53, 0, 0),
(4, 7, 54, 0, 0),
(4, 7, 55, 0, 0),
(4, 7, 56, 0, 0),
(4, 7, 57, 0, 0),
(4, 7, 58, 0, 0),
(4, 7, 59, 0, 0),
(4, 7, 60, 0, 0),
(4, 7, 61, 0, 0),
(4, 7, 62, 0, 0),
(4, 7, 63, 0, 0),
(4, 7, 64, 0, 0),
(4, 7, 65, 0, 0),
(4, 4, 66, 0, 0),
(4, 4, 67, 0, 0),
(4, 4, 68, 0, 0),
(4, 4, 69, 0, 0),
(4, 4, 70, 0, 0),
(4, 4, 71, 0, 0),
(4, 4, 72, 0, 0),
(4, 4, 73, 0, 0),
(4, 4, 74, 0, 0),
(4, 4, 75, 0, 0),
(4, 4, 76, 0, 0),
(4, 4, 77, 0, 0),
(4, 4, 78, 0, 0),
(4, 4, 79, 0, 0),
(4, 4, 80, 0, 0),
(4, 4, 81, 0, 0),
(4, 4, 82, 0, 0),
(4, 4, 83, 0, 0),
(4, 4, 84, 0, 0),
(4, 4, 85, 0, 0),
(4, 4, 86, 0, 0),
(4, 4, 87, 0, 0),
(4, 4, 88, 0, 0),
(4, 4, 89, 0, 0),
(4, 4, 90, 0, 0),
(4, 4, 91, 0, 0),
(4, 4, 92, 0, 0),
(4, 4, 93, 0, 0),
(4, 4, 94, 0, 0),
(4, 4, 95, 0, 0),
(4, 4, 96, 0, 0),
(4, 4, 97, 0, 0),
(4, 4, 98, 0, 0),
(4, 4, 99, 0, 0),
(4, 4, 100, 0, 0),
(4, 4, 101, 0, 0),
(4, 4, 102, 0, 0),
(4, 4, 103, 0, 0),
(4, 4, 104, 0, 0),
(4, 4, 105, 0, 0),
(4, 4, 106, 0, 0),
(4, 4, 107, 0, 0),
(4, 4, 108, 0, 0),
(4, 4, 109, 0, 0),
(4, 2, 110, 0, 0),
(4, 2, 111, 0, 0),
(4, 2, 112, 0, 0),
(4, 2, 113, 0, 0),
(4, 2, 114, 0, 0),
(4, 2, 115, 0, 0),
(4, 2, 116, 0, 0),
(4, 2, 117, 0, 0),
(4, 2, 118, 0, 0),
(4, 2, 119, 0, 0),
(4, 2, 120, 0, 0),
(4, 2, 121, 0, 0),
(4, 2, 122, 0, 0),
(4, 2, 123, 0, 0),
(4, 2, 124, 0, 0),
(4, 2, 125, 0, 0),
(4, 26, 126, 0, 0),
(4, 26, 127, 0, 0),
(4, 26, 128, 0, 0),
(4, 26, 129, 0, 0),
(4, 26, 130, 0, 0),
(4, 26, 131, 0, 0),
(4, 26, 132, 0, 0),
(4, 26, 133, 0, 0),
(4, 26, 134, 0, 0),
(4, 26, 135, 0, 0),
(4, 26, 136, 0, 0),
(4, 26, 137, 0, 0),
(4, 26, 138, 0, 0),
(4, 26, 139, 0, 0),
(4, 26, 140, 0, 0),
(4, 26, 141, 0, 0),
(4, 26, 142, 0, 0),
(4, 26, 143, 0, 0),
(4, 26, 144, 0, 0),
(4, 26, 145, 0, 0),
(4, 26, 146, 0, 0),
(4, 26, 147, 0, 0),
(4, 26, 148, 0, 0),
(4, 26, 149, 0, 0),
(4, 26, 150, 0, 0),
(4, 4, 151, 0, 0),
(4, 6, 152, 0, 0),
(4, 7, 153, 0, 0),
(4, 26, 154, 0, 0),
(4, 13, 155, 0, 0),
(4, 13, 156, 0, 0),
(4, 13, 157, 0, 0),
(4, 13, 158, 0, 0),
(4, 13, 159, 0, 0),
(4, 13, 160, 0, 0),
(4, 13, 161, 0, 0),
(4, 13, 162, 0, 0),
(4, 13, 163, 0, 0),
(4, 13, 164, 0, 0),
(4, 13, 165, 0, 0),
(4, 13, 166, 0, 0),
(4, 13, 167, 0, 0),
(4, 13, 168, 0, 0),
(4, 13, 169, 0, 0),
(4, 13, 170, 0, 0),
(4, 13, 171, 0, 0),
(4, 13, 172, 0, 0),
(4, 14, 173, 0, 0),
(4, 14, 174, 0, 0),
(4, 14, 175, 0, 0),
(4, 14, 176, 0, 0),
(4, 14, 177, 0, 0),
(4, 14, 178, 0, 0),
(4, 14, 179, 0, 0),
(4, 14, 180, 0, 0),
(4, 14, 181, 0, 0),
(4, 14, 182, 0, 0),
(4, 14, 183, 0, 0),
(4, 14, 184, 0, 0),
(4, 14, 185, 0, 0),
(4, 14, 186, 0, 0),
(4, 14, 187, 0, 0),
(4, 14, 188, 0, 0),
(4, 14, 189, 0, 0),
(4, 14, 190, 0, 0),
(4, 14, 191, 0, 0),
(4, 14, 192, 0, 0),
(4, 14, 193, 0, 0),
(4, 14, 194, 0, 0),
(4, 14, 195, 0, 0),
(4, 14, 196, 0, 0),
(4, 14, 197, 0, 0),
(4, 14, 198, 0, 0),
(4, 14, 199, 0, 0),
(4, 14, 200, 0, 0),
(4, 14, 201, 0, 0),
(4, 14, 202, 0, 0),
(4, 14, 203, 0, 0),
(4, 8, 204, 0, 0),
(4, 8, 205, 0, 0),
(4, 8, 206, 0, 0),
(4, 8, 207, 0, 0),
(4, 8, 208, 0, 0),
(4, 8, 209, 0, 0),
(4, 8, 210, 0, 0),
(4, 8, 211, 0, 0),
(4, 8, 212, 0, 0),
(4, 8, 213, 0, 0),
(4, 8, 214, 0, 0),
(4, 8, 215, 0, 0),
(4, 8, 216, 0, 0),
(4, 8, 217, 0, 0),
(4, 8, 218, 0, 0),
(4, 10, 219, 0, 0),
(4, 10, 220, 0, 0),
(4, 10, 221, 0, 0),
(4, 10, 222, 0, 0),
(4, 10, 223, 0, 0),
(4, 10, 224, 0, 0),
(4, 10, 225, 0, 0),
(4, 10, 226, 0, 0),
(4, 10, 227, 0, 0),
(4, 10, 228, 0, 0),
(4, 10, 229, 0, 0),
(4, 10, 230, 0, 0),
(4, 9, 231, 0, 0),
(4, 9, 232, 0, 0),
(4, 9, 233, 0, 0),
(4, 9, 234, 0, 0),
(4, 9, 235, 0, 0),
(4, 9, 236, 0, 0),
(4, 9, 237, 0, 0),
(4, 9, 238, 0, 0),
(4, 9, 239, 0, 0),
(4, 9, 240, 0, 0),
(4, 9, 241, 0, 0),
(4, 9, 242, 0, 0),
(4, 9, 243, 0, 0),
(4, 9, 244, 0, 0),
(4, 9, 245, 0, 0),
(4, 9, 246, 0, 0),
(4, 9, 247, 0, 0),
(4, 9, 248, 0, 0),
(4, 9, 249, 0, 0),
(4, 9, 250, 0, 0),
(4, 9, 251, 0, 0),
(4, 9, 252, 0, 0),
(4, 9, 253, 0, 0),
(4, 9, 254, 0, 0),
(4, 16, 255, 0, 0),
(4, 16, 256, 0, 0),
(4, 16, 257, 0, 0),
(4, 16, 258, 0, 0),
(4, 16, 259, 0, 0),
(4, 16, 260, 0, 0),
(4, 16, 261, 0, 0),
(4, 16, 262, 0, 0),
(4, 16, 263, 0, 0),
(4, 16, 264, 0, 0),
(4, 16, 265, 0, 0),
(4, 16, 266, 0, 0),
(4, 16, 267, 0, 0),
(4, 16, 268, 0, 0),
(4, 16, 269, 0, 0),
(4, 16, 270, 0, 0),
(4, 16, 271, 0, 0),
(4, 16, 272, 0, 0),
(4, 16, 273, 0, 0),
(4, 16, 274, 0, 0),
(4, 16, 275, 0, 0),
(4, 16, 276, 0, 0),
(4, 16, 277, 0, 0),
(4, 15, 278, 0, 0),
(4, 15, 279, 0, 0),
(4, 15, 280, 0, 0),
(4, 15, 281, 0, 0),
(4, 15, 282, 0, 0),
(4, 15, 283, 0, 0),
(4, 15, 284, 0, 0),
(4, 15, 285, 0, 0),
(4, 15, 286, 0, 0),
(4, 15, 287, 0, 0),
(4, 18, 288, 0, 0),
(4, 18, 289, 0, 0),
(4, 18, 290, 0, 0),
(4, 18, 291, 0, 0),
(4, 18, 292, 0, 0),
(4, 18, 293, 0, 0),
(4, 18, 294, 0, 0),
(4, 18, 295, 0, 0),
(4, 18, 296, 0, 0),
(4, 18, 297, 0, 0),
(4, 18, 298, 0, 0),
(4, 18, 299, 0, 0),
(4, 18, 300, 0, 0),
(4, 18, 301, 0, 0),
(4, 18, 302, 0, 0),
(4, 18, 303, 0, 0),
(4, 18, 304, 0, 0),
(4, 19, 305, 0, 0),
(4, 19, 306, 0, 0),
(4, 19, 307, 0, 0),
(4, 19, 308, 0, 0),
(4, 19, 309, 0, 0),
(4, 19, 310, 0, 0),
(4, 19, 311, 0, 0),
(4, 19, 312, 0, 0),
(4, 20, 313, 0, 0),
(4, 20, 314, 0, 0),
(4, 20, 315, 0, 0),
(4, 20, 316, 0, 0),
(4, 20, 317, 0, 0),
(4, 20, 318, 0, 0),
(4, 20, 319, 0, 0),
(4, 20, 320, 0, 0),
(4, 20, 321, 0, 0),
(4, 20, 322, 0, 0),
(4, 20, 323, 0, 0),
(4, 20, 324, 0, 0),
(4, 20, 325, 0, 0),
(4, 20, 326, 0, 0),
(4, 20, 327, 0, 0),
(4, 20, 328, 0, 0),
(4, 20, 329, 0, 0),
(4, 20, 330, 0, 0),
(4, 20, 331, 0, 0),
(4, 20, 332, 0, 0),
(4, 20, 333, 0, 0),
(4, 20, 334, 0, 0),
(4, 20, 335, 0, 0),
(4, 20, 336, 0, 0),
(4, 20, 337, 0, 0),
(4, 20, 338, 0, 0),
(4, 20, 339, 0, 0),
(4, 20, 340, 0, 0),
(4, 20, 341, 0, 0),
(4, 20, 342, 0, 0),
(4, 20, 343, 0, 0),
(4, 20, 344, 0, 0),
(4, 20, 345, 0, 0),
(4, 20, 346, 0, 0),
(4, 20, 347, 0, 0),
(4, 20, 348, 0, 0),
(4, 20, 349, 0, 0),
(4, 21, 350, 0, 0),
(4, 21, 351, 0, 0),
(4, 21, 352, 0, 0),
(4, 21, 353, 0, 0),
(4, 21, 354, 0, 0),
(4, 21, 355, 0, 0),
(4, 21, 356, 0, 0),
(4, 21, 357, 0, 0),
(4, 21, 358, 0, 0),
(4, 21, 359, 0, 0),
(4, 21, 360, 0, 0),
(4, 21, 361, 0, 0),
(4, 21, 362, 0, 0),
(4, 21, 363, 0, 0),
(4, 21, 364, 0, 0),
(4, 21, 365, 0, 0),
(4, 21, 366, 0, 0),
(4, 21, 367, 0, 0),
(4, 21, 368, 0, 0),
(4, 21, 369, 0, 0),
(4, 21, 370, 0, 0),
(4, 21, 371, 0, 0),
(4, 21, 372, 0, 0),
(4, 21, 373, 0, 0),
(4, 21, 374, 0, 0),
(4, 21, 375, 0, 0),
(4, 21, 376, 0, 0),
(4, 21, 377, 0, 0),
(4, 21, 378, 0, 0),
(4, 21, 379, 0, 0),
(4, 21, 380, 0, 0),
(4, 21, 381, 0, 0),
(4, 21, 382, 0, 0),
(4, 21, 383, 0, 0),
(4, 21, 384, 0, 0),
(4, 21, 385, 0, 0),
(4, 21, 386, 0, 0),
(4, 21, 387, 0, 0),
(4, 22, 388, 0, 0),
(4, 22, 389, 0, 0),
(4, 22, 390, 0, 0),
(4, 22, 391, 0, 0),
(4, 22, 392, 0, 0),
(4, 22, 393, 0, 0),
(4, 22, 394, 0, 0),
(4, 22, 395, 0, 0),
(4, 22, 396, 0, 0),
(4, 22, 397, 0, 0),
(4, 22, 398, 0, 0),
(4, 22, 399, 0, 0),
(4, 22, 400, 0, 0),
(4, 22, 401, 0, 0),
(4, 22, 402, 0, 0),
(4, 22, 403, 0, 0),
(4, 22, 404, 0, 0),
(4, 22, 405, 0, 0),
(4, 22, 406, 0, 0),
(4, 22, 407, 0, 0),
(4, 22, 408, 0, 0),
(4, 22, 409, 0, 0),
(4, 22, 410, 0, 0),
(4, 22, 411, 0, 0),
(4, 22, 412, 0, 0),
(4, 22, 413, 0, 0),
(4, 22, 414, 0, 0),
(4, 22, 415, 0, 0),
(4, 22, 416, 0, 0),
(4, 22, 417, 0, 0),
(4, 22, 418, 0, 0),
(4, 22, 419, 0, 0),
(4, 22, 420, 0, 0),
(4, 22, 421, 0, 0),
(4, 22, 422, 0, 0),
(4, 22, 423, 0, 0),
(4, 22, 424, 0, 0),
(4, 22, 425, 0, 0),
(4, 22, 426, 0, 0),
(4, 22, 427, 0, 0),
(4, 22, 428, 0, 0),
(4, 22, 429, 0, 0),
(4, 22, 430, 0, 0),
(4, 22, 431, 0, 0),
(4, 22, 432, 0, 0),
(4, 22, 433, 0, 0),
(4, 22, 434, 0, 0),
(4, 23, 435, 0, 0),
(4, 23, 436, 0, 0),
(4, 23, 437, 0, 0),
(4, 23, 438, 0, 0),
(4, 23, 439, 0, 0),
(4, 23, 440, 0, 0),
(4, 23, 441, 0, 0),
(4, 23, 442, 0, 0),
(4, 23, 443, 0, 0),
(4, 23, 444, 0, 0),
(4, 23, 445, 0, 0),
(4, 23, 446, 0, 0),
(4, 23, 447, 0, 0),
(4, 23, 448, 0, 0),
(4, 23, 449, 0, 0),
(4, 23, 450, 0, 0),
(4, 23, 451, 0, 0),
(4, 23, 452, 0, 0),
(4, 23, 453, 0, 0),
(4, 23, 454, 0, 0),
(4, 23, 455, 0, 0),
(4, 23, 456, 0, 0),
(4, 23, 457, 0, 0),
(4, 23, 458, 0, 0),
(4, 23, 459, 0, 0),
(4, 23, 460, 0, 0),
(4, 23, 461, 0, 0),
(4, 23, 462, 0, 0),
(4, 23, 463, 0, 0),
(4, 23, 464, 0, 0),
(4, 23, 465, 0, 0),
(4, 23, 466, 0, 0),
(4, 23, 467, 0, 0),
(4, 23, 468, 0, 0),
(4, 23, 469, 0, 0),
(4, 23, 470, 0, 0),
(4, 23, 471, 0, 0),
(4, 23, 472, 0, 0),
(4, 23, 473, 0, 0),
(4, 29, 474, 0, 0),
(4, 29, 478, 0, 0),
(4, 29, 479, 0, 0),
(4, 29, 481, 0, 0),
(4, 29, 488, 0, 0),
(4, 29, 489, 0, 0),
(4, 29, 490, 0, 0),
(4, 29, 491, 0, 0),
(4, 29, 493, 0, 0),
(4, 29, 494, 0, 0),
(4, 29, 495, 0, 0),
(4, 29, 496, 0, 0),
(4, 29, 497, 0, 0),
(4, 29, 502, 0, 0),
(4, 29, 503, 0, 0),
(4, 29, 504, 0, 0),
(4, 29, 505, 0, 0),
(4, 29, 513, 0, 0),
(4, 10, 518, 0, 0),
(4, 10, 519, 0, 0),
(4, 10, 520, 0, 0),
(4, 10, 521, 0, 0),
(4, 10, 522, 0, 0),
(4, 10, 523, 0, 0),
(4, 34, 524, 0, 0),
(4, 34, 525, 0, 0),
(4, 34, 526, 0, 0),
(4, 34, 527, 0, 0),
(4, 34, 528, 0, 0),
(4, 34, 529, 0, 0),
(4, 34, 530, 0, 0),
(4, 34, 531, 0, 0),
(4, 34, 532, 0, 0),
(4, 34, 533, 0, 0),
(4, 34, 534, 0, 0),
(4, 34, 535, 0, 0),
(4, 34, 536, 0, 0),
(4, 34, 537, 0, 0),
(4, 34, 538, 0, 0),
(4, 34, 539, 0, 0),
(4, 29, 540, 0, 0),
(4, 35, 541, 0, 0),
(4, 35, 542, 0, 0),
(4, 35, 543, 0, 0),
(4, 35, 544, 0, 0),
(4, 35, 545, 0, 0),
(4, 35, 546, 0, 0),
(4, 35, 547, 0, 0),
(4, 35, 548, 0, 0),
(4, 35, 549, 0, 0),
(4, 35, 550, 0, 0),
(4, 35, 551, 0, 0),
(4, 35, 552, 0, 0),
(4, 35, 553, 0, 0),
(4, 35, 554, 0, 0),
(4, 35, 555, 0, 0),
(4, 35, 556, 0, 0),
(4, 35, 557, 0, 0),
(4, 35, 558, 0, 0),
(4, 35, 559, 0, 0),
(4, 36, 560, 0, 0),
(4, 36, 561, 0, 0),
(4, 36, 562, 0, 0),
(4, 36, 563, 0, 0),
(4, 36, 564, 0, 0),
(4, 36, 565, 0, 0),
(4, 36, 566, 0, 0),
(4, 36, 567, 0, 0),
(4, 36, 568, 0, 0),
(4, 36, 569, 0, 0),
(4, 36, 570, 0, 0),
(4, 36, 571, 0, 0),
(4, 36, 572, 0, 0),
(4, 36, 573, 0, 0),
(4, 36, 574, 0, 0),
(4, 36, 575, 0, 0),
(4, 36, 576, 0, 0),
(4, 36, 577, 0, 0),
(4, 36, 578, 0, 0),
(4, 38, 579, 0, 0),
(4, 38, 580, 0, 0),
(4, 38, 581, 0, 0),
(4, 38, 582, 0, 0),
(4, 38, 583, 0, 0),
(4, 38, 584, 0, 0),
(4, 38, 585, 0, 0),
(4, 38, 586, 0, 0),
(4, 38, 587, 0, 0),
(4, 38, 588, 0, 0),
(4, 38, 589, 0, 0),
(4, 38, 590, 0, 0),
(4, 38, 591, 0, 0),
(4, 38, 592, 0, 0),
(4, 38, 593, 0, 0),
(4, 38, 594, 0, 0),
(4, 38, 595, 0, 0),
(4, 38, 596, 0, 0),
(4, 42, 597, 0, 0),
(4, 42, 598, 0, 0),
(4, 42, 599, 0, 0),
(4, 42, 600, 0, 0),
(4, 42, 601, 0, 0),
(4, 42, 602, 0, 0),
(4, 42, 603, 0, 0),
(4, 43, 604, 0, 0),
(4, 43, 605, 0, 0),
(4, 43, 606, 0, 0),
(4, 43, 607, 0, 0),
(4, 43, 608, 0, 0),
(4, 43, 609, 0, 0),
(4, 43, 610, 0, 0),
(4, 43, 611, 0, 0),
(4, 43, 612, 0, 0),
(4, 43, 613, 0, 0),
(4, 44, 614, 0, 0),
(4, 44, 615, 0, 0),
(4, 44, 616, 0, 0),
(4, 44, 617, 0, 0),
(4, 44, 618, 0, 0),
(4, 44, 619, 0, 0),
(4, 44, 620, 0, 0),
(4, 44, 621, 0, 0),
(4, 44, 622, 0, 0),
(4, 44, 623, 0, 0),
(4, 44, 624, 0, 0),
(4, 44, 625, 0, 0),
(4, 44, 626, 0, 0),
(4, 44, 627, 0, 0),
(4, 44, 628, 0, 0),
(4, 45, 629, 0, 0),
(4, 45, 630, 0, 0),
(4, 45, 631, 0, 0),
(4, 45, 632, 0, 0),
(4, 45, 633, 0, 0),
(4, 45, 634, 0, 0),
(4, 45, 635, 0, 0),
(4, 45, 636, 0, 0),
(4, 45, 637, 0, 0),
(4, 45, 638, 0, 0),
(4, 45, 639, 0, 0),
(4, 45, 640, 0, 0),
(4, 45, 641, 0, 0),
(4, 45, 642, 0, 0),
(4, 45, 643, 0, 0),
(4, 45, 644, 0, 0),
(4, 45, 645, 0, 0),
(4, 47, 646, 0, 0),
(4, 47, 647, 0, 0),
(4, 47, 648, 0, 0),
(4, 47, 649, 0, 0),
(4, 47, 650, 0, 0),
(4, 2, 651, 0, 0),
(4, 29, 652, 0, 0),
(4, 23, 653, 0, 0),
(4, 23, 654, 0, 0),
(4, 23, 655, 0, 0),
(4, 23, 656, 0, 0),
(4, 23, 657, 0, 0),
(4, 23, 658, 0, 0),
(4, 23, 659, 0, 0),
(4, 23, 660, 0, 0),
(4, 23, 661, 0, 0),
(4, 22, 662, 0, 0),
(4, 22, 663, 0, 0),
(4, 22, 664, 0, 0),
(4, 22, 665, 0, 0),
(4, 22, 666, 0, 0),
(4, 22, 667, 0, 0),
(4, 22, 668, 0, 0),
(4, 22, 669, 0, 0),
(4, 22, 670, 0, 0),
(4, 21, 671, 0, 0),
(4, 21, 672, 0, 0),
(4, 21, 673, 0, 0),
(4, 21, 674, 0, 0),
(4, 21, 675, 0, 0),
(4, 21, 676, 0, 0),
(4, 21, 677, 0, 0),
(4, 21, 678, 0, 0),
(4, 21, 679, 0, 0),
(4, 20, 680, 0, 0),
(4, 20, 681, 0, 0),
(4, 20, 682, 0, 0),
(4, 20, 683, 0, 0),
(4, 20, 684, 0, 0),
(4, 20, 685, 0, 0),
(4, 20, 686, 0, 0),
(4, 20, 687, 0, 0),
(4, 20, 688, 0, 0),
(4, 29, 689, 0, 0),
(4, 44, 690, 0, 0),
(4, 42, 691, 0, 0),
(4, 29, 692, 0, 0),
(4, 29, 693, 0, 0),
(4, 29, 694, 0, 0),
(4, 23, 695, 0, 0),
(4, 22, 696, 0, 0),
(4, 21, 697, 0, 0),
(4, 20, 698, 0, 0),
(4, 29, 699, 0, 0),
(4, 6, 700, 0, 0),
(4, 4, 701, 0, 0);
INSERT INTO `vtiger_profile2field` (`profileid`, `tabid`, `fieldid`, `visible`, `readonly`) VALUES
(4, 2, 702, 0, 0),
(4, 29, 703, 0, 0),
(4, 23, 704, 0, 0),
(4, 23, 705, 0, 0),
(4, 21, 706, 0, 0),
(4, 21, 707, 0, 0),
(4, 18, 708, 0, 0),
(4, 7, 709, 0, 0),
(4, 42, 710, 0, 0),
(4, 42, 711, 0, 0),
(4, 23, 712, 0, 0),
(4, 20, 713, 0, 0),
(4, 21, 714, 0, 0),
(4, 22, 715, 0, 0),
(4, 29, 716, 0, 0),
(4, 2, 717, 0, 0),
(4, 13, 718, 0, 0),
(4, 29, 719, 0, 0),
(4, 13, 720, 0, 0),
(4, 29, 721, 0, 0),
(4, 29, 722, 0, 0),
(4, 29, 723, 0, 0),
(4, 2, 724, 0, 0),
(4, 4, 725, 0, 0),
(4, 6, 726, 0, 0),
(4, 7, 727, 0, 0),
(4, 9, 729, 0, 0),
(4, 13, 730, 0, 0),
(4, 18, 734, 0, 0),
(4, 21, 737, 0, 0),
(4, 23, 739, 0, 0),
(4, 42, 745, 0, 0),
(4, 43, 746, 0, 0),
(4, 44, 747, 0, 0),
(4, 45, 748, 0, 0),
(4, 29, 750, 0, 0),
(4, 14, 752, 0, 0),
(4, 23, 753, 0, 0),
(4, 20, 754, 0, 0),
(4, 21, 755, 0, 0),
(4, 22, 756, 0, 0),
(4, 23, 757, 0, 0),
(4, 20, 758, 0, 0),
(4, 21, 759, 0, 0),
(4, 22, 760, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2globalpermissions`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2globalpermissions` (
  `profileid` int(19) NOT NULL,
  `globalactionid` int(19) NOT NULL,
  `globalactionpermission` int(19) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`globalactionid`),
  KEY `idx_profile2globalpermissions` (`profileid`,`globalactionid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2globalpermissions`
--

INSERT INTO `vtiger_profile2globalpermissions` (`profileid`, `globalactionid`, `globalactionpermission`) VALUES
(1, 1, 0),
(1, 2, 0),
(2, 1, 1),
(2, 2, 1),
(3, 1, 1),
(3, 2, 1),
(4, 1, 1),
(4, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2standardpermissions`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2standardpermissions` (
  `profileid` int(11) NOT NULL,
  `tabid` int(10) NOT NULL,
  `operation` int(10) NOT NULL,
  `permissions` int(1) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`tabid`,`operation`),
  KEY `profile2standardpermissions_profileid_tabid_operation_idx` (`profileid`,`tabid`,`operation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2standardpermissions`
--

INSERT INTO `vtiger_profile2standardpermissions` (`profileid`, `tabid`, `operation`, `permissions`) VALUES
(1, 2, 0, 0),
(1, 2, 1, 0),
(1, 2, 2, 0),
(1, 2, 3, 0),
(1, 2, 4, 0),
(1, 4, 0, 0),
(1, 4, 1, 0),
(1, 4, 2, 0),
(1, 4, 3, 0),
(1, 4, 4, 0),
(1, 6, 0, 0),
(1, 6, 1, 0),
(1, 6, 2, 0),
(1, 6, 3, 0),
(1, 6, 4, 0),
(1, 7, 0, 0),
(1, 7, 1, 0),
(1, 7, 2, 0),
(1, 7, 3, 0),
(1, 7, 4, 0),
(1, 8, 0, 0),
(1, 8, 1, 0),
(1, 8, 2, 0),
(1, 8, 3, 0),
(1, 8, 4, 0),
(1, 9, 0, 0),
(1, 9, 1, 0),
(1, 9, 2, 0),
(1, 9, 3, 0),
(1, 9, 4, 0),
(1, 13, 0, 0),
(1, 13, 1, 0),
(1, 13, 2, 0),
(1, 13, 3, 0),
(1, 13, 4, 0),
(1, 14, 0, 0),
(1, 14, 1, 0),
(1, 14, 2, 0),
(1, 14, 3, 0),
(1, 14, 4, 0),
(1, 15, 0, 0),
(1, 15, 1, 0),
(1, 15, 2, 0),
(1, 15, 3, 0),
(1, 15, 4, 0),
(1, 16, 0, 0),
(1, 16, 1, 0),
(1, 16, 2, 0),
(1, 16, 3, 0),
(1, 16, 4, 0),
(1, 18, 0, 0),
(1, 18, 1, 0),
(1, 18, 2, 0),
(1, 18, 3, 0),
(1, 18, 4, 0),
(1, 19, 0, 0),
(1, 19, 1, 0),
(1, 19, 2, 0),
(1, 19, 3, 0),
(1, 19, 4, 0),
(1, 20, 0, 0),
(1, 20, 1, 0),
(1, 20, 2, 0),
(1, 20, 3, 0),
(1, 20, 4, 0),
(1, 21, 0, 0),
(1, 21, 1, 0),
(1, 21, 2, 0),
(1, 21, 3, 0),
(1, 21, 4, 0),
(1, 22, 0, 0),
(1, 22, 1, 0),
(1, 22, 2, 0),
(1, 22, 3, 0),
(1, 22, 4, 0),
(1, 23, 0, 0),
(1, 23, 1, 0),
(1, 23, 2, 0),
(1, 23, 3, 0),
(1, 23, 4, 0),
(1, 26, 0, 0),
(1, 26, 1, 0),
(1, 26, 2, 0),
(1, 26, 3, 0),
(1, 26, 4, 0),
(1, 34, 0, 0),
(1, 34, 1, 0),
(1, 34, 2, 0),
(1, 34, 3, 0),
(1, 34, 4, 0),
(1, 35, 0, 0),
(1, 35, 1, 0),
(1, 35, 2, 0),
(1, 35, 3, 0),
(1, 35, 4, 0),
(1, 36, 0, 0),
(1, 36, 1, 0),
(1, 36, 2, 0),
(1, 36, 3, 0),
(1, 36, 4, 0),
(1, 38, 0, 0),
(1, 38, 1, 0),
(1, 38, 2, 0),
(1, 38, 3, 0),
(1, 38, 4, 0),
(1, 42, 0, 0),
(1, 42, 1, 0),
(1, 42, 2, 0),
(1, 42, 3, 0),
(1, 42, 4, 0),
(1, 43, 0, 0),
(1, 43, 1, 0),
(1, 43, 2, 0),
(1, 43, 3, 0),
(1, 43, 4, 0),
(1, 44, 0, 0),
(1, 44, 1, 0),
(1, 44, 2, 0),
(1, 44, 3, 0),
(1, 44, 4, 0),
(1, 45, 0, 0),
(1, 45, 1, 0),
(1, 45, 2, 0),
(1, 45, 3, 0),
(1, 45, 4, 0),
(1, 47, 0, 0),
(1, 47, 1, 0),
(1, 47, 2, 0),
(1, 47, 3, 0),
(1, 47, 4, 0),
(2, 2, 0, 0),
(2, 2, 1, 0),
(2, 2, 2, 0),
(2, 2, 3, 0),
(2, 2, 4, 0),
(2, 4, 0, 0),
(2, 4, 1, 0),
(2, 4, 2, 0),
(2, 4, 3, 0),
(2, 4, 4, 0),
(2, 6, 0, 0),
(2, 6, 1, 0),
(2, 6, 2, 0),
(2, 6, 3, 0),
(2, 6, 4, 0),
(2, 7, 0, 0),
(2, 7, 1, 0),
(2, 7, 2, 0),
(2, 7, 3, 0),
(2, 7, 4, 0),
(2, 8, 0, 0),
(2, 8, 1, 0),
(2, 8, 2, 0),
(2, 8, 3, 0),
(2, 8, 4, 0),
(2, 9, 0, 0),
(2, 9, 1, 0),
(2, 9, 2, 0),
(2, 9, 3, 0),
(2, 9, 4, 0),
(2, 13, 0, 1),
(2, 13, 1, 1),
(2, 13, 2, 1),
(2, 13, 3, 0),
(2, 13, 4, 0),
(2, 14, 0, 0),
(2, 14, 1, 0),
(2, 14, 2, 0),
(2, 14, 3, 0),
(2, 14, 4, 0),
(2, 15, 0, 0),
(2, 15, 1, 0),
(2, 15, 2, 0),
(2, 15, 3, 0),
(2, 15, 4, 0),
(2, 16, 0, 0),
(2, 16, 1, 0),
(2, 16, 2, 0),
(2, 16, 3, 0),
(2, 16, 4, 0),
(2, 18, 0, 0),
(2, 18, 1, 0),
(2, 18, 2, 0),
(2, 18, 3, 0),
(2, 18, 4, 0),
(2, 19, 0, 0),
(2, 19, 1, 0),
(2, 19, 2, 0),
(2, 19, 3, 0),
(2, 19, 4, 0),
(2, 20, 0, 0),
(2, 20, 1, 0),
(2, 20, 2, 0),
(2, 20, 3, 0),
(2, 20, 4, 0),
(2, 21, 0, 0),
(2, 21, 1, 0),
(2, 21, 2, 0),
(2, 21, 3, 0),
(2, 21, 4, 0),
(2, 22, 0, 0),
(2, 22, 1, 0),
(2, 22, 2, 0),
(2, 22, 3, 0),
(2, 22, 4, 0),
(2, 23, 0, 0),
(2, 23, 1, 0),
(2, 23, 2, 0),
(2, 23, 3, 0),
(2, 23, 4, 0),
(2, 26, 0, 0),
(2, 26, 1, 0),
(2, 26, 2, 0),
(2, 26, 3, 0),
(2, 26, 4, 0),
(2, 34, 0, 0),
(2, 34, 1, 0),
(2, 34, 2, 0),
(2, 34, 3, 0),
(2, 34, 4, 0),
(2, 35, 0, 0),
(2, 35, 1, 0),
(2, 35, 2, 0),
(2, 35, 3, 0),
(2, 35, 4, 0),
(2, 36, 0, 0),
(2, 36, 1, 0),
(2, 36, 2, 0),
(2, 36, 3, 0),
(2, 36, 4, 0),
(2, 38, 0, 0),
(2, 38, 1, 0),
(2, 38, 2, 0),
(2, 38, 3, 0),
(2, 38, 4, 0),
(2, 42, 0, 0),
(2, 42, 1, 0),
(2, 42, 2, 0),
(2, 42, 3, 0),
(2, 42, 4, 0),
(2, 43, 0, 0),
(2, 43, 1, 0),
(2, 43, 2, 0),
(2, 43, 3, 0),
(2, 43, 4, 0),
(2, 44, 0, 0),
(2, 44, 1, 0),
(2, 44, 2, 0),
(2, 44, 3, 0),
(2, 44, 4, 0),
(2, 45, 0, 0),
(2, 45, 1, 0),
(2, 45, 2, 0),
(2, 45, 3, 0),
(2, 45, 4, 0),
(2, 47, 0, 0),
(2, 47, 1, 0),
(2, 47, 2, 0),
(2, 47, 3, 0),
(2, 47, 4, 0),
(3, 2, 0, 1),
(3, 2, 1, 1),
(3, 2, 2, 1),
(3, 2, 3, 0),
(3, 2, 4, 0),
(3, 4, 0, 0),
(3, 4, 1, 0),
(3, 4, 2, 0),
(3, 4, 3, 0),
(3, 4, 4, 0),
(3, 6, 0, 0),
(3, 6, 1, 0),
(3, 6, 2, 0),
(3, 6, 3, 0),
(3, 6, 4, 0),
(3, 7, 0, 0),
(3, 7, 1, 0),
(3, 7, 2, 0),
(3, 7, 3, 0),
(3, 7, 4, 0),
(3, 8, 0, 0),
(3, 8, 1, 0),
(3, 8, 2, 0),
(3, 8, 3, 0),
(3, 8, 4, 0),
(3, 9, 0, 0),
(3, 9, 1, 0),
(3, 9, 2, 0),
(3, 9, 3, 0),
(3, 9, 4, 0),
(3, 13, 0, 0),
(3, 13, 1, 0),
(3, 13, 2, 0),
(3, 13, 3, 0),
(3, 13, 4, 0),
(3, 14, 0, 0),
(3, 14, 1, 0),
(3, 14, 2, 0),
(3, 14, 3, 0),
(3, 14, 4, 0),
(3, 15, 0, 0),
(3, 15, 1, 0),
(3, 15, 2, 0),
(3, 15, 3, 0),
(3, 15, 4, 0),
(3, 16, 0, 0),
(3, 16, 1, 0),
(3, 16, 2, 0),
(3, 16, 3, 0),
(3, 16, 4, 0),
(3, 18, 0, 0),
(3, 18, 1, 0),
(3, 18, 2, 0),
(3, 18, 3, 0),
(3, 18, 4, 0),
(3, 19, 0, 0),
(3, 19, 1, 0),
(3, 19, 2, 0),
(3, 19, 3, 0),
(3, 19, 4, 0),
(3, 20, 0, 0),
(3, 20, 1, 0),
(3, 20, 2, 0),
(3, 20, 3, 0),
(3, 20, 4, 0),
(3, 21, 0, 0),
(3, 21, 1, 0),
(3, 21, 2, 0),
(3, 21, 3, 0),
(3, 21, 4, 0),
(3, 22, 0, 0),
(3, 22, 1, 0),
(3, 22, 2, 0),
(3, 22, 3, 0),
(3, 22, 4, 0),
(3, 23, 0, 0),
(3, 23, 1, 0),
(3, 23, 2, 0),
(3, 23, 3, 0),
(3, 23, 4, 0),
(3, 26, 0, 0),
(3, 26, 1, 0),
(3, 26, 2, 0),
(3, 26, 3, 0),
(3, 26, 4, 0),
(3, 34, 0, 0),
(3, 34, 1, 0),
(3, 34, 2, 0),
(3, 34, 3, 0),
(3, 34, 4, 0),
(3, 35, 0, 0),
(3, 35, 1, 0),
(3, 35, 2, 0),
(3, 35, 3, 0),
(3, 35, 4, 0),
(3, 36, 0, 0),
(3, 36, 1, 0),
(3, 36, 2, 0),
(3, 36, 3, 0),
(3, 36, 4, 0),
(3, 38, 0, 0),
(3, 38, 1, 0),
(3, 38, 2, 0),
(3, 38, 3, 0),
(3, 38, 4, 0),
(3, 42, 0, 0),
(3, 42, 1, 0),
(3, 42, 2, 0),
(3, 42, 3, 0),
(3, 42, 4, 0),
(3, 43, 0, 0),
(3, 43, 1, 0),
(3, 43, 2, 0),
(3, 43, 3, 0),
(3, 43, 4, 0),
(3, 44, 0, 0),
(3, 44, 1, 0),
(3, 44, 2, 0),
(3, 44, 3, 0),
(3, 44, 4, 0),
(3, 45, 0, 0),
(3, 45, 1, 0),
(3, 45, 2, 0),
(3, 45, 3, 0),
(3, 45, 4, 0),
(3, 47, 0, 0),
(3, 47, 1, 0),
(3, 47, 2, 0),
(3, 47, 3, 0),
(3, 47, 4, 0),
(4, 2, 0, 1),
(4, 2, 1, 1),
(4, 2, 2, 1),
(4, 2, 3, 0),
(4, 2, 4, 0),
(4, 4, 0, 1),
(4, 4, 1, 1),
(4, 4, 2, 1),
(4, 4, 3, 0),
(4, 4, 4, 0),
(4, 6, 0, 1),
(4, 6, 1, 1),
(4, 6, 2, 1),
(4, 6, 3, 0),
(4, 6, 4, 0),
(4, 7, 0, 1),
(4, 7, 1, 1),
(4, 7, 2, 1),
(4, 7, 3, 0),
(4, 7, 4, 0),
(4, 8, 0, 1),
(4, 8, 1, 1),
(4, 8, 2, 1),
(4, 8, 3, 0),
(4, 8, 4, 0),
(4, 9, 0, 1),
(4, 9, 1, 1),
(4, 9, 2, 1),
(4, 9, 3, 0),
(4, 9, 4, 0),
(4, 13, 0, 1),
(4, 13, 1, 1),
(4, 13, 2, 1),
(4, 13, 3, 0),
(4, 13, 4, 0),
(4, 14, 0, 1),
(4, 14, 1, 1),
(4, 14, 2, 1),
(4, 14, 3, 0),
(4, 14, 4, 0),
(4, 15, 0, 1),
(4, 15, 1, 1),
(4, 15, 2, 1),
(4, 15, 3, 0),
(4, 15, 4, 0),
(4, 16, 0, 1),
(4, 16, 1, 1),
(4, 16, 2, 1),
(4, 16, 3, 0),
(4, 16, 4, 0),
(4, 18, 0, 1),
(4, 18, 1, 1),
(4, 18, 2, 1),
(4, 18, 3, 0),
(4, 18, 4, 0),
(4, 19, 0, 1),
(4, 19, 1, 1),
(4, 19, 2, 1),
(4, 19, 3, 0),
(4, 19, 4, 0),
(4, 20, 0, 1),
(4, 20, 1, 1),
(4, 20, 2, 1),
(4, 20, 3, 0),
(4, 20, 4, 0),
(4, 21, 0, 1),
(4, 21, 1, 1),
(4, 21, 2, 1),
(4, 21, 3, 0),
(4, 21, 4, 0),
(4, 22, 0, 1),
(4, 22, 1, 1),
(4, 22, 2, 1),
(4, 22, 3, 0),
(4, 22, 4, 0),
(4, 23, 0, 1),
(4, 23, 1, 1),
(4, 23, 2, 1),
(4, 23, 3, 0),
(4, 23, 4, 0),
(4, 26, 0, 1),
(4, 26, 1, 1),
(4, 26, 2, 1),
(4, 26, 3, 0),
(4, 26, 4, 0),
(4, 34, 0, 0),
(4, 34, 1, 0),
(4, 34, 2, 0),
(4, 34, 3, 0),
(4, 34, 4, 0),
(4, 35, 0, 0),
(4, 35, 1, 0),
(4, 35, 2, 0),
(4, 35, 3, 0),
(4, 35, 4, 0),
(4, 36, 0, 0),
(4, 36, 1, 0),
(4, 36, 2, 0),
(4, 36, 3, 0),
(4, 36, 4, 0),
(4, 38, 0, 0),
(4, 38, 1, 0),
(4, 38, 2, 0),
(4, 38, 3, 0),
(4, 38, 4, 0),
(4, 42, 0, 0),
(4, 42, 1, 0),
(4, 42, 2, 0),
(4, 42, 3, 0),
(4, 42, 4, 0),
(4, 43, 0, 0),
(4, 43, 1, 0),
(4, 43, 2, 0),
(4, 43, 3, 0),
(4, 43, 4, 0),
(4, 44, 0, 0),
(4, 44, 1, 0),
(4, 44, 2, 0),
(4, 44, 3, 0),
(4, 44, 4, 0),
(4, 45, 0, 0),
(4, 45, 1, 0),
(4, 45, 2, 0),
(4, 45, 3, 0),
(4, 45, 4, 0),
(4, 47, 0, 0),
(4, 47, 1, 0),
(4, 47, 2, 0),
(4, 47, 3, 0),
(4, 47, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2tab`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2tab` (
  `profileid` int(11) DEFAULT NULL,
  `tabid` int(10) DEFAULT NULL,
  `permissions` int(10) NOT NULL DEFAULT '0',
  KEY `profile2tab_profileid_tabid_idx` (`profileid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2tab`
--

INSERT INTO `vtiger_profile2tab` (`profileid`, `tabid`, `permissions`) VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(2, 1, 0),
(2, 2, 0),
(2, 3, 0),
(2, 4, 0),
(2, 6, 0),
(2, 7, 0),
(2, 8, 0),
(2, 9, 0),
(2, 10, 0),
(2, 13, 0),
(2, 14, 0),
(2, 15, 0),
(2, 16, 0),
(2, 18, 0),
(2, 19, 0),
(2, 20, 0),
(2, 21, 0),
(2, 22, 0),
(2, 23, 0),
(2, 24, 0),
(2, 25, 0),
(2, 26, 0),
(2, 27, 0),
(3, 1, 0),
(3, 2, 0),
(3, 3, 0),
(3, 4, 0),
(3, 6, 0),
(3, 7, 0),
(3, 8, 0),
(3, 9, 0),
(3, 10, 0),
(3, 13, 0),
(3, 14, 0),
(3, 15, 0),
(3, 16, 0),
(3, 18, 0),
(3, 19, 0),
(3, 20, 0),
(3, 21, 0),
(3, 22, 0),
(3, 23, 0),
(3, 24, 0),
(3, 25, 0),
(3, 26, 0),
(3, 27, 0),
(4, 1, 0),
(4, 2, 0),
(4, 3, 0),
(4, 4, 0),
(4, 6, 0),
(4, 7, 0),
(4, 8, 0),
(4, 9, 0),
(4, 10, 0),
(4, 13, 0),
(4, 14, 0),
(4, 15, 0),
(4, 16, 0),
(4, 18, 0),
(4, 19, 0),
(4, 20, 0),
(4, 21, 0),
(4, 22, 0),
(4, 23, 0),
(4, 24, 0),
(4, 25, 0),
(4, 26, 0),
(4, 27, 0),
(1, 30, 0),
(2, 30, 0),
(3, 30, 0),
(4, 30, 0),
(1, 31, 0),
(2, 31, 0),
(3, 31, 0),
(4, 31, 0),
(1, 32, 0),
(2, 32, 0),
(3, 32, 0),
(4, 32, 0),
(1, 33, 0),
(2, 33, 0),
(3, 33, 0),
(4, 33, 0),
(1, 34, 0),
(2, 34, 0),
(3, 34, 0),
(4, 34, 0),
(1, 35, 0),
(2, 35, 0),
(3, 35, 0),
(4, 35, 0),
(1, 36, 0),
(2, 36, 0),
(3, 36, 0),
(4, 36, 0),
(1, 37, 0),
(2, 37, 0),
(3, 37, 0),
(4, 37, 0),
(1, 38, 0),
(2, 38, 0),
(3, 38, 0),
(4, 38, 0),
(1, 39, 0),
(2, 39, 0),
(3, 39, 0),
(4, 39, 0),
(1, 40, 0),
(2, 40, 0),
(3, 40, 0),
(4, 40, 0),
(1, 41, 0),
(2, 41, 0),
(3, 41, 0),
(4, 41, 0),
(1, 42, 0),
(2, 42, 0),
(3, 42, 0),
(4, 42, 0),
(1, 43, 0),
(2, 43, 0),
(3, 43, 0),
(4, 43, 0),
(1, 44, 0),
(2, 44, 0),
(3, 44, 0),
(4, 44, 0),
(1, 45, 0),
(2, 45, 0),
(3, 45, 0),
(4, 45, 0),
(1, 46, 0),
(2, 46, 0),
(3, 46, 0),
(4, 46, 0),
(1, 47, 0),
(2, 47, 0),
(3, 47, 0),
(4, 47, 0),
(1, 48, 0),
(2, 48, 0),
(3, 48, 0),
(4, 48, 0),
(1, 49, 0),
(2, 49, 0),
(3, 49, 0),
(4, 49, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile2utility`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile2utility` (
  `profileid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `activityid` int(11) NOT NULL,
  `permission` int(1) DEFAULT NULL,
  PRIMARY KEY (`profileid`,`tabid`,`activityid`),
  KEY `profile2utility_profileid_tabid_activityid_idx` (`profileid`,`tabid`,`activityid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile2utility`
--

INSERT INTO `vtiger_profile2utility` (`profileid`, `tabid`, `activityid`, `permission`) VALUES
(1, 2, 5, 0),
(1, 2, 6, 0),
(1, 2, 10, 0),
(1, 4, 5, 0),
(1, 4, 6, 0),
(1, 4, 8, 0),
(1, 4, 10, 0),
(1, 6, 5, 0),
(1, 6, 6, 0),
(1, 6, 8, 0),
(1, 6, 10, 0),
(1, 7, 5, 0),
(1, 7, 6, 0),
(1, 7, 8, 0),
(1, 7, 9, 0),
(1, 7, 10, 0),
(1, 8, 6, 0),
(1, 9, 5, 0),
(1, 9, 6, 0),
(1, 13, 5, 0),
(1, 13, 6, 0),
(1, 13, 8, 0),
(1, 13, 10, 0),
(1, 14, 5, 0),
(1, 14, 6, 0),
(1, 14, 10, 0),
(1, 18, 5, 0),
(1, 18, 6, 0),
(1, 18, 10, 0),
(1, 20, 5, 0),
(1, 20, 6, 0),
(1, 21, 5, 0),
(1, 21, 6, 0),
(1, 22, 5, 0),
(1, 22, 6, 0),
(1, 23, 5, 0),
(1, 23, 6, 0),
(1, 25, 6, 0),
(1, 25, 13, 0),
(1, 34, 11, 0),
(1, 34, 12, 0),
(1, 35, 5, 0),
(1, 35, 6, 0),
(1, 35, 10, 0),
(1, 36, 5, 0),
(1, 36, 6, 0),
(1, 36, 10, 0),
(1, 43, 5, 0),
(1, 43, 6, 0),
(1, 43, 10, 0),
(1, 44, 5, 0),
(1, 44, 6, 0),
(1, 44, 10, 0),
(1, 45, 5, 0),
(1, 45, 6, 0),
(1, 45, 10, 0),
(2, 2, 5, 1),
(2, 2, 6, 1),
(2, 2, 10, 0),
(2, 4, 5, 1),
(2, 4, 6, 1),
(2, 4, 8, 0),
(2, 4, 10, 0),
(2, 6, 5, 1),
(2, 6, 6, 1),
(2, 6, 8, 0),
(2, 6, 10, 0),
(2, 7, 5, 1),
(2, 7, 6, 1),
(2, 7, 8, 0),
(2, 7, 9, 0),
(2, 7, 10, 0),
(2, 8, 6, 1),
(2, 9, 5, 0),
(2, 9, 6, 0),
(2, 13, 5, 1),
(2, 13, 6, 1),
(2, 13, 8, 0),
(2, 13, 10, 0),
(2, 14, 5, 1),
(2, 14, 6, 1),
(2, 14, 10, 0),
(2, 18, 5, 1),
(2, 18, 6, 1),
(2, 18, 10, 0),
(2, 20, 5, 0),
(2, 20, 6, 0),
(2, 21, 5, 0),
(2, 21, 6, 0),
(2, 22, 5, 0),
(2, 22, 6, 0),
(2, 23, 5, 0),
(2, 23, 6, 0),
(2, 25, 6, 0),
(2, 25, 13, 0),
(2, 34, 11, 0),
(2, 34, 12, 0),
(2, 35, 5, 0),
(2, 35, 6, 0),
(2, 35, 10, 0),
(2, 36, 5, 0),
(2, 36, 6, 0),
(2, 36, 10, 0),
(2, 43, 5, 0),
(2, 43, 6, 0),
(2, 43, 10, 0),
(2, 44, 5, 0),
(2, 44, 6, 0),
(2, 44, 10, 0),
(2, 45, 5, 0),
(2, 45, 6, 0),
(2, 45, 10, 0),
(3, 2, 5, 1),
(3, 2, 6, 1),
(3, 2, 10, 0),
(3, 4, 5, 1),
(3, 4, 6, 1),
(3, 4, 8, 0),
(3, 4, 10, 0),
(3, 6, 5, 1),
(3, 6, 6, 1),
(3, 6, 8, 0),
(3, 6, 10, 0),
(3, 7, 5, 1),
(3, 7, 6, 1),
(3, 7, 8, 0),
(3, 7, 9, 0),
(3, 7, 10, 0),
(3, 8, 6, 1),
(3, 9, 5, 0),
(3, 9, 6, 0),
(3, 13, 5, 1),
(3, 13, 6, 1),
(3, 13, 8, 0),
(3, 13, 10, 0),
(3, 14, 5, 1),
(3, 14, 6, 1),
(3, 14, 10, 0),
(3, 18, 5, 1),
(3, 18, 6, 1),
(3, 18, 10, 0),
(3, 20, 5, 0),
(3, 20, 6, 0),
(3, 21, 5, 0),
(3, 21, 6, 0),
(3, 22, 5, 0),
(3, 22, 6, 0),
(3, 23, 5, 0),
(3, 23, 6, 0),
(3, 25, 6, 0),
(3, 25, 13, 0),
(3, 34, 11, 0),
(3, 34, 12, 0),
(3, 35, 5, 0),
(3, 35, 6, 0),
(3, 35, 10, 0),
(3, 36, 5, 0),
(3, 36, 6, 0),
(3, 36, 10, 0),
(3, 43, 5, 0),
(3, 43, 6, 0),
(3, 43, 10, 0),
(3, 44, 5, 0),
(3, 44, 6, 0),
(3, 44, 10, 0),
(3, 45, 5, 0),
(3, 45, 6, 0),
(3, 45, 10, 0),
(4, 2, 5, 1),
(4, 2, 6, 1),
(4, 2, 10, 0),
(4, 4, 5, 1),
(4, 4, 6, 1),
(4, 4, 8, 1),
(4, 4, 10, 0),
(4, 6, 5, 1),
(4, 6, 6, 1),
(4, 6, 8, 1),
(4, 6, 10, 0),
(4, 7, 5, 1),
(4, 7, 6, 1),
(4, 7, 8, 1),
(4, 7, 9, 0),
(4, 7, 10, 0),
(4, 8, 6, 1),
(4, 9, 5, 0),
(4, 9, 6, 0),
(4, 13, 5, 1),
(4, 13, 6, 1),
(4, 13, 8, 1),
(4, 13, 10, 0),
(4, 14, 5, 1),
(4, 14, 6, 1),
(4, 14, 10, 0),
(4, 18, 5, 1),
(4, 18, 6, 1),
(4, 18, 10, 0),
(4, 20, 5, 0),
(4, 20, 6, 0),
(4, 21, 5, 0),
(4, 21, 6, 0),
(4, 22, 5, 0),
(4, 22, 6, 0),
(4, 23, 5, 0),
(4, 23, 6, 0),
(4, 25, 6, 0),
(4, 25, 13, 0),
(4, 34, 11, 0),
(4, 34, 12, 0),
(4, 35, 5, 0),
(4, 35, 6, 0),
(4, 35, 10, 0),
(4, 36, 5, 0),
(4, 36, 6, 0),
(4, 36, 10, 0),
(4, 43, 5, 0),
(4, 43, 6, 0),
(4, 43, 10, 0),
(4, 44, 5, 0),
(4, 44, 6, 0),
(4, 44, 10, 0),
(4, 45, 5, 0),
(4, 45, 6, 0),
(4, 45, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_profile_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_profile_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_profile_seq`
--

INSERT INTO `vtiger_profile_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress`
--

CREATE TABLE IF NOT EXISTS `vtiger_progress` (
  `progressid` int(11) NOT NULL AUTO_INCREMENT,
  `progress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`progressid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_progress`
--

INSERT INTO `vtiger_progress` (`progressid`, `progress`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, '10%', 1, 278, 2),
(3, '20%', 1, 279, 3),
(4, '30%', 1, 280, 4),
(5, '40%', 1, 281, 5),
(6, '50%', 1, 282, 6),
(7, '60%', 1, 283, 7),
(8, '70%', 1, 284, 8),
(9, '80%', 1, 285, 9),
(10, '90%', 1, 286, 10),
(11, '100%', 1, 287, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_progress_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_progress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_progress_seq`
--

INSERT INTO `vtiger_progress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_project`
--

CREATE TABLE IF NOT EXISTS `vtiger_project` (
  `projectid` int(11) DEFAULT NULL,
  `projectname` varchar(255) DEFAULT NULL,
  `project_no` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `targetenddate` date DEFAULT NULL,
  `actualenddate` date DEFAULT NULL,
  `targetbudget` varchar(255) DEFAULT NULL,
  `projecturl` varchar(255) DEFAULT NULL,
  `projectstatus` varchar(100) DEFAULT NULL,
  `projectpriority` varchar(100) DEFAULT NULL,
  `projecttype` varchar(100) DEFAULT NULL,
  `progress` varchar(100) DEFAULT NULL,
  `linktoaccountscontacts` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_project`
--

INSERT INTO `vtiger_project` (`projectid`, `projectname`, `project_no`, `startdate`, `targetenddate`, `actualenddate`, `targetbudget`, `projecturl`, `projectstatus`, `projectpriority`, `projecttype`, `progress`, `linktoaccountscontacts`) VALUES
(31, 'test1', 'PROJ1', NULL, NULL, NULL, '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectcf` (
  `projectid` int(11) NOT NULL,
  PRIMARY KEY (`projectid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_projectcf`
--

INSERT INTO `vtiger_projectcf` (`projectid`) VALUES
(31);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestone`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestone` (
  `projectmilestoneid` int(11) NOT NULL,
  `projectmilestonename` varchar(255) DEFAULT NULL,
  `projectmilestone_no` varchar(100) DEFAULT NULL,
  `projectmilestonedate` varchar(255) DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projectmilestonetype` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestonecf` (
  `projectmilestoneid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projectmilestoneid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestonetype` (
  `projectmilestonetypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projectmilestonetype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectmilestonetypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projectmilestonetype`
--

INSERT INTO `vtiger_projectmilestonetype` (`projectmilestonetypeid`, `projectmilestonetype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'administrative', 1, 238, 2),
(3, 'operative', 1, 239, 3),
(4, 'other', 1, 240, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectmilestonetype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectmilestonetype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projectmilestonetype_seq`
--

INSERT INTO `vtiger_projectmilestonetype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectpriority` (
  `projectpriorityid` int(11) NOT NULL AUTO_INCREMENT,
  `projectpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projectpriority`
--

INSERT INTO `vtiger_projectpriority` (`projectpriorityid`, `projectpriority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'low', 1, 274, 2),
(3, 'normal', 1, 275, 3),
(4, 'high', 1, 276, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectpriority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projectpriority_seq`
--

INSERT INTO `vtiger_projectpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectstatus` (
  `projectstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `projectstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projectstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_projectstatus`
--

INSERT INTO `vtiger_projectstatus` (`projectstatusid`, `projectstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'prospecting', 1, 261, 2),
(3, 'initiated', 1, 262, 3),
(4, 'in progress', 1, 263, 4),
(5, 'waiting for feedback', 1, 264, 5),
(6, 'on hold', 1, 265, 6),
(7, 'completed', 1, 266, 7),
(8, 'delivered', 1, 267, 8),
(9, 'archived', 1, 268, 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projectstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projectstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projectstatus_seq`
--

INSERT INTO `vtiger_projectstatus_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttask`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttask` (
  `projecttaskid` int(11) NOT NULL,
  `projecttaskname` varchar(255) DEFAULT NULL,
  `projecttask_no` varchar(100) DEFAULT NULL,
  `projecttasktype` varchar(100) DEFAULT NULL,
  `projecttaskpriority` varchar(100) DEFAULT NULL,
  `projecttaskprogress` varchar(100) DEFAULT NULL,
  `projecttaskhours` varchar(255) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `projectid` varchar(100) DEFAULT NULL,
  `projecttasknumber` int(11) DEFAULT NULL,
  `projecttaskstatus` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskcf` (
  `projecttaskid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`projecttaskid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskpriority` (
  `projecttaskpriorityid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskpriority` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projecttaskpriority`
--

INSERT INTO `vtiger_projecttaskpriority` (`projecttaskpriorityid`, `projecttaskpriority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'low', 1, 246, 2),
(3, 'normal', 1, 247, 3),
(4, 'high', 1, 248, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskpriority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttaskpriority_seq`
--

INSERT INTO `vtiger_projecttaskpriority_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskprogress` (
  `projecttaskprogressid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskprogress` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskprogressid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `vtiger_projecttaskprogress`
--

INSERT INTO `vtiger_projecttaskprogress` (`projecttaskprogressid`, `projecttaskprogress`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, '10%', 1, 250, 2),
(3, '20%', 1, 251, 3),
(4, '30%', 1, 252, 4),
(5, '40%', 1, 253, 5),
(6, '50%', 1, 254, 6),
(7, '60%', 1, 255, 7),
(8, '70%', 1, 256, 8),
(9, '80%', 1, 257, 9),
(10, '90%', 1, 258, 10),
(11, '100%', 1, 259, 11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskprogress_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskprogress_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttaskprogress_seq`
--

INSERT INTO `vtiger_projecttaskprogress_seq` (`id`) VALUES
(11);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskstatus` (
  `projecttaskstatusid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttaskstatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttaskstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_projecttaskstatus`
--

INSERT INTO `vtiger_projecttaskstatus` (`projecttaskstatusid`, `projecttaskstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Open', 0, 290, 2),
(3, 'In Progress', 0, 291, 3),
(4, 'Completed', 0, 292, 4),
(5, 'Deferred', 0, 293, 5),
(6, 'Canceled ', 0, 294, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttaskstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttaskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttaskstatus_seq`
--

INSERT INTO `vtiger_projecttaskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttasktype` (
  `projecttasktypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttasktype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttasktypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projecttasktype`
--

INSERT INTO `vtiger_projecttasktype` (`projecttasktypeid`, `projecttasktype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'administrative', 1, 242, 2),
(3, 'operative', 1, 243, 3),
(4, 'other', 1, 244, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttasktype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttasktype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttasktype_seq`
--

INSERT INTO `vtiger_projecttasktype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttype` (
  `projecttypeid` int(11) NOT NULL AUTO_INCREMENT,
  `projecttype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`projecttypeid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_projecttype`
--

INSERT INTO `vtiger_projecttype` (`projecttypeid`, `projecttype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'administrative', 1, 270, 2),
(3, 'operative', 1, 271, 3),
(4, 'other', 1, 272, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_projecttype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_projecttype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_projecttype_seq`
--

INSERT INTO `vtiger_projecttype_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseorder`
--

CREATE TABLE IF NOT EXISTS `vtiger_purchaseorder` (
  `purchaseorderid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `requisition_no` varchar(100) DEFAULT NULL,
  `purchaseorder_no` varchar(100) DEFAULT NULL,
  `tracking_no` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `terms_conditions` text,
  `postatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `paid` decimal(25,8) DEFAULT NULL,
  `balance` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`purchaseorderid`),
  KEY `purchaseorder_vendorid_idx` (`vendorid`),
  KEY `purchaseorder_quoteid_idx` (`quoteid`),
  KEY `purchaseorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_purchaseordercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_purchaseordercf` (
  `purchaseorderid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`purchaseorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotes`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotes` (
  `quoteid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `validtill` date DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `quote_no` varchar(100) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `shipping` varchar(100) DEFAULT NULL,
  `inventorymanager` int(19) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`quoteid`),
  KEY `quote_quotestage_idx` (`quotestage`),
  KEY `quotes_potentialid_idx` (`potentialid`),
  KEY `quotes_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_quotes`
--

INSERT INTO `vtiger_quotes` (`quoteid`, `subject`, `potentialid`, `quotestage`, `validtill`, `contactid`, `quote_no`, `subtotal`, `carrier`, `shipping`, `inventorymanager`, `type`, `adjustment`, `total`, `taxtype`, `discount_percent`, `discount_amount`, `s_h_amount`, `accountid`, `terms_conditions`, `currency_id`, `conversion_rate`, `pre_tax_total`, `s_h_percent`) VALUES
(50, 'test', NULL, 'Accepted', NULL, NULL, 'QUO1', '200.00000000', '', 'Rt', 0, NULL, '0.00000000', '254.00000000', 'group', '0.000', NULL, '0.00000000', 2, '- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.', 1, '1.000', '200.00000000', 27);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesbillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotesbillads` (
  `quotebilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quotebilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_quotesbillads`
--

INSERT INTO `vtiger_quotesbillads` (`quotebilladdressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(50, '', '', '', '', 'dd', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotescf`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotescf` (
  `quoteid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_quotescf`
--

INSERT INTO `vtiger_quotescf` (`quoteid`) VALUES
(50);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotesshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotesshipads` (
  `quoteshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`quoteshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_quotesshipads`
--

INSERT INTO `vtiger_quotesshipads` (`quoteshipaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_street`, `ship_pobox`) VALUES
(50, '', '', '', '', 'sadf', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotestage` (
  `quotestageid` int(19) NOT NULL AUTO_INCREMENT,
  `quotestage` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`quotestageid`),
  UNIQUE KEY `quotestage_quotestage_idx` (`quotestage`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_quotestage`
--

INSERT INTO `vtiger_quotestage` (`quotestageid`, `quotestage`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Created', 0, 139, 0),
(2, 'Delivered', 0, 140, 1),
(3, 'Reviewed', 0, 141, 2),
(4, 'Accepted', 0, 142, 3),
(5, 'Rejected', 0, 143, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestagehistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotestagehistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `quoteid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `quotestage` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `quotestagehistory_quoteid_idx` (`quoteid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_quotestage_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_quotestage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_quotestage_seq`
--

INSERT INTO `vtiger_quotestage_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating`
--

CREATE TABLE IF NOT EXISTS `vtiger_rating` (
  `rating_id` int(19) NOT NULL AUTO_INCREMENT,
  `rating` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rating_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_rating`
--

INSERT INTO `vtiger_rating` (`rating_id`, `rating`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Acquired', 1, 145, 1),
(3, 'Active', 1, 146, 2),
(4, 'Market Failed', 1, 147, 3),
(5, 'Project Cancelled', 1, 148, 4),
(6, 'Shutdown', 1, 149, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rating_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_rating_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_rating_seq`
--

INSERT INTO `vtiger_rating_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringevents`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurringevents` (
  `recurringid` int(19) NOT NULL AUTO_INCREMENT,
  `activityid` int(19) NOT NULL,
  `recurringdate` date DEFAULT NULL,
  `recurringtype` varchar(30) DEFAULT NULL,
  `recurringfreq` int(19) DEFAULT NULL,
  `recurringinfo` varchar(50) DEFAULT NULL,
  `recurringenddate` date DEFAULT NULL,
  PRIMARY KEY (`recurringid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurringtype` (
  `recurringeventid` int(19) NOT NULL AUTO_INCREMENT,
  `recurringtype` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`recurringeventid`),
  UNIQUE KEY `recurringtype_status_idx` (`recurringtype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `vtiger_recurringtype`
--

INSERT INTO `vtiger_recurringtype` (`recurringeventid`, `recurringtype`, `sortorderid`, `presence`) VALUES
(2, 'Daily', 1, 1),
(3, 'Weekly', 2, 1),
(4, 'Monthly', 3, 1),
(5, 'Yearly', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurringtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurringtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_recurringtype_seq`
--

INSERT INTO `vtiger_recurringtype_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurring_frequency` (
  `recurring_frequency_id` int(11) DEFAULT NULL,
  `recurring_frequency` varchar(200) DEFAULT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_recurring_frequency`
--

INSERT INTO `vtiger_recurring_frequency` (`recurring_frequency_id`, `recurring_frequency`, `sortorderid`, `presence`) VALUES
(2, 'Daily', 1, 1),
(3, 'Weekly', 2, 1),
(4, 'Monthly', 3, 1),
(5, 'Quarterly', 4, 1),
(6, 'Yearly', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_recurring_frequency_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_recurring_frequency_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_recurring_frequency_seq`
--

INSERT INTO `vtiger_recurring_frequency_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists`
--

CREATE TABLE IF NOT EXISTS `vtiger_relatedlists` (
  `relation_id` int(19) NOT NULL,
  `tabid` int(10) DEFAULT NULL,
  `related_tabid` int(10) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `sequence` int(10) DEFAULT NULL,
  `label` varchar(100) DEFAULT NULL,
  `presence` int(10) NOT NULL DEFAULT '0',
  `actions` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`relation_id`),
  KEY `relatedlists_relation_id_idx` (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relatedlists`
--

INSERT INTO `vtiger_relatedlists` (`relation_id`, `tabid`, `related_tabid`, `name`, `sequence`, `label`, `presence`, `actions`) VALUES
(1, 6, 4, 'get_contacts', 1, 'Contacts', 0, 'add'),
(2, 6, 2, 'get_opportunities', 2, 'Potentials', 0, 'add'),
(3, 6, 20, 'get_quotes', 3, 'Quotes', 0, 'add'),
(4, 6, 22, 'get_salesorder', 4, 'Sales Order', 0, 'add'),
(5, 6, 23, 'get_invoices', 5, 'Invoice', 0, 'add'),
(6, 6, 9, 'get_activities', 6, 'Activities', 0, 'add'),
(7, 6, 10, 'get_emails', 7, 'Emails', 0, 'add'),
(8, 6, 9, 'get_history', 8, 'Activity History', 0, 'add'),
(9, 6, 8, 'get_attachments', 9, 'Documents', 0, 'add,select'),
(10, 6, 13, 'get_tickets', 10, 'HelpDesk', 0, 'add'),
(11, 6, 14, 'get_products', 11, 'Products', 0, 'select'),
(12, 7, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(13, 7, 10, 'get_emails', 2, 'Emails', 0, 'add'),
(14, 7, 9, 'get_history', 3, 'Activity History', 0, 'add'),
(15, 7, 8, 'get_attachments', 4, 'Documents', 0, 'add,select'),
(16, 7, 14, 'get_products', 5, 'Products', 0, 'select'),
(17, 7, 26, 'get_campaigns', 6, 'Campaigns', 0, 'select'),
(18, 4, 2, 'get_opportunities', 1, 'Potentials', 0, 'add'),
(19, 4, 9, 'get_activities', 2, 'Activities', 0, 'add'),
(20, 4, 10, 'get_emails', 3, 'Emails', 0, 'add'),
(21, 4, 13, 'get_tickets', 4, 'HelpDesk', 0, 'add'),
(22, 4, 20, 'get_quotes', 5, 'Quotes', 0, 'add'),
(23, 4, 21, 'get_purchase_orders', 6, 'Purchase Order', 0, 'add'),
(24, 4, 22, 'get_salesorder', 7, 'Sales Order', 0, 'add'),
(25, 4, 14, 'get_products', 8, 'Products', 0, 'select'),
(26, 4, 9, 'get_history', 9, 'Activity History', 0, 'add'),
(27, 4, 8, 'get_attachments', 10, 'Documents', 0, 'add,select'),
(28, 4, 26, 'get_campaigns', 11, 'Campaigns', 0, 'select'),
(29, 4, 23, 'get_invoices', 12, 'Invoice', 0, 'add'),
(30, 2, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(31, 2, 4, 'get_contacts', 2, 'Contacts', 0, 'select'),
(32, 2, 14, 'get_products', 3, 'Products', 0, 'select'),
(33, 2, 0, 'get_stage_history', 4, 'Sales Stage History', 0, ''),
(34, 2, 8, 'get_attachments', 5, 'Documents', 0, 'add,select'),
(35, 2, 20, 'get_Quotes', 6, 'Quotes', 0, 'add'),
(36, 2, 22, 'get_salesorder', 7, 'Sales Order', 0, 'add'),
(37, 2, 9, 'get_history', 8, 'Activity History', 0, ''),
(38, 14, 13, 'get_tickets', 1, 'HelpDesk', 0, 'add'),
(39, 14, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(40, 14, 20, 'get_quotes', 4, 'Quotes', 0, 'add'),
(41, 14, 21, 'get_purchase_orders', 5, 'Purchase Order', 0, 'add'),
(42, 14, 22, 'get_salesorder', 6, 'Sales Order', 0, 'add'),
(43, 14, 23, 'get_invoices', 7, 'Invoice', 0, 'add'),
(44, 14, 19, 'get_product_pricebooks', 8, 'PriceBooks', 0, 'ADD,SELECT'),
(45, 14, 7, 'get_leads', 9, 'Leads', 0, 'select'),
(46, 14, 6, 'get_accounts', 10, 'Accounts', 0, 'select'),
(47, 14, 4, 'get_contacts', 11, 'Contacts', 0, 'select'),
(48, 14, 2, 'get_opportunities', 12, 'Potentials', 0, 'select'),
(49, 14, 14, 'get_products', 13, 'Product Bundles', 0, 'add,select'),
(50, 14, 14, 'get_parent_products', 14, 'Parent Product', 0, ''),
(51, 10, 4, 'get_contacts', 1, 'Contacts', 0, 'select,bulkmail'),
(52, 10, 0, 'get_users', 2, 'Users', 0, ''),
(53, 10, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(54, 13, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(55, 13, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(56, 13, 0, 'get_ticket_history', 3, 'Ticket History', 0, ''),
(57, 13, 9, 'get_history', 4, 'Activity History', 0, 'add'),
(58, 19, 14, 'get_pricebook_products', 2, 'Products', 0, 'select'),
(59, 18, 14, 'get_products', 1, 'Products', 0, 'add,select'),
(60, 18, 21, 'get_purchase_orders', 2, 'Purchase Order', 0, 'add'),
(61, 18, 4, 'get_contacts', 3, 'Contacts', 0, 'select'),
(62, 18, 10, 'get_emails', 4, 'Emails', 0, 'add'),
(63, 20, 22, 'get_salesorder', 1, 'Sales Order', 0, ''),
(64, 20, 9, 'get_activities', 2, 'Activities', 0, 'add'),
(65, 20, 8, 'get_attachments', 3, 'Documents', 0, 'add,select'),
(66, 20, 9, 'get_history', 4, 'Activity History', 0, ''),
(67, 20, 0, 'get_quotestagehistory', 5, 'Quote Stage History', 0, ''),
(68, 21, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(69, 21, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(70, 21, 9, 'get_history', 3, 'Activity History', 0, ''),
(71, 21, 0, 'get_postatushistory', 4, 'PurchaseOrder Status History', 0, ''),
(72, 22, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(73, 22, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(74, 22, 23, 'get_invoices', 3, 'Invoice', 0, ''),
(75, 22, 9, 'get_history', 4, 'Activity History', 0, ''),
(76, 22, 0, 'get_sostatushistory', 5, 'SalesOrder Status History', 0, ''),
(77, 23, 9, 'get_activities', 1, 'Activities', 0, 'add'),
(78, 23, 8, 'get_attachments', 2, 'Documents', 0, 'add,select'),
(79, 23, 9, 'get_history', 3, 'Activity History', 0, ''),
(80, 23, 0, 'get_invoicestatushistory', 4, 'Invoice Status History', 0, ''),
(81, 9, 0, 'get_users', 1, 'Users', 0, ''),
(82, 9, 4, 'get_contacts', 2, 'Contacts', 0, ''),
(83, 26, 4, 'get_contacts', 1, 'Contacts', 0, 'add,select'),
(84, 26, 7, 'get_leads', 2, 'Leads', 0, 'add,select'),
(85, 26, 2, 'get_opportunities', 3, 'Potentials', 0, 'add'),
(86, 26, 9, 'get_activities', 4, 'Activities', 0, 'add'),
(87, 6, 26, 'get_campaigns', 13, 'Campaigns', 0, 'select'),
(88, 26, 6, 'get_accounts', 5, 'Accounts', 0, 'add,select'),
(89, 15, 8, 'get_attachments', 1, 'Documents', 0, 'add,select'),
(90, 4, 34, 'get_dependents_list', 13, 'PBXManager', 0, ''),
(91, 7, 34, 'get_dependents_list', 7, 'PBXManager', 0, ''),
(92, 6, 34, 'get_dependents_list', 14, 'PBXManager', 0, ''),
(93, 35, 13, 'get_related_list', 1, 'Service Requests', 0, 'ADD,SELECT'),
(94, 35, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT'),
(95, 6, 35, 'get_dependents_list', 15, 'Service Contracts', 0, 'ADD'),
(96, 4, 35, 'get_dependents_list', 14, 'Service Contracts', 0, 'ADD'),
(97, 13, 35, 'get_related_list', 5, 'Service Contracts', 0, 'ADD,SELECT'),
(98, 36, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT'),
(99, 36, 20, 'get_quotes', 2, 'Quotes', 0, 'ADD'),
(100, 36, 21, 'get_purchase_orders', 3, 'Purchase Order', 0, 'ADD'),
(101, 36, 22, 'get_salesorder', 4, 'Sales Order', 0, 'ADD'),
(102, 36, 23, 'get_invoices', 5, 'Invoice', 0, 'ADD'),
(103, 36, 19, 'get_service_pricebooks', 6, 'PriceBooks', 0, 'ADD'),
(104, 36, 7, 'get_related_list', 7, 'Leads', 0, 'SELECT'),
(105, 36, 6, 'get_related_list', 8, 'Accounts', 0, 'SELECT'),
(106, 36, 4, 'get_related_list', 9, 'Contacts', 0, 'SELECT'),
(107, 36, 2, 'get_related_list', 10, 'Potentials', 0, 'SELECT'),
(108, 36, 8, 'get_attachments', 11, 'Documents', 0, 'ADD,SELECT'),
(109, 13, 36, 'get_related_list', 6, 'Services', 0, 'SELECT'),
(110, 7, 36, 'get_related_list', 8, 'Services', 0, 'SELECT'),
(111, 6, 36, 'get_related_list', 16, 'Services', 0, 'SELECT'),
(112, 4, 36, 'get_related_list', 15, 'Services', 0, 'SELECT'),
(113, 2, 36, 'get_related_list', 9, 'Services', 0, 'SELECT'),
(114, 19, 36, 'get_pricebook_services', 3, 'Services', 0, 'SELECT'),
(115, 38, 13, 'get_related_list', 1, 'HelpDesk', 0, 'ADD,SELECT'),
(116, 38, 8, 'get_attachments', 2, 'Documents', 0, 'ADD,SELECT'),
(117, 6, 38, 'get_dependents_list', 17, 'Assets', 0, 'ADD'),
(118, 14, 38, 'get_dependents_list', 15, 'Assets', 0, 'ADD'),
(119, 23, 38, 'get_dependents_list', 5, 'Assets', 0, 'ADD'),
(126, 6, 45, 'get_dependents_list', 18, 'Projects', 0, 'add'),
(127, 4, 45, 'get_dependents_list', 16, 'Projects', 0, 'add'),
(128, 13, 45, 'get_related_list', 7, 'Projects', 0, 'SELECT'),
(129, 47, 6, 'get_related_list', 1, 'Accounts', 0, ' '),
(130, 47, 4, 'get_related_list', 2, 'Contacts', 0, ' '),
(131, 47, 7, 'get_related_list', 3, 'Leads', 0, ' '),
(132, 44, 8, 'get_attachments', 1, 'Documents', 0, 'ADD,SELECT'),
(133, 45, 44, 'get_dependents_list', 1, 'Project Tasks', 0, 'ADD'),
(134, 45, 43, 'get_dependents_list', 2, 'Project Milestones', 0, 'ADD'),
(135, 45, 8, 'get_attachments', 3, 'Documents', 0, 'ADD,SELECT'),
(136, 45, 13, 'get_related_list', 4, 'HelpDesk', 0, 'ADD,SELECT'),
(137, 45, 0, 'get_gantt_chart', 5, 'Charts', 0, ''),
(138, 4, 38, 'get_dependents_list', 17, 'Assets', 0, 'ADD'),
(139, 4, 18, 'get_vendors', 18, 'Vendors', 0, 'SELECT');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_rb`
--

CREATE TABLE IF NOT EXISTS `vtiger_relatedlists_rb` (
  `entityid` int(19) DEFAULT NULL,
  `action` varchar(50) DEFAULT NULL,
  `rel_table` varchar(200) DEFAULT NULL,
  `rel_column` varchar(200) DEFAULT NULL,
  `ref_column` varchar(200) DEFAULT NULL,
  `related_crm_ids` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relatedlists_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_relatedlists_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relatedlists_seq`
--

INSERT INTO `vtiger_relatedlists_seq` (`id`) VALUES
(139);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria`
--

CREATE TABLE IF NOT EXISTS `vtiger_relcriteria` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `comparator` varchar(20) DEFAULT NULL,
  `value` varchar(512) DEFAULT NULL,
  `groupid` int(11) DEFAULT '1',
  `column_condition` varchar(256) DEFAULT 'and',
  PRIMARY KEY (`queryid`,`columnindex`),
  KEY `relcriteria_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relcriteria`
--

INSERT INTO `vtiger_relcriteria` (`queryid`, `columnindex`, `columnname`, `comparator`, `value`, `groupid`, `column_condition`) VALUES
(1, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'n', '', 1, 'and'),
(2, 0, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V', 'e', '', 1, 'and'),
(3, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V', 'n', '', 1, 'and'),
(7, 0, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'e', 'Closed Won', 1, 'and'),
(12, 0, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V', 'n', 'Closed', 1, 'and'),
(15, 0, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Accepted', 1, 'and'),
(15, 1, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V', 'n', 'Rejected', 1, 'and'),
(22, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(23, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(24, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and'),
(25, 0, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V', 'n', '', 1, 'and');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_relcriteria_grouping`
--

CREATE TABLE IF NOT EXISTS `vtiger_relcriteria_grouping` (
  `groupid` int(11) NOT NULL,
  `queryid` int(19) NOT NULL,
  `group_condition` varchar(256) DEFAULT NULL,
  `condition_expression` text,
  PRIMARY KEY (`groupid`,`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_relcriteria_grouping`
--

INSERT INTO `vtiger_relcriteria_grouping` (`groupid`, `queryid`, `group_condition`, `condition_expression`) VALUES
(1, 1, '', '0'),
(1, 2, '', '0'),
(1, 3, '', '0'),
(1, 7, '', '0'),
(1, 12, '', '0'),
(1, 15, '', '0 and 1'),
(1, 22, '', '0'),
(1, 23, '', '0'),
(1, 24, '', '0'),
(1, 25, '', '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval`
--

CREATE TABLE IF NOT EXISTS `vtiger_reminder_interval` (
  `reminder_intervalid` int(19) NOT NULL AUTO_INCREMENT,
  `reminder_interval` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL,
  `presence` int(1) NOT NULL,
  PRIMARY KEY (`reminder_intervalid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `vtiger_reminder_interval`
--

INSERT INTO `vtiger_reminder_interval` (`reminder_intervalid`, `reminder_interval`, `sortorderid`, `presence`) VALUES
(2, '1 Minute', 1, 1),
(3, '5 Minutes', 2, 1),
(4, '15 Minutes', 3, 1),
(5, '30 Minutes', 4, 1),
(6, '45 Minutes', 5, 1),
(7, '1 Hour', 6, 1),
(8, '1 Day', 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reminder_interval_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_reminder_interval_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reminder_interval_seq`
--

INSERT INTO `vtiger_reminder_interval_seq` (`id`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_report`
--

CREATE TABLE IF NOT EXISTS `vtiger_report` (
  `reportid` int(19) NOT NULL,
  `folderid` int(19) NOT NULL,
  `reportname` varchar(100) DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `reporttype` varchar(50) DEFAULT '',
  `queryid` int(19) NOT NULL DEFAULT '0',
  `state` varchar(50) DEFAULT 'SAVED',
  `customizable` int(1) DEFAULT '1',
  `category` int(11) DEFAULT '1',
  `owner` int(11) DEFAULT '1',
  `sharingtype` varchar(200) DEFAULT 'Private',
  PRIMARY KEY (`reportid`),
  KEY `report_queryid_idx` (`queryid`),
  KEY `report_folderid_idx` (`folderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_report`
--

INSERT INTO `vtiger_report` (`reportid`, `folderid`, `reportname`, `description`, `reporttype`, `queryid`, `state`, `customizable`, `category`, `owner`, `sharingtype`) VALUES
(1, 1, 'Contacts by Accounts', 'Contacts related to Accounts', 'tabular', 1, 'CUSTOM', 1, 1, 1, 'Public'),
(2, 1, 'Contacts without Accounts', 'Contacts not related to Accounts', 'tabular', 2, 'CUSTOM', 1, 1, 1, 'Public'),
(3, 1, 'Contacts by Potentials', 'Contacts related to Potentials', 'tabular', 3, 'CUSTOM', 1, 1, 1, 'Public'),
(4, 2, 'Lead by Source', 'Lead by Source', 'summary', 4, 'CUSTOM', 1, 1, 1, 'Public'),
(5, 2, 'Lead Status Report', 'Lead Status Report', 'summary', 5, 'CUSTOM', 1, 1, 1, 'Public'),
(6, 3, 'Potential Pipeline', 'Potential Pipeline', 'summary', 6, 'CUSTOM', 1, 1, 1, 'Public'),
(7, 3, 'Closed Potentials', 'Potential that have Won', 'tabular', 7, 'CUSTOM', 1, 1, 1, 'Public'),
(8, 4, 'Last Month Activities', 'Last Month Activities', 'tabular', 8, 'CUSTOM', 1, 1, 1, 'Public'),
(9, 4, 'This Month Activities', 'This Month Activities', 'tabular', 9, 'CUSTOM', 1, 1, 1, 'Public'),
(10, 5, 'Tickets by Products', 'Tickets related to Products', 'tabular', 10, 'CUSTOM', 1, 1, 1, 'Public'),
(11, 5, 'Tickets by Priority', 'Tickets by Priority', 'summary', 11, 'CUSTOM', 1, 1, 1, 'Public'),
(12, 5, 'Open Tickets', 'Tickets that are Open', 'tabular', 12, 'CUSTOM', 1, 1, 1, 'Public'),
(13, 6, 'Product Details', 'Product Detailed Report', 'tabular', 13, 'CUSTOM', 1, 1, 1, 'Public'),
(14, 6, 'Products by Contacts', 'Products related to Contacts', 'tabular', 14, 'CUSTOM', 1, 1, 1, 'Public'),
(15, 7, 'Open Quotes', 'Quotes that are Open', 'tabular', 15, 'CUSTOM', 1, 1, 1, 'Public'),
(16, 7, 'Quotes Detailed Report', 'Quotes Detailed Report', 'tabular', 16, 'CUSTOM', 1, 1, 1, 'Public'),
(17, 8, 'PurchaseOrder by Contacts', 'PurchaseOrder related to Contacts', 'tabular', 17, 'CUSTOM', 1, 1, 1, 'Public'),
(18, 8, 'PurchaseOrder Detailed Report', 'PurchaseOrder Detailed Report', 'tabular', 18, 'CUSTOM', 1, 1, 1, 'Public'),
(19, 9, 'Invoice Detailed Report', 'Invoice Detailed Report', 'tabular', 19, 'CUSTOM', 1, 1, 1, 'Public'),
(20, 10, 'SalesOrder Detailed Report', 'SalesOrder Detailed Report', 'tabular', 20, 'CUSTOM', 1, 1, 1, 'Public'),
(21, 11, 'Campaign Expectations and Actuals', 'Campaign Expectations and Actuals', 'tabular', 21, 'CUSTOM', 1, 1, 1, 'Public'),
(22, 12, 'Contacts Email Report', 'Emails sent to Contacts', 'tabular', 22, 'CUSTOM', 1, 1, 1, 'Public'),
(23, 12, 'Accounts Email Report', 'Emails sent to Organizations', 'tabular', 23, 'CUSTOM', 1, 1, 1, 'Public'),
(24, 12, 'Leads Email Report', 'Emails sent to Leads', 'tabular', 24, 'CUSTOM', 1, 1, 1, 'Public'),
(25, 12, 'Vendors Email Report', 'Emails sent to Vendors', 'tabular', 25, 'CUSTOM', 1, 1, 1, 'Public');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportdatefilter`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportdatefilter` (
  `datefilterid` int(19) NOT NULL,
  `datecolumnname` varchar(250) DEFAULT '',
  `datefilter` varchar(250) DEFAULT '',
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  PRIMARY KEY (`datefilterid`),
  KEY `reportdatefilter_datefilterid_idx` (`datefilterid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportdatefilter`
--

INSERT INTO `vtiger_reportdatefilter` (`datefilterid`, `datecolumnname`, `datefilter`, `startdate`, `enddate`) VALUES
(8, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'lastmonth', '2005-05-01', '2005-05-31'),
(9, 'vtiger_crmentity:modifiedtime:modifiedtime:Calendar_Modified_Time', 'thismonth', '2005-06-01', '2005-06-30');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportfilters`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportfilters` (
  `filterid` int(19) NOT NULL,
  `name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportfilters`
--

INSERT INTO `vtiger_reportfilters` (`filterid`, `name`) VALUES
(1, 'Private'),
(2, 'Public'),
(3, 'Shared');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportfolder`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportfolder` (
  `folderid` int(19) NOT NULL AUTO_INCREMENT,
  `foldername` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(250) DEFAULT '',
  `state` varchar(50) DEFAULT 'SAVED',
  PRIMARY KEY (`folderid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `vtiger_reportfolder`
--

INSERT INTO `vtiger_reportfolder` (`folderid`, `foldername`, `description`, `state`) VALUES
(1, 'Account and Contact Reports', 'Account and Contact Reports', 'SAVED'),
(2, 'Lead Reports', 'Lead Reports', 'SAVED'),
(3, 'Potential Reports', 'Potential Reports', 'SAVED'),
(4, 'Activity Reports', 'Activity Reports', 'SAVED'),
(5, 'HelpDesk Reports', 'HelpDesk Reports', 'SAVED'),
(6, 'Product Reports', 'Product Reports', 'SAVED'),
(7, 'Quote Reports', 'Quote Reports', 'SAVED'),
(8, 'PurchaseOrder Reports', 'PurchaseOrder Reports', 'SAVED'),
(9, 'Invoice Reports', 'Invoice Reports', 'SAVED'),
(10, 'SalesOrder Reports', 'SalesOrder Reports', 'SAVED'),
(11, 'Campaign Reports', 'Campaign Reports', 'SAVED'),
(12, 'Email Reports', 'Email Reports', 'SAVED');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportgroupbycolumn`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportgroupbycolumn` (
  `reportid` int(19) DEFAULT NULL,
  `sortid` int(19) DEFAULT NULL,
  `sortcolname` varchar(250) DEFAULT NULL,
  `dategroupbycriteria` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportmodules`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportmodules` (
  `reportmodulesid` int(19) NOT NULL,
  `primarymodule` varchar(50) NOT NULL DEFAULT '',
  `secondarymodules` varchar(250) DEFAULT '',
  PRIMARY KEY (`reportmodulesid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportmodules`
--

INSERT INTO `vtiger_reportmodules` (`reportmodulesid`, `primarymodule`, `secondarymodules`) VALUES
(1, 'Contacts', 'Accounts'),
(2, 'Contacts', 'Accounts'),
(3, 'Contacts', 'Potentials'),
(4, 'Leads', ''),
(5, 'Leads', ''),
(6, 'Potentials', ''),
(7, 'Potentials', ''),
(8, 'Calendar', ''),
(9, 'Calendar', ''),
(10, 'HelpDesk', 'Products'),
(11, 'HelpDesk', ''),
(12, 'HelpDesk', ''),
(13, 'Products', ''),
(14, 'Products', 'Contacts'),
(15, 'Quotes', ''),
(16, 'Quotes', ''),
(17, 'PurchaseOrder', 'Contacts'),
(18, 'PurchaseOrder', ''),
(19, 'Invoice', ''),
(20, 'SalesOrder', ''),
(21, 'Campaigns', ''),
(22, 'Contacts', 'Emails'),
(23, 'Accounts', 'Emails'),
(24, 'Leads', 'Emails'),
(25, 'Vendors', 'Emails');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsharing`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportsharing` (
  `reportid` int(19) NOT NULL,
  `shareid` int(19) NOT NULL,
  `setype` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsortcol`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportsortcol` (
  `sortcolid` int(19) NOT NULL,
  `reportid` int(19) NOT NULL,
  `columnname` varchar(250) DEFAULT '',
  `sortorder` varchar(250) DEFAULT 'Asc',
  PRIMARY KEY (`sortcolid`,`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_reportsortcol`
--

INSERT INTO `vtiger_reportsortcol` (`sortcolid`, `reportid`, `columnname`, `sortorder`) VALUES
(1, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V', 'Ascending'),
(1, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V', 'Ascending'),
(1, 6, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V', 'Ascending'),
(1, 11, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V', 'Ascending');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reportsummary`
--

CREATE TABLE IF NOT EXISTS `vtiger_reportsummary` (
  `reportsummaryid` int(19) NOT NULL,
  `summarytype` int(19) NOT NULL,
  `columnname` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`reportsummaryid`,`summarytype`,`columnname`),
  KEY `reportsummary_reportsummaryid_idx` (`reportsummaryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_reporttype`
--

CREATE TABLE IF NOT EXISTS `vtiger_reporttype` (
  `reportid` int(10) NOT NULL,
  `data` text,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role`
--

CREATE TABLE IF NOT EXISTS `vtiger_role` (
  `roleid` varchar(255) NOT NULL,
  `rolename` varchar(200) DEFAULT NULL,
  `parentrole` varchar(255) DEFAULT NULL,
  `depth` int(19) DEFAULT NULL,
  `allowassignedrecordsto` int(2) NOT NULL DEFAULT '1',
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role`
--

INSERT INTO `vtiger_role` (`roleid`, `rolename`, `parentrole`, `depth`, `allowassignedrecordsto`) VALUES
('H1', 'Organization', 'H1', 0, 1),
('H2', 'CEO', 'H1::H2', 1, 1),
('H3', 'Vice President', 'H1::H2::H3', 2, 1),
('H4', 'Sales Manager', 'H1::H2::H3::H4', 3, 1),
('H5', 'Sales Person', 'H1::H2::H3::H4::H5', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2picklist`
--

CREATE TABLE IF NOT EXISTS `vtiger_role2picklist` (
  `roleid` varchar(255) NOT NULL,
  `picklistvalueid` int(11) NOT NULL,
  `picklistid` int(11) NOT NULL,
  `sortid` int(11) DEFAULT NULL,
  PRIMARY KEY (`roleid`,`picklistvalueid`,`picklistid`),
  KEY `role2picklist_roleid_picklistid_idx` (`roleid`,`picklistid`,`picklistvalueid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role2picklist`
--

INSERT INTO `vtiger_role2picklist` (`roleid`, `picklistvalueid`, `picklistid`, `sortid`) VALUES
('H1', 1, 1, 0),
('H1', 2, 1, 1),
('H1', 3, 1, 2),
('H1', 4, 1, 3),
('H1', 5, 1, 4),
('H1', 6, 1, 5),
('H1', 7, 1, 6),
('H1', 8, 1, 7),
('H1', 9, 1, 8),
('H1', 10, 1, 9),
('H1', 11, 1, 10),
('H1', 12, 2, 0),
('H1', 13, 2, 1),
('H1', 14, 3, 0),
('H1', 15, 3, 1),
('H1', 16, 3, 2),
('H1', 17, 3, 3),
('H1', 18, 3, 4),
('H1', 19, 3, 5),
('H1', 20, 4, 0),
('H1', 21, 4, 1),
('H1', 22, 4, 2),
('H1', 23, 4, 3),
('H1', 24, 4, 4),
('H1', 25, 4, 5),
('H1', 26, 4, 6),
('H1', 27, 4, 7),
('H1', 28, 4, 8),
('H1', 29, 4, 9),
('H1', 30, 4, 10),
('H1', 31, 4, 11),
('H1', 32, 4, 12),
('H1', 33, 5, 0),
('H1', 34, 5, 1),
('H1', 35, 5, 2),
('H1', 36, 5, 3),
('H1', 37, 5, 4),
('H1', 38, 6, 0),
('H1', 39, 6, 1),
('H1', 40, 6, 2),
('H1', 41, 7, 0),
('H1', 42, 7, 1),
('H1', 43, 7, 2),
('H1', 44, 7, 3),
('H1', 45, 7, 4),
('H1', 46, 8, 0),
('H1', 47, 9, 0),
('H1', 48, 9, 1),
('H1', 49, 9, 2),
('H1', 50, 9, 3),
('H1', 51, 10, 0),
('H1', 52, 10, 1),
('H1', 53, 10, 2),
('H1', 54, 10, 3),
('H1', 55, 10, 4),
('H1', 56, 10, 5),
('H1', 57, 10, 6),
('H1', 58, 10, 7),
('H1', 59, 10, 8),
('H1', 60, 11, 0),
('H1', 61, 11, 1),
('H1', 62, 11, 2),
('H1', 63, 11, 3),
('H1', 64, 11, 4),
('H1', 65, 11, 5),
('H1', 66, 11, 6),
('H1', 67, 11, 7),
('H1', 68, 11, 8),
('H1', 69, 11, 9),
('H1', 70, 11, 10),
('H1', 71, 11, 11),
('H1', 72, 11, 12),
('H1', 73, 11, 13),
('H1', 74, 11, 14),
('H1', 75, 11, 15),
('H1', 76, 11, 16),
('H1', 77, 11, 17),
('H1', 78, 11, 18),
('H1', 79, 11, 19),
('H1', 80, 11, 20),
('H1', 81, 11, 21),
('H1', 82, 11, 22),
('H1', 83, 11, 23),
('H1', 84, 11, 24),
('H1', 85, 11, 25),
('H1', 86, 11, 26),
('H1', 87, 11, 27),
('H1', 88, 11, 28),
('H1', 89, 11, 29),
('H1', 90, 11, 30),
('H1', 91, 11, 31),
('H1', 92, 12, 0),
('H1', 93, 12, 1),
('H1', 94, 12, 2),
('H1', 95, 12, 3),
('H1', 96, 12, 4),
('H1', 97, 12, 5),
('H1', 98, 13, 0),
('H1', 99, 13, 1),
('H1', 100, 13, 2),
('H1', 101, 13, 3),
('H1', 102, 13, 4),
('H1', 103, 13, 5),
('H1', 104, 13, 6),
('H1', 105, 13, 7),
('H1', 106, 13, 8),
('H1', 107, 13, 9),
('H1', 108, 13, 10),
('H1', 109, 13, 11),
('H1', 110, 13, 12),
('H1', 111, 14, 0),
('H1', 112, 14, 1),
('H1', 113, 14, 2),
('H1', 114, 14, 3),
('H1', 115, 14, 4),
('H1', 116, 14, 5),
('H1', 117, 14, 6),
('H1', 118, 14, 7),
('H1', 119, 14, 8),
('H1', 120, 14, 9),
('H1', 121, 14, 10),
('H1', 122, 14, 11),
('H1', 123, 15, 0),
('H1', 124, 15, 1),
('H1', 125, 15, 2),
('H1', 126, 15, 3),
('H1', 127, 16, 0),
('H1', 128, 16, 1),
('H1', 129, 16, 2),
('H1', 130, 17, 0),
('H1', 131, 17, 1),
('H1', 132, 17, 2),
('H1', 133, 17, 3),
('H1', 134, 17, 4),
('H1', 135, 18, 0),
('H1', 136, 18, 1),
('H1', 137, 18, 2),
('H1', 138, 18, 3),
('H1', 139, 19, 0),
('H1', 140, 19, 1),
('H1', 141, 19, 2),
('H1', 142, 19, 3),
('H1', 143, 19, 4),
('H1', 144, 20, 0),
('H1', 145, 20, 1),
('H1', 146, 20, 2),
('H1', 147, 20, 3),
('H1', 148, 20, 4),
('H1', 149, 20, 5),
('H1', 150, 21, 0),
('H1', 151, 21, 1),
('H1', 152, 21, 2),
('H1', 153, 21, 3),
('H1', 154, 21, 4),
('H1', 155, 21, 5),
('H1', 156, 21, 6),
('H1', 157, 21, 7),
('H1', 158, 21, 8),
('H1', 159, 21, 9),
('H1', 160, 22, 0),
('H1', 161, 22, 1),
('H1', 162, 22, 2),
('H1', 163, 22, 3),
('H1', 164, 22, 4),
('H1', 165, 22, 5),
('H1', 166, 23, 0),
('H1', 167, 23, 1),
('H1', 168, 23, 2),
('H1', 169, 23, 3),
('H1', 170, 24, 0),
('H1', 171, 24, 1),
('H1', 172, 24, 2),
('H1', 173, 25, 0),
('H1', 174, 25, 1),
('H1', 175, 25, 2),
('H1', 176, 25, 3),
('H1', 177, 25, 4),
('H1', 178, 25, 5),
('H1', 179, 26, 0),
('H1', 180, 26, 1),
('H1', 181, 26, 2),
('H1', 182, 27, 0),
('H1', 183, 27, 1),
('H1', 184, 27, 2),
('H1', 185, 27, 3),
('H1', 186, 28, 0),
('H1', 187, 28, 1),
('H1', 188, 28, 2),
('H1', 189, 28, 3),
('H1', 190, 29, 0),
('H1', 191, 29, 1),
('H1', 192, 29, 2),
('H1', 193, 29, 3),
('H1', 194, 30, 0),
('H1', 195, 30, 1),
('H1', 196, 30, 2),
('H1', 197, 30, 3),
('H1', 198, 30, 4),
('H1', 199, 30, 5),
('H1', 200, 30, 6),
('H1', 201, 30, 7),
('H1', 202, 30, 8),
('H1', 203, 30, 9),
('H1', 204, 30, 10),
('H1', 205, 30, 11),
('H1', 206, 30, 12),
('H1', 207, 30, 13),
('H1', 208, 30, 14),
('H1', 209, 30, 15),
('H1', 210, 31, 1),
('H1', 211, 31, 2),
('H1', 212, 31, 3),
('H1', 213, 31, 4),
('H1', 214, 32, 1),
('H1', 215, 32, 2),
('H1', 216, 32, 3),
('H1', 217, 32, 4),
('H1', 218, 32, 5),
('H1', 219, 32, 6),
('H1', 220, 33, 1),
('H1', 221, 33, 2),
('H1', 222, 33, 3),
('H1', 223, 34, 1),
('H1', 224, 34, 2),
('H1', 225, 34, 3),
('H1', 226, 35, 1),
('H1', 227, 35, 2),
('H1', 228, 35, 3),
('H1', 229, 36, 1),
('H1', 230, 36, 2),
('H1', 231, 36, 3),
('H1', 232, 36, 4),
('H1', 233, 36, 5),
('H1', 234, 36, 6),
('H1', 235, 37, 1),
('H1', 236, 37, 2),
('H1', 237, 38, 1),
('H1', 238, 38, 2),
('H1', 239, 38, 3),
('H1', 240, 38, 4),
('H1', 241, 39, 1),
('H1', 242, 39, 2),
('H1', 243, 39, 3),
('H1', 244, 39, 4),
('H1', 245, 40, 1),
('H1', 246, 40, 2),
('H1', 247, 40, 3),
('H1', 248, 40, 4),
('H1', 249, 41, 1),
('H1', 250, 41, 2),
('H1', 251, 41, 3),
('H1', 252, 41, 4),
('H1', 253, 41, 5),
('H1', 254, 41, 6),
('H1', 255, 41, 7),
('H1', 256, 41, 8),
('H1', 257, 41, 9),
('H1', 258, 41, 10),
('H1', 259, 41, 11),
('H1', 260, 42, 1),
('H1', 261, 42, 2),
('H1', 262, 42, 3),
('H1', 263, 42, 4),
('H1', 264, 42, 5),
('H1', 265, 42, 6),
('H1', 266, 42, 7),
('H1', 267, 42, 8),
('H1', 268, 42, 9),
('H1', 269, 43, 1),
('H1', 270, 43, 2),
('H1', 271, 43, 3),
('H1', 272, 43, 4),
('H1', 273, 44, 1),
('H1', 274, 44, 2),
('H1', 275, 44, 3),
('H1', 276, 44, 4),
('H1', 277, 45, 1),
('H1', 278, 45, 2),
('H1', 279, 45, 3),
('H1', 280, 45, 4),
('H1', 281, 45, 5),
('H1', 282, 45, 6),
('H1', 283, 45, 7),
('H1', 284, 45, 8),
('H1', 285, 45, 9),
('H1', 286, 45, 10),
('H1', 287, 45, 11),
('H1', 288, 12, 1),
('H1', 289, 46, 1),
('H1', 290, 46, 2),
('H1', 291, 46, 3),
('H1', 292, 46, 4),
('H1', 293, 46, 5),
('H1', 294, 46, 6),
('H1', 295, 47, 1),
('H1', 296, 47, 2),
('H1', 297, 48, 1),
('H1', 298, 48, 2),
('H1', 299, 48, 3),
('H1', 300, 48, 4),
('H1', 301, 48, 5),
('H1', 302, 48, 6),
('H1', 303, 48, 7),
('H1', 304, 48, 8),
('H1', 305, 48, 9),
('H1', 306, 48, 10),
('H1', 307, 48, 11),
('H1', 308, 48, 12),
('H1', 309, 48, 13),
('H1', 310, 48, 14),
('H1', 311, 48, 15),
('H1', 312, 48, 16),
('H1', 313, 48, 17),
('H1', 314, 48, 18),
('H1', 315, 48, 19),
('H1', 316, 48, 20),
('H1', 317, 48, 21),
('H1', 318, 48, 22),
('H1', 319, 48, 23),
('H1', 320, 48, 24),
('H1', 321, 2, 1),
('H1', 322, 49, 1),
('H1', 323, 49, 2),
('H1', 324, 49, 3),
('H1', 325, 50, 1),
('H1', 326, 50, 2),
('H2', 1, 1, 0),
('H2', 2, 1, 1),
('H2', 3, 1, 2),
('H2', 4, 1, 3),
('H2', 5, 1, 4),
('H2', 6, 1, 5),
('H2', 7, 1, 6),
('H2', 8, 1, 7),
('H2', 9, 1, 8),
('H2', 10, 1, 9),
('H2', 11, 1, 10),
('H2', 12, 2, 0),
('H2', 13, 2, 1),
('H2', 14, 3, 0),
('H2', 15, 3, 1),
('H2', 16, 3, 2),
('H2', 17, 3, 3),
('H2', 18, 3, 4),
('H2', 19, 3, 5),
('H2', 20, 4, 0),
('H2', 21, 4, 1),
('H2', 22, 4, 2),
('H2', 23, 4, 3),
('H2', 24, 4, 4),
('H2', 25, 4, 5),
('H2', 26, 4, 6),
('H2', 27, 4, 7),
('H2', 28, 4, 8),
('H2', 29, 4, 9),
('H2', 30, 4, 10),
('H2', 31, 4, 11),
('H2', 32, 4, 12),
('H2', 33, 5, 0),
('H2', 34, 5, 1),
('H2', 35, 5, 2),
('H2', 36, 5, 3),
('H2', 37, 5, 4),
('H2', 38, 6, 0),
('H2', 39, 6, 1),
('H2', 40, 6, 2),
('H2', 41, 7, 0),
('H2', 42, 7, 1),
('H2', 43, 7, 2),
('H2', 44, 7, 3),
('H2', 45, 7, 4),
('H2', 46, 8, 0),
('H2', 47, 9, 0),
('H2', 48, 9, 1),
('H2', 49, 9, 2),
('H2', 50, 9, 3),
('H2', 51, 10, 0),
('H2', 52, 10, 1),
('H2', 53, 10, 2),
('H2', 54, 10, 3),
('H2', 55, 10, 4),
('H2', 56, 10, 5),
('H2', 57, 10, 6),
('H2', 58, 10, 7),
('H2', 59, 10, 8),
('H2', 60, 11, 0),
('H2', 61, 11, 1),
('H2', 62, 11, 2),
('H2', 63, 11, 3),
('H2', 64, 11, 4),
('H2', 65, 11, 5),
('H2', 66, 11, 6),
('H2', 67, 11, 7),
('H2', 68, 11, 8),
('H2', 69, 11, 9),
('H2', 70, 11, 10),
('H2', 71, 11, 11),
('H2', 72, 11, 12),
('H2', 73, 11, 13),
('H2', 74, 11, 14),
('H2', 75, 11, 15),
('H2', 76, 11, 16),
('H2', 77, 11, 17),
('H2', 78, 11, 18),
('H2', 79, 11, 19),
('H2', 80, 11, 20),
('H2', 81, 11, 21),
('H2', 82, 11, 22),
('H2', 83, 11, 23),
('H2', 84, 11, 24),
('H2', 85, 11, 25),
('H2', 86, 11, 26),
('H2', 87, 11, 27),
('H2', 88, 11, 28),
('H2', 89, 11, 29),
('H2', 90, 11, 30),
('H2', 91, 11, 31),
('H2', 92, 12, 0),
('H2', 93, 12, 1),
('H2', 94, 12, 2),
('H2', 95, 12, 3),
('H2', 96, 12, 4),
('H2', 97, 12, 5),
('H2', 98, 13, 0),
('H2', 99, 13, 1),
('H2', 100, 13, 2),
('H2', 101, 13, 3),
('H2', 102, 13, 4),
('H2', 103, 13, 5),
('H2', 104, 13, 6),
('H2', 105, 13, 7),
('H2', 106, 13, 8),
('H2', 107, 13, 9),
('H2', 108, 13, 10),
('H2', 109, 13, 11),
('H2', 110, 13, 12),
('H2', 111, 14, 0),
('H2', 112, 14, 1),
('H2', 113, 14, 2),
('H2', 114, 14, 3),
('H2', 115, 14, 4),
('H2', 116, 14, 5),
('H2', 117, 14, 6),
('H2', 118, 14, 7),
('H2', 119, 14, 8),
('H2', 120, 14, 9),
('H2', 121, 14, 10),
('H2', 122, 14, 11),
('H2', 123, 15, 0),
('H2', 124, 15, 1),
('H2', 125, 15, 2),
('H2', 126, 15, 3),
('H2', 127, 16, 0),
('H2', 128, 16, 1),
('H2', 129, 16, 2),
('H2', 130, 17, 0),
('H2', 131, 17, 1),
('H2', 132, 17, 2),
('H2', 133, 17, 3),
('H2', 134, 17, 4),
('H2', 135, 18, 0),
('H2', 136, 18, 1),
('H2', 137, 18, 2),
('H2', 138, 18, 3),
('H2', 139, 19, 0),
('H2', 140, 19, 1),
('H2', 141, 19, 2),
('H2', 142, 19, 3),
('H2', 143, 19, 4),
('H2', 144, 20, 0),
('H2', 145, 20, 1),
('H2', 146, 20, 2),
('H2', 147, 20, 3),
('H2', 148, 20, 4),
('H2', 149, 20, 5),
('H2', 150, 21, 0),
('H2', 151, 21, 1),
('H2', 152, 21, 2),
('H2', 153, 21, 3),
('H2', 154, 21, 4),
('H2', 155, 21, 5),
('H2', 156, 21, 6),
('H2', 157, 21, 7),
('H2', 158, 21, 8),
('H2', 159, 21, 9),
('H2', 160, 22, 0),
('H2', 161, 22, 1),
('H2', 162, 22, 2),
('H2', 163, 22, 3),
('H2', 164, 22, 4),
('H2', 165, 22, 5),
('H2', 166, 23, 0),
('H2', 167, 23, 1),
('H2', 168, 23, 2),
('H2', 169, 23, 3),
('H2', 170, 24, 0),
('H2', 171, 24, 1),
('H2', 172, 24, 2),
('H2', 173, 25, 0),
('H2', 174, 25, 1),
('H2', 175, 25, 2),
('H2', 176, 25, 3),
('H2', 177, 25, 4),
('H2', 178, 25, 5),
('H2', 179, 26, 0),
('H2', 180, 26, 1),
('H2', 181, 26, 2),
('H2', 182, 27, 0),
('H2', 183, 27, 1),
('H2', 184, 27, 2),
('H2', 185, 27, 3),
('H2', 186, 28, 0),
('H2', 187, 28, 1),
('H2', 188, 28, 2),
('H2', 189, 28, 3),
('H2', 190, 29, 0),
('H2', 191, 29, 1),
('H2', 192, 29, 2),
('H2', 193, 29, 3),
('H2', 194, 30, 0),
('H2', 195, 30, 1),
('H2', 196, 30, 2),
('H2', 197, 30, 3),
('H2', 198, 30, 4),
('H2', 199, 30, 5),
('H2', 200, 30, 6),
('H2', 201, 30, 7),
('H2', 202, 30, 8),
('H2', 203, 30, 9),
('H2', 204, 30, 10),
('H2', 205, 30, 11),
('H2', 206, 30, 12),
('H2', 207, 30, 13),
('H2', 208, 30, 14),
('H2', 209, 30, 15),
('H2', 210, 31, 1),
('H2', 211, 31, 2),
('H2', 212, 31, 3),
('H2', 213, 31, 4),
('H2', 214, 32, 1),
('H2', 215, 32, 2),
('H2', 216, 32, 3),
('H2', 217, 32, 4),
('H2', 218, 32, 5),
('H2', 219, 32, 6),
('H2', 220, 33, 1),
('H2', 221, 33, 2),
('H2', 222, 33, 3),
('H2', 223, 34, 1),
('H2', 224, 34, 2),
('H2', 225, 34, 3),
('H2', 226, 35, 1),
('H2', 227, 35, 2),
('H2', 228, 35, 3),
('H2', 229, 36, 1),
('H2', 230, 36, 2),
('H2', 231, 36, 3),
('H2', 232, 36, 4),
('H2', 233, 36, 5),
('H2', 234, 36, 6),
('H2', 235, 37, 1),
('H2', 236, 37, 2),
('H2', 237, 38, 1),
('H2', 238, 38, 2),
('H2', 239, 38, 3),
('H2', 240, 38, 4),
('H2', 241, 39, 1),
('H2', 242, 39, 2),
('H2', 243, 39, 3),
('H2', 244, 39, 4),
('H2', 245, 40, 1),
('H2', 246, 40, 2),
('H2', 247, 40, 3),
('H2', 248, 40, 4),
('H2', 249, 41, 1),
('H2', 250, 41, 2),
('H2', 251, 41, 3),
('H2', 252, 41, 4),
('H2', 253, 41, 5),
('H2', 254, 41, 6),
('H2', 255, 41, 7),
('H2', 256, 41, 8),
('H2', 257, 41, 9),
('H2', 258, 41, 10),
('H2', 259, 41, 11),
('H2', 260, 42, 1),
('H2', 261, 42, 2),
('H2', 262, 42, 3),
('H2', 263, 42, 4),
('H2', 264, 42, 5),
('H2', 265, 42, 6),
('H2', 266, 42, 7),
('H2', 267, 42, 8),
('H2', 268, 42, 9),
('H2', 269, 43, 1),
('H2', 270, 43, 2),
('H2', 271, 43, 3),
('H2', 272, 43, 4),
('H2', 273, 44, 1),
('H2', 274, 44, 2),
('H2', 275, 44, 3),
('H2', 276, 44, 4),
('H2', 277, 45, 1),
('H2', 278, 45, 2),
('H2', 279, 45, 3),
('H2', 280, 45, 4),
('H2', 281, 45, 5),
('H2', 282, 45, 6),
('H2', 283, 45, 7),
('H2', 284, 45, 8),
('H2', 285, 45, 9),
('H2', 286, 45, 10),
('H2', 287, 45, 11),
('H2', 288, 12, 1),
('H2', 289, 46, 1),
('H2', 290, 46, 2),
('H2', 291, 46, 3),
('H2', 292, 46, 4),
('H2', 293, 46, 5),
('H2', 294, 46, 6),
('H2', 295, 47, 1),
('H2', 296, 47, 2),
('H2', 297, 48, 1),
('H2', 298, 48, 2),
('H2', 299, 48, 3),
('H2', 300, 48, 4),
('H2', 301, 48, 5),
('H2', 302, 48, 6),
('H2', 303, 48, 7),
('H2', 304, 48, 8),
('H2', 305, 48, 9),
('H2', 306, 48, 10),
('H2', 307, 48, 11),
('H2', 308, 48, 12),
('H2', 309, 48, 13),
('H2', 310, 48, 14),
('H2', 311, 48, 15),
('H2', 312, 48, 16),
('H2', 313, 48, 17),
('H2', 314, 48, 18),
('H2', 315, 48, 19),
('H2', 316, 48, 20),
('H2', 317, 48, 21),
('H2', 318, 48, 22),
('H2', 319, 48, 23),
('H2', 320, 48, 24),
('H2', 321, 2, 1),
('H2', 322, 49, 1),
('H2', 323, 49, 2),
('H2', 324, 49, 3),
('H2', 325, 50, 1),
('H2', 326, 50, 2),
('H3', 1, 1, 0),
('H3', 2, 1, 1),
('H3', 3, 1, 2),
('H3', 4, 1, 3),
('H3', 5, 1, 4),
('H3', 6, 1, 5),
('H3', 7, 1, 6),
('H3', 8, 1, 7),
('H3', 9, 1, 8),
('H3', 10, 1, 9),
('H3', 11, 1, 10),
('H3', 12, 2, 0),
('H3', 13, 2, 1),
('H3', 14, 3, 0),
('H3', 15, 3, 1),
('H3', 16, 3, 2),
('H3', 17, 3, 3),
('H3', 18, 3, 4),
('H3', 19, 3, 5),
('H3', 20, 4, 0),
('H3', 21, 4, 1),
('H3', 22, 4, 2),
('H3', 23, 4, 3),
('H3', 24, 4, 4),
('H3', 25, 4, 5),
('H3', 26, 4, 6),
('H3', 27, 4, 7),
('H3', 28, 4, 8),
('H3', 29, 4, 9),
('H3', 30, 4, 10),
('H3', 31, 4, 11),
('H3', 32, 4, 12),
('H3', 33, 5, 0),
('H3', 34, 5, 1),
('H3', 35, 5, 2),
('H3', 36, 5, 3),
('H3', 37, 5, 4),
('H3', 38, 6, 0),
('H3', 39, 6, 1),
('H3', 40, 6, 2),
('H3', 41, 7, 0),
('H3', 42, 7, 1),
('H3', 43, 7, 2),
('H3', 44, 7, 3),
('H3', 45, 7, 4),
('H3', 46, 8, 0),
('H3', 47, 9, 0),
('H3', 48, 9, 1),
('H3', 49, 9, 2),
('H3', 50, 9, 3),
('H3', 51, 10, 0),
('H3', 52, 10, 1),
('H3', 53, 10, 2),
('H3', 54, 10, 3),
('H3', 55, 10, 4),
('H3', 56, 10, 5),
('H3', 57, 10, 6),
('H3', 58, 10, 7),
('H3', 59, 10, 8),
('H3', 60, 11, 0),
('H3', 61, 11, 1),
('H3', 62, 11, 2),
('H3', 63, 11, 3),
('H3', 64, 11, 4),
('H3', 65, 11, 5),
('H3', 66, 11, 6),
('H3', 67, 11, 7),
('H3', 68, 11, 8),
('H3', 69, 11, 9),
('H3', 70, 11, 10),
('H3', 71, 11, 11),
('H3', 72, 11, 12),
('H3', 73, 11, 13),
('H3', 74, 11, 14),
('H3', 75, 11, 15),
('H3', 76, 11, 16),
('H3', 77, 11, 17),
('H3', 78, 11, 18),
('H3', 79, 11, 19),
('H3', 80, 11, 20),
('H3', 81, 11, 21),
('H3', 82, 11, 22),
('H3', 83, 11, 23),
('H3', 84, 11, 24),
('H3', 85, 11, 25),
('H3', 86, 11, 26),
('H3', 87, 11, 27),
('H3', 88, 11, 28),
('H3', 89, 11, 29),
('H3', 90, 11, 30),
('H3', 91, 11, 31),
('H3', 92, 12, 0),
('H3', 93, 12, 1),
('H3', 94, 12, 2),
('H3', 95, 12, 3),
('H3', 96, 12, 4),
('H3', 97, 12, 5),
('H3', 98, 13, 0),
('H3', 99, 13, 1),
('H3', 100, 13, 2),
('H3', 101, 13, 3),
('H3', 102, 13, 4),
('H3', 103, 13, 5),
('H3', 104, 13, 6),
('H3', 105, 13, 7),
('H3', 106, 13, 8),
('H3', 107, 13, 9),
('H3', 108, 13, 10),
('H3', 109, 13, 11),
('H3', 110, 13, 12),
('H3', 111, 14, 0),
('H3', 112, 14, 1),
('H3', 113, 14, 2),
('H3', 114, 14, 3),
('H3', 115, 14, 4),
('H3', 116, 14, 5),
('H3', 117, 14, 6),
('H3', 118, 14, 7),
('H3', 119, 14, 8),
('H3', 120, 14, 9),
('H3', 121, 14, 10),
('H3', 122, 14, 11),
('H3', 123, 15, 0),
('H3', 124, 15, 1),
('H3', 125, 15, 2),
('H3', 126, 15, 3),
('H3', 127, 16, 0),
('H3', 128, 16, 1),
('H3', 129, 16, 2),
('H3', 130, 17, 0),
('H3', 131, 17, 1),
('H3', 132, 17, 2),
('H3', 133, 17, 3),
('H3', 134, 17, 4),
('H3', 135, 18, 0),
('H3', 136, 18, 1),
('H3', 137, 18, 2),
('H3', 138, 18, 3),
('H3', 139, 19, 0),
('H3', 140, 19, 1),
('H3', 141, 19, 2),
('H3', 142, 19, 3),
('H3', 143, 19, 4),
('H3', 144, 20, 0),
('H3', 145, 20, 1),
('H3', 146, 20, 2),
('H3', 147, 20, 3),
('H3', 148, 20, 4),
('H3', 149, 20, 5),
('H3', 150, 21, 0),
('H3', 151, 21, 1),
('H3', 152, 21, 2),
('H3', 153, 21, 3),
('H3', 154, 21, 4),
('H3', 155, 21, 5),
('H3', 156, 21, 6),
('H3', 157, 21, 7),
('H3', 158, 21, 8),
('H3', 159, 21, 9),
('H3', 160, 22, 0),
('H3', 161, 22, 1),
('H3', 162, 22, 2),
('H3', 163, 22, 3),
('H3', 164, 22, 4),
('H3', 165, 22, 5),
('H3', 166, 23, 0),
('H3', 167, 23, 1),
('H3', 168, 23, 2),
('H3', 169, 23, 3),
('H3', 170, 24, 0),
('H3', 171, 24, 1),
('H3', 172, 24, 2),
('H3', 173, 25, 0),
('H3', 174, 25, 1),
('H3', 175, 25, 2),
('H3', 176, 25, 3),
('H3', 177, 25, 4),
('H3', 178, 25, 5),
('H3', 179, 26, 0),
('H3', 180, 26, 1),
('H3', 181, 26, 2),
('H3', 182, 27, 0),
('H3', 183, 27, 1),
('H3', 184, 27, 2),
('H3', 185, 27, 3),
('H3', 186, 28, 0),
('H3', 187, 28, 1),
('H3', 188, 28, 2),
('H3', 189, 28, 3),
('H3', 190, 29, 0),
('H3', 191, 29, 1),
('H3', 192, 29, 2),
('H3', 193, 29, 3),
('H3', 194, 30, 0),
('H3', 195, 30, 1),
('H3', 196, 30, 2),
('H3', 197, 30, 3),
('H3', 198, 30, 4),
('H3', 199, 30, 5),
('H3', 200, 30, 6),
('H3', 201, 30, 7),
('H3', 202, 30, 8),
('H3', 203, 30, 9),
('H3', 204, 30, 10),
('H3', 205, 30, 11),
('H3', 206, 30, 12),
('H3', 207, 30, 13),
('H3', 208, 30, 14),
('H3', 209, 30, 15),
('H3', 210, 31, 1),
('H3', 211, 31, 2),
('H3', 212, 31, 3),
('H3', 213, 31, 4),
('H3', 214, 32, 1),
('H3', 215, 32, 2),
('H3', 216, 32, 3),
('H3', 217, 32, 4),
('H3', 218, 32, 5),
('H3', 219, 32, 6),
('H3', 220, 33, 1),
('H3', 221, 33, 2),
('H3', 222, 33, 3),
('H3', 223, 34, 1),
('H3', 224, 34, 2),
('H3', 225, 34, 3),
('H3', 226, 35, 1),
('H3', 227, 35, 2),
('H3', 228, 35, 3),
('H3', 229, 36, 1),
('H3', 230, 36, 2),
('H3', 231, 36, 3),
('H3', 232, 36, 4),
('H3', 233, 36, 5),
('H3', 234, 36, 6),
('H3', 235, 37, 1),
('H3', 236, 37, 2),
('H3', 237, 38, 1),
('H3', 238, 38, 2),
('H3', 239, 38, 3),
('H3', 240, 38, 4),
('H3', 241, 39, 1),
('H3', 242, 39, 2),
('H3', 243, 39, 3),
('H3', 244, 39, 4),
('H3', 245, 40, 1),
('H3', 246, 40, 2),
('H3', 247, 40, 3),
('H3', 248, 40, 4),
('H3', 249, 41, 1),
('H3', 250, 41, 2),
('H3', 251, 41, 3),
('H3', 252, 41, 4),
('H3', 253, 41, 5),
('H3', 254, 41, 6),
('H3', 255, 41, 7),
('H3', 256, 41, 8),
('H3', 257, 41, 9),
('H3', 258, 41, 10),
('H3', 259, 41, 11),
('H3', 260, 42, 1),
('H3', 261, 42, 2),
('H3', 262, 42, 3),
('H3', 263, 42, 4),
('H3', 264, 42, 5),
('H3', 265, 42, 6),
('H3', 266, 42, 7),
('H3', 267, 42, 8),
('H3', 268, 42, 9),
('H3', 269, 43, 1),
('H3', 270, 43, 2),
('H3', 271, 43, 3),
('H3', 272, 43, 4),
('H3', 273, 44, 1),
('H3', 274, 44, 2),
('H3', 275, 44, 3),
('H3', 276, 44, 4),
('H3', 277, 45, 1),
('H3', 278, 45, 2),
('H3', 279, 45, 3),
('H3', 280, 45, 4),
('H3', 281, 45, 5),
('H3', 282, 45, 6),
('H3', 283, 45, 7),
('H3', 284, 45, 8),
('H3', 285, 45, 9),
('H3', 286, 45, 10),
('H3', 287, 45, 11),
('H3', 288, 12, 1),
('H3', 289, 46, 1),
('H3', 290, 46, 2),
('H3', 291, 46, 3),
('H3', 292, 46, 4),
('H3', 293, 46, 5),
('H3', 294, 46, 6),
('H3', 295, 47, 1),
('H3', 296, 47, 2),
('H3', 297, 48, 1),
('H3', 298, 48, 2),
('H3', 299, 48, 3),
('H3', 300, 48, 4),
('H3', 301, 48, 5),
('H3', 302, 48, 6),
('H3', 303, 48, 7),
('H3', 304, 48, 8),
('H3', 305, 48, 9),
('H3', 306, 48, 10),
('H3', 307, 48, 11),
('H3', 308, 48, 12),
('H3', 309, 48, 13),
('H3', 310, 48, 14),
('H3', 311, 48, 15),
('H3', 312, 48, 16),
('H3', 313, 48, 17),
('H3', 314, 48, 18),
('H3', 315, 48, 19),
('H3', 316, 48, 20),
('H3', 317, 48, 21),
('H3', 318, 48, 22),
('H3', 319, 48, 23),
('H3', 320, 48, 24),
('H3', 321, 2, 1),
('H3', 322, 49, 1),
('H3', 323, 49, 2),
('H3', 324, 49, 3),
('H3', 325, 50, 1),
('H3', 326, 50, 2),
('H4', 1, 1, 0),
('H4', 2, 1, 1),
('H4', 3, 1, 2),
('H4', 4, 1, 3),
('H4', 5, 1, 4),
('H4', 6, 1, 5),
('H4', 7, 1, 6),
('H4', 8, 1, 7),
('H4', 9, 1, 8),
('H4', 10, 1, 9),
('H4', 11, 1, 10),
('H4', 12, 2, 0),
('H4', 13, 2, 1),
('H4', 14, 3, 0),
('H4', 15, 3, 1),
('H4', 16, 3, 2),
('H4', 17, 3, 3),
('H4', 18, 3, 4),
('H4', 19, 3, 5),
('H4', 20, 4, 0),
('H4', 21, 4, 1),
('H4', 22, 4, 2),
('H4', 23, 4, 3),
('H4', 24, 4, 4),
('H4', 25, 4, 5),
('H4', 26, 4, 6),
('H4', 27, 4, 7),
('H4', 28, 4, 8),
('H4', 29, 4, 9),
('H4', 30, 4, 10),
('H4', 31, 4, 11),
('H4', 32, 4, 12),
('H4', 33, 5, 0),
('H4', 34, 5, 1),
('H4', 35, 5, 2),
('H4', 36, 5, 3),
('H4', 37, 5, 4),
('H4', 38, 6, 0),
('H4', 39, 6, 1),
('H4', 40, 6, 2),
('H4', 41, 7, 0),
('H4', 42, 7, 1),
('H4', 43, 7, 2),
('H4', 44, 7, 3),
('H4', 45, 7, 4),
('H4', 46, 8, 0),
('H4', 47, 9, 0),
('H4', 48, 9, 1),
('H4', 49, 9, 2),
('H4', 50, 9, 3),
('H4', 51, 10, 0),
('H4', 52, 10, 1),
('H4', 53, 10, 2),
('H4', 54, 10, 3),
('H4', 55, 10, 4),
('H4', 56, 10, 5),
('H4', 57, 10, 6),
('H4', 58, 10, 7),
('H4', 59, 10, 8),
('H4', 60, 11, 0),
('H4', 61, 11, 1),
('H4', 62, 11, 2),
('H4', 63, 11, 3),
('H4', 64, 11, 4),
('H4', 65, 11, 5),
('H4', 66, 11, 6),
('H4', 67, 11, 7),
('H4', 68, 11, 8),
('H4', 69, 11, 9),
('H4', 70, 11, 10),
('H4', 71, 11, 11),
('H4', 72, 11, 12),
('H4', 73, 11, 13),
('H4', 74, 11, 14),
('H4', 75, 11, 15),
('H4', 76, 11, 16),
('H4', 77, 11, 17),
('H4', 78, 11, 18),
('H4', 79, 11, 19),
('H4', 80, 11, 20),
('H4', 81, 11, 21),
('H4', 82, 11, 22),
('H4', 83, 11, 23),
('H4', 84, 11, 24),
('H4', 85, 11, 25),
('H4', 86, 11, 26),
('H4', 87, 11, 27),
('H4', 88, 11, 28),
('H4', 89, 11, 29),
('H4', 90, 11, 30),
('H4', 91, 11, 31),
('H4', 92, 12, 0),
('H4', 93, 12, 1),
('H4', 94, 12, 2),
('H4', 95, 12, 3),
('H4', 96, 12, 4),
('H4', 97, 12, 5),
('H4', 98, 13, 0),
('H4', 99, 13, 1),
('H4', 100, 13, 2),
('H4', 101, 13, 3),
('H4', 102, 13, 4),
('H4', 103, 13, 5),
('H4', 104, 13, 6),
('H4', 105, 13, 7),
('H4', 106, 13, 8),
('H4', 107, 13, 9),
('H4', 108, 13, 10),
('H4', 109, 13, 11),
('H4', 110, 13, 12),
('H4', 111, 14, 0),
('H4', 112, 14, 1),
('H4', 113, 14, 2),
('H4', 114, 14, 3),
('H4', 115, 14, 4),
('H4', 116, 14, 5),
('H4', 117, 14, 6),
('H4', 118, 14, 7),
('H4', 119, 14, 8),
('H4', 120, 14, 9),
('H4', 121, 14, 10),
('H4', 122, 14, 11),
('H4', 123, 15, 0),
('H4', 124, 15, 1),
('H4', 125, 15, 2),
('H4', 126, 15, 3),
('H4', 127, 16, 0),
('H4', 128, 16, 1),
('H4', 129, 16, 2),
('H4', 130, 17, 0),
('H4', 131, 17, 1),
('H4', 132, 17, 2),
('H4', 133, 17, 3),
('H4', 134, 17, 4),
('H4', 135, 18, 0),
('H4', 136, 18, 1),
('H4', 137, 18, 2),
('H4', 138, 18, 3),
('H4', 139, 19, 0),
('H4', 140, 19, 1),
('H4', 141, 19, 2),
('H4', 142, 19, 3),
('H4', 143, 19, 4),
('H4', 144, 20, 0),
('H4', 145, 20, 1),
('H4', 146, 20, 2),
('H4', 147, 20, 3),
('H4', 148, 20, 4),
('H4', 149, 20, 5),
('H4', 150, 21, 0),
('H4', 151, 21, 1),
('H4', 152, 21, 2),
('H4', 153, 21, 3),
('H4', 154, 21, 4),
('H4', 155, 21, 5),
('H4', 156, 21, 6),
('H4', 157, 21, 7),
('H4', 158, 21, 8),
('H4', 159, 21, 9),
('H4', 160, 22, 0),
('H4', 161, 22, 1),
('H4', 162, 22, 2),
('H4', 163, 22, 3),
('H4', 164, 22, 4),
('H4', 165, 22, 5),
('H4', 166, 23, 0),
('H4', 167, 23, 1),
('H4', 168, 23, 2),
('H4', 169, 23, 3),
('H4', 170, 24, 0),
('H4', 171, 24, 1),
('H4', 172, 24, 2),
('H4', 173, 25, 0),
('H4', 174, 25, 1),
('H4', 175, 25, 2),
('H4', 176, 25, 3),
('H4', 177, 25, 4),
('H4', 178, 25, 5),
('H4', 179, 26, 0),
('H4', 180, 26, 1),
('H4', 181, 26, 2),
('H4', 182, 27, 0),
('H4', 183, 27, 1),
('H4', 184, 27, 2),
('H4', 185, 27, 3),
('H4', 186, 28, 0),
('H4', 187, 28, 1),
('H4', 188, 28, 2),
('H4', 189, 28, 3),
('H4', 190, 29, 0),
('H4', 191, 29, 1),
('H4', 192, 29, 2),
('H4', 193, 29, 3),
('H4', 194, 30, 0),
('H4', 195, 30, 1),
('H4', 196, 30, 2),
('H4', 197, 30, 3),
('H4', 198, 30, 4),
('H4', 199, 30, 5),
('H4', 200, 30, 6),
('H4', 201, 30, 7),
('H4', 202, 30, 8),
('H4', 203, 30, 9),
('H4', 204, 30, 10),
('H4', 205, 30, 11),
('H4', 206, 30, 12),
('H4', 207, 30, 13),
('H4', 208, 30, 14),
('H4', 209, 30, 15),
('H4', 210, 31, 1),
('H4', 211, 31, 2),
('H4', 212, 31, 3),
('H4', 213, 31, 4),
('H4', 214, 32, 1),
('H4', 215, 32, 2),
('H4', 216, 32, 3),
('H4', 217, 32, 4),
('H4', 218, 32, 5),
('H4', 219, 32, 6),
('H4', 220, 33, 1),
('H4', 221, 33, 2),
('H4', 222, 33, 3),
('H4', 223, 34, 1),
('H4', 224, 34, 2),
('H4', 225, 34, 3),
('H4', 226, 35, 1),
('H4', 227, 35, 2),
('H4', 228, 35, 3),
('H4', 229, 36, 1),
('H4', 230, 36, 2),
('H4', 231, 36, 3),
('H4', 232, 36, 4),
('H4', 233, 36, 5),
('H4', 234, 36, 6),
('H4', 235, 37, 1),
('H4', 236, 37, 2),
('H4', 237, 38, 1),
('H4', 238, 38, 2),
('H4', 239, 38, 3),
('H4', 240, 38, 4),
('H4', 241, 39, 1),
('H4', 242, 39, 2),
('H4', 243, 39, 3),
('H4', 244, 39, 4),
('H4', 245, 40, 1),
('H4', 246, 40, 2),
('H4', 247, 40, 3),
('H4', 248, 40, 4),
('H4', 249, 41, 1),
('H4', 250, 41, 2),
('H4', 251, 41, 3),
('H4', 252, 41, 4),
('H4', 253, 41, 5),
('H4', 254, 41, 6),
('H4', 255, 41, 7),
('H4', 256, 41, 8),
('H4', 257, 41, 9),
('H4', 258, 41, 10),
('H4', 259, 41, 11),
('H4', 260, 42, 1),
('H4', 261, 42, 2),
('H4', 262, 42, 3),
('H4', 263, 42, 4),
('H4', 264, 42, 5),
('H4', 265, 42, 6),
('H4', 266, 42, 7),
('H4', 267, 42, 8),
('H4', 268, 42, 9),
('H4', 269, 43, 1),
('H4', 270, 43, 2),
('H4', 271, 43, 3),
('H4', 272, 43, 4),
('H4', 273, 44, 1),
('H4', 274, 44, 2),
('H4', 275, 44, 3),
('H4', 276, 44, 4),
('H4', 277, 45, 1),
('H4', 278, 45, 2),
('H4', 279, 45, 3),
('H4', 280, 45, 4),
('H4', 281, 45, 5),
('H4', 282, 45, 6),
('H4', 283, 45, 7),
('H4', 284, 45, 8),
('H4', 285, 45, 9),
('H4', 286, 45, 10),
('H4', 287, 45, 11),
('H4', 288, 12, 1),
('H4', 289, 46, 1),
('H4', 290, 46, 2),
('H4', 291, 46, 3),
('H4', 292, 46, 4),
('H4', 293, 46, 5),
('H4', 294, 46, 6),
('H4', 295, 47, 1),
('H4', 296, 47, 2),
('H4', 297, 48, 1),
('H4', 298, 48, 2),
('H4', 299, 48, 3),
('H4', 300, 48, 4),
('H4', 301, 48, 5),
('H4', 302, 48, 6),
('H4', 303, 48, 7),
('H4', 304, 48, 8),
('H4', 305, 48, 9),
('H4', 306, 48, 10),
('H4', 307, 48, 11),
('H4', 308, 48, 12),
('H4', 309, 48, 13),
('H4', 310, 48, 14),
('H4', 311, 48, 15),
('H4', 312, 48, 16),
('H4', 313, 48, 17),
('H4', 314, 48, 18),
('H4', 315, 48, 19),
('H4', 316, 48, 20),
('H4', 317, 48, 21),
('H4', 318, 48, 22),
('H4', 319, 48, 23),
('H4', 320, 48, 24),
('H4', 321, 2, 1),
('H4', 322, 49, 1),
('H4', 323, 49, 2),
('H4', 324, 49, 3),
('H4', 325, 50, 1),
('H4', 326, 50, 2),
('H5', 1, 1, 0),
('H5', 2, 1, 1),
('H5', 3, 1, 2),
('H5', 4, 1, 3),
('H5', 5, 1, 4),
('H5', 6, 1, 5),
('H5', 7, 1, 6),
('H5', 8, 1, 7),
('H5', 9, 1, 8),
('H5', 10, 1, 9),
('H5', 11, 1, 10),
('H5', 12, 2, 0),
('H5', 13, 2, 1),
('H5', 14, 3, 0),
('H5', 15, 3, 1),
('H5', 16, 3, 2),
('H5', 17, 3, 3),
('H5', 18, 3, 4),
('H5', 19, 3, 5),
('H5', 20, 4, 0),
('H5', 21, 4, 1),
('H5', 22, 4, 2),
('H5', 23, 4, 3),
('H5', 24, 4, 4),
('H5', 25, 4, 5),
('H5', 26, 4, 6),
('H5', 27, 4, 7),
('H5', 28, 4, 8),
('H5', 29, 4, 9),
('H5', 30, 4, 10),
('H5', 31, 4, 11),
('H5', 32, 4, 12),
('H5', 33, 5, 0),
('H5', 34, 5, 1),
('H5', 35, 5, 2),
('H5', 36, 5, 3),
('H5', 37, 5, 4),
('H5', 38, 6, 0),
('H5', 39, 6, 1),
('H5', 40, 6, 2),
('H5', 41, 7, 0),
('H5', 42, 7, 1),
('H5', 43, 7, 2),
('H5', 44, 7, 3),
('H5', 45, 7, 4),
('H5', 46, 8, 0),
('H5', 47, 9, 0),
('H5', 48, 9, 1),
('H5', 49, 9, 2),
('H5', 50, 9, 3),
('H5', 51, 10, 0),
('H5', 52, 10, 1),
('H5', 53, 10, 2),
('H5', 54, 10, 3),
('H5', 55, 10, 4),
('H5', 56, 10, 5),
('H5', 57, 10, 6),
('H5', 58, 10, 7),
('H5', 59, 10, 8),
('H5', 60, 11, 0),
('H5', 61, 11, 1),
('H5', 62, 11, 2),
('H5', 63, 11, 3),
('H5', 64, 11, 4),
('H5', 65, 11, 5),
('H5', 66, 11, 6),
('H5', 67, 11, 7),
('H5', 68, 11, 8),
('H5', 69, 11, 9),
('H5', 70, 11, 10),
('H5', 71, 11, 11),
('H5', 72, 11, 12),
('H5', 73, 11, 13),
('H5', 74, 11, 14),
('H5', 75, 11, 15),
('H5', 76, 11, 16),
('H5', 77, 11, 17),
('H5', 78, 11, 18),
('H5', 79, 11, 19),
('H5', 80, 11, 20),
('H5', 81, 11, 21),
('H5', 82, 11, 22),
('H5', 83, 11, 23),
('H5', 84, 11, 24),
('H5', 85, 11, 25),
('H5', 86, 11, 26),
('H5', 87, 11, 27),
('H5', 88, 11, 28),
('H5', 89, 11, 29),
('H5', 90, 11, 30),
('H5', 91, 11, 31),
('H5', 92, 12, 0),
('H5', 93, 12, 1),
('H5', 94, 12, 2),
('H5', 95, 12, 3),
('H5', 96, 12, 4),
('H5', 97, 12, 5),
('H5', 98, 13, 0),
('H5', 99, 13, 1),
('H5', 100, 13, 2),
('H5', 101, 13, 3),
('H5', 102, 13, 4),
('H5', 103, 13, 5),
('H5', 104, 13, 6),
('H5', 105, 13, 7),
('H5', 106, 13, 8),
('H5', 107, 13, 9),
('H5', 108, 13, 10),
('H5', 109, 13, 11),
('H5', 110, 13, 12),
('H5', 111, 14, 0),
('H5', 112, 14, 1),
('H5', 113, 14, 2),
('H5', 114, 14, 3),
('H5', 115, 14, 4),
('H5', 116, 14, 5),
('H5', 117, 14, 6),
('H5', 118, 14, 7),
('H5', 119, 14, 8),
('H5', 120, 14, 9),
('H5', 121, 14, 10),
('H5', 122, 14, 11),
('H5', 123, 15, 0),
('H5', 124, 15, 1),
('H5', 125, 15, 2),
('H5', 126, 15, 3),
('H5', 127, 16, 0),
('H5', 128, 16, 1),
('H5', 129, 16, 2),
('H5', 130, 17, 0),
('H5', 131, 17, 1),
('H5', 132, 17, 2),
('H5', 133, 17, 3),
('H5', 134, 17, 4),
('H5', 135, 18, 0),
('H5', 136, 18, 1),
('H5', 137, 18, 2),
('H5', 138, 18, 3),
('H5', 139, 19, 0),
('H5', 140, 19, 1),
('H5', 141, 19, 2),
('H5', 142, 19, 3),
('H5', 143, 19, 4),
('H5', 144, 20, 0),
('H5', 145, 20, 1),
('H5', 146, 20, 2),
('H5', 147, 20, 3),
('H5', 148, 20, 4),
('H5', 149, 20, 5),
('H5', 150, 21, 0),
('H5', 151, 21, 1),
('H5', 152, 21, 2),
('H5', 153, 21, 3),
('H5', 154, 21, 4),
('H5', 155, 21, 5),
('H5', 156, 21, 6),
('H5', 157, 21, 7),
('H5', 158, 21, 8),
('H5', 159, 21, 9),
('H5', 160, 22, 0),
('H5', 161, 22, 1),
('H5', 162, 22, 2),
('H5', 163, 22, 3),
('H5', 164, 22, 4),
('H5', 165, 22, 5),
('H5', 166, 23, 0),
('H5', 167, 23, 1),
('H5', 168, 23, 2),
('H5', 169, 23, 3),
('H5', 170, 24, 0),
('H5', 171, 24, 1),
('H5', 172, 24, 2),
('H5', 173, 25, 0),
('H5', 174, 25, 1),
('H5', 175, 25, 2),
('H5', 176, 25, 3),
('H5', 177, 25, 4),
('H5', 178, 25, 5),
('H5', 179, 26, 0),
('H5', 180, 26, 1),
('H5', 181, 26, 2),
('H5', 182, 27, 0),
('H5', 183, 27, 1),
('H5', 184, 27, 2),
('H5', 185, 27, 3),
('H5', 186, 28, 0),
('H5', 187, 28, 1),
('H5', 188, 28, 2),
('H5', 189, 28, 3),
('H5', 190, 29, 0),
('H5', 191, 29, 1),
('H5', 192, 29, 2),
('H5', 193, 29, 3),
('H5', 194, 30, 0),
('H5', 195, 30, 1),
('H5', 196, 30, 2),
('H5', 197, 30, 3),
('H5', 198, 30, 4),
('H5', 199, 30, 5),
('H5', 200, 30, 6),
('H5', 201, 30, 7),
('H5', 202, 30, 8),
('H5', 203, 30, 9),
('H5', 204, 30, 10),
('H5', 205, 30, 11),
('H5', 206, 30, 12),
('H5', 207, 30, 13),
('H5', 208, 30, 14),
('H5', 209, 30, 15),
('H5', 210, 31, 1),
('H5', 211, 31, 2),
('H5', 212, 31, 3),
('H5', 213, 31, 4),
('H5', 214, 32, 1),
('H5', 215, 32, 2),
('H5', 216, 32, 3),
('H5', 217, 32, 4),
('H5', 218, 32, 5),
('H5', 219, 32, 6),
('H5', 220, 33, 1),
('H5', 221, 33, 2),
('H5', 222, 33, 3),
('H5', 223, 34, 1),
('H5', 224, 34, 2),
('H5', 225, 34, 3),
('H5', 226, 35, 1),
('H5', 227, 35, 2),
('H5', 228, 35, 3),
('H5', 229, 36, 1),
('H5', 230, 36, 2),
('H5', 231, 36, 3),
('H5', 232, 36, 4),
('H5', 233, 36, 5),
('H5', 234, 36, 6),
('H5', 235, 37, 1),
('H5', 236, 37, 2),
('H5', 237, 38, 1),
('H5', 238, 38, 2),
('H5', 239, 38, 3),
('H5', 240, 38, 4),
('H5', 241, 39, 1),
('H5', 242, 39, 2),
('H5', 243, 39, 3),
('H5', 244, 39, 4),
('H5', 245, 40, 1),
('H5', 246, 40, 2),
('H5', 247, 40, 3),
('H5', 248, 40, 4),
('H5', 249, 41, 1),
('H5', 250, 41, 2),
('H5', 251, 41, 3),
('H5', 252, 41, 4),
('H5', 253, 41, 5),
('H5', 254, 41, 6),
('H5', 255, 41, 7),
('H5', 256, 41, 8),
('H5', 257, 41, 9),
('H5', 258, 41, 10),
('H5', 259, 41, 11),
('H5', 260, 42, 1),
('H5', 261, 42, 2),
('H5', 262, 42, 3),
('H5', 263, 42, 4),
('H5', 264, 42, 5),
('H5', 265, 42, 6),
('H5', 266, 42, 7),
('H5', 267, 42, 8),
('H5', 268, 42, 9),
('H5', 269, 43, 1),
('H5', 270, 43, 2),
('H5', 271, 43, 3),
('H5', 272, 43, 4),
('H5', 273, 44, 1),
('H5', 274, 44, 2),
('H5', 275, 44, 3),
('H5', 276, 44, 4),
('H5', 277, 45, 1),
('H5', 278, 45, 2),
('H5', 279, 45, 3),
('H5', 280, 45, 4),
('H5', 281, 45, 5),
('H5', 282, 45, 6),
('H5', 283, 45, 7),
('H5', 284, 45, 8),
('H5', 285, 45, 9),
('H5', 286, 45, 10),
('H5', 287, 45, 11),
('H5', 288, 12, 1),
('H5', 289, 46, 1),
('H5', 290, 46, 2),
('H5', 291, 46, 3),
('H5', 292, 46, 4),
('H5', 293, 46, 5),
('H5', 294, 46, 6),
('H5', 295, 47, 1),
('H5', 296, 47, 2),
('H5', 297, 48, 1),
('H5', 298, 48, 2),
('H5', 299, 48, 3),
('H5', 300, 48, 4),
('H5', 301, 48, 5),
('H5', 302, 48, 6),
('H5', 303, 48, 7),
('H5', 304, 48, 8),
('H5', 305, 48, 9),
('H5', 306, 48, 10),
('H5', 307, 48, 11),
('H5', 308, 48, 12),
('H5', 309, 48, 13),
('H5', 310, 48, 14),
('H5', 311, 48, 15),
('H5', 312, 48, 16),
('H5', 313, 48, 17),
('H5', 314, 48, 18),
('H5', 315, 48, 19),
('H5', 316, 48, 20),
('H5', 317, 48, 21),
('H5', 318, 48, 22),
('H5', 319, 48, 23),
('H5', 320, 48, 24),
('H5', 321, 2, 1),
('H5', 322, 49, 1),
('H5', 323, 49, 2),
('H5', 324, 49, 3),
('H5', 325, 50, 1),
('H5', 326, 50, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role2profile`
--

CREATE TABLE IF NOT EXISTS `vtiger_role2profile` (
  `roleid` varchar(255) NOT NULL,
  `profileid` int(11) NOT NULL,
  PRIMARY KEY (`roleid`,`profileid`),
  KEY `role2profile_roleid_profileid_idx` (`roleid`,`profileid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role2profile`
--

INSERT INTO `vtiger_role2profile` (`roleid`, `profileid`) VALUES
('H2', 1),
('H3', 2),
('H4', 2),
('H5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_role_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_role_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_role_seq`
--

INSERT INTO `vtiger_role_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight`
--

CREATE TABLE IF NOT EXISTS `vtiger_rowheight` (
  `rowheightid` int(11) NOT NULL AUTO_INCREMENT,
  `rowheight` varchar(200) NOT NULL,
  `sortorderid` int(11) DEFAULT NULL,
  `presence` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`rowheightid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_rowheight`
--

INSERT INTO `vtiger_rowheight` (`rowheightid`, `rowheight`, `sortorderid`, `presence`) VALUES
(1, 'wide', 1, 1),
(2, 'medium', 2, 1),
(3, 'narrow', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rowheight_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_rowheight_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_rowheight_seq`
--

INSERT INTO `vtiger_rowheight_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_rss`
--

CREATE TABLE IF NOT EXISTS `vtiger_rss` (
  `rssid` int(19) NOT NULL,
  `rssurl` varchar(200) NOT NULL DEFAULT '',
  `rsstitle` varchar(200) DEFAULT NULL,
  `rsstype` int(10) DEFAULT '0',
  `starred` int(1) DEFAULT '0',
  PRIMARY KEY (`rssid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanactivityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesmanactivityrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `activityid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`activityid`),
  KEY `salesmanactivityrel_activityid_idx` (`activityid`),
  KEY `salesmanactivityrel_smid_idx` (`smid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_salesmanactivityrel`
--

INSERT INTO `vtiger_salesmanactivityrel` (`smid`, `activityid`) VALUES
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 20),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 48),
(1, 55),
(1, 59),
(1, 60),
(1, 62),
(1, 66);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanattachmentsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesmanattachmentsrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `attachmentsid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`attachmentsid`),
  KEY `salesmanattachmentsrel_smid_idx` (`smid`),
  KEY `salesmanattachmentsrel_attachmentsid_idx` (`attachmentsid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesmanticketrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesmanticketrel` (
  `smid` int(19) NOT NULL DEFAULT '0',
  `id` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`smid`,`id`),
  KEY `salesmanticketrel_smid_idx` (`smid`),
  KEY `salesmanticketrel_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesorder`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesorder` (
  `salesorderid` int(19) NOT NULL DEFAULT '0',
  `subject` varchar(100) DEFAULT NULL,
  `potentialid` int(19) DEFAULT NULL,
  `customerno` varchar(100) DEFAULT NULL,
  `salesorder_no` varchar(100) DEFAULT NULL,
  `quoteid` int(19) DEFAULT NULL,
  `vendorterms` varchar(100) DEFAULT NULL,
  `contactid` int(19) DEFAULT NULL,
  `vendorid` int(19) DEFAULT NULL,
  `duedate` date DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `pending` varchar(200) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `adjustment` decimal(25,8) DEFAULT NULL,
  `salescommission` decimal(25,3) DEFAULT NULL,
  `exciseduty` decimal(25,3) DEFAULT NULL,
  `total` decimal(25,8) DEFAULT NULL,
  `subtotal` decimal(25,8) DEFAULT NULL,
  `taxtype` varchar(25) DEFAULT NULL,
  `discount_percent` decimal(25,3) DEFAULT NULL,
  `discount_amount` decimal(25,8) DEFAULT NULL,
  `s_h_amount` decimal(25,8) DEFAULT NULL,
  `accountid` int(19) DEFAULT NULL,
  `terms_conditions` text,
  `purchaseorder` varchar(200) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `conversion_rate` decimal(10,3) NOT NULL DEFAULT '1.000',
  `enable_recurring` int(11) DEFAULT '0',
  `pre_tax_total` decimal(25,8) DEFAULT NULL,
  `s_h_percent` int(11) DEFAULT NULL,
  PRIMARY KEY (`salesorderid`),
  KEY `salesorder_vendorid_idx` (`vendorid`),
  KEY `salesorder_contactid_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_salesorder`
--

INSERT INTO `vtiger_salesorder` (`salesorderid`, `subject`, `potentialid`, `customerno`, `salesorder_no`, `quoteid`, `vendorterms`, `contactid`, `vendorid`, `duedate`, `carrier`, `pending`, `type`, `adjustment`, `salescommission`, `exciseduty`, `total`, `subtotal`, `taxtype`, `discount_percent`, `discount_amount`, `s_h_amount`, `accountid`, `terms_conditions`, `purchaseorder`, `sostatus`, `currency_id`, `conversion_rate`, `enable_recurring`, `pre_tax_total`, `s_h_percent`) VALUES
(53, 'Cavalli', 22, '12346', 'SO1', 50, NULL, 49, NULL, '2015-09-18', 'UPS', '', NULL, '-0.05000000', '0.000', '0.000', '6369.00000000', '5000.00000000', 'group', NULL, NULL, '15.00000000', 2, '- Unless otherwise agreed in writing by the supplier all invoices are payable within thirty (30) days of the date of invoice, in the currency of the invoice, drawn on a bank based in India or by such other method as is agreed in advance by the Supplier.\n\n - All prices are not inclusive of VAT which shall be payable in addition by the Customer at the applicable rate.', '', 'Created', 1, '1.000', 0, '5015.00000000', 27);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salesordercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_salesordercf` (
  `salesorderid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_salesordercf`
--

INSERT INTO `vtiger_salesordercf` (`salesorderid`) VALUES
(53);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage`
--

CREATE TABLE IF NOT EXISTS `vtiger_sales_stage` (
  `sales_stage_id` int(19) NOT NULL AUTO_INCREMENT,
  `sales_stage` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sales_stage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vtiger_sales_stage`
--

INSERT INTO `vtiger_sales_stage` (`sales_stage_id`, `sales_stage`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Prospecting', 1, 150, 0),
(2, 'Qualification', 1, 151, 1),
(3, 'Needs Analysis', 1, 152, 2),
(4, 'Value Proposition', 1, 153, 3),
(5, 'Id. Decision Makers', 1, 154, 4),
(6, 'Perception Analysis', 1, 155, 5),
(7, 'Proposal or Price Quote', 1, 156, 6),
(8, 'Negotiation or Review', 1, 157, 7),
(9, 'Closed Won', 0, 158, 8),
(10, 'Closed Lost', 0, 159, 9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sales_stage_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_sales_stage_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_sales_stage_seq`
--

INSERT INTO `vtiger_sales_stage_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_salutationtype` (
  `salutationid` int(19) NOT NULL AUTO_INCREMENT,
  `salutationtype` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`salutationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_salutationtype`
--

INSERT INTO `vtiger_salutationtype` (`salutationid`, `salutationtype`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Mr.', 1, 161, 1),
(3, 'Ms.', 1, 162, 2),
(4, 'Mrs.', 1, 163, 3),
(5, 'Dr.', 1, 164, 4),
(6, 'Prof.', 1, 165, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_salutationtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_salutationtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_salutationtype_seq`
--

INSERT INTO `vtiger_salutationtype_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_scheduled_reports`
--

CREATE TABLE IF NOT EXISTS `vtiger_scheduled_reports` (
  `reportid` int(11) NOT NULL,
  `recipients` text,
  `schedule` text,
  `format` varchar(10) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reportid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_schedulereports`
--

CREATE TABLE IF NOT EXISTS `vtiger_schedulereports` (
  `reportid` int(10) DEFAULT NULL,
  `scheduleid` int(3) DEFAULT NULL,
  `recipients` text,
  `schdate` varchar(20) DEFAULT NULL,
  `schtime` time DEFAULT NULL,
  `schdayoftheweek` varchar(100) DEFAULT NULL,
  `schdayofthemonth` varchar(100) DEFAULT NULL,
  `schannualdates` varchar(500) DEFAULT NULL,
  `specificemails` varchar(500) DEFAULT NULL,
  `next_trigger_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seactivityrel` (
  `crmid` int(19) NOT NULL,
  `activityid` int(19) NOT NULL,
  PRIMARY KEY (`crmid`,`activityid`),
  KEY `seactivityrel_activityid_idx` (`activityid`),
  KEY `seactivityrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seactivityrel`
--

INSERT INTO `vtiger_seactivityrel` (`crmid`, `activityid`) VALUES
(29, 66);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seactivityrel_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_seactivityrel_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seactivityrel_seq`
--

INSERT INTO `vtiger_seactivityrel_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seattachmentsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seattachmentsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `attachmentsid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`attachmentsid`),
  KEY `seattachmentsrel_attachmentsid_idx` (`attachmentsid`),
  KEY `seattachmentsrel_crmid_idx` (`crmid`),
  KEY `seattachmentsrel_attachmentsid_crmid_idx` (`attachmentsid`,`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seattachmentsrel`
--

INSERT INTO `vtiger_seattachmentsrel` (`crmid`, `attachmentsid`) VALUES
(56, 57),
(69, 70);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectcolumn`
--

CREATE TABLE IF NOT EXISTS `vtiger_selectcolumn` (
  `queryid` int(19) NOT NULL,
  `columnindex` int(11) NOT NULL DEFAULT '0',
  `columnname` varchar(250) DEFAULT '',
  PRIMARY KEY (`queryid`,`columnindex`),
  KEY `selectcolumn_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_selectcolumn`
--

INSERT INTO `vtiger_selectcolumn` (`queryid`, `columnindex`, `columnname`) VALUES
(1, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(1, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(1, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(1, 3, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(1, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(1, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(2, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(2, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(2, 2, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(2, 3, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(2, 4, 'vtiger_account:industry:Accounts_industry:industry:V'),
(2, 5, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 0, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(3, 1, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(3, 2, 'vtiger_contactdetails:accountid:Contacts_Account_Name:account_id:V'),
(3, 3, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(3, 4, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(3, 5, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(4, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(4, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(4, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(4, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(4, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 0, 'vtiger_leaddetails:firstname:Leads_First_Name:firstname:V'),
(5, 1, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(5, 2, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(5, 3, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(5, 4, 'vtiger_leaddetails:leadsource:Leads_Lead_Source:leadsource:V'),
(5, 5, 'vtiger_leaddetails:leadstatus:Leads_Lead_Status:leadstatus:V'),
(6, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(6, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(6, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(6, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(6, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(7, 0, 'vtiger_potential:potentialname:Potentials_Potential_Name:potentialname:V'),
(7, 1, 'vtiger_potential:amount:Potentials_Amount:amount:N'),
(7, 2, 'vtiger_potential:potentialtype:Potentials_Type:opportunity_type:V'),
(7, 3, 'vtiger_potential:leadsource:Potentials_Lead_Source:leadsource:V'),
(7, 4, 'vtiger_potential:sales_stage:Potentials_Sales_Stage:sales_stage:V'),
(8, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(8, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(8, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(8, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(8, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(9, 0, 'vtiger_activity:subject:Calendar_Subject:subject:V'),
(9, 1, 'vtiger_contactdetailsCalendar:lastname:Calendar_Contact_Name:contact_id:I'),
(9, 2, 'vtiger_activity:status:Calendar_Status:taskstatus:V'),
(9, 3, 'vtiger_activity:priority:Calendar_Priority:taskpriority:V'),
(9, 4, 'vtiger_usersCalendar:user_name:Calendar_Assigned_To:assigned_user_id:V'),
(10, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(10, 1, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(10, 2, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(10, 3, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(10, 4, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(10, 5, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(11, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(11, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(11, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(11, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(11, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(11, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(12, 0, 'vtiger_troubletickets:title:HelpDesk_Title:ticket_title:V'),
(12, 1, 'vtiger_troubletickets:priority:HelpDesk_Priority:ticketpriorities:V'),
(12, 2, 'vtiger_troubletickets:severity:HelpDesk_Severity:ticketseverities:V'),
(12, 3, 'vtiger_troubletickets:status:HelpDesk_Status:ticketstatus:V'),
(12, 4, 'vtiger_troubletickets:category:HelpDesk_Category:ticketcategories:V'),
(12, 5, 'vtiger_usersHelpDesk:user_name:HelpDesk_Assigned_To:assigned_user_id:V'),
(13, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(13, 1, 'vtiger_products:productcode:Products_Product_Code:productcode:V'),
(13, 2, 'vtiger_products:discontinued:Products_Product_Active:discontinued:V'),
(13, 3, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(13, 4, 'vtiger_products:website:Products_Website:website:V'),
(13, 5, 'vtiger_vendorRelProducts:vendorname:Products_Vendor_Name:vendor_id:I'),
(13, 6, 'vtiger_products:mfr_part_no:Products_Mfr_PartNo:mfr_part_no:V'),
(14, 0, 'vtiger_products:productname:Products_Product_Name:productname:V'),
(14, 1, 'vtiger_products:manufacturer:Products_Manufacturer:manufacturer:V'),
(14, 2, 'vtiger_products:productcategory:Products_Product_Category:productcategory:V'),
(14, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(14, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(14, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(15, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(15, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(15, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(15, 3, 'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),
(15, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(15, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 0, 'vtiger_quotes:subject:Quotes_Subject:subject:V'),
(16, 1, 'vtiger_potentialRelQuotes:potentialname:Quotes_Potential_Name:potential_id:I'),
(16, 2, 'vtiger_quotes:quotestage:Quotes_Quote_Stage:quotestage:V'),
(16, 3, 'vtiger_quotes:contactid:Quotes_Contact_Name:contact_id:V'),
(16, 4, 'vtiger_usersRel1:user_name:Quotes_Inventory_Manager:assigned_user_id1:I'),
(16, 5, 'vtiger_accountQuotes:accountname:Quotes_Account_Name:account_id:I'),
(16, 6, 'vtiger_quotes:carrier:Quotes_Carrier:carrier:V'),
(16, 7, 'vtiger_quotes:shipping:Quotes_Shipping:shipping:V'),
(17, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(17, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(17, 2, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(17, 3, 'vtiger_contactdetails:firstname:Contacts_First_Name:firstname:V'),
(17, 4, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(17, 5, 'vtiger_contactsubdetails:leadsource:Contacts_Lead_Source:leadsource:V'),
(17, 6, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(18, 0, 'vtiger_purchaseorder:subject:PurchaseOrder_Subject:subject:V'),
(18, 1, 'vtiger_vendorRelPurchaseOrder:vendorname:PurchaseOrder_Vendor_Name:vendor_id:I'),
(18, 2, 'vtiger_purchaseorder:requisition_no:PurchaseOrder_Requisition_No:requisition_no:V'),
(18, 3, 'vtiger_purchaseorder:tracking_no:PurchaseOrder_Tracking_Number:tracking_no:V'),
(18, 4, 'vtiger_contactdetailsPurchaseOrder:lastname:PurchaseOrder_Contact_Name:contact_id:I'),
(18, 5, 'vtiger_purchaseorder:carrier:PurchaseOrder_Carrier:carrier:V'),
(18, 6, 'vtiger_purchaseorder:salescommission:PurchaseOrder_Sales_Commission:salescommission:N'),
(18, 7, 'vtiger_purchaseorder:exciseduty:PurchaseOrder_Excise_Duty:exciseduty:N'),
(18, 8, 'vtiger_usersPurchaseOrder:user_name:PurchaseOrder_Assigned_To:assigned_user_id:V'),
(19, 0, 'vtiger_invoice:subject:Invoice_Subject:subject:V'),
(19, 1, 'vtiger_invoice:salesorderid:Invoice_Sales_Order:salesorder_id:I'),
(19, 2, 'vtiger_invoice:customerno:Invoice_Customer_No:customerno:V'),
(19, 3, 'vtiger_invoice:exciseduty:Invoice_Excise_Duty:exciseduty:N'),
(19, 4, 'vtiger_invoice:salescommission:Invoice_Sales_Commission:salescommission:N'),
(19, 5, 'vtiger_accountInvoice:accountname:Invoice_Account_Name:account_id:I'),
(20, 0, 'vtiger_salesorder:subject:SalesOrder_Subject:subject:V'),
(20, 1, 'vtiger_quotesSalesOrder:subject:SalesOrder_Quote_Name:quote_id:I'),
(20, 2, 'vtiger_contactdetailsSalesOrder:lastname:SalesOrder_Contact_Name:contact_id:I'),
(20, 3, 'vtiger_salesorder:duedate:SalesOrder_Due_Date:duedate:D'),
(20, 4, 'vtiger_salesorder:carrier:SalesOrder_Carrier:carrier:V'),
(20, 5, 'vtiger_salesorder:sostatus:SalesOrder_Status:sostatus:V'),
(20, 6, 'vtiger_accountSalesOrder:accountname:SalesOrder_Account_Name:account_id:I'),
(20, 7, 'vtiger_salesorder:salescommission:SalesOrder_Sales_Commission:salescommission:N'),
(20, 8, 'vtiger_salesorder:exciseduty:SalesOrder_Excise_Duty:exciseduty:N'),
(20, 9, 'vtiger_usersSalesOrder:user_name:SalesOrder_Assigned_To:assigned_user_id:V'),
(21, 0, 'vtiger_campaign:campaignname:Campaigns_Campaign_Name:campaignname:V'),
(21, 1, 'vtiger_campaign:campaigntype:Campaigns_Campaign_Type:campaigntype:V'),
(21, 2, 'vtiger_campaign:targetaudience:Campaigns_Target_Audience:targetaudience:V'),
(21, 3, 'vtiger_campaign:budgetcost:Campaigns_Budget_Cost:budgetcost:I'),
(21, 4, 'vtiger_campaign:actualcost:Campaigns_Actual_Cost:actualcost:I'),
(21, 5, 'vtiger_campaign:expectedrevenue:Campaigns_Expected_Revenue:expectedrevenue:I'),
(21, 6, 'vtiger_campaign:expectedsalescount:Campaigns_Expected_Sales_Count:expectedsalescount:N'),
(21, 7, 'vtiger_campaign:actualsalescount:Campaigns_Actual_Sales_Count:actualsalescount:N'),
(21, 8, 'vtiger_usersCampaigns:user_name:Campaigns_Assigned_To:assigned_user_id:V'),
(22, 0, 'vtiger_contactdetails:lastname:Contacts_Last_Name:lastname:V'),
(22, 1, 'vtiger_contactdetails:email:Contacts_Email:email:E'),
(22, 2, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(22, 3, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(23, 0, 'vtiger_account:accountname:Accounts_Account_Name:accountname:V'),
(23, 1, 'vtiger_account:phone:Accounts_Phone:phone:V'),
(23, 2, 'vtiger_account:email1:Accounts_Email:email1:E'),
(23, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(23, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(24, 0, 'vtiger_leaddetails:lastname:Leads_Last_Name:lastname:V'),
(24, 1, 'vtiger_leaddetails:company:Leads_Company:company:V'),
(24, 2, 'vtiger_leaddetails:email:Leads_Email:email:E'),
(24, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(24, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V'),
(25, 0, 'vtiger_vendor:vendorname:Vendors_Vendor_Name:vendorname:V'),
(25, 1, 'vtiger_vendor:glacct:Vendors_GL_Account:glacct:V'),
(25, 2, 'vtiger_vendor:email:Vendors_Email:email:E'),
(25, 3, 'vtiger_activity:subject:Emails_Subject:subject:V'),
(25, 4, 'vtiger_email_track:access_count:Emails_Access_Count:access_count:V');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery`
--

CREATE TABLE IF NOT EXISTS `vtiger_selectquery` (
  `queryid` int(19) NOT NULL,
  `startindex` int(19) DEFAULT '0',
  `numofobjects` int(19) DEFAULT '0',
  PRIMARY KEY (`queryid`),
  KEY `selectquery_queryid_idx` (`queryid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_selectquery`
--

INSERT INTO `vtiger_selectquery` (`queryid`, `startindex`, `numofobjects`) VALUES
(1, 0, 0),
(2, 0, 0),
(3, 0, 0),
(4, 0, 0),
(5, 0, 0),
(6, 0, 0),
(7, 0, 0),
(8, 0, 0),
(9, 0, 0),
(10, 0, 0),
(11, 0, 0),
(12, 0, 0),
(13, 0, 0),
(14, 0, 0),
(15, 0, 0),
(16, 0, 0),
(17, 0, 0),
(18, 0, 0),
(19, 0, 0),
(20, 0, 0),
(21, 0, 0),
(22, 0, 0),
(23, 0, 0),
(24, 0, 0),
(25, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_selectquery_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_selectquery_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_selectquery_seq`
--

INSERT INTO `vtiger_selectquery_seq` (`id`) VALUES
(25);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_senotesrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_senotesrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `notesid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`notesid`),
  KEY `senotesrel_notesid_idx` (`notesid`),
  KEY `senotesrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_senotesrel`
--

INSERT INTO `vtiger_senotesrel` (`crmid`, `notesid`) VALUES
(5, 19);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seproductsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seproductsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `productid` int(19) NOT NULL DEFAULT '0',
  `setype` varchar(30) NOT NULL,
  PRIMARY KEY (`crmid`,`productid`),
  KEY `seproductsrel_productid_idx` (`productid`),
  KEY `seproductrel_crmid_idx` (`crmid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_seproductsrel`
--

INSERT INTO `vtiger_seproductsrel` (`crmid`, `productid`, `setype`) VALUES
(67, 38, 'Leads');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service`
--

CREATE TABLE IF NOT EXISTS `vtiger_service` (
  `serviceid` int(11) NOT NULL,
  `service_no` varchar(100) NOT NULL,
  `servicename` varchar(50) NOT NULL,
  `servicecategory` varchar(200) DEFAULT NULL,
  `qty_per_unit` decimal(11,2) DEFAULT '0.00',
  `unit_price` decimal(25,8) DEFAULT NULL,
  `sales_start_date` date DEFAULT NULL,
  `sales_end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `discontinued` int(1) NOT NULL DEFAULT '0',
  `service_usageunit` varchar(200) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `taxclass` varchar(200) DEFAULT NULL,
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `commissionrate` decimal(7,3) DEFAULT NULL,
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecategory` (
  `servicecategoryid` int(11) NOT NULL AUTO_INCREMENT,
  `servicecategory` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`servicecategoryid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_servicecategory`
--

INSERT INTO `vtiger_servicecategory` (`servicecategoryid`, `servicecategory`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Support', 1, 230, 2),
(3, 'Installation', 1, 231, 3),
(4, 'Migration', 1, 232, 4),
(5, 'Customization', 1, 233, 5),
(6, 'Training', 1, 234, 6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecategory_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecategory_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_servicecategory_seq`
--

INSERT INTO `vtiger_servicecategory_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecf`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecf` (
  `serviceid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serviceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontracts`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecontracts` (
  `servicecontractsid` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `sc_related_to` int(11) DEFAULT NULL,
  `tracking_unit` varchar(100) DEFAULT NULL,
  `total_units` decimal(5,2) DEFAULT NULL,
  `used_units` decimal(5,2) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `planned_duration` varchar(256) DEFAULT NULL,
  `actual_duration` varchar(256) DEFAULT NULL,
  `contract_status` varchar(200) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `contract_type` varchar(200) DEFAULT NULL,
  `progress` decimal(5,2) DEFAULT NULL,
  `contract_no` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_servicecontractscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_servicecontractscf` (
  `servicecontractsid` int(11) NOT NULL,
  PRIMARY KEY (`servicecontractsid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit`
--

CREATE TABLE IF NOT EXISTS `vtiger_service_usageunit` (
  `service_usageunitid` int(11) NOT NULL AUTO_INCREMENT,
  `service_usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`service_usageunitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_service_usageunit`
--

INSERT INTO `vtiger_service_usageunit` (`service_usageunitid`, `service_usageunit`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Hours', 1, 226, 1),
(2, 'Days', 1, 227, 2),
(3, 'Incidents', 1, 228, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_service_usageunit_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_service_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_service_usageunit_seq`
--

INSERT INTO `vtiger_service_usageunit_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_seticketsrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_seticketsrel` (
  `crmid` int(19) NOT NULL DEFAULT '0',
  `ticketid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`crmid`,`ticketid`),
  KEY `seticketsrel_crmid_idx` (`crmid`),
  KEY `seticketsrel_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_blocks` (
  `blockid` int(19) NOT NULL,
  `label` varchar(250) DEFAULT NULL,
  `sequence` int(19) DEFAULT NULL,
  PRIMARY KEY (`blockid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_blocks`
--

INSERT INTO `vtiger_settings_blocks` (`blockid`, `label`, `sequence`) VALUES
(1, 'LBL_USER_MANAGEMENT', 1),
(2, 'LBL_STUDIO', 2),
(3, 'LBL_COMMUNICATION_TEMPLATES', 3),
(4, 'LBL_OTHER_SETTINGS', 4),
(5, 'LBL_INTEGRATION', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_blocks_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_blocks_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_blocks_seq`
--

INSERT INTO `vtiger_settings_blocks_seq` (`id`) VALUES
(5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_field` (
  `fieldid` int(19) NOT NULL,
  `blockid` int(19) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `iconpath` varchar(300) DEFAULT NULL,
  `description` text,
  `linkto` text,
  `sequence` int(19) DEFAULT NULL,
  `active` int(19) DEFAULT '0',
  `pinned` int(1) DEFAULT '0',
  PRIMARY KEY (`fieldid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_field`
--

INSERT INTO `vtiger_settings_field` (`fieldid`, `blockid`, `name`, `iconpath`, `description`, `linkto`, `sequence`, `active`, `pinned`) VALUES
(1, 1, 'LBL_USERS', 'ico-users.gif', 'LBL_USER_DESCRIPTION', 'index.php?module=Users&parent=Settings&view=List', 1, 0, 1),
(2, 1, 'LBL_ROLES', 'ico-roles.gif', 'LBL_ROLE_DESCRIPTION', 'index.php?module=Roles&parent=Settings&view=Index', 2, 0, 0),
(3, 1, 'LBL_PROFILES', 'ico-profile.gif', 'LBL_PROFILE_DESCRIPTION', 'index.php?module=Profiles&parent=Settings&view=List', 3, 0, 0),
(4, 1, 'USERGROUPLIST', 'ico-groups.gif', 'LBL_GROUP_DESCRIPTION', 'index.php?module=Groups&parent=Settings&view=List', 4, 0, 0),
(5, 1, 'LBL_SHARING_ACCESS', 'shareaccess.gif', 'LBL_SHARING_ACCESS_DESCRIPTION', 'index.php?module=SharingAccess&parent=Settings&view=Index', 5, 0, 0),
(6, 1, 'LBL_FIELDS_ACCESS', 'orgshar.gif', 'LBL_SHARING_FIELDS_DESCRIPTION', 'index.php?module=FieldAccess&parent=Settings&view=Index', 6, 0, 0),
(7, 1, 'LBL_LOGIN_HISTORY_DETAILS', 'set-IcoLoginHistory.gif', 'LBL_LOGIN_HISTORY_DESCRIPTION', 'index.php?module=LoginHistory&parent=Settings&view=List', 7, 0, 0),
(8, 2, 'VTLIB_LBL_MODULE_MANAGER', 'vtlib_modmng.gif', 'VTLIB_LBL_MODULE_MANAGER_DESCRIPTION', 'index.php?module=ModuleManager&parent=Settings&view=List', 8, 0, 1),
(9, 2, 'LBL_PICKLIST_EDITOR', 'picklist.gif', 'LBL_PICKLIST_DESCRIPTION', 'index.php?parent=Settings&module=Picklist&view=Index', 1, 0, 1),
(10, 2, 'LBL_PICKLIST_DEPENDENCY_SETUP', 'picklistdependency.gif', 'LBL_PICKLIST_DEPENDENCY_DESCRIPTION', 'index.php?parent=Settings&module=PickListDependency&view=List', 2, 0, 0),
(11, 2, 'LBL_MENU_EDITOR', 'menueditor.png', 'LBL_MENU_DESC', 'index.php?module=MenuEditor&parent=Settings&view=Index', 3, 0, 0),
(12, 3, 'NOTIFICATIONSCHEDULERS', 'notification.gif', 'LBL_NOTIF_SCHED_DESCRIPTION', 'index.php?module=Settings&view=listnotificationschedulers&parenttab=Settings', 4, 0, 0),
(13, 3, 'INVENTORYNOTIFICATION', 'inventory.gif', 'LBL_INV_NOTIF_DESCRIPTION', 'index.php?module=Settings&view=listinventorynotifications&parenttab=Settings', 1, 0, 0),
(14, 3, 'LBL_COMPANY_DETAILS', 'company.gif', 'LBL_COMPANY_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=CompanyDetails', 2, 0, 0),
(15, 4, 'LBL_MAIL_SERVER_SETTINGS', 'ogmailserver.gif', 'LBL_MAIL_SERVER_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=OutgoingServerDetail', 3, 0, 0),
(16, 4, 'LBL_CURRENCY_SETTINGS', 'currency.gif', 'LBL_CURRENCY_DESCRIPTION', 'index.php?parent=Settings&module=Currency&view=List', 4, 0, 0),
(17, 4, 'LBL_TAX_SETTINGS', 'taxConfiguration.gif', 'LBL_TAX_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=TaxIndex', 5, 0, 0),
(18, 4, 'LBL_SYSTEM_INFO', 'system.gif', 'LBL_SYSTEM_DESCRIPTION', 'index.php?module=Settings&submodule=Server&view=ProxyConfig', 6, 1, 0),
(19, 4, 'LBL_ANNOUNCEMENT', 'announ.gif', 'LBL_ANNOUNCEMENT_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=AnnouncementEdit', 1, 0, 0),
(20, 4, 'LBL_DEFAULT_MODULE_VIEW', 'set-IcoTwoTabConfig.gif', 'LBL_DEFAULT_MODULE_VIEW_DESC', 'index.php?module=Settings&action=DefModuleView&parenttab=Settings', 2, 0, 0),
(21, 4, 'INVENTORYTERMSANDCONDITIONS', 'terms.gif', 'LBL_INV_TANDC_DESCRIPTION', 'index.php?parent=Settings&module=Vtiger&view=TermsAndConditionsEdit', 3, 0, 0),
(22, 4, 'LBL_CUSTOMIZE_MODENT_NUMBER', 'settingsInvNumber.gif', 'LBL_CUSTOMIZE_MODENT_NUMBER_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=CustomRecordNumbering', 4, 0, 0),
(23, 4, 'LBL_MAIL_SCANNER', 'mailScanner.gif', 'LBL_MAIL_SCANNER_DESCRIPTION', 'index.php?parent=Settings&module=MailConverter&view=List', 5, 0, 0),
(24, 4, 'LBL_LIST_WORKFLOWS', 'settingsWorkflow.png', 'LBL_LIST_WORKFLOWS_DESCRIPTION', 'index.php?module=Workflows&parent=Settings&view=List', 6, 0, 1),
(25, 4, 'LBL_CONFIG_EDITOR', 'migrate.gif', 'LBL_CONFIG_EDITOR_DESCRIPTION', 'index.php?module=Vtiger&parent=Settings&view=ConfigEditorDetail', 7, 0, 0),
(26, 4, 'Scheduler', 'Cron.png', 'Allows you to Configure Cron Task', 'index.php?module=CronTasks&parent=Settings&view=List', 8, 0, 0),
(27, 4, 'LBL_WORKFLOW_LIST', 'settingsWorkflow.png', 'LBL_AVAILABLE_WORKLIST_LIST', 'index.php?module=com_vtiger_workflow&action=workflowlist', 8, 0, 0),
(28, 4, 'ModTracker', 'set-IcoLoginHistory.gif', 'LBL_MODTRACKER_DESCRIPTION', 'index.php?module=ModTracker&action=BasicSettings&parenttab=Settings&formodule=ModTracker', 9, 0, 0),
(29, 5, 'LBL_PBXMANAGER', '', 'PBXManager module Configuration', 'index.php?module=PBXManager&parent=Settings&view=Index', 2, 0, 0),
(30, 4, 'LBL_CUSTOMER_PORTAL', 'portal_icon.png', 'PORTAL_EXTENSION_DESCRIPTION', 'index.php?module=CustomerPortal&action=index&parenttab=Settings', 10, 0, 0),
(31, 4, 'Webforms', 'modules/Webforms/img/Webform.png', 'LBL_WEBFORMS_DESCRIPTION', 'index.php?module=Webforms&action=index&parenttab=Settings', 11, 0, 0),
(32, 2, 'LBL_EDIT_FIELDS', '', 'LBL_LAYOUT_EDITOR_DESCRIPTION', 'index.php?module=LayoutEditor&parent=Settings&view=Index', NULL, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_settings_field_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_settings_field_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_settings_field_seq`
--

INSERT INTO `vtiger_settings_field_seq` (`id`) VALUES
(32);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sharedcalendar`
--

CREATE TABLE IF NOT EXISTS `vtiger_sharedcalendar` (
  `userid` int(19) NOT NULL,
  `sharedid` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`sharedid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shareduserinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_shareduserinfo` (
  `userid` int(19) NOT NULL DEFAULT '0',
  `shareduserid` int(19) NOT NULL DEFAULT '0',
  `color` varchar(50) DEFAULT NULL,
  `visible` int(19) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_shippingtaxinfo` (
  `taxid` int(3) NOT NULL,
  `taxname` varchar(50) DEFAULT NULL,
  `taxlabel` varchar(50) DEFAULT NULL,
  `percentage` decimal(7,3) DEFAULT NULL,
  `deleted` int(1) DEFAULT NULL,
  PRIMARY KEY (`taxid`),
  KEY `shippingtaxinfo_taxname_idx` (`taxname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_shippingtaxinfo`
--

INSERT INTO `vtiger_shippingtaxinfo` (`taxid`, `taxname`, `taxlabel`, `percentage`, `deleted`) VALUES
(1, 'shtax1', 'VAT', '4.500', 0),
(2, 'shtax2', 'Sales', '10.000', 0),
(3, 'shtax3', 'Service', '12.500', 0),
(4, 'shtax4', 'dd', '10.000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shippingtaxinfo_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_shippingtaxinfo_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_shippingtaxinfo_seq`
--

INSERT INTO `vtiger_shippingtaxinfo_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_shorturls`
--

CREATE TABLE IF NOT EXISTS `vtiger_shorturls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(50) DEFAULT NULL,
  `handler_path` varchar(400) DEFAULT NULL,
  `handler_class` varchar(100) DEFAULT NULL,
  `handler_function` varchar(100) DEFAULT NULL,
  `handler_data` varchar(255) DEFAULT NULL,
  `onetime` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_shorturls`
--

INSERT INTO `vtiger_shorturls` (`id`, `uid`, `handler_path`, `handler_class`, `handler_function`, `handler_data`, `onetime`) VALUES
(1, '55e7ea768d1758.38593375', 'modules/Users/handlers/ForgotPassword.php', 'Users_ForgotPassword_Handler', 'changePassword', '{"username":"admin","email":"bajrang@marketingmindz.in","time":1441262198,"hash":"2ce987a111f7ab9468b798874be565d5"}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifier` (
  `smsnotifierid` int(11) DEFAULT NULL,
  `message` text,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifiercf`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifiercf` (
  `smsnotifierid` int(11) NOT NULL,
  PRIMARY KEY (`smsnotifierid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_servers`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifier_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `isactive` int(1) DEFAULT NULL,
  `providertype` varchar(50) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `parameters` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_smsnotifier_status`
--

CREATE TABLE IF NOT EXISTS `vtiger_smsnotifier_status` (
  `smsnotifierid` int(11) DEFAULT NULL,
  `tonumber` varchar(20) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  `smsmessageid` varchar(50) DEFAULT NULL,
  `needlookup` int(1) DEFAULT '1',
  `statusid` int(11) NOT NULL AUTO_INCREMENT,
  `statusmessage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soapservice`
--

CREATE TABLE IF NOT EXISTS `vtiger_soapservice` (
  `id` int(19) DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `sessionid` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sobillads`
--

CREATE TABLE IF NOT EXISTS `vtiger_sobillads` (
  `sobilladdressid` int(19) NOT NULL DEFAULT '0',
  `bill_city` varchar(30) DEFAULT NULL,
  `bill_code` varchar(30) DEFAULT NULL,
  `bill_country` varchar(30) DEFAULT NULL,
  `bill_state` varchar(30) DEFAULT NULL,
  `bill_street` varchar(250) DEFAULT NULL,
  `bill_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`sobilladdressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_sobillads`
--

INSERT INTO `vtiger_sobillads` (`sobilladdressid`, `bill_city`, `bill_code`, `bill_country`, `bill_state`, `bill_street`, `bill_pobox`) VALUES
(53, '', '', '', '', 'Kcfghjh', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_soshipads`
--

CREATE TABLE IF NOT EXISTS `vtiger_soshipads` (
  `soshipaddressid` int(19) NOT NULL DEFAULT '0',
  `ship_city` varchar(30) DEFAULT NULL,
  `ship_code` varchar(30) DEFAULT NULL,
  `ship_country` varchar(30) DEFAULT NULL,
  `ship_state` varchar(30) DEFAULT NULL,
  `ship_street` varchar(250) DEFAULT NULL,
  `ship_pobox` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`soshipaddressid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_soshipads`
--

INSERT INTO `vtiger_soshipads` (`soshipaddressid`, `ship_city`, `ship_code`, `ship_country`, `ship_state`, `ship_street`, `ship_pobox`) VALUES
(53, '', '', '', '', 'Hjigg', '');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_sostatus` (
  `sostatusid` int(19) NOT NULL AUTO_INCREMENT,
  `sostatus` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sostatusid`),
  UNIQUE KEY `sostatus_sostatus_idx` (`sostatus`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_sostatus`
--

INSERT INTO `vtiger_sostatus` (`sostatusid`, `sostatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Created', 0, 166, 0),
(2, 'Approved', 0, 167, 1),
(3, 'Delivered', 0, 168, 2),
(4, 'Cancelled', 0, 169, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatushistory`
--

CREATE TABLE IF NOT EXISTS `vtiger_sostatushistory` (
  `historyid` int(19) NOT NULL AUTO_INCREMENT,
  `salesorderid` int(19) NOT NULL,
  `accountname` varchar(100) DEFAULT NULL,
  `total` decimal(10,0) DEFAULT NULL,
  `sostatus` varchar(200) DEFAULT NULL,
  `lastmodified` datetime DEFAULT NULL,
  PRIMARY KEY (`historyid`),
  KEY `sostatushistory_salesorderid_idx` (`salesorderid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sostatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_sostatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_sostatus_seq`
--

INSERT INTO `vtiger_sostatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_sqltimelog`
--

CREATE TABLE IF NOT EXISTS `vtiger_sqltimelog` (
  `id` int(11) DEFAULT NULL,
  `type` varchar(10) DEFAULT NULL,
  `data` text,
  `started` decimal(20,6) DEFAULT NULL,
  `ended` decimal(20,6) DEFAULT NULL,
  `loggedon` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour`
--

CREATE TABLE IF NOT EXISTS `vtiger_start_hour` (
  `start_hourid` int(11) NOT NULL AUTO_INCREMENT,
  `start_hour` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`start_hourid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=25 ;

--
-- Dumping data for table `vtiger_start_hour`
--

INSERT INTO `vtiger_start_hour` (`start_hourid`, `start_hour`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, '00:00', 1, 297, 1),
(2, '01:00', 1, 298, 2),
(3, '02:00', 1, 299, 3),
(4, '03:00', 1, 300, 4),
(5, '04:00', 1, 301, 5),
(6, '05:00', 1, 302, 6),
(7, '06:00', 1, 303, 7),
(8, '07:00', 1, 304, 8),
(9, '08:00', 1, 305, 9),
(10, '09:00', 1, 306, 10),
(11, '10:00', 1, 307, 11),
(12, '11:00', 1, 308, 12),
(13, '12:00', 1, 309, 13),
(14, '13:00', 1, 310, 14),
(15, '14:00', 1, 311, 15),
(16, '15:00', 1, 312, 16),
(17, '16:00', 1, 313, 17),
(18, '17:00', 1, 314, 18),
(19, '18:00', 1, 315, 19),
(20, '19:00', 1, 316, 20),
(21, '20:00', 1, 317, 21),
(22, '21:00', 1, 318, 22),
(23, '22:00', 1, 319, 23),
(24, '23:00', 1, 320, 24);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_start_hour_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_start_hour_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_start_hour_seq`
--

INSERT INTO `vtiger_start_hour_seq` (`id`) VALUES
(24);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status`
--

CREATE TABLE IF NOT EXISTS `vtiger_status` (
  `statusid` int(19) NOT NULL AUTO_INCREMENT,
  `status` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`statusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_status`
--

INSERT INTO `vtiger_status` (`statusid`, `status`, `presence`, `picklist_valueid`) VALUES
(1, 'Active', 0, 1),
(2, 'Inactive', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_status_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_status_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_status_seq`
--

INSERT INTO `vtiger_status_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_systems`
--

CREATE TABLE IF NOT EXISTS `vtiger_systems` (
  `id` int(19) NOT NULL,
  `server` varchar(100) DEFAULT NULL,
  `server_port` int(19) DEFAULT NULL,
  `server_username` varchar(100) DEFAULT NULL,
  `server_password` varchar(100) DEFAULT NULL,
  `server_type` varchar(20) DEFAULT NULL,
  `smtp_auth` varchar(5) DEFAULT NULL,
  `server_path` varchar(256) DEFAULT NULL,
  `from_email_field` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab`
--

CREATE TABLE IF NOT EXISTS `vtiger_tab` (
  `tabid` int(19) NOT NULL DEFAULT '0',
  `name` varchar(25) NOT NULL,
  `presence` int(19) NOT NULL DEFAULT '1',
  `tabsequence` int(10) DEFAULT NULL,
  `tablabel` varchar(25) NOT NULL,
  `modifiedby` int(19) DEFAULT NULL,
  `modifiedtime` int(19) DEFAULT NULL,
  `customized` int(19) DEFAULT NULL,
  `ownedby` int(19) DEFAULT NULL,
  `isentitytype` int(11) NOT NULL DEFAULT '1',
  `trial` int(1) NOT NULL DEFAULT '0',
  `version` varchar(10) DEFAULT NULL,
  `parent` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`tabid`),
  UNIQUE KEY `tab_name_idx` (`name`),
  KEY `tab_modifiedby_idx` (`modifiedby`),
  KEY `tab_tabid_idx` (`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_tab`
--

INSERT INTO `vtiger_tab` (`tabid`, `name`, `presence`, `tabsequence`, `tablabel`, `modifiedby`, `modifiedtime`, `customized`, `ownedby`, `isentitytype`, `trial`, `version`, `parent`) VALUES
(1, 'Dashboard', 0, -1, 'Dashboards', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics'),
(2, 'Potentials', 0, 5, 'Potentials', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(3, 'Home', 0, -1, 'Home', NULL, NULL, 0, 1, 0, 0, NULL, NULL),
(4, 'Contacts', 0, 4, 'Contacts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(6, 'Accounts', 0, 3, 'Accounts', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(7, 'Leads', 0, 2, 'Leads', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(8, 'Documents', 0, 7, 'Documents', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools'),
(9, 'Calendar', 0, 1, 'Calendar', NULL, NULL, 0, 0, 1, 0, NULL, 'Tools'),
(10, 'Emails', 0, -1, 'Emails', NULL, NULL, 0, 1, 1, 0, NULL, 'Tools'),
(13, 'HelpDesk', 0, 8, 'HelpDesk', NULL, NULL, 0, 0, 1, 0, NULL, 'Support'),
(14, 'Products', 0, 6, 'Products', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory'),
(15, 'Faq', 0, -1, 'Faq', NULL, NULL, 0, 1, 1, 0, NULL, 'Support'),
(16, 'Events', 2, -1, 'Events', NULL, NULL, 0, 0, 1, 0, NULL, NULL),
(18, 'Vendors', 0, -1, 'Vendors', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory'),
(19, 'PriceBooks', 0, -1, 'PriceBooks', NULL, NULL, 0, 1, 1, 0, NULL, 'Inventory'),
(20, 'Quotes', 0, -1, 'Quotes', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(21, 'PurchaseOrder', 0, -1, 'PurchaseOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Inventory'),
(22, 'SalesOrder', 0, -1, 'SalesOrder', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(23, 'Invoice', 0, -1, 'Invoice', NULL, NULL, 0, 0, 1, 0, NULL, 'Sales'),
(24, 'Rss', 0, -1, 'Rss', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools'),
(25, 'Reports', 0, -1, 'Reports', NULL, NULL, 0, 1, 0, 0, NULL, 'Analytics'),
(26, 'Campaigns', 0, -1, 'Campaigns', NULL, NULL, 0, 0, 1, 0, NULL, 'Marketing'),
(27, 'Portal', 0, -1, 'Portal', NULL, NULL, 0, 1, 0, 0, NULL, 'Tools'),
(28, 'Webmails', 0, -1, 'Webmails', NULL, NULL, 0, 1, 1, 0, NULL, NULL),
(29, 'Users', 0, -1, 'Users', NULL, NULL, 0, 1, 0, 0, NULL, NULL),
(30, 'Import', 0, -1, 'Import', NULL, NULL, 1, 0, 0, 0, '1.7', ''),
(31, 'MailManager', 0, -1, 'MailManager', NULL, NULL, 1, 0, 0, 0, '1.9', 'Tools'),
(32, 'Mobile', 0, -1, 'Mobile', NULL, NULL, 1, 0, 0, 0, '2.0', ''),
(33, 'ModTracker', 0, -1, 'ModTracker', NULL, NULL, 0, 0, 0, 0, '1.2', ''),
(34, 'PBXManager', 0, -1, 'PBXManager', NULL, NULL, 1, 0, 1, 0, '2.2', 'Tools'),
(35, 'ServiceContracts', 0, -1, 'Service Contracts', NULL, NULL, 0, 0, 1, 0, '2.4', 'Support'),
(36, 'Services', 0, -1, 'Services', NULL, NULL, 0, 0, 1, 0, '2.6', 'Inventory'),
(37, 'WSAPP', 0, -1, 'WSAPP', NULL, NULL, 1, 0, 0, 0, '3.4.4', ''),
(38, 'Assets', 0, -1, 'Assets', NULL, NULL, 0, 0, 1, 0, '2.0', 'Inventory'),
(39, 'CustomerPortal', 0, -1, 'CustomerPortal', NULL, NULL, 0, 0, 0, 0, '1.4', ''),
(40, 'EmailTemplates', 0, -1, 'Email Templates', NULL, NULL, 1, 0, 0, 0, '1.0', 'Tools'),
(41, 'Google', 0, -1, 'Google', NULL, NULL, 0, 0, 0, 0, '1.5', ''),
(42, 'ModComments', 0, -1, 'Comments', NULL, NULL, 0, 0, 1, 0, '2.1', 'Tools'),
(43, 'ProjectMilestone', 0, -1, 'ProjectMilestone', NULL, NULL, 0, 0, 1, 0, '3.0', 'Support'),
(44, 'ProjectTask', 0, -1, 'ProjectTask', NULL, NULL, 0, 0, 1, 0, '3.1', 'Support'),
(45, 'Project', 0, -1, 'Project', NULL, NULL, 0, 0, 1, 0, '3.3', 'Support'),
(46, 'RecycleBin', 0, -1, 'Recycle Bin', NULL, NULL, 0, 0, 0, 0, '1.5', 'Tools'),
(47, 'SMSNotifier', 0, -1, 'SMSNotifier', NULL, NULL, 0, 0, 1, 0, '1.9', 'Tools'),
(48, 'Webforms', 0, -1, 'Webforms', NULL, NULL, 0, 0, 0, 0, '1.6', ''),
(49, 'ExtensionStore', 0, -1, 'Extension Store', NULL, NULL, 1, 0, 0, 0, '1.1.4', 'Settings');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tab_info`
--

CREATE TABLE IF NOT EXISTS `vtiger_tab_info` (
  `tabid` int(19) DEFAULT NULL,
  `prefname` varchar(256) DEFAULT NULL,
  `prefvalue` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_tab_info`
--

INSERT INTO `vtiger_tab_info` (`tabid`, `prefname`, `prefvalue`) VALUES
(30, 'vtiger_min_version', '6.0.0rc'),
(30, 'vtiger_max_version', '6.*'),
(31, 'vtiger_min_version', '6.0.0RC'),
(32, 'vtiger_min_version', '6.0.0rc'),
(33, 'vtiger_min_version', '6.0.0rc'),
(34, 'vtiger_min_version', '6.0.0'),
(34, 'vtiger_max_version', '6.*'),
(35, 'vtiger_min_version', '6.0.0rc'),
(36, 'vtiger_min_version', '6.0.0rc'),
(36, 'vtiger_max_version', '6.*'),
(37, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_min_version', '6.0.0rc'),
(38, 'vtiger_max_version', '6.*'),
(39, 'vtiger_min_version', '6.0.0rc'),
(39, 'vtiger_max_version', '6.*'),
(40, 'vtiger_min_version', '6.0.0rc'),
(40, 'vtiger_max_version', '6.*'),
(41, 'vtiger_min_version', '6.0.0rc'),
(41, 'vtiger_max_version', '6.*'),
(42, 'vtiger_min_version', '6.0.0rc'),
(42, 'vtiger_max_version', '6.*'),
(43, 'vtiger_min_version', '6.0.0rc'),
(43, 'vtiger_max_version', '6.*'),
(44, 'vtiger_min_version', '6.0.0rc'),
(45, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_min_version', '6.0.0rc'),
(46, 'vtiger_max_version', '6.*'),
(47, 'vtiger_min_version', '6.0.0rc'),
(47, 'vtiger_max_version', '6.*'),
(48, 'vtiger_min_version', '6.0.0rc'),
(48, 'vtiger_max_version', '6.*'),
(49, 'vtiger_min_version', '6.0.0'),
(49, 'vtiger_max_version', '6.*');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskpriority` (
  `taskpriorityid` int(19) NOT NULL AUTO_INCREMENT,
  `taskpriority` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskpriorityid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_taskpriority`
--

INSERT INTO `vtiger_taskpriority` (`taskpriorityid`, `taskpriority`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'High', 1, 170, 0),
(2, 'Medium', 1, 171, 1),
(3, 'Low', 1, 172, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskpriority_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskpriority_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_taskpriority_seq`
--

INSERT INTO `vtiger_taskpriority_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskstatus` (
  `taskstatusid` int(19) NOT NULL AUTO_INCREMENT,
  `taskstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`taskstatusid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `vtiger_taskstatus`
--

INSERT INTO `vtiger_taskstatus` (`taskstatusid`, `taskstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Not Started', 0, 173, 0),
(2, 'In Progress', 0, 174, 1),
(3, 'Completed', 0, 175, 2),
(4, 'Pending Input', 0, 176, 3),
(5, 'Deferred', 0, 177, 4),
(6, 'Planned', 0, 178, 5);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taskstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_taskstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_taskstatus_seq`
--

INSERT INTO `vtiger_taskstatus_seq` (`id`) VALUES
(6);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass`
--

CREATE TABLE IF NOT EXISTS `vtiger_taxclass` (
  `taxclassid` int(19) NOT NULL AUTO_INCREMENT,
  `taxclass` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`taxclassid`),
  UNIQUE KEY `taxclass_carrier_idx` (`taxclass`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_taxclass`
--

INSERT INTO `vtiger_taxclass` (`taxclassid`, `taxclass`, `sortorderid`, `presence`) VALUES
(1, 'SalesTax', 0, 1),
(2, 'Vat', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_taxclass_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_taxclass_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_taxclass_seq`
--

INSERT INTO `vtiger_taxclass_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcategories` (
  `ticketcategories_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketcategories` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketcategories_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `vtiger_ticketcategories`
--

INSERT INTO `vtiger_ticketcategories` (`ticketcategories_id`, `ticketcategories`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Big Problem', 1, 179, 0),
(2, 'Small Problem', 1, 180, 1),
(3, 'Other Problem', 1, 181, 2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcategories_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcategories_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketcategories_seq`
--

INSERT INTO `vtiger_ticketcategories_seq` (`id`) VALUES
(3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcf` (
  `ticketid` int(19) NOT NULL DEFAULT '0',
  `from_portal` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketcf`
--

INSERT INTO `vtiger_ticketcf` (`ticketid`, `from_portal`) VALUES
(37, '0'),
(46, '0'),
(52, '0'),
(58, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketcomments`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketcomments` (
  `commentid` int(19) NOT NULL AUTO_INCREMENT,
  `ticketid` int(19) DEFAULT NULL,
  `comments` text,
  `ownerid` int(19) NOT NULL DEFAULT '0',
  `ownertype` varchar(10) DEFAULT NULL,
  `createdtime` datetime NOT NULL,
  PRIMARY KEY (`commentid`),
  KEY `ticketcomments_ticketid_idx` (`ticketid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketpriorities` (
  `ticketpriorities_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketpriorities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketpriorities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_ticketpriorities`
--

INSERT INTO `vtiger_ticketpriorities` (`ticketpriorities_id`, `ticketpriorities`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Low', 1, 182, 0),
(2, 'Normal', 1, 183, 1),
(3, 'High', 1, 184, 2),
(4, 'Urgent', 1, 185, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketpriorities_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketpriorities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketpriorities_seq`
--

INSERT INTO `vtiger_ticketpriorities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketseverities` (
  `ticketseverities_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketseverities` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketseverities_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_ticketseverities`
--

INSERT INTO `vtiger_ticketseverities` (`ticketseverities_id`, `ticketseverities`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Minor', 1, 186, 0),
(2, 'Major', 1, 187, 1),
(3, 'Feature', 1, 188, 2),
(4, 'Critical', 1, 189, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketseverities_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketseverities_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketseverities_seq`
--

INSERT INTO `vtiger_ticketseverities_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketstatus` (
  `ticketstatus_id` int(19) NOT NULL AUTO_INCREMENT,
  `ticketstatus` varchar(200) DEFAULT NULL,
  `presence` int(1) NOT NULL DEFAULT '0',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`ticketstatus_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_ticketstatus`
--

INSERT INTO `vtiger_ticketstatus` (`ticketstatus_id`, `ticketstatus`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Open', 0, 190, 0),
(2, 'In Progress', 0, 191, 1),
(3, 'Wait For Response', 0, 192, 2),
(4, 'Closed', 0, 193, 3);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ticketstatus_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ticketstatus_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ticketstatus_seq`
--

INSERT INTO `vtiger_ticketstatus_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone`
--

CREATE TABLE IF NOT EXISTS `vtiger_time_zone` (
  `time_zoneid` int(19) NOT NULL AUTO_INCREMENT,
  `time_zone` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`time_zoneid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=97 ;

--
-- Dumping data for table `vtiger_time_zone`
--

INSERT INTO `vtiger_time_zone` (`time_zoneid`, `time_zone`, `sortorderid`, `presence`) VALUES
(1, 'Pacific/Midway', 0, 1),
(2, 'Pacific/Samoa', 1, 1),
(3, 'Pacific/Honolulu', 2, 1),
(4, 'America/Anchorage', 3, 1),
(5, 'America/Los_Angeles', 4, 1),
(6, 'America/Tijuana', 5, 1),
(7, 'America/Denver', 6, 1),
(8, 'America/Chihuahua', 7, 1),
(9, 'America/Mazatlan', 8, 1),
(10, 'America/Phoenix', 9, 1),
(11, 'America/Regina', 10, 1),
(12, 'America/Tegucigalpa', 11, 1),
(13, 'America/Chicago', 12, 1),
(14, 'America/Mexico_City', 13, 1),
(15, 'America/Monterrey', 14, 1),
(16, 'America/New_York', 15, 1),
(17, 'America/Bogota', 16, 1),
(18, 'America/Lima', 17, 1),
(19, 'America/Rio_Branco', 18, 1),
(20, 'America/Indiana/Indianapolis', 19, 1),
(21, 'America/Caracas', 20, 1),
(22, 'America/Halifax', 21, 1),
(23, 'America/Manaus', 22, 1),
(24, 'America/Santiago', 23, 1),
(25, 'America/La_Paz', 24, 1),
(26, 'America/Cuiaba', 25, 1),
(27, 'America/Asuncion', 26, 1),
(28, 'America/St_Johns', 27, 1),
(29, 'America/Argentina/Buenos_Aires', 28, 1),
(30, 'America/Sao_Paulo', 29, 1),
(31, 'America/Godthab', 30, 1),
(32, 'America/Montevideo', 31, 1),
(33, 'Atlantic/South_Georgia', 32, 1),
(34, 'Atlantic/Azores', 33, 1),
(35, 'Atlantic/Cape_Verde', 34, 1),
(36, 'Europe/London', 35, 1),
(37, 'UTC', 36, 1),
(38, 'Africa/Monrovia', 37, 1),
(39, 'Africa/Casablanca', 38, 1),
(40, 'Europe/Belgrade', 39, 1),
(41, 'Europe/Sarajevo', 40, 1),
(42, 'Europe/Brussels', 41, 1),
(43, 'Africa/Algiers', 42, 1),
(44, 'Europe/Amsterdam', 43, 1),
(45, 'Europe/Minsk', 44, 1),
(46, 'Africa/Cairo', 45, 1),
(47, 'Europe/Helsinki', 46, 1),
(48, 'Europe/Athens', 47, 1),
(49, 'Europe/Istanbul', 48, 1),
(50, 'Asia/Jerusalem', 49, 1),
(51, 'Asia/Amman', 50, 1),
(52, 'Asia/Beirut', 51, 1),
(53, 'Africa/Windhoek', 52, 1),
(54, 'Africa/Harare', 53, 1),
(55, 'Asia/Kuwait', 54, 1),
(56, 'Asia/Baghdad', 55, 1),
(57, 'Africa/Nairobi', 56, 1),
(58, 'Asia/Tehran', 57, 1),
(59, 'Asia/Tbilisi', 58, 1),
(60, 'Europe/Moscow', 59, 1),
(61, 'Asia/Muscat', 60, 1),
(62, 'Asia/Baku', 61, 1),
(63, 'Asia/Yerevan', 62, 1),
(64, 'Asia/Karachi', 63, 1),
(65, 'Asia/Tashkent', 64, 1),
(66, 'Asia/Kolkata', 65, 1),
(67, 'Asia/Colombo', 66, 1),
(68, 'Asia/Katmandu', 67, 1),
(69, 'Asia/Dhaka', 68, 1),
(70, 'Asia/Almaty', 69, 1),
(71, 'Asia/Yekaterinburg', 70, 1),
(72, 'Asia/Rangoon', 71, 1),
(73, 'Asia/Novosibirsk', 72, 1),
(74, 'Asia/Bangkok', 73, 1),
(75, 'Asia/Brunei', 74, 1),
(76, 'Asia/Krasnoyarsk', 75, 1),
(77, 'Asia/Ulaanbaatar', 76, 1),
(78, 'Asia/Kuala_Lumpur', 77, 1),
(79, 'Asia/Taipei', 78, 1),
(80, 'Australia/Perth', 79, 1),
(81, 'Asia/Irkutsk', 80, 1),
(82, 'Asia/Seoul', 81, 1),
(83, 'Asia/Tokyo', 82, 1),
(84, 'Australia/Darwin', 83, 1),
(85, 'Australia/Adelaide', 84, 1),
(86, 'Australia/Canberra', 85, 1),
(87, 'Australia/Brisbane', 86, 1),
(88, 'Australia/Hobart', 87, 1),
(89, 'Asia/Vladivostok', 88, 1),
(90, 'Pacific/Guam', 89, 1),
(91, 'Asia/Yakutsk', 90, 1),
(92, 'Pacific/Fiji', 91, 1),
(93, 'Asia/Kamchatka', 92, 1),
(94, 'Pacific/Auckland', 93, 1),
(95, 'Asia/Magadan', 94, 1),
(96, 'Pacific/Tongatapu', 95, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_time_zone_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_time_zone_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_time_zone_seq`
--

INSERT INTO `vtiger_time_zone_seq` (`id`) VALUES
(96);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_read_group_rel_sharing_per_userid_sharedgroupid_tabid` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_group_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_read_group_sharing_per_userid_sharedgroupid_idx` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_read_user_rel_sharing_per_userid_shared_reltabid_idx` (`userid`,`shareduserid`,`relatedtabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_read_user_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_read_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_read_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_group_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`sharedgroupid`),
  KEY `tmp_write_group_rel_sharing_per_userid_sharedgroupid_tabid_idx` (`userid`,`sharedgroupid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_group_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_group_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `sharedgroupid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`sharedgroupid`),
  KEY `tmp_write_group_sharing_per_UK1` (`userid`,`sharedgroupid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_rel_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_user_rel_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `relatedtabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`relatedtabid`,`shareduserid`),
  KEY `tmp_write_user_rel_sharing_per_userid_sharduserid_tabid_idx` (`userid`,`shareduserid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tmp_write_user_sharing_per`
--

CREATE TABLE IF NOT EXISTS `vtiger_tmp_write_user_sharing_per` (
  `userid` int(11) NOT NULL,
  `tabid` int(11) NOT NULL,
  `shareduserid` int(11) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`,`shareduserid`),
  KEY `tmp_write_user_sharing_per_userid_shareduserid_idx` (`userid`,`shareduserid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracker`
--

CREATE TABLE IF NOT EXISTS `vtiger_tracker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(36) DEFAULT NULL,
  `module_name` varchar(25) DEFAULT NULL,
  `item_id` varchar(36) DEFAULT NULL,
  `item_summary` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit`
--

CREATE TABLE IF NOT EXISTS `vtiger_tracking_unit` (
  `tracking_unitid` int(11) NOT NULL AUTO_INCREMENT,
  `tracking_unit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(11) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT '0',
  PRIMARY KEY (`tracking_unitid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `vtiger_tracking_unit`
--

INSERT INTO `vtiger_tracking_unit` (`tracking_unitid`, `tracking_unit`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(2, 'Hours', 1, 211, 2),
(3, 'Days', 1, 212, 3),
(4, 'Incidents', 1, 213, 4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_tracking_unit_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_tracking_unit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_tracking_unit_seq`
--

INSERT INTO `vtiger_tracking_unit_seq` (`id`) VALUES
(4);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_troubletickets`
--

CREATE TABLE IF NOT EXISTS `vtiger_troubletickets` (
  `ticketid` int(19) NOT NULL,
  `ticket_no` varchar(100) NOT NULL,
  `groupname` varchar(100) DEFAULT NULL,
  `parent_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `priority` varchar(200) DEFAULT NULL,
  `severity` varchar(200) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `category` varchar(200) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `solution` text,
  `update_log` text,
  `version_id` int(11) DEFAULT NULL,
  `hours` decimal(25,8) DEFAULT NULL,
  `days` decimal(25,8) DEFAULT NULL,
  `contact_id` int(19) DEFAULT NULL,
  PRIMARY KEY (`ticketid`),
  KEY `troubletickets_ticketid_idx` (`ticketid`),
  KEY `troubletickets_status_idx` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_troubletickets`
--

INSERT INTO `vtiger_troubletickets` (`ticketid`, `ticket_no`, `groupname`, `parent_id`, `product_id`, `priority`, `severity`, `status`, `category`, `title`, `solution`, `update_log`, `version_id`, `hours`, `days`, `contact_id`) VALUES
(37, 'TT1', NULL, '0', '0', '', '', 'Open', '', 'test', '', '', NULL, '0.00000000', '0.00000000', 36),
(46, 'TT2', NULL, '2', '0', 'Normal', 'Major', 'Open', 'Small Problem', 'intervenire', '', '', NULL, '0.00000000', '0.00000000', 0),
(52, 'TT3', NULL, '0', '0', 'Normal', '', 'Wait For Response', '', 'Prova', '', '', NULL, '0.00000000', '0.00000000', 0),
(58, 'TT4', NULL, '0', '0', '', '', 'Open', '', 'test 1', '', '', NULL, '0.00000000', '0.00000000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit`
--

CREATE TABLE IF NOT EXISTS `vtiger_usageunit` (
  `usageunitid` int(19) NOT NULL AUTO_INCREMENT,
  `usageunit` varchar(200) NOT NULL,
  `presence` int(1) NOT NULL DEFAULT '1',
  `picklist_valueid` int(19) NOT NULL DEFAULT '0',
  `sortorderid` int(11) DEFAULT NULL,
  PRIMARY KEY (`usageunitid`),
  UNIQUE KEY `usageunit_usageunit_idx` (`usageunit`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `vtiger_usageunit`
--

INSERT INTO `vtiger_usageunit` (`usageunitid`, `usageunit`, `presence`, `picklist_valueid`, `sortorderid`) VALUES
(1, 'Box', 1, 194, 0),
(2, 'Carton', 1, 195, 1),
(3, 'Dozen', 1, 196, 2),
(4, 'Each', 1, 197, 3),
(5, 'Hours', 1, 198, 4),
(6, 'Impressions', 1, 199, 5),
(7, 'Lb', 1, 200, 6),
(8, 'M', 1, 201, 7),
(9, 'Pack', 1, 202, 8),
(10, 'Pages', 1, 203, 9),
(11, 'Pieces', 1, 204, 10),
(12, 'Quantity', 1, 205, 11),
(13, 'Reams', 1, 206, 12),
(14, 'Sheet', 1, 207, 13),
(15, 'Spiral Binder', 1, 208, 14),
(16, 'Sq Ft', 1, 209, 15);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_usageunit_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_usageunit_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_usageunit_seq`
--

INSERT INTO `vtiger_usageunit_seq` (`id`) VALUES
(16);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2mergefields`
--

CREATE TABLE IF NOT EXISTS `vtiger_user2mergefields` (
  `userid` int(11) DEFAULT NULL,
  `tabid` int(19) DEFAULT NULL,
  `fieldid` int(19) DEFAULT NULL,
  `visible` int(2) DEFAULT NULL,
  KEY `userid_tabid_idx` (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user2role`
--

CREATE TABLE IF NOT EXISTS `vtiger_user2role` (
  `userid` int(11) NOT NULL,
  `roleid` varchar(255) NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `user2role_roleid_idx` (`roleid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_user2role`
--

INSERT INTO `vtiger_user2role` (`userid`, `roleid`) VALUES
(1, 'H2'),
(5, 'H2'),
(6, 'H2'),
(7, 'H2'),
(8, 'H2'),
(9, 'H2');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users`
--

CREATE TABLE IF NOT EXISTS `vtiger_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) DEFAULT NULL,
  `user_password` varchar(200) DEFAULT NULL,
  `user_hash` varchar(32) DEFAULT NULL,
  `cal_color` varchar(25) DEFAULT '#E6FAD8',
  `first_name` varchar(30) DEFAULT NULL,
  `last_name` varchar(30) DEFAULT NULL,
  `reports_to_id` varchar(36) DEFAULT NULL,
  `is_admin` varchar(3) DEFAULT '0',
  `currency_id` int(19) NOT NULL DEFAULT '1',
  `description` text,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` varchar(36) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `department` varchar(50) DEFAULT NULL,
  `phone_home` varchar(50) DEFAULT NULL,
  `phone_mobile` varchar(50) DEFAULT NULL,
  `phone_work` varchar(50) DEFAULT NULL,
  `phone_other` varchar(50) DEFAULT NULL,
  `phone_fax` varchar(50) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `secondaryemail` varchar(100) DEFAULT NULL,
  `status` varchar(25) DEFAULT NULL,
  `signature` text,
  `address_street` varchar(150) DEFAULT NULL,
  `address_city` varchar(100) DEFAULT NULL,
  `address_state` varchar(100) DEFAULT NULL,
  `address_country` varchar(25) DEFAULT NULL,
  `address_postalcode` varchar(9) DEFAULT NULL,
  `user_preferences` text,
  `tz` varchar(30) DEFAULT NULL,
  `holidays` varchar(60) DEFAULT NULL,
  `namedays` varchar(60) DEFAULT NULL,
  `workdays` varchar(30) DEFAULT NULL,
  `weekstart` int(11) DEFAULT NULL,
  `date_format` varchar(200) DEFAULT NULL,
  `hour_format` varchar(30) DEFAULT 'am/pm',
  `start_hour` varchar(30) DEFAULT '10:00',
  `end_hour` varchar(30) DEFAULT '23:00',
  `activity_view` varchar(200) DEFAULT 'Today',
  `lead_view` varchar(200) DEFAULT 'Today',
  `imagename` varchar(250) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  `confirm_password` varchar(300) DEFAULT NULL,
  `internal_mailer` varchar(3) NOT NULL DEFAULT '1',
  `reminder_interval` varchar(100) DEFAULT NULL,
  `reminder_next_time` varchar(100) DEFAULT NULL,
  `crypt_type` varchar(20) NOT NULL DEFAULT 'MD5',
  `accesskey` varchar(36) DEFAULT NULL,
  `theme` varchar(100) DEFAULT NULL,
  `language` varchar(36) DEFAULT NULL,
  `time_zone` varchar(200) DEFAULT NULL,
  `currency_grouping_pattern` varchar(100) DEFAULT NULL,
  `currency_decimal_separator` varchar(2) DEFAULT NULL,
  `currency_grouping_separator` varchar(2) DEFAULT NULL,
  `currency_symbol_placement` varchar(20) DEFAULT NULL,
  `phone_crm_extension` varchar(100) DEFAULT NULL,
  `no_of_currency_decimals` varchar(2) DEFAULT NULL,
  `truncate_trailing_zeros` varchar(3) DEFAULT NULL,
  `dayoftheweek` varchar(100) DEFAULT NULL,
  `callduration` varchar(100) DEFAULT NULL,
  `othereventduration` varchar(100) DEFAULT NULL,
  `calendarsharedtype` varchar(100) DEFAULT NULL,
  `default_record_view` varchar(10) DEFAULT NULL,
  `leftpanelhide` varchar(3) DEFAULT NULL,
  `rowheight` varchar(10) DEFAULT NULL,
  `defaulteventstatus` varchar(50) DEFAULT NULL,
  `defaultactivitytype` varchar(50) DEFAULT NULL,
  `hidecompletedevents` int(11) DEFAULT NULL,
  `is_owner` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_user_name_idx` (`user_name`),
  KEY `user_user_password_idx` (`user_password`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `vtiger_users`
--

INSERT INTO `vtiger_users` (`id`, `user_name`, `user_password`, `user_hash`, `cal_color`, `first_name`, `last_name`, `reports_to_id`, `is_admin`, `currency_id`, `description`, `date_entered`, `date_modified`, `modified_user_id`, `title`, `department`, `phone_home`, `phone_mobile`, `phone_work`, `phone_other`, `phone_fax`, `email1`, `email2`, `secondaryemail`, `status`, `signature`, `address_street`, `address_city`, `address_state`, `address_country`, `address_postalcode`, `user_preferences`, `tz`, `holidays`, `namedays`, `workdays`, `weekstart`, `date_format`, `hour_format`, `start_hour`, `end_hour`, `activity_view`, `lead_view`, `imagename`, `deleted`, `confirm_password`, `internal_mailer`, `reminder_interval`, `reminder_next_time`, `crypt_type`, `accesskey`, `theme`, `language`, `time_zone`, `currency_grouping_pattern`, `currency_decimal_separator`, `currency_grouping_separator`, `currency_symbol_placement`, `phone_crm_extension`, `no_of_currency_decimals`, `truncate_trailing_zeros`, `dayoftheweek`, `callduration`, `othereventduration`, `calendarsharedtype`, `default_record_view`, `leftpanelhide`, `rowheight`, `defaulteventstatus`, `defaultactivitytype`, `hidecompletedevents`, `is_owner`) VALUES
(1, 'admin', '$1$ad000000$1KQ9c9sFFc1xbD.qU8gIP1', 'd41d8cd98f00b204e9800998ecf8427e', '#E6FAD8', 'demo', 'Administrator', '', 'on', 1, '', '2015-10-12 09:33:15', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'info@opencrmitalia.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '24', '08:00', '23:00', 'This Week', 'Today', '', 0, '$1$ad000000$nYTnfhTZRmUP.wQT9y1AE.', '1', '1 Minute', NULL, 'PHP5.3MD5', 'egrCh6eKombdOGy', 'softed', 'it_it', 'Europe/Amsterdam', '123,456,789', '.', ',', '$1.0', '', '2', '1', 'Sunday', '30', '30', 'private', 'Summary', '0', 'medium', 'Seleziona un''opzione', 'Seleziona un''opzione', 0, '1'),
(5, 'test', '$1$te000000$NxMCb7p8Ey2zEPIQohrFO/', '098f6bcd4621d373cade4e832627b4f6', '#E6FAD8', '', 'admin', '', 'off', 1, '', '2015-09-20 17:36:15', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'test@test.it', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$te000000$NxMCb7p8Ey2zEPIQohrFO/', '0', '', NULL, 'PHP5.3MD5', 'M5zej93JNYKGvYCV', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', 0, '0'),
(6, 'test1', '$1$te000000$NxMCb7p8Ey2zEPIQohrFO/', '098f6bcd4621d373cade4e832627b4f6', '#E6FAD8', '', 'test1', '', 'off', 1, '', '2015-10-12 12:51:46', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'test@test.com', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$te000000$NxMCb7p8Ey2zEPIQohrFO/', '0', '', NULL, 'PHP5.3MD5', 'IXeUY1zBBu0e7vBj', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', 0, '0'),
(7, 'ii', '$1$ii000000$kuZkFubfVAxxVpMLapFgT.', '7e98b8a17c0aad30ba64d47b74e2a6c1', '#E6FAD8', '', 'iii', '', 'off', 1, '', '2015-10-12 15:01:53', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'ts@fsd.it', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$ii000000$kuZkFubfVAxxVpMLapFgT.', '0', '', NULL, 'PHP5.3MD5', 'POsANRsMHYMUfcCf', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', 0, '0'),
(8, 'iii', '$1$ii000000$TOcS6RoqmeiAfcXlHDsUa/', '36347412c7d30ae6fde3742bbc4f21b9', '#E6FAD8', '', 'iii', '', 'off', 1, '', '2015-10-12 15:03:02', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'kk@ll.i', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$ii000000$TOcS6RoqmeiAfcXlHDsUa/', '0', '', NULL, 'PHP5.3MD5', 'MHMOo9nu2hpLQ0SV', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', 0, '0'),
(9, 'iiii', '$1$ii000000$41Oq78fV6BCyhzV1H6t06.', '2210a2fca76bc0be329770c5b686d048', '#E6FAD8', '', 'iiiii', '', 'off', 1, '', '2015-10-12 15:03:26', '0000-00-00 00:00:00', NULL, '', '', '', '', '', '', '', 'iii@ii.i', '', '', 'Active', '', '', '', '', '', '', NULL, NULL, NULL, NULL, NULL, NULL, 'dd-mm-yyyy', '12', '00:00', '', 'Today', 'Today', '', 0, '$1$ii000000$41Oq78fV6BCyhzV1H6t06.', '0', '', NULL, 'PHP5.3MD5', 'N38jeJWkhuZ7uSMp', 'softed', 'en_us', 'Pacific/Midway', '123,456,789', '.', ',', '$1.0', '', '2', '0', 'Monday', '5', '5', 'public', 'Summary', '0', 'medium', 'Select an Option', 'Select an Option', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users2group`
--

CREATE TABLE IF NOT EXISTS `vtiger_users2group` (
  `groupid` int(19) NOT NULL,
  `userid` int(19) NOT NULL,
  PRIMARY KEY (`groupid`,`userid`),
  KEY `users2group_groupname_uerid_idx` (`groupid`,`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_users2group`
--

INSERT INTO `vtiger_users2group` (`groupid`, `userid`) VALUES
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_userscf`
--

CREATE TABLE IF NOT EXISTS `vtiger_userscf` (
  `usersid` int(11) NOT NULL,
  PRIMARY KEY (`usersid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_last_import`
--

CREATE TABLE IF NOT EXISTS `vtiger_users_last_import` (
  `id` int(36) NOT NULL AUTO_INCREMENT,
  `assigned_user_id` varchar(36) DEFAULT NULL,
  `bean_type` varchar(36) DEFAULT NULL,
  `bean_id` varchar(36) DEFAULT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_users_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_users_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_users_seq`
--

INSERT INTO `vtiger_users_seq` (`id`) VALUES
(9);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_user_module_preferences`
--

CREATE TABLE IF NOT EXISTS `vtiger_user_module_preferences` (
  `userid` int(19) NOT NULL,
  `tabid` int(19) NOT NULL,
  `default_cvid` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`tabid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_user_module_preferences`
--

INSERT INTO `vtiger_user_module_preferences` (`userid`, `tabid`, `default_cvid`) VALUES
(1, 8, 54);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendor`
--

CREATE TABLE IF NOT EXISTS `vtiger_vendor` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  `vendor_no` varchar(100) NOT NULL,
  `vendorname` varchar(100) DEFAULT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `glacct` varchar(200) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `street` text,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(30) DEFAULT NULL,
  `pobox` varchar(30) DEFAULT NULL,
  `postalcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcf`
--

CREATE TABLE IF NOT EXISTS `vtiger_vendorcf` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendorid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_vendorcontactrel`
--

CREATE TABLE IF NOT EXISTS `vtiger_vendorcontactrel` (
  `vendorid` int(19) NOT NULL DEFAULT '0',
  `contactid` int(19) NOT NULL DEFAULT '0',
  PRIMARY KEY (`vendorid`,`contactid`),
  KEY `vendorcontactrel_vendorid_idx` (`vendorid`),
  KEY `vendorcontactrel_contact_idx` (`contactid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version`
--

CREATE TABLE IF NOT EXISTS `vtiger_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `old_version` varchar(30) DEFAULT NULL,
  `current_version` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_version`
--

INSERT INTO `vtiger_version` (`id`, `old_version`, `current_version`) VALUES
(1, '6.2.0', '6.2.0');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_version_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_version_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_version_seq`
--

INSERT INTO `vtiger_version_seq` (`id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility`
--

CREATE TABLE IF NOT EXISTS `vtiger_visibility` (
  `visibilityid` int(19) NOT NULL AUTO_INCREMENT,
  `visibility` varchar(200) NOT NULL,
  `sortorderid` int(19) NOT NULL DEFAULT '0',
  `presence` int(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`visibilityid`),
  UNIQUE KEY `visibility_visibility_idx` (`visibility`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `vtiger_visibility`
--

INSERT INTO `vtiger_visibility` (`visibilityid`, `visibility`, `sortorderid`, `presence`) VALUES
(1, 'Private', 0, 1),
(2, 'Public', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_visibility_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_visibility_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_visibility_seq`
--

INSERT INTO `vtiger_visibility_seq` (`id`) VALUES
(2);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_webforms`
--

CREATE TABLE IF NOT EXISTS `vtiger_webforms` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `publicid` varchar(100) NOT NULL,
  `enabled` int(1) NOT NULL DEFAULT '1',
  `targetmodule` varchar(50) NOT NULL,
  `description` text,
  `ownerid` int(19) NOT NULL,
  `returnurl` varchar(250) DEFAULT NULL,
  `captcha` int(1) NOT NULL DEFAULT '0',
  `roundrobin` int(1) NOT NULL DEFAULT '0',
  `roundrobin_userid` varchar(256) DEFAULT NULL,
  `roundrobin_logic` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `webformname` (`name`),
  UNIQUE KEY `publicid` (`id`),
  KEY `webforms_webforms_id_idx` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wordtemplates`
--

CREATE TABLE IF NOT EXISTS `vtiger_wordtemplates` (
  `templateid` int(19) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `module` varchar(30) NOT NULL,
  `date_entered` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `parent_type` varchar(50) NOT NULL,
  `data` longblob,
  `description` text,
  `filesize` varchar(50) NOT NULL,
  `filetype` varchar(20) NOT NULL,
  `deleted` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`templateid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp` (
  `appid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `appkey` varchar(255) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`appid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `vtiger_wsapp`
--

INSERT INTO `vtiger_wsapp` (`appid`, `name`, `appkey`, `type`) VALUES
(1, 'vtigerCRM', '54fea76985099', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_handlerdetails`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_handlerdetails` (
  `type` varchar(200) NOT NULL,
  `handlerclass` varchar(100) DEFAULT NULL,
  `handlerpath` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vtiger_wsapp_handlerdetails`
--

INSERT INTO `vtiger_wsapp_handlerdetails` (`type`, `handlerclass`, `handlerpath`) VALUES
('Outlook', 'OutlookHandler', 'modules/WSAPP/Handlers/OutlookHandler.php'),
('vtigerCRM', 'vtigerCRMHandler', 'modules/WSAPP/Handlers/vtigerCRMHandler.php'),
('vtigerSyncLib', 'WSAPP_VtigerSyncEventHandler', 'modules/WSAPP/synclib/handlers/VtigerSyncEventHandler.php'),
('Google_vtigerHandler', 'Google_Vtiger_Handler', 'modules/Google/handlers/Vtiger.php'),
('Google_vtigerSyncHandler', 'Google_VtigerSync_Handler', 'modules/Google/handlers/VtigerSync.php');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_queuerecords`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_queuerecords` (
  `syncserverid` int(19) DEFAULT NULL,
  `details` varchar(300) DEFAULT NULL,
  `flag` varchar(100) DEFAULT NULL,
  `appid` int(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_recordmapping`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_recordmapping` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `serverid` varchar(10) DEFAULT NULL,
  `clientid` varchar(255) DEFAULT NULL,
  `clientmodifiedtime` datetime DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `servermodifiedtime` datetime DEFAULT NULL,
  `serverappid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_wsapp_sync_state`
--

CREATE TABLE IF NOT EXISTS `vtiger_wsapp_sync_state` (
  `id` int(19) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `stateencodedvalues` varchar(300) NOT NULL,
  `userid` int(19) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_class` varchar(64) NOT NULL,
  `ismodule` int(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=36 ;

--
-- Dumping data for table `vtiger_ws_entity`
--

INSERT INTO `vtiger_ws_entity` (`id`, `name`, `handler_path`, `handler_class`, `ismodule`) VALUES
(1, 'Campaigns', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(2, 'Vendors', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(3, 'Faq', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(4, 'Quotes', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(5, 'PurchaseOrder', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(6, 'SalesOrder', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(7, 'Invoice', 'include/Webservices/LineItem/VtigerInventoryOperation.php', 'VtigerInventoryOperation', 1),
(8, 'PriceBooks', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(9, 'Calendar', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(10, 'Leads', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(11, 'Accounts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(12, 'Contacts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(13, 'Potentials', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(14, 'Products', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(15, 'Documents', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(16, 'Emails', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(17, 'HelpDesk', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(18, 'Events', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(19, 'Users', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(20, 'Groups', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(21, 'Currency', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(22, 'DocumentFolders', 'include/Webservices/VtigerActorOperation.php', 'VtigerActorOperation', 0),
(23, 'CompanyDetails', 'include/Webservices/VtigerCompanyDetails.php', 'VtigerCompanyDetails', 0),
(24, 'PBXManager', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(25, 'ServiceContracts', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(26, 'Services', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(27, 'Assets', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(28, 'ModComments', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(29, 'ProjectMilestone', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(30, 'ProjectTask', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(31, 'Project', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(32, 'SMSNotifier', 'include/Webservices/VtigerModuleOperation.php', 'VtigerModuleOperation', 1),
(33, 'LineItem', 'include/Webservices/LineItem/VtigerLineItemOperation.php', 'VtigerLineItemOperation', 0),
(34, 'Tax', 'include/Webservices/LineItem/VtigerTaxOperation.php', 'VtigerTaxOperation', 0),
(35, 'ProductTaxes', 'include/Webservices/LineItem/VtigerProductTaxesOperation.php', 'VtigerProductTaxesOperation', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_fieldtype` (
  `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(50) NOT NULL,
  `field_name` varchar(50) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY (`fieldtypeid`),
  UNIQUE KEY `vtiger_idx_1_tablename_fieldname` (`table_name`,`field_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype`
--

INSERT INTO `vtiger_ws_entity_fieldtype` (`fieldtypeid`, `table_name`, `field_name`, `fieldtype`) VALUES
(1, 'vtiger_attachmentsfolder', 'createdby', 'reference'),
(2, 'vtiger_organizationdetails', 'logoname', 'file'),
(3, 'vtiger_organizationdetails', 'phone', 'phone'),
(4, 'vtiger_organizationdetails', 'fax', 'phone'),
(5, 'vtiger_organizationdetails', 'website', 'url'),
(6, 'vtiger_inventoryproductrel', 'productid', 'reference'),
(7, 'vtiger_inventoryproductrel', 'id', 'reference'),
(8, 'vtiger_inventoryproductrel', 'incrementondel', 'autogenerated'),
(9, 'vtiger_producttaxrel', 'productid', 'reference'),
(10, 'vtiger_producttaxrel', 'taxid', 'reference');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_fieldtype_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_fieldtype_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_fieldtype_seq`
--

INSERT INTO `vtiger_ws_entity_fieldtype_seq` (`id`) VALUES
(10);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_name`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_name` (
  `entity_id` int(11) NOT NULL,
  `name_fields` varchar(50) NOT NULL,
  `index_field` varchar(50) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`entity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_name`
--

INSERT INTO `vtiger_ws_entity_name` (`entity_id`, `name_fields`, `index_field`, `table_name`) VALUES
(20, 'groupname', 'groupid', 'vtiger_groups'),
(21, 'currency_name', 'id', 'vtiger_currency_info'),
(22, 'foldername', 'folderid', 'vtiger_attachmentsfolder'),
(23, 'organizationname', 'groupid', 'vtiger_organizationdetails'),
(34, 'taxlabel', 'taxid', 'vtiger_inventorytaxinfo');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_referencetype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_referencetype`
--

INSERT INTO `vtiger_ws_entity_referencetype` (`fieldtypeid`, `type`) VALUES
(5, 'Users'),
(6, 'Products'),
(7, 'Invoice'),
(7, 'PurchaseOrder'),
(7, 'Quotes'),
(7, 'SalesOrder'),
(9, 'Products'),
(10, 'Tax');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_seq`
--

INSERT INTO `vtiger_ws_entity_seq` (`id`) VALUES
(35);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_entity_tables`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_entity_tables` (
  `webservice_entity_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  PRIMARY KEY (`webservice_entity_id`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_entity_tables`
--

INSERT INTO `vtiger_ws_entity_tables` (`webservice_entity_id`, `table_name`) VALUES
(20, 'vtiger_groups'),
(21, 'vtiger_currency_info'),
(22, 'vtiger_attachmentsfolder'),
(23, 'vtiger_organizationdetails'),
(33, 'vtiger_inventoryproductrel'),
(34, 'vtiger_inventorytaxinfo'),
(35, 'vtiger_producttaxrel');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldinfo`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_fieldinfo` (
  `id` varchar(64) NOT NULL,
  `property_name` varchar(32) DEFAULT NULL,
  `property_value` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_fieldinfo`
--

INSERT INTO `vtiger_ws_fieldinfo` (`id`, `property_name`, `property_value`) VALUES
('vtiger_organizationdetails.organization_id', 'upload.path', '1');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_fieldtype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_fieldtype` (
  `fieldtypeid` int(19) NOT NULL AUTO_INCREMENT,
  `uitype` varchar(30) NOT NULL,
  `fieldtype` varchar(200) NOT NULL,
  PRIMARY KEY (`fieldtypeid`),
  UNIQUE KEY `uitype_idx` (`uitype`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=40 ;

--
-- Dumping data for table `vtiger_ws_fieldtype`
--

INSERT INTO `vtiger_ws_fieldtype` (`fieldtypeid`, `uitype`, `fieldtype`) VALUES
(1, '15', 'picklist'),
(2, '16', 'picklist'),
(3, '19', 'text'),
(4, '20', 'text'),
(5, '21', 'text'),
(6, '24', 'text'),
(7, '3', 'autogenerated'),
(8, '11', 'phone'),
(9, '33', 'multipicklist'),
(10, '17', 'url'),
(11, '85', 'skype'),
(12, '56', 'boolean'),
(13, '156', 'boolean'),
(14, '53', 'owner'),
(15, '61', 'file'),
(16, '28', 'file'),
(17, '13', 'email'),
(18, '71', 'currency'),
(19, '72', 'currency'),
(20, '50', 'reference'),
(21, '51', 'reference'),
(22, '57', 'reference'),
(23, '58', 'reference'),
(24, '73', 'reference'),
(25, '75', 'reference'),
(26, '76', 'reference'),
(27, '78', 'reference'),
(28, '80', 'reference'),
(29, '81', 'reference'),
(30, '101', 'reference'),
(31, '52', 'reference'),
(32, '357', 'reference'),
(33, '59', 'reference'),
(34, '66', 'reference'),
(35, '77', 'reference'),
(36, '68', 'reference'),
(37, '117', 'reference'),
(38, '26', 'reference'),
(39, '10', 'reference');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_operation` (
  `operationid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `handler_path` varchar(255) NOT NULL,
  `handler_method` varchar(64) NOT NULL,
  `type` varchar(8) NOT NULL,
  `prelogin` int(3) NOT NULL,
  PRIMARY KEY (`operationid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `vtiger_ws_operation`
--

INSERT INTO `vtiger_ws_operation` (`operationid`, `name`, `handler_path`, `handler_method`, `type`, `prelogin`) VALUES
(1, 'login', 'include/Webservices/Login.php', 'vtws_login', 'POST', 1),
(2, 'retrieve', 'include/Webservices/Retrieve.php', 'vtws_retrieve', 'GET', 0),
(3, 'create', 'include/Webservices/Create.php', 'vtws_create', 'POST', 0),
(4, 'update', 'include/Webservices/Update.php', 'vtws_update', 'POST', 0),
(5, 'delete', 'include/Webservices/Delete.php', 'vtws_delete', 'POST', 0),
(6, 'sync', 'include/Webservices/GetUpdates.php', 'vtws_sync', 'GET', 0),
(7, 'query', 'include/Webservices/Query.php', 'vtws_query', 'GET', 0),
(8, 'logout', 'include/Webservices/Logout.php', 'vtws_logout', 'POST', 0),
(9, 'listtypes', 'include/Webservices/ModuleTypes.php', 'vtws_listtypes', 'GET', 0),
(10, 'getchallenge', 'include/Webservices/AuthToken.php', 'vtws_getchallenge', 'GET', 1),
(11, 'describe', 'include/Webservices/DescribeObject.php', 'vtws_describe', 'GET', 0),
(12, 'extendsession', 'include/Webservices/ExtendSession.php', 'vtws_extendSession', 'POST', 1),
(13, 'convertlead', 'include/Webservices/ConvertLead.php', 'vtws_convertlead', 'POST', 0),
(14, 'revise', 'include/Webservices/Revise.php', 'vtws_revise', 'POST', 0),
(15, 'changePassword', 'include/Webservices/ChangePassword.php', 'vtws_changePassword', 'POST', 0),
(16, 'deleteUser', 'include/Webservices/DeleteUser.php', 'vtws_deleteUser', 'POST', 0),
(17, 'mobile.fetchallalerts', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchAllAlerts', 'POST', 0),
(18, 'mobile.alertdetailswithmessage', 'modules/Mobile/api/wsapi.php', 'mobile_ws_alertDetailsWithMessage', 'POST', 0),
(19, 'mobile.fetchmodulefilters', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchModuleFilters', 'POST', 0),
(20, 'mobile.fetchrecord', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchRecord', 'POST', 0),
(21, 'mobile.fetchrecordwithgrouping', 'modules/Mobile/api/wsapi.php', 'mobile_ws_fetchRecordWithGrouping', 'POST', 0),
(22, 'mobile.filterdetailswithcount', 'modules/Mobile/api/wsapi.php', 'mobile_ws_filterDetailsWithCount', 'POST', 0),
(23, 'mobile.listmodulerecords', 'modules/Mobile/api/wsapi.php', 'mobile_ws_listModuleRecords', 'POST', 0),
(24, 'mobile.saverecord', 'modules/Mobile/api/wsapi.php', 'mobile_ws_saveRecord', 'POST', 0),
(25, 'mobile.syncModuleRecords', 'modules/Mobile/api/wsapi.php', 'mobile_ws_syncModuleRecords', 'POST', 0),
(26, 'mobile.query', 'modules/Mobile/api/wsapi.php', 'mobile_ws_query', 'POST', 0),
(27, 'mobile.querywithgrouping', 'modules/Mobile/api/wsapi.php', 'mobile_ws_queryWithGrouping', 'POST', 0),
(28, 'wsapp_register', 'modules/WSAPP/api/ws/Register.php', 'wsapp_register', 'POST', 0),
(29, 'wsapp_deregister', 'modules/WSAPP/api/ws/DeRegister.php', 'wsapp_deregister', 'POST', 0),
(30, 'wsapp_get', 'modules/WSAPP/api/ws/Get.php', 'wsapp_get', 'POST', 0),
(31, 'wsapp_put', 'modules/WSAPP/api/ws/Put.php', 'wsapp_put', 'POST', 0),
(32, 'wsapp_map', 'modules/WSAPP/api/ws/Map.php', 'wsapp_map', 'POST', 0),
(33, 'retrieve_inventory', 'include/Webservices/LineItem/RetrieveInventory.php', 'vtws_retrieve_inventory', 'GET', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_parameters`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_operation_parameters` (
  `operationid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `type` varchar(64) NOT NULL,
  `sequence` int(11) NOT NULL,
  PRIMARY KEY (`operationid`,`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=34 ;

--
-- Dumping data for table `vtiger_ws_operation_parameters`
--

INSERT INTO `vtiger_ws_operation_parameters` (`operationid`, `name`, `type`, `sequence`) VALUES
(1, 'accessKey', 'String', 2),
(1, 'username', 'String', 1),
(2, 'id', 'String', 1),
(3, 'element', 'encoded', 2),
(3, 'elementType', 'String', 1),
(4, 'element', 'encoded', 1),
(5, 'id', 'String', 1),
(6, 'elementType', 'String', 2),
(6, 'modifiedTime', 'DateTime', 1),
(7, 'query', 'String', 1),
(8, 'sessionName', 'String', 1),
(9, 'fieldTypeList', 'encoded', 1),
(10, 'username', 'String', 1),
(11, 'elementType', 'String', 1),
(13, 'accountName', 'String', 3),
(13, 'assignedTo', 'String', 2),
(13, 'avoidPotential', 'Boolean', 4),
(13, 'leadId', 'String', 1),
(13, 'potential', 'Encoded', 5),
(14, 'element', 'Encoded', 1),
(15, 'confirmPassword', 'String', 4),
(15, 'id', 'String', 1),
(15, 'newPassword', 'String', 3),
(15, 'oldPassword', 'String', 2),
(16, 'id', 'String', 1),
(16, 'newOwnerId', 'String', 2),
(18, 'alertid', 'string', 1),
(19, 'module', 'string', 1),
(20, 'record', 'string', 1),
(21, 'record', 'string', 1),
(22, 'filterid', 'string', 1),
(23, 'elements', 'encoded', 1),
(24, 'module', 'string', 1),
(24, 'record', 'string', 2),
(24, 'values', 'encoded', 3),
(25, 'module', 'string', 1),
(25, 'page', 'string', 3),
(25, 'syncToken', 'string', 2),
(26, 'module', 'string', 1),
(26, 'page', 'string', 3),
(26, 'query', 'string', 2),
(27, 'module', 'string', 1),
(27, 'page', 'string', 3),
(27, 'query', 'string', 2),
(28, 'synctype', 'string', 2),
(28, 'type', 'string', 1),
(29, 'key', 'string', 2),
(29, 'type', 'string', 1),
(30, 'key', 'string', 1),
(30, 'module', 'string', 2),
(30, 'token', 'string', 3),
(31, 'element', 'encoded', 2),
(31, 'key', 'string', 1),
(32, 'element', 'encoded', 2),
(32, 'key', 'string', 1),
(33, 'id', 'String', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_operation_seq`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_operation_seq` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_operation_seq`
--

INSERT INTO `vtiger_ws_operation_seq` (`id`) VALUES
(33);

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_referencetype`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_referencetype` (
  `fieldtypeid` int(19) NOT NULL,
  `type` varchar(25) NOT NULL,
  PRIMARY KEY (`fieldtypeid`,`type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vtiger_ws_referencetype`
--

INSERT INTO `vtiger_ws_referencetype` (`fieldtypeid`, `type`) VALUES
(20, 'Accounts'),
(21, 'Accounts'),
(22, 'Contacts'),
(23, 'Campaigns'),
(24, 'Accounts'),
(25, 'Vendors'),
(26, 'Potentials'),
(27, 'Quotes'),
(28, 'SalesOrder'),
(29, 'Vendors'),
(30, 'Users'),
(31, 'Campaigns'),
(31, 'Users'),
(32, 'Accounts'),
(32, 'Contacts'),
(32, 'Leads'),
(32, 'Users'),
(32, 'Vendors'),
(33, 'Products'),
(34, 'Accounts'),
(34, 'Campaigns'),
(34, 'HelpDesk'),
(34, 'Leads'),
(34, 'Potentials'),
(35, 'Users'),
(36, 'Accounts'),
(36, 'Contacts'),
(37, 'Currency'),
(38, 'DocumentFolders');

-- --------------------------------------------------------

--
-- Table structure for table `vtiger_ws_userauthtoken`
--

CREATE TABLE IF NOT EXISTS `vtiger_ws_userauthtoken` (
  `userid` int(19) NOT NULL,
  `token` varchar(36) NOT NULL,
  `expiretime` int(19) NOT NULL,
  PRIMARY KEY (`userid`,`expiretime`),
  UNIQUE KEY `userid_idx` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `vtiger_assets`
--
ALTER TABLE `vtiger_assets`
  ADD CONSTRAINT `fk_1_vtiger_assets` FOREIGN KEY (`assetsid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_pbxmanager_phonelookup`
--
ALTER TABLE `vtiger_pbxmanager_phonelookup`
  ADD CONSTRAINT `vtiger_pbxmanager_phonelookup_ibfk_1` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_senotesrel`
--
ALTER TABLE `vtiger_senotesrel`
  ADD CONSTRAINT `fk1_crmid` FOREIGN KEY (`crmid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

--
-- Constraints for table `vtiger_service`
--
ALTER TABLE `vtiger_service`
  ADD CONSTRAINT `fk_1_vtiger_service` FOREIGN KEY (`serviceid`) REFERENCES `vtiger_crmentity` (`crmid`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
