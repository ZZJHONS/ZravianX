<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       multivillage.tpl                                            ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################

if(count($session->villages) > 1) {
?> 
<div id="villageList" class="listing">
	<div class="head">
	<a href="dorf3.php" accesskey="9">Villages:</a>
</div>
<div class="list">
	<ul>
		<?php
            for($i=1; $i<=count($session->villages); $i++) {
				if($session->villages[$i-1] == $village->wid)
					{$select = "active";}
				else{$select = "";}
				echo '<li class="entry '.$select.' title="">';
				echo '<a href=\"?newdid='.$session->villages[$i-1].'\">'.$database->getVillageField($session->villages[$i-1],'name').'</a></td>';
				echo '</li>';
            }
        ?>
	</ul>
</div>
<div class="foot"></div>
</div>
<?php } ?>