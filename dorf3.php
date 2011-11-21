<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.07                                                  ##
##  Filename:      dorf3.php                                                   ##
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
if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF']);
}
include ("Templates/head.tpl");
include ("Templates/body.tpl");
?>
<div id="content"  class="village3">
	<?php 
        if($session->plus){
          if(isset($_GET['s'])){
            if($_GET['s'] == 2){
              include("Templates/dorf3/2.tpl");   
            }elseif($_GET['s'] == 3){
              include("Templates/dorf3/3.tpl");   
            }elseif($_GET['s'] == 4){
              include("Templates/dorf3/4.tpl");   
            }elseif($_GET['s'] == 5){
              include("Templates/dorf3/5.tpl");   
            }
          }else{
            include("Templates/dorf3/1.tpl");     
          } 
        }else{
          include("Templates/dorf3/noplus.tpl"); 
        }     
    ?>           
</div>
<?php include ("Templates/end.tpl"); ?>