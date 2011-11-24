<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.24                                                  ##
##  Filename:      Templates/Travian/4/troops.tpl                              ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div class="boxes villageList units">
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
        <table id="troops" cellpadding="1" cellspacing="1">
            <thead>
                <tr>
                    <th colspan="3"><?php echo $lang['troops']; ?>:</th>
                </tr>
            </thead>
            <tbody>
                <?php
                    $units = $technology->getUnitList();
                    if(count($units) == 0) {
                        echo "<tr><td>".$lang['none']."</td></tr>";
                    } else {
                        foreach($units as $unit) {
                            echo "<tr><td class=\"ico\"><a href=\"build.php?id=39\"><img class=\"unit u".$unit['id']."\" src=\"img/x.gif\" alt=\"".$unit['name']."\" title=\"".$unit['name']."\" /></a></td>";	
                            echo "<td class=\"num\">".$unit['amt']."</td><td class=\"un\">".$unit['name']."</td></tr>";
                        }
                    }
                ?>
            </tbody>
        </table>
    </div>
</div>