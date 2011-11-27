<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.26                                                  ##
##  Filename:      Templates/Build/2.tpl                                       ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div id="build" class="gid2">
	<a href="#" onClick="return Popup(2,4);" class="build_logo">
		<img class="building g2" src="img/x.gif" alt="<?php echo $lang['build2']; ?>" title="<?php echo $lang['build2']; ?>" />
	</a>
	<h1><?php echo $lang['build2']; ?> <span class="level"><?php echo $lang['level']." "; echo $village->resarray['f'.$id]; ?></span></h1>
	<p class="build_desc"><?php echo $lang['build2_desc']; ?></p>
	<table cellpadding="1" cellspacing="1" id="build_value">
		<tr>
			<th><?php echo $lang['current_prod']; ?>:</th>
			<td><b><?php echo $bid2[$village->resarray['f'.$id]]['prod']* SPEED; ?></b> <?php echo $lang['per_hour']; ?></td>
		</tr>
		<?php if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) { ?>
		<tr>
			<th><?php echo $lang['next_prod']." ".$village->resarray['f'.$id]+1; ?>:</th>
			<td><b><?php echo $bid2[$village->resarray['f'.$id]+1]['prod']* SPEED; ?></b> <?php echo $lang['per_hour']; ?></td>
		</tr>
		<?php } ?>
    </table>
	<?php include("upgrade.tpl"); ?>
</div>