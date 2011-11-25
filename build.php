<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.24                                                  ##
##  Filename:      build.php                                                   ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");
include("GameEngine/Units.php");
if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF'].(isset($_GET['id'])?'?id='.$_GET['id']:(isset($_GET['gid'])?'?gid='.$_GET['gid']:'')));
}
$start = $generator->pageLoadTimeStart();
$alliance->procAlliForm($_POST);
$technology->procTech($_POST);
$market->procMarket($_POST);
if(isset($_GET['gid'])) {
	$_GET['id'] = strval($building->getTypeField($_GET['gid']));
} else if(isset($_POST['id'])) {
	$_GET['id'] = $_POST['id'];
}
if(isset($_POST['t'])){
	$_GET['t'] = $_POST['t'];
}
if(isset($_GET['id'])) {
	if (!ctype_digit($_GET['id'])){
        $_GET['id'] = "1";
    }
	if($village->resarray['f'.$_GET['id'].'t'] == 17) {
		$market->procRemove($_GET);
	}
	if($village->resarray['f'.$_GET['id'].'t'] == 18) {
		$alliance->procAlliance($_GET);
	}
	if($village->resarray['f'.$_GET['id'].'t'] == 12 || $village->resarray['f'.$_GET['id'].'t'] == 13 || $village->resarray['f'.$_GET['id'].'t'] == 22) {
		$technology->procTechno($_GET);
	}
}
if (isset($_POST['a']) == 533374 && isset($_POST['id']) == 39){  
	$units->Settlers($_POST);
}
if(TRAVIAN4 == true){
	include("Templates/Travian/4/build.tpl");
} else {
	include("Templates/Travian/3.6/build.tpl");
}
?>