<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.24                                                  ##
##  Filename:      Templates/Travian/3.6/build.tpl                             ##
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
<div id="content"  class="build">
	<?php
        if(isset($_GET['id'])) {
            if(isset($_GET['s']))
            {
                if (!ctype_digit($_GET['s'])) {
                    $_GET['s'] = null;
                }
            }
            if(isset($_GET['t']))
            {
                if (!ctype_digit($_GET['t'])) {
                    $_GET['t'] = null;
                }
            }
            if (!ctype_digit($_GET['id'])) {
                $_GET['id'] = "1";
            }
            $id = $_GET['id'];
            if($id=='99' AND $village->resarray['f99t'] == 40){
            include("Templates/Build/ww.tpl");
            } else
            if($village->resarray['f'.$_GET['id'].'t'] == 0 && $_GET['id'] >= 19) {
                include("Templates/Build/avaliable.tpl");
            }
            else {
                if(isset($_GET['t'])) {
                    if($_GET['t'] == 1) {
                    $_SESSION['loadMarket'] = 1;
                    }
                    include("Templates/Build/".$village->resarray['f'.$_GET['id'].'t']."_".$_GET['t'].".tpl");
                } else
                if(isset($_GET['s'])) {
                    include("Templates/Build/".$village->resarray['f'.$_GET['id'].'t']."_".$_GET['s'].".tpl");
                }
                else {
                    include("Templates/Build/".$village->resarray['f'.$_GET['id'].'t'].".tpl");
                }
            }
        }
    ?>
</div>
<?php include ("Templates/end.tpl"); ?>