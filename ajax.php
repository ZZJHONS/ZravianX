<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.04                                                  ##
##  Filename:      ajax.php                                                    ##
##  Developed by:  Dzoki                                                       ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include_once 'GameEngine/config.php';
if(ZRAVIANX4 == true){
	include("Templates/Travian/4/ajax.tpl");
} else {
	include("Templates/Travian/3.6/ajax.tpl");
}
?>