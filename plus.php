<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.08                                                  ##
##  Filename:      plus.php                                                    ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");
$start = $generator->pageLoadTimeStart();
if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF']);
}
else {
	$building->procBuild($_GET);
}

include ("Templates/head.tpl");
include ("Templates/body.tpl");

if(isset($_GET['id'])) {
$id = $_GET['id'];
} else {
$id = "";
}
if ($id == "") {
include("Templates/Plus/1.tpl");
}
if ($id == 2) {
include("Templates/Plus/2.tpl");
}
if ($id == 3) {
include("Templates/Plus/3.tpl");
}
if ($id == 4) {
include("Templates/Plus/4.tpl");
}
if ($id == 5) {
include("Templates/Plus/5.tpl");
}
if ($id == 7) {
include("Templates/Plus/7.tpl");
}
if ($id == 8) {
include("Templates/Plus/8.tpl");
}
if ($id == 9) {
include("Templates/Plus/9.tpl");
}
if ($id == 10) {
include("Templates/Plus/10.tpl");
}
if ($id == 11) {
include("Templates/Plus/11.tpl");
}
if ($id == 12) {
include("Templates/Plus/12.tpl");
}
if ($id == 13) {
include("Templates/Plus/13.tpl");
}
if ($id == 14) {
include("Templates/Plus/14.tpl");
}

include ("Templates/end.tpl");
?>