<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.22                                                  ##
##  Filename:      Templates/Travian/4/res.tpl                                 ##
##  Developed by:  Dzoki                                                       ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

$wood = round($village->getProd("wood"));
$clay = round($village->getProd("clay"));
$iron = round($village->getProd("iron"));
$crop = round($village->getProd("crop"));
$totalproduction = $village->allcrop; // all crops + bakery + grain mill
?> 
<ul id="res">
	<li class="r1">
		<p>
            <img src="img/x.gif" alt="<?php echo LUMBER; ?>">
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