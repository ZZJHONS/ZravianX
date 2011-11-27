<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/crany.tpl               ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Cranny</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(23,4);" class="build_logo">
		<img class="building big white g23" src="img/x.gif" alt="Cranny">
	</a>
	The cranny is used to hide some of your resources when the village is attacked. These resources cannot be stolen.
</div>
<?php
	$_GET['bid'] = 23;
	include("availupgrade.tpl");
?>