<div id="mtop">
    <a id="logo" href="<?php echo HOMEPAGE; ?>" target="_blank" title="<?php echo SERVER_NAME; ?>"></a>
    <ul id="navigation">
        <li id="n1" class="resources"><a class="<?php echo $dorf1active; ?>" href="dorf1.php" accesskey="1" title="Resources"></a></li>
        <li id="n2" class="village"><a class="<?php echo $dorf2active; ?>" href="dorf2.php" accesskey="2" title="Village center"></a></li>
        <li id="n3" class="map"><a class="<?php echo $karteactive; ?>" href="karte.php" accesskey="3" title="Map"></a></li>
        <li id="n4" class="stats"><a class="<?php echo $statsactive; ?>" href="statistiken.php" accesskey="4" title="Statistics"></a></li>
        <li id="n5" class="reports">
            <a class="<?php echo $reportactive; ?>" href="berichte.php" accesskey="5" title="Reports"></a>
            <div class="ltr bubble" title="0 news reports" style="display:block">
                <div class="bubble-background-l"></div>
                <div class="bubble-background-r"></div>
                <div class="bubble-content">?</div>
            </div>
        </li>
        <li id="n6" class="messages">
            <a class="<?php echo $messageactive; ?>" href="nachrichten.php" accesskey="6" title="Messages"></a>
            <div class="ltr bubble" title="0 news messages" style="display:block">
                <div class="bubble-background-l"></div>
                <div class="bubble-background-r"></div>
                <div class="bubble-content">?</div>
            </div>
        </li>
    </ul>
    <div class="clear"></div>
</div>