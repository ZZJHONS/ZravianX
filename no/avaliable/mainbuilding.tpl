<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/mainbuilding.tpl        ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Main Building</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(15,4);" class="build_logo">
		<img class="building big white g15" src="img/x.gif" alt="Main Building">
	</a>
	In the main building the village's master builders live. The higher its level the faster your master builders complete the construction of new buildings.
</div>
<?php
	$_GET['bid'] = 15;
	include("availupgrade.tpl");
?>