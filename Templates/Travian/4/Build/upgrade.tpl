<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      Templates/Travian/4/Build/upgrade.tpl                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div id="contract" class="contractWrapper">
<?php
$bindicate = $building->canBuild($id,$village->resarray['f'.$id.'t']);
if($bindicate == 1) {
	echo "<p><span class=\"none\">".$lang['build_max_level']."</span></p>";
} else if($bindicate == 10) {
	echo "<p><span class=\"none\">".$lang['build_max_level_construction']."</span></p>";
} else if($bindicate == 11) {
	echo "<p><span class=\"none\">".$lang['build_being_demolished']."</span></p>";
} else {
	$loopsame = ($building->isCurrent($id) || $building->isLoop($id))?1:0;
	$doublebuild = ($building->isCurrent($id) && $building->isLoop($id))?1:0;
	$uprequire = $building->resourceRequired($id,$village->resarray['f'.$id.'t'],($loopsame > 0 ? 2:1)+$doublebuild);
?>
    <div class="contractText">
        <b><?php echo $lang['costs']; ?></b> <?php echo $lang['for_up_level']; ?> <?php echo $village->resarray['f'.$id]+($loopsame > 0 ? 2:1)+$doublebuild; ?>:
    </div>
	<div class="contractCosts">
    	<div class="showCosts">
    		<span class="resources r1"><img class="r1" src="img/x.gif" alt="<?php echo $lang['res1']; ?>" title="<?php echo $lang['res1']; ?>" /><?php echo $uprequire['wood']; ?></span><span class="resources r2"><img class="r2" src="img/x.gif" alt="<?php echo $lang['res2']; ?>" title="<?php echo $lang['res2']; ?>" /><?php echo $uprequire['clay']; ?></span><span class="resources r3"><img class="r3" src="img/x.gif" alt="<?php echo $lang['res3']; ?>" title="<?php echo $lang['res3']; ?>" /><?php echo $uprequire['iron']; ?></span><span class="resources r4"><img class="r4" src="img/x.gif" alt="<?php echo $lang['res3']; ?>" title="<?php echo $lang['res3']; ?>" /><?php echo $uprequire['crop']; ?></span><span class="resources r5"><img class="r5" src="img/x.gif" alt="<?php echo $lang['consumption']; ?>" title="<?php echo $lang['consumption']; ?>" /><?php echo $uprequire['pop']; ?></span><div class="clear"></div><span class="clocks"><img class="clock" src="img/x.gif" alt="<?php echo $lang['duration']; ?>" title="<?php echo $lang['duration']; ?>" /><?php echo $generator->getTimeFormat($uprequire['time']); ?></span><?php if($session->userinfo['gold'] >= 3 && $building->getTypeLevel(17) >= 1) {echo "<div class=\"clear\"></div><span class=\"npcs\"><a href=\"build.php?gid=17&t=3&r1=".$uprequire['wood']."&r2=".$uprequire['clay']."&r3=".$uprequire['iron']."&r4=".$uprequire['crop']."\" title=\"".$lang['npc_trade']."\"><img class=\"npc\" src=\"img/x.gif\" alt=\"".$lang['npc_trade']."\" /></a></span>";} ?>
            <div class="clear"></div>
        </div>
    </div>
	<div class="contractLink">
		<?php
            if($bindicate == 2) {
                    echo "<span class=\"none\">".$lang['worker_already_work'].".</span>";
                } else if($bindicate == 3) {
                    echo "<span class=\"none\">".$lang['worker_already_work'].". (".$lang['waiting_loop'].")</span>";
                } else if($bindicate == 4) {
                    echo "<span class=\"none\">".$lang['no_enough_food'].". ".$lang['expand_res4'].".</span>";
                } else if($bindicate == 5) {
                    echo "<span class=\"none\">".$lang['upgrade']." ".$lang['build10'].".</span>";
                } else if($bindicate == 6) {
                    echo "<span class=\"none\">".$lang['upgrade']." ".$lang['build11'].".</span>";
                } else if($bindicate == 7) {
                    $neededtime = $building->calculateAvaliable($id,$village->resarray['f'.$id.'t'],($loopsame > 0 ? 2:1));
                    echo "<span class=\"none\">".$lang['enough_resources']." ".$neededtime[0]." ".$lang['at']."  ".$neededtime[1]."</span>";
                } else if($bindicate == 8) {
		?>
        <button type="button" value="<?php echo $lang['up_to_level']; ?> <?php echo $village->resarray['f'.$id]+1; ?>" class="build" onclick="window.location.href = 'dorf<?php if($id <= 18) {echo "1";} else {echo "2";} ?>.php?a=<?php echo $id."&c=".$session->checker; ?>'; return false;">
            <div class="button-container">
                <div class="button-position">
                    <div class="btl">
                        <div class="btr">
                            <div class="btc"></div>
                        </div>
                    </div>
                    <div class="bml">
                        <div class="bmr">
                            <div class="bmc"></div>
                        </div>
                    </div>
                    <div class="bbl">
                        <div class="bbr">
                            <div class="bbc"></div>
                        </div>
                    </div>
                </div>
                <div class="button-contents"><?php echo $lang['up_to_level']; ?> <?php echo $village->resarray['f'.$id]+1; ?></div>
            </div>
        </button>
        <?php } else if($bindicate == 9) { ?>
        <button type="button" value="<?php echo $lang['up_to_level']; ?> <?php echo $village->resarray['f'.$id]+($loopsame > 0 ? 2:1); ?>" class="build" onclick="window.location.href = 'dorf<?php if($id <= 18) {echo "1";} else {echo "2";} ?>.php?a=<?php echo $id."&c=".$session->checker; ?>'; return false;">
            <div class="button-container">
                <div class="button-position">
                    <div class="btl">
                        <div class="btr">
                            <div class="btc"></div>
                        </div>
                    </div>
                    <div class="bml">
                        <div class="bmr">
                            <div class="bmc"></div>
                        </div>
                    </div>
                    <div class="bbl">
                        <div class="bbr">
                            <div class="bbc"></div>
                        </div>
                    </div>
                </div>
                <div class="button-contents"><?php echo $lang['up_to_level']; ?> <?php echo $village->resarray['f'.$id]+($loopsame > 0 ? 2:1); ?></div>
            </div>
        </button>
        <span class="none">(<?php echo $lang['waiting_loop']; ?>)</span>
    <?php } } ?>
    </div>
</div>