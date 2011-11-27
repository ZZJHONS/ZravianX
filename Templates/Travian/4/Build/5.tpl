<div id="content" class="build">
	<h1 class="titleInHeader"><?php echo $lang['build5']; ?> <span class="level"><?php echo $lang['level']." "; echo $village->resarray['f'.$id]; ?></span></h1>
	<div id="build" class="gid5">
		<div class="build_desc">
			<a href="#" onclick="return Travian.Game.iPopup(5,4, 'gid');" class="build_logo">
				<img class="building big white g5" src="img/x.gif" alt="<?php echo $lang['build5']; ?>">
			</a>
			<?php echo $lang['build5_desc']; ?>
        </div>
        <table cellpadding="1" cellspacing="1" id="build_value">
            <tr>
                <th><?php echo $lang['current_wood_bonus']; ?>:</th>
                <td><b><?php echo $bid5[$village->resarray['f'.$id]]['attri']; ?></b> <?php echo $lang['percent']; ?></td>
            </tr>
            <?php if(!$building->isMax($village->resarray['f'.$id.'t'],$id)) { ?>
            <tr>
                <th><?php echo $lang['wood_bonus_level']; ?> <?php echo $village->resarray['f'.$id]+1; ?>:</th>
                <td><b><?php echo $bid5[$village->resarray['f'.$id]+1]['attri']; ?></b> <?php echo $lang['percent']; ?></td>
            </tr>
            <?php } else {echo "<tr><th></th><td></td></tr>";} ?>
        </table>
		<?php include("upgrade.tpl"); ?>
	<?php if($bindicate >= 2 or $bindicate >= 9){echo "</div>";} ?>
</div>