<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/sawmill.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Sawmill</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(5,4);" class="build_logo">
		<img class="building big white g5" src="img/x.gif" alt="Sawmill">
	</a>
	Here lumber delivered by your woodcutters is processed. Based on its level your Sawmill can increase your lumber production up to 25 percent.
</div>
<?php
	$_GET['bid'] = 5;
	include("availupgrade.tpl");
?>