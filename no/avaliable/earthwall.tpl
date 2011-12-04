<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/earthwall.tpl           ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Earth Wall</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(32,4);" class="build_logo">
		<img class="building big white g32" src="img/x.gif" alt="Earth Wall">
	</a>
	By building an Earth Wall you can protect your village against the barbarian hordes of your enemies. A higher level Earth Wall will give your troops a higher defence bonus.
</div>
<?php
	$_GET['bid'] = 32;
	include("availupgrade.tpl");
?>