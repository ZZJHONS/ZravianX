<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/trapper.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Trapper</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(36,4);" class="build_logo">
		<img class="building big white g36" src="img/x.gif" alt="Trapper">
	</a>
	The Trapper protects your village with well hidden traps. Enemies can be imprisoned and won't be able to harm your village anymore.
</div>
<?php
	$_GET['bid'] = 36;
	include("availupgrade.tpl");
?>