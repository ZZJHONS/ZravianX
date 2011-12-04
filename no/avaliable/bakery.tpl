<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/bakery.tpl              ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Bakery</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(9,4);" class="build_logo">
		<img class="building big white g9" src="img/x.gif" alt="Bakery">
	</a>
	Here the flour produced in your mill is used to bake bread. In conjunction with the grain mill the increase in crop production can go up to 50 percent.
</div>
<?php
	$_GET['bid'] = 9;
	include("availupgrade.tpl");
?>