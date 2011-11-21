<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.12                                                  ##
##  Filename:      dorf1.php                                                   ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");

$start = $generator->pageLoadTimeStart();
if(isset($_GET['ok'])){
	$database->updateUserField($session->username,'ok','0','0'); $_SESSION['ok'] = '0'; }
if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF']);
}
else {
	$building->procBuild($_GET);
}
include ("Templates/head.tpl");
include ("Templates/body.tpl");
?>
<div id="content"  class="village1">
    <h1><?php echo $village->vname; if($village->loyalty!='100'){if($village->loyalty>'33'){$color="gr";}else{$color="re";} ?>
		<div id="loyality" class="<?php echo $color; ?>">
			<?php echo LOYALTY; echo floor($village->loyalty); ?>%
        </div>
		<?php } ?>
    </h1>
    <?php include("Templates/field.tpl"); $timer = 1; ?>
    <div id="map_details">
        <?php
            include("Templates/movement.tpl");
            include("Templates/production.tpl");
            include("Templates/troops.tpl"); 
            if($building->NewBuilding){include("Templates/Building.tpl");}
        ?>
</div>
<?php include ("Templates/end.tpl"); ?>