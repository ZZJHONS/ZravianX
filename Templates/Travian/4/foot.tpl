<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.23                                                  ##
##  Filename:      Templates/Travian/4/foot.tpl                                ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
?>
                            <div class="clear"></div>
                            <div class="clear">&nbsp;</div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="contentFooter">&nbsp;</div>
                </div>
                <div id="side_info">
                    <div class="sideInfoHero">
                        <img id="heroImage" src="img/hero_image.gif" class="heroImage" title="<?php echo $lang['hero']; ?>" alt="<?php echo $lang['hero']; ?>">
                        <div class="heroImageBorder"></div>
                        <a id="heroProfile" href="hero_inventory.php" class="heroProfile"></a>
                        <a href="hero_adventure.php" class="adventures" title="<?php echo $lang['adventure']; ?>"></a>
                        <a href="hero_auction.php" class="auctions" title="<?php echo $lang['auctions']; ?>"></a>
                    </div>
                    <script type="text/javascript">
                        window.addEvent('domready', function()
                        {
                            var element = $('heroProfile');
                            if (!element)
                            {
                                return;
                            }
                            var fnHeroTitle = function()
                            {
                                element.removeEvent('mouseover', fnHeroTitle);
                                Travian.ajax(
                                {
                                    data:
                                    {
                                        cmd: 'getHeroStatus'
                                    },
                                    onSuccess: function(data)
                                    {
                                        element.setTitle(data.statusInfoText);
                                        Travian.Tip.show(data.statusInfoText);
                                    }
                                });
                            };
                            element.addEvent('mouseover', fnHeroTitle);
                        });
                    </script>
                    <div class="sideInfoPlayer">
                        <a class="signLink" href="spieler.php?uid=<?php echo $session->uid; ?>" title="<?php echo $lang['profile']; ?>">
                            <span class="wrap"><?php echo $_SESSION['username']; ?></span>
                        </a>
                        <img class="nationBig nationBig<?php echo $session->tribe; ?>" alt="<?php echo $lang['tribe']; ?>" title="<?php echo $lang['tribe']; ?>" src="img/x.gif">
                    </div>
                    <? include("Templates/Travian/4/multivillage.tpl"); ?> 
            </div>
            <div class="clear"></div>
        </div>
        <?php include("Templates/Travian/4/footer.tpl"); ?>
        <div id="stime" class="stime">
            <div class="content-background-l">&nbsp;</div>
            <div class="content-background-r">&nbsp;</div>
            <div class="content day" title="Day">
                <?php echo $lang['server_time']; ?>:&nbsp;<span id="tp1"><?php echo date('H:i:s'); ?></span>
            </div>
        </div>
        <div id="plusLink">
            <div id="gs">
                <p class="gold">
                    <a href="plus.php?id=3" title="<?php echo $lang['gold']; ?>"><img src="img/x.gif" alt="<?php echo $lang['gold']; ?>" class="gold"><br /><?php echo $session->gold; ?></a>
                </p>
                <p class="silver">
                    <a href="plus.php?id=3" title="<?php echo $lang['silver']; ?>"><img src="img/x.gif" alt="silver" class="silver"><br />0</a>
                </p>
                <div class="clear"></div>
            </div>
            <div id="plus">
                <a href="plus.php" class="plusBtn" title="<?php echo $lang['plus_menu']; ?>"><span class="plusBtn-l"><span class="plus_g">P</span><span class="plus_o">l</span><span class="plus_g">u</span><span class="plus_o">s</span></span><span class="plusBtn-r">&nbsp;</span></a>
            </div>
        </div>
        <div class="clear"></div>                    
        <?php include("Templates/Travian/4/res.tpl"); ?>
        <div class="clear"></div>
        <script type="text/javascript">
            resources.production = {
                'l1': <?php echo $village->getProd("wood"); ?>,
                'l2': <?php echo $village->getProd("clay"); ?>,
                'l3': <?php echo $village->getProd("iron"); ?>,
                'l4': <?php echo $village->getProd("crop"); ?>
            };
        </script>
        <div id="villageName">
            <div class="clickable" ondblclick="Travian.Game.showEditVillageDialog('<?php echo $lang['change_village_name']; ?>.', '<?php echo $lang['new_village_name']; ?>:', '<?php echo $lang['save']; ?>',114001);"  title="<?php echo $lang['click_change_village_name']; ?>.">
                <span id="villageNameField"><?php echo $village->vname; ?></span>
                <br />
                <?php
                    if($village->loyalty > '66'){
                        $village_loyalty = "high";
                    } else if ($village->loyalty > '33'){
                        $village_loyalty = "medium";
                    } else {
                        $village_loyalty = "low";
                    }
                ?>
                <span class="loyalty <?php echo $village_loyalty; ?>">
                    <?php echo $lang['loyalty']; ?>: <?php echo floor($village->loyalty); ?>%
                </span>
            </div>
        </div>
    
    
        <div class="questMaster">
            <div id="anm" style="width:120px; height:140px; visibility:hidden;"></div>
            <div id="qge">
                <img onclick="qst_handle();" src="img/x.gif" id="qgei" class="master nation<?php echo $session->tribe; ?>" title="<?php echo $lang['to_the_quest']; ?>" alt="<?php echo $lang['to_the_quest']; ?>" />
            </div>
            <script type="text/javascript">
                quest.number = -15;
                quest.last = 24;
                cache_preload = new Image();
                cache_preload.src = "img/x.gif";
                cache_preload.className = "cranny";
            </script>
        </div>
        <script type="text/javascript">
            Travian.Translation.add(
            {
                'close' : '<?php echo $lang["close"]; ?>'
            });
        </script>
        <?php /* Test code */ ?>
        <div id="sideInfoCountdown">
            <div class="head"></div>
            <div class="content">
                <?php
                    $displayarray = $database->getUserArray($session->uid,1);
                    if($displayarray['protect'] > time()){
                        $uurover = date('H:i:s', ($displayarray['protect']-time())-3600);
                ?>
                You has <span id="timer1"><?php echo $uurover; ?></span> hours of beginners protection left.	
                <?php
                    } else {
                        $geregistreerd=date('d-m-Y', ($displayarray['timestamp'])); 
                ?>
                Today is <?php echo $geregistreerd; ?>.
                <?php } ?>
            </div>
        </div>
        <?php /* End test code */ ?>
        <div id="anwersQuestionMark">
            <a href="<?php echo HOMEPAGE; ?>#help" target="_blank" title="<?php echo SERVER_NAME." ".$lang['help']; ?>">&nbsp;</a>
        </div>
        <div id="ce"></div>
	</div>
</body>
</html>