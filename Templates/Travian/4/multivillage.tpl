<div id="villageList" class="listing">
	<div class="head">
	<a href="dorf3.php" accesskey="9" title="<?php echo $lang['village_overview']; ?>"><?php echo $lang['villages']; ?></a>
</div>
<div class="list">
	<ul>
        <?php
            $returnVillageArray = $database->getArrayMemberVillage($session->uid);
            for($i=1; $i<=count($session->villages);++$i){
				if($session->villages[$i-1] == $village->wid){
					$select = "active";
				} else {
					$select = "";
				}
				echo '<li class="entry '.$select.'" title="'.htmlspecialchars($returnVillageArray[$i-1]['name']).'">';
				echo '<a href="?newdid='.$returnVillageArray[$i-1]['wref'].(($id>=19) ? "&id=".$id : "&id=0").'" accesskey="b" class="'.$select.'" title="'.htmlspecialchars($returnVillageArray[$i-1]['name']).' ('.$returnVillageArray[$i-1]['x'].'|'.$returnVillageArray[$i-1]['y'].')">'.$returnVillageArray[$i-1]['name'].'</a>';
				echo '</li>';
			}
        ?>        
	</ul>
</div>
<div class="foot"></div>
</div>