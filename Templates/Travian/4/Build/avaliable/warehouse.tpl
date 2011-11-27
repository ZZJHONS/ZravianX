<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/warehouse.tpl           ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Warehouse</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(10,4);" class="build_logo">
		<img class="building big white g10" src="img/x.gif" alt="Warehouse">
	</a>
	In your warehouse the resources lumber, clay and iron are stored. By increasing its level you increase your warehouse's capacity.
</div>
<?php
	$_GET['bid'] = 10;
	include("availupgrade.tpl");
?>