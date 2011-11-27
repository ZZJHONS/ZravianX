<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      Templates/Build/7.tpl                                       ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div id="build" class="gid7">
	<a href="#" onClick="return Popup(7,4);" class="build_logo">
		<img class="building g7" src="img/x.gif" alt="<?php echo $lang['build7']; ?>" title="<?php echo $lang['build7']; ?>" />
	</a>
	<h1><?php echo $lang['build7']; ?> <span class="level"><?php echo $lang['level']." "; echo $village->resarray['f'.$id]; ?></span></h1>
	<p class="build_desc"><?php echo $lang['build7_desc']; ?></p>
	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th><?php echo $lang['current_iron_bonus']; ?>:</th>
			<td><b><?php echo $bid7[$village->resarray['f'.$id]]['attri']; ?></b> <?php echo $lang['percent']; ?></td>
		</tr>
		<?php if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) { ?>
		<tr>
			<th><?php echo $lang['iron_bonus_level']." ".$village->resarray['f'.$id]+1; ?>:</th>
			<td><b><?php echo $bid7[$village->resarray['f'.$id]+1]['attri']; ?></b> <?php echo $lang['percent']; ?></td>
		</tr>
		<?php } ?>
    </table>
	<?php include("upgrade.tpl"); ?>
</div>