<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.07                                                  ##
##  Filename:      finishmovement.php                                          ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include_once ('GameEngine/Session.php'); 
include ("GameEngine/config.php");

mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS); 
mysql_select_db(SQL_DB);

if($session->access < ADMIN) die('<font color="red">Access Denied: You are not administrator</font>');

$time = time() + 3; 
$sql = "UPDATE ".TB_PREFIX."movement SET endtime = $time"; 
$query= mysql_query($sql) or die ("Have an error."); 
?>
<form method="post" action="finishmovement.php" enctype="multipart/form-data"> 
    Reset movements: <input type="submit" name="button" id="button" value="Reset"> 
</form>