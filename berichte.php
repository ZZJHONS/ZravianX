<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.07                                                  ##
##  Filename:      berichte.php                                                ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");

$start = $generator->pageLoadTimeStart();
$message->noticeType($_GET);
$message->procNotice($_POST);

include ("Templates/head.tpl");
include ("Templates/body.tpl");
?>
<div id="content"  class="reports">
    <h1>Reports</h1>
    <div id="textmenu">
   <a href="berichte.php" <?php if (!isset($_GET['t'])) { echo "class=\"selected \""; } ?>>All</a>
 | <a href="berichte.php?t=2" <?php if (isset($_GET['t']) && $_GET['t'] == 2) { echo "class=\"selected \""; } ?>>Trade</a>
 | <a href="berichte.php?t=1" <?php if (isset($_GET['t']) && $_GET['t'] == 1) { echo "class=\"selected \""; } ?>>Reinforcement</a>
 | <a href="berichte.php?t=3" <?php if (isset($_GET['t']) && $_GET['t'] == 3) { echo "class=\"selected \""; } ?>>Attacks</a>
 | <a href="berichte.php?t=4" <?php if (isset($_GET['t']) && $_GET['t'] == 4) { echo "class=\"selected \""; } ?>>Miscellaneous</a>
 <?php if($session->plus) {echo "| <a href=\"berichte.php?t=5\""; if (isset($_GET['t']) && $_GET['t'] == 5) { echo "class=\"selected \""; } 
 echo ">Archive</a>";
 }
 ?>
	</div>
	<?php 
		if(isset($_GET['id'])) {
			$type = ($message->readingNotice['ntype'] == 5)? $message->readingNotice['archive'] : $message->readingNotice['ntype'];
			include("Templates/Notice/".$type.".tpl");
		}
		else {
			include("Templates/Notice/all.tpl");
		}
    ?>
</div>
<?php include ("Templates/end.tpl"); ?>