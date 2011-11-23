<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.23                                                  ##
##  Filename:      Templates/multivillage.tpl                                  ##
##  Developed by:  Dzoki                                                       ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

if(count($session->villages) > 1){
?>
<table id="vlist" cellpadding="1" cellspacing="1">
	<thead>
		<tr>
			<td colspan="3"><a href="dorf3.php" accesskey="9"><?php echo MULTI_V_HEADER; ?>:</a></td>
		</tr>
	</thead>
	<tbody>
    <?php
		$returnVillageArray = $database->getArrayMemberVillage($session->uid);
		for($i=1;$i<=count($session->villages);++$i){echo'
		<tr>
			<td class="dot '.(($_SESSION['wid'] == $returnVillageArray[$i-1]['wref'] ) ? 'hl':'').'">●</td>
			<td class="link"><a href="?newdid='.$returnVillageArray[$i-1]['wref'].(($id>=19) ? "&id=".$id : "&id=0").'">'.htmlspecialchars($returnVillageArray[$i-1]['name']).'</a></td>
			<td class="aligned_coords"><div class="cox">('.$returnVillageArray[$i-1]['x'].'</div><div class="pi">|</div><div class="coy">'.$returnVillageArray[$i-1]['y'].')</div></td>
        </tr>
        ';}
    ?>
	</tbody>
</table>
<?php } ?>