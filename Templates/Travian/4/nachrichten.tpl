<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.23                                                  ##
##  Filename:      Templates/Travian/4/dorf1.tpl                               ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

$messageactive = "active";
$filecontent = "messages";
include("Templates/Travian/4/header.tpl");
?>
<div id="content" class="messages">
<?php
include ("Templates/Travian/4/Message/menu.tpl");
if(isset($_GET['id']) && !isset($_GET['t'])) {
	$message->loadMessage($_GET['id']);
	include("Templates/Travian/4/Message/read.tpl");
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
			include("Templates/Travian/4/Message/inbox.tpl");
			break;
	}
} else {
	include("Templates/Travian/4/Message/inbox.tpl");
}
?>
</div>
<?php include("Templates/Travian/4/foot.tpl"); ?>