<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/residence.tpl           ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Residence</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(25,4);" class="build_logo">
		<img class="building big white g25" src="img/x.gif" alt="Residence">
	</a>
	The residence is a small palace, where the king or queen lives when (s)he visits the village. The residence protects the village against enemies who want to conquer it.
</div>
<?php
	$_GET['bid'] = 25;
	include("availupgrade.tpl");
?>