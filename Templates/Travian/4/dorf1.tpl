<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.23                                                  ##
##  Filename:      Templates/Travian/4/dorf1.tpl                               ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

$dorf1active = "active";
$filecontent = "village1";
include("Templates/Travian/4/header.tpl");
include("Templates/Travian/4/field.tpl");
$timer = 1;
if($building->NewBuilding){include("Templates/Travian/4/Building.tpl");}
?>                    
    <div id="map_details">
        <?php
            include("Templates/Travian/4/movement.tpl"); 
            include("Templates/Travian/4/production.tpl"); 
            include("Templates/Travian/4/troops.tpl"); 
        ?>
        <div class="clear"></div>
    </div>
</div>
<?php include("Templates/Travian/4/foot.tpl"); ?>