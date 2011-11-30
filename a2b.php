<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.30                                                  ##
##  Filename:      a2b.php                                                     ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");
include("GameEngine/Units.php");

$start = $generator->pageLoadTimeStart();
if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF']);
}
else {
$building->procBuild($_GET);
}

if(isset($_GET['id'])) {
	$id = $_GET['id'];
}
if(isset($_GET['w'])) {
	$w = $_GET['w'];
}
if(isset($_GET['r'])) {
	$r = $_GET['r'];
}
	$process = $units->procUnits($_POST);	

include ("Templates/head.tpl");
include ("Templates/body.tpl");
?>
<div id="content"  class="a2b">
<?php 
if(!empty($id)){
	include("Templates/a2b/newdorf.tpl");
}
else if (isset($w)){
	$enforce=$database->getEnforceArray($w,0);
	if($enforce['vref']==$village->wid){
		$to = $database->getVillage($enforce['from']); $ckey=$w;
		include("Templates/a2b/sendback_".$database->getUserField($to['owner'],'tribe',0).".tpl");
	} else { 
		include("Templates/a2b/units_".$session->tribe.".tpl");
		include("Templates/a2b/search.tpl");
	}
} else if (isset($r)){
	$enforce=$database->getEnforceArray($r,0);
	if($enforce['from']==$village->wid){
		$to = $database->getVillage($enforce['from']); $ckey=$r;
		include("Templates/a2b/sendback_".$database->getUserField($to['owner'],'tribe',0).".tpl");
	} else { 
		include("Templates/a2b/units_".$session->tribe.".tpl");
		include("Templates/a2b/search.tpl");
	}
} else {
	if (isset($process['0'])){
		$coor = $database->getCoor($process['0']);
		if($session->tribe == 5){
			include("Templates/a2b/attack_5.tpl");
		} else {
			include("Templates/a2b/attack.tpl");
		}
	}else{
		include("Templates/a2b/units_".$session->tribe.".tpl");
		include("Templates/a2b/search.tpl");
	}
}
include ("Templates/end.tpl");
?>