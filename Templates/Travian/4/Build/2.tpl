<div id="content" class="build gidRessources">
	<h1 class="titleInHeader"><?php echo $lang['build2']; ?> <span class="level"><?php echo $lang['level']." "; echo $village->resarray['f'.$id]; ?></span></h1>
	<div id="build" class="gid2">
		<div class="build_desc">
			<a href="#" onclick="return Travian.Game.iPopup(2,4, 'gid');" class="build_logo">
				<img class="building big white g2" src="img/x.gif" alt="<?php echo $lang['build2']; ?>">
			</a>
			<?php echo $lang['build2_desc']; ?>
        </div>
        <table cellpadding="1" cellspacing="1" id="build_value">
            <tbody>
                <tr>
                    <th><?php echo $lang['current_prod']; ?>:</th>
                    <td><b><?php echo $bid2[$village->resarray['f'.$id]]['prod']* SPEED; ?></b> <?php echo $lang['per_hour']; ?></td>
                </tr>
                <?php if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) { ?>
                <tr>
                    <th><?php echo $lang['next_prod']; ?> <?php echo $village->resarray['f'.$id]+1; ?>:</th>
                    <td><b><?php echo $bid2[$village->resarray['f'.$id]+1]['prod']* SPEED; ?></b> <?php echo $lang['per_hour']; ?></td>
                </tr>
                <?php } ?>
            </tbody>
        </table>
		<?php include("upgrade.tpl"); ?>
	</div>
</div>