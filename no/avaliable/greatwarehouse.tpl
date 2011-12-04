<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/greatwarehouse.tpl      ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Great Warehouse</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(38,4);" class="build_logo">
		<img class="building big white g38" src="img/x.gif" alt="Great Warehouse">
	</a>
	Wood, clay and iron are stored in the warehouse. The great warehouse offers you more space and keeps your goods drier and safer than the normal one.
</div>
<?php
	$_GET['bid'] = 38;
	include("availupgrade.tpl");
?>