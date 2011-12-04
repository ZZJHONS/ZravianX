<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/greatworkshop.tpl       ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Great Workshop</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(42,4);" class="build_logo">
		<img class="building big white g42" src="img/x.gif" alt="Great Workshop">
	</a>
	In the great workshop siege engines like catapults and rams can be built, albeit at triple the cost of a standard unit. The higher its level the faster units are produced.
</div>
<?php
	$_GET['bid'] = 42;
	include("availupgrade.tpl");
?>