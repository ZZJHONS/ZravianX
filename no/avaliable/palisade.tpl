<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/palisade.tpl            ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Palisade</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(33,4);" class="build_logo">
		<img class="building big white g33" src="img/x.gif" alt="Palisade">
	</a>
	By building a Palisade you can protect your village against the barbarian hordes of your enemies. A higher level Palisade will give your troops a higher defence bonus.
</div>
<?php
	$_GET['bid'] = 33;
	include("availupgrade.tpl");
?>