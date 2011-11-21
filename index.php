<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.20                                                  ##
##  Filename:      index.php                                                   ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

	if(!file_exists('GameEngine/config.php')) {
		header("Location: install/");
	}

	include ("GameEngine/config.php");
	
	if(INDEX == false){
		include "Templates/Travian/3.6/index.tpl";
	} else if (INDEX == true){
		include "Templates/Travian/4/index.tpl";
	} else {
		include "Templates/Travian/3.6/index.tpl";
	}
?>