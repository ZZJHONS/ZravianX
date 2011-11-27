<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/greatbarracks.tpl       ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Great Barracks</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(29,4);" class="build_logo">
		<img class="building big white g29" src="img/x.gif" alt="">
	</a>
	In the great barracks infantry can be trained, albeit at triple the cost of a standard unit. The higher its level the faster the troops are trained.
</div>
<?php
	$_GET['bid'] = 29;
	include("availupgrade.tpl");
?>