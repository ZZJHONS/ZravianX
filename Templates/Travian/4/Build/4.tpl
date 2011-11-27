<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      Templates/Travian/4/Build/4.tpl                             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div id="content" class="build gidRessources">
	<h1 class="titleInHeader"><?php echo $lang['build4']; ?> <span class="level"><?php echo $lang['level']." "; echo $village->resarray['f'.$id]; ?></span></h1>
	<div id="build" class="gid4">
		<div class="build_desc">
			<a href="#" onclick="return Travian.Game.iPopup(4,4, 'gid');" class="build_logo">
				<img class="building big white g4" src="img/x.gif" alt="<?php echo $lang['build4']; ?>">
			</a>
			<?php echo $lang['build4_desc']; ?>
        </div>
        <table cellpadding="1" cellspacing="1" id="build_value">
            <tbody>
                <tr>
                    <th><?php echo $lang['current_prod']; ?>:</th>
                    <td><b><?php echo $bid4[$village->resarray['f'.$id]]['prod']* SPEED; ?></b> <?php echo $lang['per_hour']; ?></td>
                </tr>
                <?php if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) { ?>
                <tr>
                    <th><?php echo $lang['next_prod']; ?> <?php echo $village->resarray['f'.$id]+1; ?>:</th>
                    <td><b><?php echo $bid4[$village->resarray['f'.$id]+1]['prod']* SPEED; ?></b> <?php echo $lang['per_hour']; ?></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
		<?php include("upgrade.tpl"); ?>
	</div>
</div>