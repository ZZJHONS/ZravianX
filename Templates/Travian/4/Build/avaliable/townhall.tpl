<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/townhall.tpl            ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Town Hall</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(24,4);" class="build_logo">
		<img class="building big white g24" src="img/x.gif" alt="Town Hall">
	</a>
	In the Town Hall you can hold pompous celebrations. Such a celebration increases your culture points.
</div>
<?php
	$_GET['bid'] = 24;
	include("availupgrade.tpl");
?>