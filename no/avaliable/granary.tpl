<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/granary.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Granary</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(11,4);" class="build_logo">
		<img class="building big white g11" src="img/x.gif" alt="Granary">
	</a>
	In the granary, the crop produced on your farms is stored. By increasing its level, you increase the granary’s capacity.
</div>
<?php
	$_GET['bid'] = 11;
	include("availupgrade.tpl");
?>