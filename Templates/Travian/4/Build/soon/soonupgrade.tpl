<?php
$bid = $_GET['bid'];
unset($_GET['bid']);
$bindicator = $building->canBuild($id,$bid);
$uprequire = $building->resourceRequired($id,$bid);
?>
<div id="contract" class="contract contractNew contractWrapper">
	<div class="contractText"><?php echo $lang['costs']; ?>:</div>
	<div class="contractCosts"><div class="showCosts"><span class="resources r1"><img class="r1" src="img/x.gif" alt="<?php echo $lang['res1']; ?>" title="<?php echo $lang['res1']; ?>"><?php echo $uprequire['wood']; ?></span><span class="resources r2"><img class="r2" src="img/x.gif" alt="<?php echo $lang['res2']; ?>" title="<?php echo $lang['res2']; ?>"><?php echo $uprequire['clay']; ?></span><span class="resources r3 little_res"><img class="r3" src="img/x.gif" alt="<?php echo $lang['res3']; ?>" title="<?php echo $lang['res3']; ?>"><?php echo $uprequire['iron']; ?></span><span class="resources r4"><img class="r4" src="img/x.gif" alt="<?php echo $lang['res4']; ?>" title="<?php echo $lang['res4']; ?>"><?php echo $uprequire['crop']; ?></span><span class="resources r5"><img class="r5" src="img/x.gif" alt="<?php echo $lang['consumption']; ?>" title="<?php echo $lang['consumption']; ?>"><?php echo $uprequire['pop']; ?></span><div class="clear"></div><span class="clocks"><img class="clock" src="img/x.gif" alt="<?php echo $lang['duration']; ?>" title="<?php echo $lang['duration']; ?>"><?php echo $generator->getTimeFormat($uprequire['time']); ?></span><?php if($session->userinfo['gold'] >= 3 && $building->getTypeLevel(17) >= 1) {echo "<div class=\"clear\"></div><span class=\"npcs\"><a href=\"build.php?gid=17&t=3&r1=".$uprequire['wood']."&r2=".$uprequire['clay']."&r3=".$uprequire['iron']."&r4=".$uprequire['crop']."\" title=\"".$lang['npc_trade']."\"><img class=\"npc\" src=\"img/x.gif\" alt=\"".$lang['npc_trade']."\" title=\"".$lang['npc_trade']."\" /></a></span>";} ?><div class="clear"></div></div></div>
	<div class="contractLink">
    	<div class="contractText"><?php echo $lang['prerequisites']; ?></div>
        <?php
            if($bid == 1) {
		?>
        <?php
            } else if($bid == 2) {
        ?>
		<span class="buildingCondition"></span>
        <?php
            } else if($bid == 3) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 4) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 5) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 6) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 7) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 8) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 9) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 10) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 11) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 12) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 13) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 14) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 15) {
		?>
        <span class="buildingCondition"><a href="#" onclick="return Travian.Game.iPopup(15,4, 'gid');">Main Building</a> <span>Level 3</span></span>, <span class="buildingCondition"><a href="#" onclick="return Travian.Game.iPopup(16,4, 'gid');">Rally Point</a> <span>Level 1</span></span>
        <?php
            } else if($bid == 16) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 17) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 18) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 19) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 20) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 21) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 22) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 23) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 24) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 25) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 26) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 27) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 28) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 29) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 30) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 31) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 32) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 33) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 34) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 35) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 36) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 37) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 38) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 39) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 40) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 41) {
		?>
        <span class="buildingCondition"></span>
        <?php
            } else if($bid == 42) {
		?>
        <span class="buildingCondition"></span>
        <?php
			}
        ?>
    </div>
    <div class="clear"></div>
</div>
<div class="clear"></div>
<hr>
