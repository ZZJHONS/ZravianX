<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.06                                                  ##
##  Filename:      install/include/wdata.php                                   ##
##  Developed by:  Dzoki & Dixie                                               ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include 'database.php';
$xyas=(1+(2*WORLD_MAX));
for($i=0; $i<$xyas; $i++){
	$y=(WORLD_MAX-$i);
	for($j=0; $j<$xyas; $j++){
		$x=((WORLD_MAX*-1)+$j);
		# Choose a field type
		$rand=rand(1, 1000);
		if("10" >= $rand){
			$typ='1';
			$otype='0';
		}elseif("90" >= $rand){
			$typ='2';
			$otype='0';
		}elseif("400" >= $rand){
			$typ='3';
			$otype='0';
		}elseif("480" >= $rand){
			$typ='4';
			$otype='0';
		}elseif("560" >= $rand){
			$typ='5';
			$otype='0';
		}elseif("570" >= $rand){
			$typ='6';
			$otype='0';
		}elseif("600" >= $rand){
			$typ='7';
			$otype='0';
		}elseif("630" >= $rand){
			$typ='8';
			$otype='0';
		}elseif("660" >= $rand){
			$typ='9';
			$otype='0';
		}elseif("740" >= $rand){
			$typ='10';
			$otype='0';
		}elseif("820" >= $rand){
			$typ='11';
			$otype='0';
		}elseif("900" >= $rand){
			$typ='12';
			$otype='0';
		}elseif("908" >= $rand){
			$typ='0';
			$otype='1';
		}elseif("916" >= $rand){
			$typ='0';
			$otype='2';
		}elseif("924" >= $rand){
			$typ='0';
			$otype='3';
		}elseif("932" >= $rand){
			$typ='0';
			$otype='4';
		}elseif("940" >= $rand){
			$typ='0';
			$otype='5';
		}elseif("948" >= $rand){
			$typ='0';
			$otype='6';
		}elseif("956" >= $rand){
			$typ='0';
			$otype='7';
		}elseif("964" >= $rand){
			$typ='0';
			$otype='8';
		}elseif("972" >= $rand){
			$typ='0';
			$otype='9';
		}elseif("980" >= $rand){
			$typ='0';
			$otype='10';
		}elseif("988" >= $rand){
			$typ='0';
			$otype='11';
		}else{
			$typ='0';
			$otype='12';
		}
		# Image pick
		if($otype=='0'){
			$image="t".rand(0,9)."";
		}else{
			$image="o".$otype."";
		}
		# into database
		$q = "INSERT into ".TB_PREFIX."wdata values (0,'".$typ."','".$otype."','".$x."','".$y."',0,'".$image."')";
		$database->query($q);
	}
}
header('Location: ../index.php?s=4');
?>