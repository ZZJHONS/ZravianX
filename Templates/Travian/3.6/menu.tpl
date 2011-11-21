<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.20                                                  ##
##  Filename:      Templates/Travian/3.6/menu.tpl                              ##
##  Developed by:  Dzoki & Advocaite & Donnchadh                               ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include_once ("GameEngine/Database/db_MYSQL.php");

if(!$session->logged_in) {
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
    <title></title>
    <style type="text/css">
	div.c1 {text-align: center}
    </style>
</head>
<body>
    <div id="side_navi">
        <a id="logo" href="<?php echo HOMEPAGE; ?>" name="logo"><img src="img/x.gif" alt="Travian"></a>
        <p>
            <a href="<?php echo HOMEPAGE; ?>"><?php echo HOME; ?></a>
            <a href="anleitung.php"><?php echo MANUAL ?></a>
            <a href="login.php"><?php echo LOGIN; ?></a>
            <a href="anmelden.php"><?php echo REGISTER; ?></a>
        </p>
        <p>
            <a href="<?php echo FORUM_LINK; ?>"><?php echo FORUM; ?></a>
            <a href="#"><?php echo CHAT; ?></a>
        </p>
        <p>
        	<a><b><?php echo $users; ?>&nbsp;Players</b></a>
        	<a><b><?php echo $active; ?>&nbsp;Active</b></a>
        	<a><b><?php echo $online; ?>&nbsp;Online</b></a>
        </p>
    </div>
    <?php } else { ?>
    <div id="side_navi">
		<a id="logo" href="<?php echo HOMEPAGE; ?>" name="logo"><img src="img/x.gif" <?php if($session->plus) { echo "class=\"logo_plus\""; } ?> alt="Travian"></a>
        <p>
        	<a href="<?php echo HOMEPAGE; ?>"><?php echo HOME; ?></a>
            <a href="anleitung.php"><?php echo MANUAL ?></a>
            <a href="spieler.php?uid=<?php echo $session->uid; ?>"><?php echo PROFILE; ?></a>
            <a href="#" onclick="return Popup(0,0,1);"><?php echo INSTRUCTIONS; ?></a>
            <a href="help/">Help (Old version)</a>
            <a href="logout.php"><?php echo LOGOUT; ?></a>
		</p>
        <p>
			<?php if($session->access == MULTIHUNTER) {echo "<a href=\"admin.php\"><font color=\"Blue\">".MULTIHUNTER_PANEL."</font></a>";} ?>
            <?php if($session->access == ADMIN) {echo "<a href=\"admin.php\"><font color=\"Red\">".ADMIN_PANEL."</font></a>";} ?>
        </p>
		<p>
            <a href="<?php echo FORUM_LINK; ?>"><?php echo FORUM; ?></a>
            <a href="#"><?php if(CHAT){echo CHAT;} else {echo "Chat";} ?></a>
        </p>
        <p>
            <a href="plus.php?id=3"><?php echo TRAVIAN_PLUS; ?></a>
            <a href="spieler.php?uid=0"><b><?php echo SUPPORT; ?></b></a>
        </p>
        <p>
        	<a><b><?php echo $users; ?>&nbsp;Players</b></a>
        	<a><b><?php echo $active; ?>&nbsp;Active</b></a>
        	<a><b><?php echo $online; ?>&nbsp;Online</b></a>
        </p>
    </div>
	<?php if($_SESSION['ok']=='1'){ ?>
    <div id="content" class="village1">
		<h1><?php echo ANNOUNCEMENT; ?></h1>
		<h2><?php echo HI_USERNAME; echo "&nbsp;"; echo $session->username; ?>,</h2>
        <br />
        <?php include("Templates/text.tpl"); ?>
        <br />
        <br />
        <div class="c1">
            <h2><a href="dorf1.php?ok">&raquo; <?php echo GO_TO_MY_VILLAGE; ?></a></h2>
        </div>
    </div>
    <div id="side_info">
        <?php
			include("Templates/quest.tpl");
			include("Templates/news.tpl");
			include("Templates/multivillage.tpl");
			@include("Templates/links.tpl");
        ?>
    </div>
    <div class="clear"></div>
    <div class="footer-stopper"></div>
    <div class="clear"></div>
	<?php 
		include("Templates/footer.tpl"); 
		include("Templates/res.tpl"); 
    ?>
    <div id="stime">
        <div id="ltime">
            <div id="ltimeWrap">
                <?php echo $lang['calculated']; ?> <b><?php echo round(($generator->pageLoadTimeEnd()-$start)*1000); ?></b> ms
                <br />
                <?php echo $lang['server time']; ?>: <span id="tp1" class="b"><?php echo date('H:i:s'); ?></span>
            </div>
        </div>
    </div>
    <div id="ce"></div>
	<?php
    die();
    }
    }
    ?>
</body>
</html>