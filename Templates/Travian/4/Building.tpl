<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.03                                                  ##
##  Filename:      Templates/Travian/4/Building.tpl                            ##
##  Developed by:  Advocaite                                                   ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div class="boxes buildingList">
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
		<table cellpadding="1" cellspacing="1" id="building_contract">
			<thead>
				<tr>
					<th colspan="4">
						<?php echo $lang['building']; ?>: 
						<?php if($session->gold >= 2) {   ?>
							<div class="finishNow" title="<?php echo $lang['finish_for_gold']; ?>">
                            	<a class="arrow" href="?buildingFinish=1" onclick="return confirm('<?php echo $lang['finish_for_gold']; ?>');">Complete immediately</a> (costs: <img src="img/x.gif" class="gold" alt="<?php echo $lang['gold']; ?>" title="<?php echo $lang['gold']; ?>"/> <b>2</b> )
							</div>
						<?php } ?>
                    </th>
				</tr>
			</thead>
			<tbody>
				<?php 
                    if($_GET['buildingFinish'] == 1 AND $session->gold >= 2) {
                        $gold=$database->getUserField($_SESSION['username'],'gold','username');
                        $gold-=2;
                        $database->updateUserField($_SESSION['username'],'gold',$gold,0);
                    }
    
                    if(!isset($timer)) {
                        $timer = 1;
                    }
    				$BuildingList = array();
                    foreach($building->buildArray as $jobs) {
                        echo "<tr><td class=\"ico\"><a href=\"?d=".$jobs['id']."&a=0&c=$session->checker\">";
                        echo "<img src=\"img/x.gif\" class=\"del\" title=\"".$lang['cancel']."\" alt=\"".$lang['cancel']."\" /></a></td><td>";
					    echo $building->procResType($jobs['type'])." <span class=\"lvl\"> ".$lang['level']." ".($village->resarray['f'.$jobs['field']]+(in_array($jobs['field'],$BuildingList)?2:1 ))."</span>";
						if($jobs['loopcon'] == 0) { $BuildingList[] = $jobs['field']; }
						if($jobs['loopcon'] == 1) {
                            echo ' <span class="none">('.$lang['waiting_loop'].')</span>';
                        }
                        echo "</td><td colspan=\"2\" class='buildingTime'><span id=\"timer".$timer."\">";
                        echo $generator->getTimeFormat($jobs['timestamp']-time());
                        echo "</span> ".$lang['hours_short'].". ";
                        echo $lang['done_at']." ".date('H:i', $jobs['timestamp'])."</td></tr>";
                        $timer +=1;
                    }
                ?>
			</tbody>
		</table>
    </div>
</div>
<script type="text/javascript">
var bld=[{
	"stufe":1,
	"gid":"4",
	"aid":"13"
}]
</script>