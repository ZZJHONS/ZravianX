<?php 
#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       troops.tpl                                                  ##
##  Developed by:  Advocaite                                                       ##
##  License:       TravianX T4 Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################
?>
<div class="boxes villageList units"><div class="boxes-tl"></div><div class="boxes-tr"></div><div class="boxes-tc"></div><div class="boxes-ml"></div><div class="boxes-mr"></div><div class="boxes-mc"></div><div class="boxes-bl"></div><div class="boxes-br"></div><div class="boxes-bc"></div><div class="boxes-contents">

<table id="troops" cellpadding="1" cellspacing="1">
<thead><tr>
	<th colspan="3"><?php echo TROOPS_DORF; ?></th>
</tr></thead><tbody>
<?php
$units = $technology->getUnitList();
if(count($units) == 0) {
	echo "<tr><td>none</td></tr>";
}
else {
	foreach($units as $unit) {
		echo "<tr><td class=\"ico\"><a href=\"build.php?id=39\"><img class=\"unit u".$unit['id']."\" src=\"img/x.gif\" alt=\"".$unit['name']."\" title=\"".$unit['name']."\" /></a></td>
";	
		echo "<td class=\"num\">".$unit['amt']."</td><td class=\"un\">".$unit['name']."</td></tr>";
	}
	}


?>
	</tbody></table>
</div>
                </div>