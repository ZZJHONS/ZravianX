<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       res.tpl                                                     ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
?>

<?php
$wood = round($village->getProd("wood"));
$clay = round($village->getProd("clay"));
$iron = round($village->getProd("iron"));
$crop = round($village->getProd("crop"));
$totalproduction = $village->allcrop; // all crops + bakery + grain mill
?> 
<ul id="res">
        <li class="r1">
        <p>
            <img src="img/x.gif" alt="<?php echo LUMBER; ?>"">
            <span id="l1" class="value "><?php echo round($village->awood)."/".$village->maxstore; ?></span>
        </p>
                <div class="bar-bg">
            <div id="lbar1" class="bar" style="width:0%; background-color: #006900"></div>
        </div>
            </li>
        <li class="r2">
        <p>
            <img src="img/x.gif" alt="<?php echo CLAY; ?>">
            <span id="l2" class="value "><?php echo round($village->aclay)."/".$village->maxstore; ?></span>
        </p>
                <div class="bar-bg">
            <div id="lbar2" class="bar" style="width:0%; background-color: #006900"></div>
        </div>
            </li>
        <li class="r3">
        <p>
            <img src="img/x.gif" alt="<?php echo IRON; ?>">
            <span id="l3" class="value "><?php echo round($village->airon)."/".$village->maxstore; ?></span>
        </p>
                <div class="bar-bg">
            <div id="lbar3" class="bar" style="width:0%; background-color: #006900"></div>
        </div>
            </li>
        <li class="r4">
        <p>
            <img src="img/x.gif" alt="<?php echo CROP; ?>">
            <span id="l4" class="value "><?php echo round($village->acrop)."/".$village->maxcrop; ?></span>
        </p>
                <div class="bar-bg">
            <div id="lbar4" class="bar" style="width:0%; background-color: #006900"></div>
        </div>
            </li>
        <li class="r5">
        <p>
            <img src="img/x.gif" alt="<?php echo CROP_COM; ?>">
            <span id="l5" class="value "><?php echo ($village->pop+$technology->getUpkeep($village->unitall,0))."/".$totalproduction.""; ?></span>
        </p>
            </li>
    </ul>

			