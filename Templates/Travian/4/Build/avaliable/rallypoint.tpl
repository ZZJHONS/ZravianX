<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/rallypoint.tpl          ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Rally point</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(16,4);" class="build_logo">
		<img class="building big white g16" src="img/x.gif" alt="Rally point">
	</a>
	Your village's troops meet here. From here you can send them out to conquer, raid or reinforce other villages..
</div>
<?php
	$_GET['bid'] = 16;
	include("availupgrade.tpl");
?>