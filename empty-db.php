<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.02                                                  ##
##  Filename:      empty-db.php                                                ##
##  Developed by:  Dzoki                                                       ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include_once ('GameEngine/Session.php'); 
include_once ('GameEngine/config.php'); 

if($session->access < ADMIN) 
	die('Access Denied: You are not administrator');


# Connect to database 

mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS) or die('Could not connect: '.mysql_error()); 
mysql_select_db(SQL_DB) or die('Could not connect to the database '.SQL_DB.' (ERROR: '.mysql_error().')'); 


# Tables (you can add more if you want) 

$table1 = TB_PREFIX.'movement'; 
$table2 = TB_PREFIX.'attacks'; 


# Preparing queries that will be executed 
 
$query1 = 'TRUNCATE `'.$table1.'`'; 
$query2 = 'TRUNCATE `'.$table2.'`'; 


# Let's delete that shit! 

mysql_query($query1); 
echo 'Table '.$table1.' is now empty!'; 
mysql_query($query2); 
echo 'Table '.$table2.' is now empty!'; 

echo '<br />Done...'; 

mysql_close(); 
?>