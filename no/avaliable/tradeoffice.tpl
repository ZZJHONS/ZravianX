<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      TEmplates/Travian/4/Build/avaliable/tradeoffice.tpl         ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<h2>Trade Office</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(28,4);" class="build_logo">
		<img class="building big white g28" src="img/x.gif" alt="Trade Office">
	</a>
	In the trade office the merchants' carts get improved and equipped with powerful horses. The higher its level the more your merchants are able to carry.
</div>
<?php
	$_GET['bid'] = 28;
	include("availupgrade.tpl");
?>