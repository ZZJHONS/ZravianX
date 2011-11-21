<?php
	if(!isset($_GET['s'])) {$_GET['s'] = ""; }
		if ($_GET['s'] == "") { ?>
<h3 class="pop popgreen bold">Support</h3>
<div id="support">
    <div class="support-row">
        <div class="grlt"></div>
        <div class="grrt"></div>
        <a class="support-head spopcon" href="help.php?s=2" id="sup_ingame">Contact in-game support</a>
        If you couldn't find an answer, contact the in-game support here.
        <div class="grlb"></div>
        <div class="grrb"></div>
    </div>
    <div class="support-row">
        <div class="grlt"></div>
        <div class="grrt"></div>
        <a class="support-head spopcon" href="index.php#tutorial">Game Tour</a>
        Here, you will find more information about the game.
        <div class="grlb"></div>
        <div class="grrb"></div>
    </div>
    <div class="support-row">
        <div class="grlt"></div>
        <div class="grrt"></div>
        <a class="support-head spopcon" href="index.php#spielregeln">Game rules</a>
        Here, you can find the current game rules.
		<div class="grlb"></div>
        <div class="grrb"></div>
    </div>
    <div class="support-row">
        <div class="grlt"></div>
        <div class="grrt"></div>
        <a target="blank" class="support-head" href="http://t4.answers.travian.com/">FAQ - Answers</a>
        Here, you can find your answer about TRAVIAN. Additionally, you have the possibility to contact the in-game support, if you really can't find your answer.
        <div class="grlb"></div>
        <div class="grrb"></div>
    </div>

    <div class="support-row">
        <div class="grlt"></div>
        <div class="grrt"></div>
        <a target="blank" class="support-head" href="http://forum.travian.com/">Forum</a>
        On our Forum, you can meet and converse with other players.
        <div class="grlb"></div>
        <div class="grrb"></div>
    </div>
</div>
<?php } if ($_GET['s'] == "2") { ?>
<h3 class="pop popgreen bold">Contact in-game support</h3>
<p style="margin-bottom:20px;">
    Using our help system, the Answers page, you can easily find answers to all general questions about Travian quickly and without searching for a long time. Additionally, you have the possibility to contact the support but our in-game support can need up to 24 hours to answer your question. To get a faster answer, try Answers.</p>
<div id="support">
    <div class="support-row">
        <div class="grlt"></div><div class="grrt"></div>
        <a target="blank" class="support-head" href="http://t4.answers.travian.com/">FAQ - Answers</a>
        Here, you can find your answer about TRAVIAN. Additionally, you have the possibility to contact the in-game support, if you really can't find your answer.        <div class="grlb"></div><div class="grrb"></div>
    </div>
    <div class="support-row">
        <div class="grlt"></div><div class="grrt"></div>
        <a target="blank" class="support-head" href="http://ts5.travian.com//support.php">Contact in-game support</a>
        If you couldn't find an answer, contact the in-game support here.        <div class="grlb"></div><div class="grrb"></div>
    </div>
</div>
<?php } ?>