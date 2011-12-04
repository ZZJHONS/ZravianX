<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/tsquare.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Tournament Square</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(14,4);" class="build_logo">
		<img class="building big white g14" src="img/x.gif" alt="Tournament Square">
	</a>
	At the tournament square your troops can train to increase their stamina. The further the building is upgraded the faster your troops are beyond a minimum distance of 30 squares.
</div>
<?php
	$_GET['bid'] = 14;
	include("availupgrade.tpl");
?>