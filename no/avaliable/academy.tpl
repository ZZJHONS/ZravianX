<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/academy.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Academy</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(22,4);" class="build_logo">
		<img class="building big white g22" src="img/x.gif" alt="Academy">
	</a>
	In the academy new unit types can be researched. By increasing its level you can order the research of better units.
</div>
<?php
	$_GET['bid'] = 22;
	include("Templates/Travian/4/Build/avaliable/availupgrade.tpl");
?>