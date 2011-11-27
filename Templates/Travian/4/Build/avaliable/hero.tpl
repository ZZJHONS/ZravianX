<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/hero.tpl                ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Hero's Mansion</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(37,4);" class="build_logo">
		<img class="building big white g37" src="img/x.gif" alt="Hero's Mansion">
	</a>
	In the Hero's Mansion you can train a hero and starting with building level 10 occupy oases in your surrounding area.
</div>
<?php
	$_GET['bid'] = 37;
	include("availupgrade.tpl");
?>