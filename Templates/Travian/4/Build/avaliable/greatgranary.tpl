<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/greatgranary.tpl        ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Great Granary</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(39,4);" class="build_logo">
		<img class="building big white g39" src="img/x.gif" alt="Great Granary">
	</a>
	Crop produced by your farms is stored in the granary. The great granary offers you more space and keeps your crops drier and safer than the normal one.
</div>
<?php
	$_GET['bid'] = 39;
	include("availupgrade.tpl");
?>