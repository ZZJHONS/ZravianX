<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.01                                                  ##
##  Filename:      serverRegister.php                                          ##
##  Developed by:  Advocaite                                                   ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

error_reporting(E_ALL);
if (!file_exists('GameEngine/config.php')) {
header("Location: install/");
}
include("GameEngine/config.php");
include("GameEngine/Database.php");
include("GameEngine/Lang/".LANG.".php");
?>
<h3 class="pop popgreen bold">Welcome to the new TRAVIAN 4!</h3>
<h3>Please choose a server.</h3>
<br />
<div class="server serverA serverbig servernormal serverbignormal ">
    <a class="link" onclick="" href="anmelden.php" title="Register on Server 1.">
    <span class="name">Server 1</span>
    <span class="player" title="Players in total: <?php echo $users; ?>"><?php echo $users; ?></span>
    <span class="online" title="Players online: <?php echo $online; ?>"><?php echo $online; ?></span>
    <span class="start">The server started <?php echo round((time()-COMMENCE)/86400);?> days ago.</span>
    <span class="mark"></span>
    <img class="hover" src="img/x.gif">
</a>
</div>
<div class="server serverA serverbig servernew serverbignew ">
	<a class="link" title="Register on Server 5." href="http://ts5.travian.com/anmelden.php" onclick="">
	<span class="name">Server New</span>
	<span class="player" title="Players in total: <?php echo $users; ?>"><?php echo $users; ?></span>
	<span class="online" title="Players online: <?php echo $online; ?>"><?php echo $online; ?></span>
	<span class="start">The server started <?php echo round((time()-COMMENCE)/86400);?> days ago.</span>
	<span class="mark">NEW</span>
	<img class="hover" src="img/x.gif">
	</a>
</div>
<div class="server serverA serverbig serverpreRegister serverbigpreRegister ">
    <a class="link" title="Register on server X" href="anmelden.php" onclick="">
    <span class="name">Speed 3x</span>
    <span class="start">
        <span class="text">Rundenstart in</span>
        <br />
        <span class="number">28</span> Hours <span class="number">11</span> Minutes</span>
		<span class="mark">Register NOW</span>
		<img class="hover" src="img/x.gif">
	</a>
</div>