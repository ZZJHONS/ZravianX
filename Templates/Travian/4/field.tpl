<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.26                                                  ##
##  Filename:      Templates/Travian/4/field.tpl                               ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

# Load default array position
$coorarray = array(1=>"190,88,28","280,89,28","348,101,28","132,127,28","245,140,28","302,147,28","387,145,28","72,178,28","153,179,28","343,179,28","430,179,28","80,239,28","153,229,28","289,265,28","411,234,28","184,319,28","275,324,28","365,301,28");

# Load level & type
$arrayVillage = $village->resarray;
?>
<map name="rx" id="rx">
    <?php 
        for($i=1;$i<=18;$i++) {
			echo "<area href=\"build.php?id=$i\" coords=\"$coorarray[$i]\" shape=\"circle\" title=\"&lt;b&gt;".$building->procResType($arrayVillage['f'.$i.'t'])."&lt;/b&gt;||".$lang['level']." ".$arrayVillage['f'.$i]."\" alt=\"".$building->procResType($arrayVillage['f'.$i.'t'])." ".$lang['level']." ".$arrayVillage['f'.$i]."\"/>\r\n";
		}
    ?>
    <area href="dorf2.php" coords="250,191,32" shape="circle" alt="" title="<?php echo $lang['buildings']; ?>">
</map>
<div id="village_map" class="f<?php echo $village->type; ?>">
    <?php 
        for($i=1;$i<=18;$i++) {
            if($arrayVillage['f'.$i.'t'] != 0) {
                $text = "";
                switch($i) {
                    case 1:
                    $text = $lang['build1'].$lang['level'];
                    $style = "left:179px;top:79px;";
                    break;
                    case 2:
                    $text = $lang['build2'].$lang['level'];
                    $style = "left:269px;top:80px;";
                    break;
                    case 3:
                    $text = $lang['build3'].$lang['level'];
                    $style = "left:337px;top:92px;";
                    break;
                    case 4:
                    $text = $lang['build4'].$lang['level'];
                    $style = "left:121px;top:118px;";
                    break;
                    case 5:
                    $style = "left:234px;top:131px;";
                    break;
                    case 6:
                    $style = "left:291px;top:138px;";
                    break;
                    case 7:
                    $style = "left:376px;top:136px;";
                    break;
                    case 8:
                    $style = "left:61px;top:169px;";
                    break;
                    case 9:
                    $style = "left:142px;top:170px;";
                    break;
                    case 10:
                    $style = "left:332px;top:170px;";
                    break;
                    case 11:
                    $style = "left:419px;top:170px;";
                    break;
                    case 12:
                    $style = "left:69px;top:230px;";
                    break;
                    case 13:
                    $style = "left:142px;top:220px;";
                    break;
                    case 14:
                    $style = "left:278px;top:256px;";
                    break;
                    case 15:
                    $style = "left:400px;top:225px;";
                    break;
                    case 16:
                    $style = "left:173px;top:310px;";
                    break;
                    case 17:
                    $style = "left:264px;top:315px;";
                    break;
                    case 18:
                    $style = "left:354px;top:292px;";
                    break;
            }
			echo "<div class=\"level\" style=".$style.">";
			if($arrayVillage['f'.$i] != 0){echo $arrayVillage['f'.$i];}
			echo "</div>\r\n";
            }
        }
    ?>     
    <img id="resfeld" usemap="#rx" src="img/x.gif" alt="">
    <div id="village_circles"></div>
</div>