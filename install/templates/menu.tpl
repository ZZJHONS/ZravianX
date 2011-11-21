<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.03                                                  ##
##  Filename:      install/templates/menu.tpl                                  ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div class="menu">
    <?php
        switch($_GET['s']) {
            case 0:
            echo "<li class=\"c2 f9\">Intro</li><li class=\"c1 f9\">Configuration</li><li class=\"c1 f9\">Database</li><li class= \"c1 f9\">Field</li><li class=\"c1 f9\">Multihunter</li><li class=\"c1 f9\">Oasis</li><li class=\"c1 f9\">End</li>";
            break;
            case 1:
            echo "<li class=\"c3 f9\">Intro</li><li class=\"c2 f9\">Configuration</li><li class=\"c1 f9\">Database</li><li class= \"c1 f9\">Field</li><li class=\"c1 f9\">Multihunter</li><li class=\"c1 f9\">Oasis</li><li class=\"c1 f9\">End</li>";
            break;
            case 2:
            echo "<li class=\"c3 f9\">Intro</li><li class=\"c3 f9\">Configuration</li><li class=\"c2 f9\">Database</li><li class= \"c1 f9\">Field</li><li class=\"c1 f9\">Multihunter</li><li class=\"c1 f9\">Oasis</li><li class=\"c1 f9\">End</li>";
            break;
            case 3:
            echo "<li class=\"c3 f9\">Intro</li><li class=\"c3 f9\">Configuration</li><li class=\"c3 f9\">Database</li><li class= \"c2 f9\">Field</li><li class=\"c1 f9\">Multihunter</li><li class=\"c1 f9\">Oasis</li><li class=\"c1 f9\">End</li>";
            break;
            case 4:
            echo "<li class=\"c3 f9\">Intro</li><li class=\"c3 f9\">Configuration</li><li class=\"c3 f9\">Database</li><li class= \"c3 f9\">Field</li><li class=\"c2 f9\">Multihunter</li><li class=\"c1 f9\">Oasis</li><li class=\"c1 f9\">End</li>";
            break;
            case 5:
            echo "<li class=\"c3 f9\">Intro</li><li class=\"c3 f9\">Configuration</li><li class=\"c3 f9\">Database</li><li class= \"c3 f9\">Field</li><li class=\"c3 f9\">Multihunter</li><li class=\"c2 f9\">Oasis</li><li class=\"c1 f9\">End</li>";
            break;
            case 6:
            echo "<li class=\"c3 f9\">Intro</li><li class=\"c3 f9\">Configuration</li><li class=\"c3 f9\">Database</li><li class= \"c3 f9\">Field</li><li class=\"c3 f9\">Multihunter</li><li class=\"c3 f9\">Oasis</li><li class=\"c2 f9\">End</li>";
            break;
        }
    ?>
</div>