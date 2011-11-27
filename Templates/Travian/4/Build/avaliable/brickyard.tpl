<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/brickyard.tpl           ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Brickyard</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(6,4);" class="build_logo">
		<img class="building big white g6" src="img/x.gif" alt="Brickyard">
	</a>
	Here clay is processed into bricks. Based on its level your Brickyard can increase your clay production up to 25 percent.
</div>
<?php
	$_GET['bid'] = 6;
	include("availupgrade.tpl");
?>