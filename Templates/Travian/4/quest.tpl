<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.04                                                  ##
##  Filename:      TEmplates/Travian/4/quest.tpl                               ##
##  Developed by:  Fanha Giang                                                 ##
##  Improved by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

if($_SESSION['qst']<24 && QUEST==true){
?>
    <div class="questMaster">
        <div id="anm" style="width:120px; height:140px; visibility:hidden;"></div>
        <div id="qge">
			<img onclick="qst_handle();" src="img/x.gif" id="qgei" class="master nation<?php echo $session->tribe; ?>" title="<?php echo $lang['to_the_quest']; ?>" alt="<?php echo $lang['to_the_quest']; ?>" />
        </div>
        <script type="text/javascript">
            <?php if ($_SESSION['qst']==0){ ?>
                quest.number=null;
            <?php }else{ ?>
                quest.number=0,1;
            <?php } ?>
            quest.last = 24;
            cache_preload = new Image();
            cache_preload.src = "img/x.gif";
            cache_preload.className = "main";
        </script>	
    </div>
    <script type="text/javascript">
        Travian.Translation.add({
            'close' : '<?php echo $lang["close"]; ?>'
        });
    </script>
<?php } ?>