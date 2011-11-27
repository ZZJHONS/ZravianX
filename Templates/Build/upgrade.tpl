<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.27                                                  ##
##  Filename:      Templates/Build/upgrade.tpl                                 ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

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
<p id="contract">
    <?php echo "<b>".$lang['costs']."</b> ".$lang['for_up_level']." ".$village->resarray['f'.$id]+($loopsame > 0 ? 2:1)+$doublebuild; ?>:
    <br />
    <img class="r1" src="img/x.gif" alt="<?php echo $lang['res1']; ?>" title="<?php echo $lang['res1']; ?>" /><span class="little_res"><?php echo $uprequire['wood']; ?></span> | <img class="r2" src="img/x.gif" alt="<?php echo $lang['res2']; ?>" title="<?php echo $lang['res2']; ?>" /><span class="little_res"><?php echo $uprequire['clay']; ?></span> | <img class="r3" src="img/x.gif" alt="<?php echo $lang['res3']; ?>" title="<?php echo $lang['res3']; ?>" /><span class="little_res"><?php echo $uprequire['iron']; ?></span> | <img class="r4" src="img/x.gif" alt="<?php echo $lang['res4']; ?>" title="<?php echo $lang['res4']; ?>" /><span class="little_res"><?php echo $uprequire['crop']; ?></span> | <img class="r5" src="img/x.gif" alt="<?php echo $lang['consumption']; ?>" title="<?php echo $lang['consumption']; ?>" /><?php echo $uprequire['pop']; ?> | <img class="clock" src="img/x.gif" alt="<?php echo $lang['duration']; ?>" title="<?php echo $lang['duration']; ?>" /><?php echo $generator->getTimeFormat($uprequire['time']); if($session->userinfo['gold'] >= 3 && $building->getTypeLevel(17) >= 1) {echo "|<a href=\"build.php?gid=17&t=3&r1=".$uprequire['wood']."&r2=".$uprequire['clay']."&r3=".$uprequire['iron']."&r4=".$uprequire['crop']."\" title=\"".$lang['npc_trade']."\"><img class=\"npc\" src=\"img/x.gif\" alt=\"".$lang['npc_trade']."\" title=\"".$lang['npc_trade']."\" /></a>";} ?>
    <br />
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
            echo "<span class=\"none\">".$lang['enough_resources']." ".$neededtime[0]." ".$lang['at']." ".$neededtime[1]."</span>";
        } else if($bindicate == 8) {
            if($id <= 18) {
                echo "<a class=\"build\" href=\"dorf1.php?a=$id&c=$session->checker\">".$lang['up_to_level']." ";
            } else {
                echo "<a class=\"build\" href=\"dorf2.php?a=$id&c=$session->checker\">".$lang['up_to_level']." ";
            }
            echo $village->resarray['f'.$id]+1;
            echo ".</a>";
        } else if($bindicate == 9) {
            if($id <= 18) {
                echo "<a class=\"build\" href=\"dorf1.php?a=$id&c=$session->checker\">".$lang['up_to_level']." ";
            } else {
                echo "<a class=\"build\" href=\"dorf2.php?a=$id&c=$session->checker\">".$lang['up_to_level']." ";
            }
            echo $village->resarray['f'.$id]+($loopsame > 0 ? 2:1);
            echo ".</a> <span class=\"none\">(".$lang['waiting_loop'].")</span> ";
        }
        echo "</p>";
    }
?>