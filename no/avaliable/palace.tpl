<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/palace.tpl              ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Palace</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(26,4);" class="build_logo">
		<img class="building big white g26" src="img/x.gif" alt="Palace">
	</a>
	The king or queen of the empire lives in the palace. Only one palace can exist in your realm at a time. You need a palace in order to proclaim a village to be your capital.
</div>
<?php
	$_GET['bid'] = 26;
	include("availupgrade.tpl");
?>