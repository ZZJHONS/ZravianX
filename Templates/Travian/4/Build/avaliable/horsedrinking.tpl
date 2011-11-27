<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/horsedrinking.tpl       ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Horse Drinking Trough</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(41,4);" class="build_logo">
		<img class="building big white g41" src="img/x.gif" alt="Horse Drinking Trough">
	</a>
	The horse drinking trough cares for the well-being of your horses, lowers their crop consumption and makes their training faster.
</div>
<?php
	$_GET['bid'] = 41;
	include("availupgrade.tpl");
?>