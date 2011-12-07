<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.06                                                  ##
##  Filename:      install/include/database.php                                ##
##  Developed by:  Dzoki & Dixie                                               ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include 'constant.php';
class MYSQLi_DB {
	var $connection;
	function MYSQLi_DB(){
		$this->connection = mysqli_connect(SQL_SERVER, SQL_USER, SQL_PASS, SQL_DB) or die(mysqli_error());
	}
	function query($query) {
		return $this->connection->query($query);
	}
};
class MYSQL_DB {
	var $connection;
	function MYSQL_DB(){
		$this->connection = mysql_connect(SQL_SERVER, SQL_USER, SQL_PASS) or die(mysql_error());
		mysql_select_db(SQL_DB, $this->connection) or die(mysql_error());
	}
	function mysql_exec_batch ($p_query, $p_transaction_safe = true){
		if($p_transaction_safe){
			$p_query = 'START TRANSACTION;'.$p_query.'; COMMIT;';
		};
		$query_split = preg_split ("/[;]+/", $p_query);
		foreach($query_split as $command_line){
			$command_line = trim($command_line);
			if($command_line != ''){
				$query_result = mysql_query($command_line);
				if($query_result == 0){
					break;
				};
			};
		};
		return $query_result;
	}
	function query($query){
		return mysql_query($query, $this->connection);
	}
};
if(DB_TYPE){
	$database = new MYSQLi_DB;
}else{
	$database = new MYSQL_DB;
}
?>