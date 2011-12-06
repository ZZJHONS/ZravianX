<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.20                                                  ##
##  Filename:      Templates/Travian/4/menu.tpl                                ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div id="side_navi">
	<ul>
		<li class=""><a href="index.php"><?php echo HOME; ?></a></li>
        <li class="<?php echo $logactive; ?>"><a href="login.php" title="<?php echo LOGIN; ?>"><?php echo LOGIN; ?></a></li>
        <li class="<?php echo $regactive; ?>"><a href="anmelden.php" title="<?php echo REG; ?>"><?php echo REG; ?></a></li>
		<li class=""><a href="<?php echo FORUM_LINK; ?>" target="_blank"><?php echo FORUM; ?></a></li>
        <li class="support"><a href="support.php"><?php echo SUPPORT; ?></a></li>
    </ul>
</div>
<div class="clear"></div>