<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/barracks.tpl            ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Barracks</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(19,4);" class="build_logo">
		<img class="building big white g19" src="img/x.gif" alt="Barracks">
	</a>
	In the barracks infantry can be trained. The higher its level the faster the troops are trained.
</div>
<?php
	$_GET['bid'] = 19;
	include("availupgrade.tpl");
?>