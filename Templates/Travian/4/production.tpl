<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.24                                                  ##
##  Filename:      Templates/Travian/4/production.tpl                          ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div class="boxes villageList production">
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
        <table id="production" cellpadding="1" cellspacing="1">
            <thead>
                <tr>
                    <th colspan="4"><?php echo $lang['production_per_hour']; ?>:</th>
                </tr>
            </thead>
            <tbody>	
                <tr>
                    <td class="ico"><img class="r1" src="img/x.gif" alt="<?php echo $lang['resources']['1']; ?>" title="<?php echo $lang['resources']['1']; ?>" /></td>
                    <td class="res"><?php echo $lang['resources']['1']; ?>:</td>
                    <td class="num"><?php echo $village->getProd("wood"); ?></td>
                </tr>
                <tr>
                    <td class="ico"><img class="r2" src="img/x.gif" alt="<?php echo $lang['resources']['2']; ?>" title="<?php echo $lang['resources']['2']; ?>" /></td>
                    <td class="res"><?php echo $lang['resources']['2']; ?>:</td>
                    <td class="num"><?php echo $village->getProd("clay"); ?></td>
                </tr>
                <tr>
                    <td class="ico"><img class="r3" src="img/x.gif" alt="<?php echo $lang['resources']['3']; ?>" title="<?php echo $lang['resources']['3']; ?>" /></td>
                    <td class="res"><?php echo $lang['resources']['3']; ?>:</td>
                    <td class="num"><?php echo $village->getProd("iron"); ?></td>
                </tr>
                <tr>
                    <td class="ico"><img class="r4" src="img/x.gif" alt="<?php echo $lang['resources']['4']; ?>" title="<?php echo $lang['resources']['4']; ?>" /></td>
                    <td class="res"><?php echo $lang['resources']['4']; ?>:</td>
                    <td class="num"><?php echo $village->getProd("crop"); ?></td>
                </tr>
            </tbody>	
        </table>
    </div>
</div>