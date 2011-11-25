<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.24                                                  ##
##  Filename:      Templates/Travian/3.6/dorf2.tpl                             ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include ("Templates/head.tpl");
include ("Templates/body.tpl");
?>
<div id="content"  class="village2">
	<h1><?php echo $village->vname; ?><br /></h1>
	<?php
    include("Templates/dorf2.tpl");
	if($building->NewBuilding) {include("Templates/Building.tpl");}
	?>
</div>
<?php include ("Templates/end.tpl"); ?>