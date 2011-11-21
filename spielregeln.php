<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.06                                                  ##
##  Filename:      spielregeln.php                                             ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/config.php");
include("GameEngine/Lang/".LANG.".php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title><?php echo SERVER_NAME; ?> - Browser Game - <?php echo TRIBE1; echo ",&nbsp;"; echo TRIBE2; echo "&nbsp;&amp;&nbsp;"; echo TRIBE3; ?></title>
    <link rel="shortcut icon" href="favicon.ico" />
	<link rel="stylesheet" type="text/css" href="gpack/travian/main.css"/>
	<link rel="stylesheet" type="text/css" href="gpack/travian/flaggs.css"/>
	<meta name="content-language" content="<?php echo LANG; ?>"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<script src="mt-core.js" type="text/javascript"></script>
	<script src="new.js" type="text/javascript"></script>
	<style type="text/css" media="screen">

	</style>
</head>
<body class="webkit contentPage">
<div class="wrapper">
<div id="country_select">
	<div id="flags"></div>
	<script src="flaggen.js" type="text/javascript"></script>
	<script type="text/javascript">
		var region_list = new Array('Europe','America','Asia','Middle East','Africa','Oceania');
		show_flags('', '', region_list);
	</script>
</div>
<div id="header">
	<h1>Welcome to Travian</h1>
</div>
<div id="navigation">
<a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php" class="home"><img src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/x.gif" alt="Travian"/></a>
	<table class="menu">
	<tr>
		<td><a href="tutorial.php"><span>Tutorial</span></a></td>
		<td><a href="http://web.archive.org/web/20101129104431/http://travian.com/anleitung.php"><span>Manual</span></a></td>
		<td><a href="http://web.archive.org/web/20101129104431/http://forum.travian.com/" target="_blank"><span>Forum</span></a></td>
		<td><a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php?signup" class="signup_link mark"><span>Register</span></a></td>
		<td><a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php?login" class="login_link"><span>Login</span></a></td>
</tr>
	</table>
</div>
<div id="content">
	<div class="grit">
<h1>Game Rules</h1>
<p>
The below set of rules are in addition to the General Terms and Conditions of Travian. You should familiarize yourself with the General Terms and Conditions to verify what is allowed, especially in the case of an account that has been banned for a rule violation.
<br /><br />
Inciting, manipulating, encouraging, assisting or conspiring with others to violate any of Travian Rules is impermissible. These rules apply for players that will delete their accounts or are currently deleting their accounts without exception.
</p>
<ul class="rules">
 <li><strong color="#2A720B">&sect;1 Password, Registration & ownership</strong><br />
Each player may only own and play one account per server.
<ul>
<li><strong color="#3BAE18">&sect;1.1 Registration</strong><br />
The e-mail address used for the registration of an account must be under the personal and exclusive control of the person who registered the account. The person owning the e-mail address used to register an account is considered the owner of the account, regardless of any other personal or alliance agreements. The owner of an account is fully responsible for all actions taken with the account. 
</li>
<li><strong color="#3BAE18">&sect;1.2 Password</strong><br />
The owner of an account may not transfer the password of an account to any person playing on the same game world (server). Additionally, knowingly choosing the same password on the same game world as another person is illegal; any of these actions is considered multiaccounting, as defined in these rules.
<br /><br />
However, it is permissible to transfer the password of an account to a person or persons playing on different game world (or not playing at all) in order to play a single account together.
<br /><br />
There is no compensation for damages done by someone knowing the password for an account. The person receiving the password is subject to the rules of Travian as well as the General Terms and Conditions.
</li>
<li><strong color="#3BAE18">&sect;1.3 Email changes / account transfers</strong><br />
In order to change the email address of your account or to transfer your account to another player NOT playing on the same server, go into your account profile (/spieler.php?s=3) and fill out the new email information.
</li>
<li><strong color="#3BAE18">&sect;1.4 Switching accounts</strong><br />
In order to switch an account with a person on the same game world, both persons must send an e-mail message to admin@travian.com from the e-mail address currently registered for the account. The e-mail must contain the following information:
<ul>
<ol>
<li>The game world on which the account resides</li>
<li>The nickname of the account</li>
<li>The e-mail address of the new owner. </li>
</ol>
</ul>
Afterwards both persons must request the password for their new account via the password retrieval function.
</li>
</ul>
</li>
<li><strong color="#2A720B">&sect;2 Sitting & same pc usage</strong><br />
<ul>
<li><strong color="#3BAE18">&sect;2.1 Sitting</strong><br />
Every player has the right to name two sitters who may play the account during an owner's absence. Sitters must play the account they are sitting to the account’s full benefit. Abuse of this function is punishable.
<br />
The sitter of an account must sit the account using the account sitting function in game. The sitter of an account may not tend to an account by logging on with the password of the account they are sitting (see &sect;1.2).
<br />
There is no compensation for damages done by a sitter. Owners of an account are fully responsible for the actions of any sitters for their account. In the event that sitters of an account do not follow these rules and the General Terms and Conditions of Travian, both the account owner and the sitter may be punished.
</li>
<li><strong color="#3BAE18">&sect;2.2 Same pc usage</strong><br />
Players using the same computer and wanting to access each other's account must use the sitter function.
</li>
</ul>
</li>
<li><strong color="#2A720B">&sect;3 Use of externals</strong><br />
The game must be played with an unmodified internet browser. The use of scripts or bots which automate is against the rules. 
</li>
</li>
<li><strong color="#2A720B">&sect;4 Program errors</strong><br />
Program errors (also called bugs) may not be used to one's benefit. Abuse can lead to a punishment of the account. 
</li>
</li>
<li><strong color="#2A720B">&sect;5 Money transactions</strong><br />
Any sales or purchases concerning real money regarding accounts, units, villages, resources, services or any other aspect of Travian are impermissible. The sale of Travian accounts as well as any indirect transfer (even as gifts) in connection with auction sites or other money transactions is impermissible.
</li>
</li>
<li><strong color="#2A720B">&sect;6 Netiquette</strong><br />
Everyone must communicate in a polite, conversational tone. Multihunters may change inappropriate profiles and village names without warning.
<ol>
<li>Following behavior is punishable and applies to all descriptions, the account name, alliance names, village names and messages: <br />
English is the only official language tolerated.
<br />
Participation in abusive, defamatory, sexist, racist or profane language; disparaging any religion, race, nation, gender, age group, or sexual orientation; threatening persons with actions in real life.
<br />
Posting or transmission of any material not suitable for underage persons.
<br />
Blackmailing players in a way that violates any of Travian's rules respective the general terms and conditions.
<br />
Displaying battle reports or messages in public without consent of both concerned persons.
</li>
<li>No real world politics are allowed in names, messages and descriptions. </li>
<li>Impersonation of officials or official positions is illegal in any way. 
</li>
<li>Advertisement of any kind that has not been permitted by the Travian Team is impermissible. </li>
</ol>
</li>
<li><strong color="#2A720B">&sect;7 Punishments</strong><br />
If there is an offence against these game rules, the Multihunters and, if necessary, the Administrators will ban the account(s) in question and decide on a proper punishment. Punishments will always exceed the gain of the violation of the rules.
<br />
Resources, buildings, villages or troops lost during the time of suspension do not count as punishment and will not be replaced by the Travian Team. No player has the right to claim payment or replacement for Plus/Gold time lost due to suspension.
<br />
here is no special treatment for Travian Plus/Gold users regarding the game rules neither in the time needed to deal with the case nor in the punishment. 
<br /><br />
Players may talk to the Multihunter who banned them or an Administrator either via IGM (ingame message) or e-mail. Bans, punishments or deletions are not to be discussed in public (e.g. Chat or Forums). Appeals must be written in English.
<br />
Additionally, the Travian Team will not provide information to persons other than the account owner. 
<br /><br />
Multi accounts on the speed server and multi accounts with less than 100 population may be deleted on sight with no warning.
</li>
</li>
<li><strong color="#2A720B">&sect;8 Changing of rules</strong><br />
The Travian Team reserves the right to change the rules at any time. 
</li>
<li><strong color="#2A720B">&sect;9 Correction clause</strong><br />
If individual regulations of this set of rules should be ineffective, it does not affect the validity of the remaining regulations of this set of rules. The Administrators commit themselves to replace ineffective regulations with new regulations which replace the ineffective regulations as fast as possible.
</li>
</ul>
	</div>
	<div class="clear"></div>
</div>
<div id="footer">
	<div class="container">
		<a href="http://web.archive.org/web/20101129104431/http://travian.com/spielregeln.php#" class="logo"><img src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/x.gif" alt="Travian Games" class="logo_traviangames" /></a>
		<ul class="menu">
					<li><a href="http://web.archive.org/web/20101129104431/http://travian.com/anleitung.php?s=3">FAQ</a>|</li>
			<li><a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php?screenshots">Screenshots</a>|</li>
			<li><a href="http://web.archive.org/web/20101129104431/http://travian.com/spielregeln.php">Game Rules</a>|</li>
			<li><a href="http://web.archive.org/web/20101129104431/http://travian.com/agb.php">Terms</a>|</li>
			<li><a href="http://web.archive.org/web/20101129104431/http://travian.com/impressum.php">Imprint</a></li>
			<li class="copyright">&copy; 2004 - 2010 Travian Games GmbH</li>
		</ul>
	</div>
</div>
</div>
<div id="login_layer" class="overlay">
<div class="mask closer"></div>
<div id="login_list" class="overlay_content">
<h2>Choose your world</h2>
<a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php" class="closer"><img class="dynamic_img" alt="Close" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" /></a>
<ul class="world_list">
<li class="w_big" style="background-image:url('http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-big/5_big_g.jpg');">
	<a href="http://web.archive.org/web/20101129104431/http://s5.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com5 login" title="com5 login" /></a>
	<div class="label_players" style="left:237px;">Players:</div>
	<div class="label_online" style="left:237px;">Online:</div>
	<div class="players">17606</div>
	<div class="online">1042</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/4_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s4.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com4 login" title="com4 login" /></a>
	<div class="players">9717</div>
	<div class="online">529</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/classic-small/3_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s3.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com3 login" title="com3 login" /></a>
	<div class="players">8397</div>
	<div class="online">390</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/x2_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://x2.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="comx2 login" title="comx2 login" /></a>
	<div class="players">4723</div>
	<div class="online">404</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/7_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s7.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com7 login" title="com7 login" /></a>
	<div class="players">4335</div>
	<div class="online">310</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/9_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s9.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com9 login" title="com9 login" /></a>
	<div class="players">2793</div>
	<div class="online">1</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/2_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s2.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com2 login" title="com2 login" /></a>
	<div class="players">2778</div>
	<div class="online">184</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/1_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s1.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com1 login" title="com1 login" /></a>
	<div class="players">2191</div>
	<div class="online">137</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/6_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s6.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com6 login" title="com6 login" /></a>
	<div class="players">1928</div>
	<div class="online">136</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/8_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://s8.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com8 login" title="com8 login" /></a>
	<div class="players">1636</div>
	<div class="online">0</div>
</li>
<li class="w_small" style="background-image:url(http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-small/x_g.jpg);">
	<a href="http://web.archive.org/web/20101129104431/http://speed.travian.com/login.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="comx login" title="comx login" /></a>
	<div class="players">4212</div>
	<div class="online">305</div>
</li>
</ul>
<div class="footer"></div>
</div>
</div>
<div id="signup_layer" class="overlay">
<div class="mask closer"></div>
<div id="signup_list" class="overlay_content">
<h2>Choose your world</h2>
<a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php" class="closer"><img class="dynamic_img" alt="Close" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" /></a>
<ul class="world_list">
<li class="w_big" style="background-image:url('http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-big/5_big.jpg');">
	<a href="http://web.archive.org/web/20101129104431/http://s5.travian.com/anmelden.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com5 registration" title="com5 registration" /></a>
	<div class="label_players" style="left:237px;">Players:</div>
	<div class="label_online" style="left:237px;">Online:</div>
	<div class="players">17606</div>
	<div class="online">1042</div>
</li>
<li class="w_big" style="background-image:url('http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/regular-big/4_big.jpg');">
	<a href="http://web.archive.org/web/20101129104431/http://s4.travian.com/anmelden.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com4 registration" title="com4 registration" /></a>
	<div class="label_players" style="left:237px;">Players:</div>
	<div class="label_online" style="left:237px;">Online:</div>
	<div class="players">9717</div>
	<div class="online">529</div>
</li>
<li class="w_big" style="background-image:url('http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/welten/classic-big/3_big.jpg');">
	<a href="http://web.archive.org/web/20101129104431/http://s3.travian.com/anmelden.php"><img class="w_button" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" alt="com3 registration" title="com3 registration" /></a>
	<div class="label_players" style="left:237px;">Players:</div>
	<div class="label_online" style="left:237px;">Online:</div>
	<div class="players">8397</div>
	<div class="online">390</div>
</li>
</ul>
<div class="footer"></div>
</div>
</div>
<div id="iframe_layer" class="overlay">
<div class="mask closer"></div>
<div class="overlay_content">
<a href="http://web.archive.org/web/20101129104431/http://travian.com/index.php" class="closer"><img class="dynamic_img" alt="Close" src="http://web.archive.org/web/20101129104431im_/http://travian.com/img/un/x.gif" /></a>
<h2>Anleitung</h2>
<div id="frame_box" >
</div>
<div class="footer"></div>
</div>
<div>
</body>
</html>