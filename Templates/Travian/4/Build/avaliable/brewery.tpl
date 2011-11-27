<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/brewery.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Brewery</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(35,4);" class="build_logo">
		<img class="building big white g35" src="img/x.gif" alt="Brewery">
	</a>
	In the Teuton’s brewery mead is brewed, the soldiers drink to give themselves Dutch courage before battle. The higher the level of the brewery, the greater is the attack bonus. The mead-festivals always last 72 hours.
</div>
<?php
	$_GET['bid'] = 35;
	include("availupgrade.tpl");
?>