<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/greatstable.tpl         ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Great Stable</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(30,4);" class="build_logo">
		<img class="building big white g30" src="img/x.gif" alt="Great Stable">
	</a>
	In the great stable cavalry is trained, albeit at triple the cost of a standard unit. The higher its level the faster the troops are trained.
</div>
<?php
	$_GET['bid'] = 30;
	include("availupgrade.tpl");
?>