<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>TravianX - Browser Game - FAQ</title>
	<link rel="icon" type="image/icon" href="favicon.ico" />
	<meta name="content-language" content="en" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<script src="m_un2.js" type="text/javascript"></script>
	<link rel="stylesheet" type="text/css" href="un_main2.css" />
    <link rel="stylesheet" type="text/css" href="ltr.css" />
	<style type="text/css" media="all">
		.save { background-image: url(img/game/en/b/save.gif); }
		.login { background-image: url(img/game/en/b/login.gif); }
		.send { background-image: url(img/game/en/b/send.gif); }
	</style>
</head>
<body onload="start()">
    <div id="ltop1">
	<!-- Flaggs (Work bad)
            <div id="flags"></div>
            <script src="flaggen2.js" type="text/javascript"></script>
            <script type="text/javascript">
            var region_list = new Array('Europe','America','Asia','Middle East','Africa','Oceania');
            show_flags('com', '', region_list);
            </script>
    End flaggs -->
	</div> 
	<div id="lmidall">
		<div id="lmidlc">
			<div id="lleft">
				<a href="index.php"><img alt="TravianX FAQ" src="img/main/en/travian0.gif" class="logo"/></a>
				<div id="lmenu">
                	<?php include ("../Templates/Help/menu.tpl"); ?>
				</div>
			</div>
			<div id="lmid1">
				<div id="lmid2">
					<div class="headline">
                    	<img src="img/anleitung.png" alt="Head" width="468" height="60" border="0"/>
                    </div>
                    <?php include ("../Templates/Help/content.tpl"); ?>
                </div>
            </div>
        </div>
			<div id="lright1">
				<div class="rbox">
					<span class="subhead c1 b">Search</span>&nbsp;Coming Soon
					<div class="dashed">
						<form action="index.php?type=search" method="post">
							<input class="fm" type="text" name="search" value="" maxlength="50"  style="width: 183px;" /> 
							<p style="text-align:center;"><input class="button send" type="image" src="img/x.gif" name="send" value="send" alt="Send" title="Send" style="vertical-align: middle;" /></p>
						</form>
					</div>
				</div>
				<div class="rbox">
					<span class="subhead c1 b">FAQ Settings</span>&nbsp;Coming Soon
					<div class="dashed">
						<form action="index.php?type=start&mod=100" method="post">
							<select name="gameSpeed">
                            	<option value="1" selected="selected">Game Speed &#x00D7;1</option>
                            	<option value="3" >Game Speed &#x00D7;3</option>
                            </select>
							<br /><br />
							<select name="gameMB">
                                <option value="1" >Main Building: 0-4</option>
                                <option value="2" >Main Building: 4-8</option>
                                <option value="3" selected="selected">Main Building: 8-12</option>
                                <option value="4" >Main Building: 12-16</option>
                                <option value="5" >Main Building: 16-20</option>
                            </select>
							<p style="text-align:center;"><input class="button save" type="image" src="img/x.gif" name="gamesettings" value="send" alt="Send" title="Send" style="vertical-align: middle;" /></p>
						</form>
					</div>
				</div>
			</div>
		</div>
	<div id="lfooter1">
		<div id="lfooter2">
			<a class="clink" href="index.php?type=report&pt=start&pm=100">Report a mistake</a> |
			Last Update: October 26, 2011
			<br/>
            By <a class="clink" href="http://zzjhons.com">ZZJHONS</a> | &copy; 2011 - <a class="clink" href="http://http://forum.ragezone.com/f582/">TravianX</a> - All rights reserved
		</div>
	</div>
</body>
</html>