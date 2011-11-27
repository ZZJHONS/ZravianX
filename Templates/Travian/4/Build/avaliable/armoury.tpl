<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/armoury.tpl             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Armoury</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(13,4);" class="build_logo">
		<img class="building big white g13" src="img/x.gif" alt="Armoury">
	</a>
	In the armoury's melting furnaces your warrior's armour is enhanced. By increasing its level you can order the fabrication of even better armour.
</div>
<?php
	$_GET['bid'] = 13;
	include("availupgrade.tpl");
?>