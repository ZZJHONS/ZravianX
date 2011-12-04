<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/grainmill.tpl           ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Grain Mill</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(8,4);" class="build_logo">
		<img class="building big white g8" src="img/x.gif" alt="Grain Mill">
	</a>
	Here your grain is milled in order to produce flour. Based on its level your grain mill can increase your crop production by up to 25 percent.
</div>
<?php
	$_GET['bid'] = 8;
	include("availupgrade.tpl");
?>