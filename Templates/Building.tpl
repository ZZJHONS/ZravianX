<div class="boxes buildingList"><div class="boxes-tl"></div><div class="boxes-tr"></div><div class="boxes-tc"></div><div class="boxes-ml"></div><div class="boxes-mr"></div><div class="boxes-mc"></div><div class="boxes-bl"></div><div class="boxes-br"></div><div class="boxes-bc"></div><div class="boxes-contents">
            <table cellpadding="1" cellspacing="1" id="building_contract">
                <thead>
                    <tr>
                        <th colspan="4"><?php echo BUILDING_UPGRADING;?> 
                        <?php if($session->gold >= 2) {   ?>
                            <div class="finishNow" title="Finish all construction and research orders in this village immediately for 2 Gold?"><a class="arrow" href="?buildingFinish=1" onclick="return confirm('Finish all construction and research orders in this village immediately for 2 Gold?');">complete construction immediately </a> (costs: <img src="img/x.gif" class="gold" alt="Gold" title="Gold"/> <b>2</b> )
                    </div><?php } ?></th>

                    </tr>
                </thead>
            <tbody>
        <?php 
        if($_GET['buildingFinish'] == 1 AND $session->gold >= 2) {
            $gold=$database->getUserField($_SESSION['username'],'gold','username');
              $gold-=2;
              $database->updateUserField($_SESSION['username'],'gold',$gold,0);
        }
        
        if(!isset($timer)) {
        $timer = 1;
        }
        foreach($building->buildArray as $jobs) {
            echo "<tr><td class=\"ico\"><a href=\"?d=".$jobs['id']."&a=0&c=$session->checker\">";
            echo "<img src=\"img/x.gif\" class=\"del\" title=\"cancel\" alt=\"cancel\" /></a></td><td>";
            echo $building->procResType($jobs['type'])." (Level ".($village->resarray['f'.$jobs['field']]+($jobs['field']==$BuildFirst?2:1 )).")";
            if($jobs['loopcon'] == 0) { $BuildFirst = $jobs['field']; }
            if($jobs['loopcon'] == 1) {
                echo " (waiting loop)";
            }
            echo "</td><td><span id=\"timer".$timer."\">";
            echo $generator->getTimeFormat($jobs['timestamp']-time());
            echo "</span> hrs.</td>";
            echo "<td>done at ".date('H:i', $jobs['timestamp'])."</td></tr>";
            $timer +=1;
          }
        ?></tbody>
        </table>    </div>

</div><script type="text/javascript">var bld=[{"stufe":1,"gid":"4","aid":"13"}]</script>
 