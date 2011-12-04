                                <map name="rx" id="rx">
                                <?php 
    $coorarray = array(1=>"190,88,28","280,89,28","348,101,28","132,127,28","245,140,28","302,147,28","387,145,28","72,178,28","153,179,28","343,179,28","430,179,28","80,239,28","153,229,28","289,265,28","411,234,28","184,319,28","275,324,28","365,301,28");
        for($i=1;$i<=18;$i++) {
            echo "<area href=\"build.php?id=$i\" coords=\"$coorarray[$i]\" shape=\"circle\" title=\"".$building->procResType($village->resarray['f'.$i.'t'])." Level ".$village->resarray['f'.$i]."\"/>";
        }
    ?>
<area href="dorf2.php" coords="250,191,32" shape="circle" alt="">
</map>
<div id="village_map" class="f<?php echo $village->type; ?>">
<?php 
for($i=1;$i<=18;$i++) {
    if($village->resarray['f'.$i.'t'] != 0) {
    $text = "";
    switch($i) {
    case 1:
    $text = "Woodcutter Level";
    $style = "left:179px;top:79px;";
    break;
    case 2:
    $text = "Clay Pit Level";
    $style = "left:269px;top:80px;";
    break;
    case 3:
     $text = "Iron Mine Level";
     $style = "left:337px;top:92px;";
    break;
    case 4:
    $text = "Cropland Level";
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
    echo "<div class=level style=".$style.">".$village->resarray['f'.$i]."</div> ";
    }
   }
  ?>     
    <img id="resfeld" usemap="#rx" src="img/x.gif" alt="">
    <div id="village_circles"></div>
</div> 