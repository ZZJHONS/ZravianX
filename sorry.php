<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.10.31                                                  ##
##  Filename:      login.php                                                   ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include ("GameEngine/config.php");
include ("GameEngine/Lang/".LANG.".php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><?php echo SERVER_NAME; ?></title>
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="expires" content="0" />
    <meta http-equiv="imagetoolbar" content="no" />
    <meta http-equiv="content-type"	content="text/html; charset=UTF-8" />
    <meta name="content-language" content="<?php echo LANG; ?>" />
	<link href="gpack/travian_Travian_4.0_Mephisto/lang/en/compact.css?asd423" rel="stylesheet" type="text/css" /><link href="gpack/travian_Travian_4.0_Mephisto/lang/en/lang.css?asd423" rel="stylesheet" type="text/css" />
    <link href="img/travian_basics.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="crypt.js?1317734667"></script>
    <script type="text/javascript">
		Travian.Translation.add(
		{
			'allgemein.anleitung':	'Instructions',
			'allgemein.cancel':	'cancel',
			'allgemein.ok':	'OK',
			'cropfinder.keine_ergebnisse': 'No search results found.'
		});
		Travian.applicationId = 'T4.0 Game';
		Travian.Game.version = '4.0';
		Travian.Game.worldId = 'com11';
	</script>
</head>
<body class="v35 login">
	<div id="wrapper">
		<img id="staticElements" src="img/x.gif" alt="" />
		<div class="bodyWrapper">
			<img style="filter:chroma();" src="img/x.gif" id="msfilter" alt="" />
			<div id="header">
				<div id="mtop">
					<a id="logo" href="<?php echo HOMEPAGE; ?>" target="_blank" title="Travian"></a>
					<div class="clear"></div>
				</div>
			</div>
			<div id="mid">
			<a id="ingameManual" href="support.php" title="Help"><img src="img/x.gif" class="question" alt="Help"/></a>
			<div id="side_navi">
				<ul>
					<li><a href="<?php echo HOMEPAGE; ?>" title="Homepage"><?php echo HOME; ?></a></li>
                    <li><a href="login.php" title="Login"><?php echo LOGIN; ?></a></li>
					<li><a href="anmelden.php" title="Register"><?php echo REGISTER; ?></a></li>
					<li><a href="#" target="_blank" title="Forum"><?php echo FORUM; ?></a></li>
					<li class='support' ><a href="support.php" title="Support"><?php echo SUPPORT; ?></a></li>
				</ul>
			</div>
			<div class="clear"></div>
			<div id="contentOuterContainer">
				<div class="contentTitle">&nbsp;</div>
				<div class="contentContainer">
					<div id="content" class="login">
                    	<h1 class="titleInHeader">Sorry</h1>
						<h4>Sorry, but the server will be closed for a some time to fix some bugs and rework it to Travian4 Graphcis.
                        <br /><br />Please come back soon.
                        <br /><br />We are working for a better tomorrow.</h4>
						<noscript>
                        	<div id="noJavaScript">
                            	JavaScript is deactivated. You must activate it in your browser settings to be able to play Travian.
                            </div>
						</noscript>
                        <!--
							<div class="boxes boxesColor gray" >
                            	<div class="boxes-tl"></div>
                                <div class="boxes-tr"></div>
                                <div class="boxes-tc"></div>
                                <div class="boxes-ml"></div>
                                <div class="boxes-mr"></div>
                                <div class="boxes-mc"></div>
                                <div class="boxes-bl"></div>
                                <div class="boxes-br"></div>
                                <div class="boxes-bc"></div>
                                <div class="boxes-contents">
									<div class="clear"></div>
								</div>
							</div>
                        -->
					<div class="clear">&nbsp;</div>
				</div>
                <div class="clear"></div>
			</div>
            <div class="contentFooter">&nbsp;</div>
		</div>
        <div id="side_info">
			<div class="news news1">
            	The new server is coming soon, it will run on version ZravianX4.
                <br />
                <br />
                Please come back soon.
            	<!--
            	<a href="#" class="newsContent newsContentWithLink" onclick="$H({data:{cmd:'news',id:'1'}}).dialog(); return false;">
					Have fun reading our COM magazine. This magazine contains many sections including interviews, and even the opportunity to win gold.
            	</a>
				<a class="newsContentMoreInfoLink" target="_blank" href="http://www.tschena.com/magazine/com_magazine_2011_09.pdf">
                	...more information
                </a>
            </div>
			<div class="news news2">
				<a href="#" class="newsContent newsContentWithLink" onclick="$H({data:{cmd:'news',id:'2'}}).dialog(); return false;">
                	Speed server will restart is on Wednesday, 19th of October, 2011.<br />
                    The preregistration will be opened on Monday, 17th of October, 2011.
				</a>
				<a class="newsContentMoreInfoLink" target="_blank" href="http://forum.travian.com/showthread.php?146620-tx3-Restart-on-19.10.2011">
                	...more information
                </a> -->
			</div>
		</div>
        <div class="clear"></div>
	</div>
		<div id="footer">
			<div id="mfoot">
                <a href="<?php echo HOMEPAGE; ?>" target="_blank">Homepage</a>
                <a href="#" target="_blank">Forum</a>
                <a href="<?php echo HOMEPAGE; ?>#links" target="_blank">Links</a>
                <a href="/help" target="_blank">FAQ - Answers</a>
                <a href="<?php echo HOMEPAGE; ?>#agb" target="_blank">Terms</a>
                <a href="<?php echo HOMEPAGE; ?>#impressum" target="_blank">Imprint</a>
                <div class="clear"></div>
			</div>
			<p class="copyright">
            © 2011 Zravian | By <a href="http://zzjhons.com">ZZJHONS</a>
            </p>
		</div>
		<div id="anwersQuestionMark">
        	<a href="/help" target="_blank" title="Travian Answers">&nbsp;</a>
		</div>
	</div>
	<div id="ce"></div>
</div>
</body>
</html>