<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.01                                                  ##
##  Filename:      nachrichten.php                                             ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

$start = $generator->pageLoadTimeStart();
$message->procMessage($_POST);

include ("Templates/head.tpl");
include ("Templates/body.tpl");

if(isset($_GET['id']) && !isset($_GET['t'])) {
	$message->loadMessage($_GET['id']);
	include("Templates/Message/read.tpl");
}
else if(isset($_GET['t'])) {
	switch($_GET['t']) {
		case 1:
		if(isset($_GET['id'])) {
		$id = $_GET['id'];
		}
		include("Templates/Message/write.tpl");
		break;
		case 2:
		include("Templates/Message/sent.tpl");
		break;
		case 3:
		if($session->plus) {
			include("Templates/Message/archive.tpl");
		}
		break;
		case 4:
		if($session->plus) {
			$message->loadNotes();
			include("Templates/Message/notes.tpl");
		}
		break;
		default:
		include("Templates/Message/inbox.tpl");
		break;
	}
}
else {
	include("Templates/Message/inbox.tpl");
}

include ("Templates/end.tpl");
?>