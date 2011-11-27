<?php
$bid = $_GET['bid'];
unset($_GET['bid']);
$bindicator = $building->canBuild($id,$bid);
$uprequire = $building->resourceRequired($id,$bid);
?>
<div id="contract" class="contract contractNew contractWrapper">
	<div class="contractText">Costs:</div>
	<div class="contractCosts"><div class="showCosts"><span class="resources r1"><img class="r1" src="img/x.gif" alt="Lumber"><?php echo $uprequire['wood']; ?></span><span class="resources r2"><img class="r2" src="img/x.gif" alt="Clay"><?php echo $uprequire['clay']; ?></span><span class="resources r3 little_res"><img class="r3" src="img/x.gif" alt="Iron"><?php echo $uprequire['iron']; ?></span><span class="resources r4"><img class="r4" src="img/x.gif" alt="Crop"><?php echo $uprequire['crop']; ?></span><span class="resources r5"><img class="r5" src="img/x.gif" alt="Crop consumption"><?php echo $uprequire['pop']; ?></span><div class="clear"></div><span class="clocks"><img class="clock" src="img/x.gif" alt="duration"><?php echo $generator->getTimeFormat($uprequire['time']); ?></span><?php if($session->userinfo['gold'] >= 3 && $building->getTypeLevel(17) >= 1) {echo "<div class=\"clear\"></div><span class=\"npcs\"><a href=\"build.php?gid=17&t=3&r1=".$uprequire['wood']."&r2=".$uprequire['clay']."&r3=".$uprequire['iron']."&r4=".$uprequire['crop']."\" title=\"".$lang['npc_trade']."\"><img class=\"npc\" src=\"img/x.gif\" alt=\"".$lang['npc_trade']."\" /></a></span>";} ?><div class="clear"></div></div></div>
	<div class="contractLink">
        <?php
            if($bindicator == 2) {
                echo "<span class=\"none\">The workers are already at work.</span>";
            } else if($bindicator == 3) {
                echo "<span class=\"none\">The workers are already at work. (waiting loop)</span>";
            } else if($bindicator == 4) {
                echo "<span class=\"none\">Not enough food. Expand cropland.</span>";
            } else if($bindicator == 5) {
                echo "<span class=\"none\">Upgrade Warehouse.</span>";
            } else if($bindicator == 6) {
                echo "<span class=\"none\">Upgrade Granary.</span>";
            } else if($bindicator == 7) {
                $neededtime = $building->calculateAvaliable($id,$bid);
                echo "<span class=\"none\">Enough resources ".$neededtime[0]." at  ".$neededtime[1]."</span>";
            } else if($bindicator == 8) {
        ?>
        <button type="button" value="construct building" class="new" onclick="window.location.href = 'dorf2.php?a=<?php echo $bid."&id=".$id."&c=".$session->checker; ?>'; return false;">
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
                <div class="button-contents">construct building</div>
            </div>
        </button>    
        <?php
            } else if($bindicator == 9) {
		?>
        <button type="button" value="construct building" class="new" onclick="window.location.href = 'dorf2.php?a=<?php echo $bid."&id=".$id."&c=".$session->checker; ?>'; return false;">
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
                <div class="button-contents">construct building. (waiting loop)</div>
            </div>
        </button>    
        <?php
                echo "<a class=\"build\" href=\"dorf2.php?a=$bid&id=$id&c=".$session->checker."\">Construct building. (waiting loop)</a>";
            }
        ?>
    </div>
	<div class="clear"></div>
</div>
<div class="clear"></div>
<hr />