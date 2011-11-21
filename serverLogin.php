<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.01                                                  ##
##  Filename:      serverLogin.php                                             ##
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
<h3 class="pop popgreen bold">Please choose a server.</h3>
<div class="server serverA serverbig servernormal serverbignormal ">
<a class="link" onclick="" href="login.php" title="Log in to Server 1.">
<span class="name">Server 1</span>
<span class="player" title="Players in total: <?php echo $users; ?>"><?php echo $users; ?></span>
<span class="online" title="Players online: <?php echo $online; ?>"><?php echo $online; ?></span>
<span class="start">The server started <?php echo round((time()-COMMENCE)/86400);?> days ago.</span>
<span class="mark"></span>
<img class="hover" src="img/x.gif">
</a>
</div>