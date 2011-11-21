<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.08                                                  ##
##  Filename:      celebration.php                                             ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");

if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF']);
}
	$bla = 0;
	$id= 0;
	$type= 0;
	$town = 0;
	$vil = 0;
	$woodold = 0;
	$clayold = 0;
	$ironold = 0;
	$cropold = 0;
	$feld = 0;
	$level = 0;
	$time = 0;

	$id=$_GET['id'];
	$type=$_GET['type'];
	$town = $database->getVillageField($village->wid, 'wref');
	$vil = $database->getResourceLevel($village->wid);
	$woodold = $database->getVillageField($village->wid, 'wood');
	$clayold = $database->getVillageField($village->wid, 'clay');
	$ironold = $database->getVillageField($village->wid, 'iron');
	$cropold = $database->getVillageField($village->wid, 'crop');



	$feld = $vil['f'.$id.'t'];
	$level = $vil['f'.$id];
	$time = Time();
if($feld == 24)
{
	if($type == 1)
	{
		if(6400 < $woodold|| 6650 < $clayold || 5940 < $ironold || 1340 < $cropold) {
			$endtime = ($sc[$level]/ SPEED) + $time;
			$wood = 6400;
			$clay = 6650;		
			$iron = 5940;
			$crop = 1340;

			$database->modifyResource($town,$wood,$clay,$iron,$crop,$mode);
			$database->addCel($town,$endtime,$type);

		}
	}
	else if($type == 2)
	{
			if(29700 < $woodold || 33250 < $clayold || 32000 < $ironold || 6700 < $cropold) {

			$endtime = ($gc[$level]/ SPEED) + $time;
			$wood= 29700;
			$clay= 33250;
			$iron= 32000;
			$crop= 6700;
			$database->modifyResource($town,$wood,$clay,$iron,$crop,$mode);
			$database->addCel($town,$endtime,$type);
		}
	}
}

include ("Templates/head.tpl");
include ("Templates/body.tpl");
?>
<div id="content" class="player">
    <h1>
        Celebration <b>OK</b>
        <br />
        Return to Village <a href="dorf2.php">&raquo;</a>
    </h1>
</div>
<?php include ("Templates/end.tpl"); ?>