<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.24                                                  ##
##  Filename:      Templates/Travian/4/movement.tpl                            ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
<div class="movements">
	<?php
		$aantal=(count($database->getMovement(4,$village->wid,1))+count($database->getMovement(4,$village->wid,0))+count($database->getMovement(3,$village->wid,1))+count($database->getMovement(3,$village->wid,0)));
		if($aantal > 0){
			if($aantal > 0){
    ?>
    <div class="boxes villageList movements">
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
			<?php
					echo	'<table id="movements" cellpadding="1" cellspacing="1"><thead><tr><th colspan="3">'.$lang['troop_movements'].':</th></tr></thead><tbody>';
				}
                /* Units comming back from Reinf,attack,raid */
                $aantal = count($database->getMovement(4,$village->wid,1));
                $aantal2 = $database->getMovement(4,$village->wid,1);
                    if($aantal > 0){
                            foreach($aantal2 as $receive) {
                                $action = 'def1';
                                $aclass = 'd1';
                                $title = $lang['arriving_reinforcing'];
                                $short = $lang['arriving_reinforcing_short'];
                            }
                        echo '
                        <tr>
                            <td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&raquo;</span></td>
                            <td><div class="mov"><span class="'.$aclass.'">'.$aantal.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
                        </tr>';
                $timer += 1;
                }
				/* attack/raid on you! */
				$aantal = count($database->getMovement(3,$village->wid,1));
				$aantal2 = $database->getMovement(3,$village->wid,1);
				for($i=0;$i<$aantal;$i++){
					if($aantal2[$i]['attack_type'] == 2)
						$aantal -= 1;
				}
					if($aantal > 0){
							foreach($aantal2 as $receive) {
								$action = 'att1';
								$aclass = 'a1';
								$title = $lang['own_attacking'];
								$short = $lang['attack'];
							}
						echo '
						<tr>
							<td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&raquo;</span></td>
							<td><div class="mov"><span class="'.$aclass.'">'.$aantal.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
						</tr>';
				$timer += 1;
				}
				/* on attack, raid */
				$aantal = count($database->getMovement(3,$village->wid,0));
				$aantal2 = $database->getMovement(3,$village->wid,0);
				for($i=0;$i<$aantal;$i++){
					if($aantal2[$i]['attack_type'] == 2)
						$aantal -= 1;
				}
					if($aantal > 0){
							foreach($aantal2 as $receive) {
								$action = 'att2';
								$aclass = 'a2';
								$title = $lang['own_attacking'];
								$short = $lang['attack'];
							}
						echo '
						<tr>
							<td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&raquo;</span></td>
							<td><div class="mov"><span class="'.$aclass.'">'.$aantal.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
						</tr>';
				$timer += 1;
				}
				/* Units send to reinf. (to other town) */
				$aantal = count($database->getMovement(3,$village->wid,0));
				$lala=$aantal;
				$aantal2 = $database->getMovement(3,$village->wid,0);
				for($i=0;$i<$aantal;$i++){
					if(($aantal2[$i]['attack_type']==1) or ($aantal2[$i]['attack_type']==3) or ($aantal2[$i]['attack_type']==4)){
						$lala -= 1; }
				}
					if($lala > 0){
							foreach($aantal2 as $receive) {
								$action = 'def2';
								$aclass = 'd2';
								$title = $lang['own_reinforcing'];
								$short = $lang['own_reinforcing_short'];
							}
						echo '
						<tr>
							<td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&raquo;</span></td>
							<td><div class="mov"><span class="'.$aclass.'">'.$lala.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
						</tr>';
				$timer += 1;
				}
				/* Units send to reinf. (to my town) */
				$aantal = count($database->getMovement(3,$village->wid,1)); $lala=$aantal;
				$aantal2 = $database->getMovement(3,$village->wid,1);
				for($i=0;$i<$aantal;$i++){
					if(($aantal2[$i]['attack_type']==1) or ($aantal2[$i]['attack_type']==3) or ($aantal2[$i]['attack_type']==4)){
						$lala -= 1; }
				}
					if($lala > 0){
							foreach($aantal2 as $receive) {
								$action = 'def1';
								$aclass = 'd1';
								$title = $lang['own_reinforcing'];
								$short = $lang['own_reinforcing_short'];
								}
						echo '
						<tr>
							<td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&raquo;</span></td>
							<td><div class="mov"><span class="'.$aclass.'">'.$lala.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
						</tr>';
				$timer += 1;
				}
				/* Units comming back from ATTACK 
				$gettroops = $database->getMovement(3,$village->wid,1);
					for($i=0;$i<count($gettroops);$i++){
						if($gettroops[$i]['attack_type'] == 1)
							unset($gettroops[$i]);
					}
				$aantal2 = array_values($gettroops);
				$aantal = count($aantal2);
					if($aantal > 0){
							foreach($aantal2 as $receive) {
								$action = 'att1';
								$aclass = 'a1';
								$title = $lang['incomming_troops'];
								$short = $lang['attack'];
							}
						echo '
						<tr>
							<td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&laquo;</span></td>
							<td><div class="mov"><span class="'.$aclass.'">'.$aantal.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
						</tr>';
				$timer += 1;
				}
				*/
				/* Settlers */
				////$aantal = count($database->getMovement(5,$village->wid,0));
				//$aantal2 = $database->getMovement(5,$village->wid,0);
				//$aantal = count($aantal2);
				////for($i=0;$i<$aantal;$i++){
				////	if($aantal2[$i]['attack_type'] == 2)
				////		$aantal -= 1;
				////}
				//	if($aantal > 0){
				//			foreach($aantal2 as $receive) {
				//				$action = 'att2';
				//				$aclass = 'a2';
				//				$title = $lang['own_attacking'];
				//				$short = $lang['attack'];
				//			}
				//			
				//		echo '
				//		<tr>
				//			<td class="typ"><a href="build.php?id=39"><img src="img/x.gif" class="'.$action.'" alt="'.$title.'" title="'.$title.'" /></a><span class="'.$aclass.'">&raquo;</span></td>
				//			<td><div class="mov"><span class="'.$aclass.'">'.$aantal.'&nbsp;'.$short.'</span></div><div class="dur_r">'.$lang['in'].'&nbsp;<span id="timer'.$timer.'">'.$generator->getTimeFormat($receive['endtime']-time()).'</span>&nbsp;'.$lang['hours'].'</div></div></td>
				//		</tr>';
				//		
				//$timer += 1;
				//}
			?>
				</tbody>
            </table>
        </div>
	</div>
    <?php } ?>
</div>