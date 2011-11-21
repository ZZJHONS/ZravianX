<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>TravianX - Browser Game - FAQ</title>
	<link rel="icon" type="image/icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="../gpack/travian/main.css"/> 
	<link rel="stylesheet" type="text/css" href="../gpack/travian/flaggs.css"/> 
	<meta name="content-language" content="en"/> 
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<script src="m_un2.js" type="text/javascript"></script>
	<script src="../mt-core.js" type="text/javascript"></script> 
	<script src="../new.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="un_main2.css" />
    <link rel="stylesheet" type="text/css" href="ltr.css" />
	<style type="text/css" media="all">
		.save { background-image: url(img/game/en/b/save.gif); }
		.login { background-image: url(img/game/en/b/login.gif); }
		.send { background-image: url(img/game/en/b/send.gif); }
	</style>
</head>
<body class="contentPage">
    <div class="wrapper">
        <div id="country_select">
            <div id="flags"></div>
            <script src="../flaggen.js?a" type="text/javascript"></script>
            <script type="text/javascript">
            var region_list = new Array('Europe','America','Asia','Middle East','Africa','Oceania');
            show_flags('', '', region_list);
            </script>
        </div>
		<div id="header"> 
			<h1>Travian Help</h1> 
		</div> 
		<div id="navigation">
		<a href="../index.php" class="home"><img src="img/x.gif" alt="TravianX"/></a>
        <table class="menu">
        <tr>
            <td><a href="../tutorial.php"><span>Tutorial</span></a></td>
            <td><a href="../anleitung.php"><span>Manual</span></a></td>
            <td><a href="#" target="_blank"><span>Forum</span></a></td>
            <td><a href="../anmelden.php" class="mark"><span>Register</span></a></td>
            <td><a href="../login.php"><span>Login</span></a></td>
        </tr>
        </table>
		</div> 
		<div id="content"> 
			<div class="grit"> 
				<div class="grit"> 
                    <h1><a href="?content=start"><img src="img/anleitung.png" alt="Head" width="468" height="60" border="0"/></a></h1>
					<?php include ("menu.php");?>
					<?php include ("../Templates/Help/content.tpl"); ?>
					<?php include ("right.php"); ?>
                    </div>
                    <div class="clear"></div> 
                    </div> 
                    <div id="footer">
                        <div class="container">
                            <a href="#" class="logo"><img src="img/x.gif" alt="Travian Games" class="logo_traviangames" /></a>
                            <ul class="menu">
                                <li><a href="anleitung.php?s=3">FAQ</a>|</li>
                                <li><a href="index.php?screenshots">Screenshots</a>|</li>
                                <li><a href="spielregeln.php">Game Rules</a>|</li>
                                <li><a href="agb.php">Terms</a>|</li>
                                <li><a href="impressum.php">Imprint</a></li>
                                <li class="copyright">&copy; 2011 - ZravianX - All right reserved</li>
                            </ul>
                        </div>
                    </div> 
					<div class="footer"></div>
				</div>
		<div id="iframe_layer" class="overlay">
		<div class="mask closer"></div>
		<div class="overlay_content">
			<a href="../index.php" class="closer"><img class="dynamic_img" alt="Close" src="img/un/x.gif" /></a>
			<h2>Manual</h2>
			<div id="frame_box"></div>
			<div class="footer"></div>
        </div>
	</div>
</body> 
</html>