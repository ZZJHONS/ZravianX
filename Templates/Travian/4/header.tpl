<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.23                                                  ##
##  Filename:      Templates/Travian/4/header.tpl                              ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

?>
<div id="mtop">
    <a id="logo" href="<?php echo HOMEPAGE; ?>" target="_blank" title="<?php echo SERVER_NAME; ?>"></a>
    <ul id="navigation">
        <li id="n1" class="resources"><a class="<?php echo $dorf1active; ?>" href="dorf1.php" accesskey="1" title="Resources"></a></li>
        <li id="n2" class="village"><a class="<?php echo $dorf2active; ?>" href="dorf2.php" accesskey="2" title="Village center"></a></li>
        <li id="n3" class="map"><a class="<?php echo $karteactive; ?>" href="karte.php" accesskey="3" title="Map"></a></li>
        <li id="n4" class="stats"><a class="<?php echo $statsactive; ?>" href="statistiken.php" accesskey="4" title="Statistics"></a></li>
        <li id="n5" class="reports">
			<?php
                if($message->unread && !$message->nunread) {
                    $display_reports = "0";
                    $display_report = "none";
					$display_messages = "+1";
					$display_message = "block";
                } else if(!$message->unread && $message->nunread) {
                    $display_reports = "+1";
                    $display_report = "block";
					$display_messages = "0";
					$display_message = "hide";
                } else if($message->unread && $message->nunread) {
                    $display_reports = "+1";
                    $display_report = "block";
					$display_messages = "+1";
					$display_message = "block";
                } else {
                    $display_reports = "0";
                    $display_report = "none";
					$display_messages = "0";
					$display_message = "none";
                }
			?>

            <a class="<?php echo $reportactive; ?>" href="berichte.php" accesskey="5" title="Reports"></a>
            <div class="ltr bubble" title="<?php echo $display_reports; ?> new(s) report(s)" style="display:<?php echo $display_report; ?>">
                <div class="bubble-background-l"></div>
                <div class="bubble-background-r"></div>
                <div class="bubble-content"><?php echo $display_reports; ?></div>
            </div>
        </li>
        <li id="n6" class="messages">
            <a class="<?php echo $messageactive; ?>" href="nachrichten.php" accesskey="6" title="Messages"></a>
            <div class="ltr bubble" title="<?php echo $display_messages; ?> new(s) message(s)" style="display:<?php echo $display_message; ?>">
                <div class="bubble-background-l"></div>
                <div class="bubble-background-r"></div>
                <div class="bubble-content"><?php echo $display_messages; ?></div>
            </div>
        </li>
    </ul>
    <div class="clear"></div>
</div>