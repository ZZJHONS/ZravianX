<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/marketplace.tpl         ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Marketplace</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(17,4);" class="build_logo">
		<img class="building big white g17" src="img/x.gif" alt="Marketplace">
	</a>
	At the marketplace you can trade resources with other players. The higher its level, the more resources can be transported at the same time.
</div>
<?php
	$_GET['bid'] = 17;
	include("availupgrade.tpl");
?>