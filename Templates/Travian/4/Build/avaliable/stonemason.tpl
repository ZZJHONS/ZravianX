<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/stonemason.tpl          ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Stonemason's Lodge</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(34,4);" class="build_logo">
		<img class="building big white g34" src="img/x.gif" alt="Stonemason's Lodge">
	</a>
	The stonemason's lodge is an expert in cutting stone. The further the building is extended the higher the stability of the village's buildings.
</div>
<?php
	$_GET['bid'] = 34;
	include("availupgrade.tpl");
?>