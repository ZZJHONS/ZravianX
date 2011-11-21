<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       6.0.1                                                       ##
##  Filename:      anleitung.php                                               ##
##  Developed by:  Dzoki                                                       ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://www.xtravian.com & http://zravianx.zzjhons.com       ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/config.php");
include("GameEngine/Database.php");
include("GameEngine/Lang/".LANG.".php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
<html xmlns="http://www.w3.org/1999/xhtml"> 
<head> 
	<title><?php echo SERVER_NAME; ?></title> 
    <link rel="shortcut icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="img/tutorial/main.css"/> 
	<link rel="stylesheet" type="text/css" href="img/tutorial/flaggs.css"/> 
	<meta name="content-language" content="<?php echo LANG; ?>"/> 
	<meta http-equiv="imagetoolbar" content="no"/> 
	<script src="mt-core.js" type="text/javascript"></script> 	<script src="new.js" type="text/javascript"></script> 
	<style type="text/css" media="screen"> 
 
	</style> 
</head> 

<body class="webkit contentPage"> 
	<div class="wrapper"> 
        <div id="country_select">
            <div id="flags"></div>
            <script src="flaggen.js?a" type="text/javascript"></script>
            <script type="text/javascript">
            var region_list = new Array('Europe','America','Asia','Middle East','Africa','Oceania');
            show_flags('', '', region_list);
            </script>
        </div>
		<div id="header"> 
			<h1><?php echo WELCOME; ?></h1> 
		</div> 
		<div id="navigation">
			<a href="index.php" class="home"><img src="img/x.gif" alt="Travian"/></a>
			<table class="menu">
				<tr>
					<td><a href="tutorial.php"><span><?php echo TUTORIAL; ?></span></a></td>
					<td><a href="anleitung.php"><span><?php echo MANUAL; ?></span></a></td>
					<td><a href="<?php echo FORUM_LINK; ?>" target="_blank"><span><?php echo FORUM; ?></span></a></td>
					<td><a href="anmelden.php" class="mark"><span><?php echo REGISTER; ?></span></a></td>
					<td><a href="login.php"><span><?php echo LOGIN; ?></span></a></td>
				</tr>
			</table>
		</div> 
		<div id="content"> 
			<div class="grit"> 
				<h1><?php echo MANUAL; ?></h1>
				<p class="submenu">
				<a href="anleitung.php"><?php echo THE_TRIBES; ?></a> | 
				<a href="anleitung.php?s=1"><?php echo THE_BUILDINGS; ?></a> |
				<a href="anleitung.php?s=3"><?php echo FAQ; ?></a> |
                <a href="anleitung.php?s=4"><?php echo CULTURE_POINTS; ?></a>
				</p>
				<?php
                    if(!isset($_GET['s'])) {
                    $_GET['s'] = ""; }
                    if ($_GET['s'] == "") {
                    include("Templates/Anleitung/0.tpl"); }
                    if ($_GET['s'] == "1") {
                    include("Templates/Anleitung/1.tpl"); }
                    if ($_GET['s'] == "3") {
                    include("Templates/Anleitung/3.tpl"); }
                    if ($_GET['s'] == "4") {
                    include("Templates/Anleitung/4.tpl"); }
                ?>
				</ul>
			<div class="footer"></div>
		</div>
	</div>
	<div id="iframe_layer" class="overlay">
		<div class="mask closer"></div>
		<div class="overlay_content">
			<a href="index.php" class="closer"><img class="dynamic_img" alt="Close" src="img/un/x.gif" /></a>
			<h2><?php echo MANUAL; ?></h2>
			<div id="frame_box" ></div>
			<div class="footer"></div>
		</div>
	</div> 
</body> 
</html>