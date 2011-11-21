<?php
include('GameEngine/Account.php');
$regactive="active";  
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head><style id="jScroll.css" media="screen" type="text/css">.jScroll {overflow: hidden; width: 100%; height: 100%;position:relative;}
.jScroll .jScroll-content {position: absolute; top: 0px; left: 0px;}
.jScroll .jScroll-scroll {cursor:pointer; position: absolute; height: 100%; right: 0px; top: 0px;}
.jScroll .jScroll-scroll-up {position: absolute; width: 100%;}
.jScroll .jScroll-scroll-slider {position: absolute; width: 100%;}
.jScroll .jScroll-scroll-down {position: absolute; width: 100%;}
.jScroll .jScroll-scroll-between {position: absolute; width: 100%;}
.jScroll .jScroll-scroll-slider {top: 10px; height: 50px;}
.jScroll .jScroll-scroll-slider .top {width: 100%;}
.jScroll .jScroll-scroll-slider .center {width: 100%;}
.jScroll .jScroll-scroll-slider .bottom {width: 100%;}
.jScroll .jScroll-scroll-down {bottom: 0px;}
.jScroll .jScroll-element-scroll {width: 15px;}
.jScroll .jScroll-element-down {background: transparent url(uncrypt.js?1314084856images/down.gif) no-repeat center bottom; height: 6px;}
.jScroll .jScroll-element-down:hover {background-image: url(uncrypt.js?1314084856images/down-hover.gif);}
.jScroll .jScroll-element-up {background: transparent url(uncrypt.js?1314084856images/up.gif) no-repeat center top; height: 6px;}
.jScroll .jScroll-element-up:hover {background-image: url(uncrypt.js?1314084856images/up-hover.gif);}
.jScroll .jScroll-element-between {margin-left: 4px; width: 7px; opacity: 0; background-color: #000000; filter: alpha(opacity=0);}
.jScroll .jScroll-element-between:hover {opacity: 0.25; filter: alpha(opacity=25);}
.jScroll .jScroll-element-between.clicked {opacity: 0.5; filter: alpha(opacity=50);}
.jScroll .jScroll-element-slider .top {background: transparent url(uncrypt.js?1314084856images/slider-top.gif) no-repeat center top; height: 1px;}
.jScroll .jScroll-element-slider:hover .top {background-image: url(uncrypt.js?1314084856images/slider-top-hover.gif);}
.jScroll .jScroll-element-slider .center {background: transparent url(uncrypt.js?1314084856images/slider-center.gif) repeat-y center top;}
.jScroll .jScroll-element-slider:hover .center {background-image: url(uncrypt.js?1314084856images/slider-center-hover.gif);}
.jScroll .jScroll-element-slider .bottom {background: transparent url(uncrypt.js?1314084856images/slider-bottom.gif) no-repeat center bottom; height: 1px;}
.jScroll .jScroll-element-slider:hover .bottom {background-image: url(uncrypt.js?1314084856images/slider-bottom-hover.gif);}
</style>
        <title><?php echo SERVER_NAME; ?></title>
        <meta http-equiv="cache-control" content="max-age=0">
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="imagetoolbar" content="no">
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="content-language" content="us">
                        <link href="<?php echo GP_LOCATE; ?>lang/au/compact.css" rel="stylesheet" type="text/css"><link href="<?php echo GP_LOCATE; ?>lang/au/lang.css" rel="stylesheet" type="text/css">                        <link href="<?php echo GP_LOCATE; ?>travian_basics.css" rel="stylesheet" type="text/css">
                       <script type="text/javascript">
Travian.Translation.add(
{
    'allgemein.anleitung':    'Manual',
    'allgemein.cancel':    'cancel',
    'allgemein.ok':    'OK',
    'cropfinder.keine_ergebnisse': 'No search results found.'
});
Travian.applicationId = 'T4.0 Game';
Travian.Game.version = '4.0';
Travian.Game.worldId = 'travx';
</script>                    </head>
    <body class="v35 gecko signup">
                    <div id="wrapper">
                <img id="staticElements" src="img/x.gif" alt="">
                                <div class="bodyWrapper">
                    
                                        <img style="" src="img/x.gif" id="msfilter" alt="">
                                        <div id="header">
                        <div id="mtop">
                            <a id="logo" href="http://www.travian.us/" target="_blank"></a>

                                                        <div class="clear"></div>
                        </div>
                    </div>

                    <div id="mid">
                                                <a id="ingameManual" href="http://ts1.travian.us/support.php">
                            <img src="img/x.gif" class="question" alt="Help">
                        </a>

                    <?php include("Templates/menu.tpl"); ?>                                                 <div class="clear"></div>
                        <div id="contentOuterContainer">
                            <div class="contentTitle">&nbsp;</div>
                            <div class="contentContainer">
                                <div id="content" class="signup"><h1 class="titleInHeader">register</h1>
         <ul class="important">
<?php
echo $form->getError('tribe');
echo $form->getError('agree');
?>
        </ul>
        <h4 class="round">User data</h4>
        <form name="snd" method="post" action="anmelden.php">
        <input type="hidden" name="ft" value="a1" /> 
            <table id="sign_input" class="transparent" cellpadding="1" cellspacing="1">
            <tbody>
                <tr class="top">
                    <th><label for="userName"><?php echo NICKNAME; ?></label></th>
                    <td>
                        <input id="userName" class="text" name="name" maxlength="15" type="text" value="<?php echo $form->getValue('name'); ?>">
                        <span class="error"><?php echo $form->getError('name'); ?></span>
                    </td>
                </tr>
                <tr>
                    <th><label for="userEmail"><?php echo EMAIL; ?></label></th>
                    <td>
                        <input id="userEmail" class="text" name="email" value="<?php echo $form->getValue('email'); ?>" maxlength="40" type="text">
                        <span class="error"><?php echo $form->getError('email'); ?></span>
                    </td>
                </tr>
                <tr class="btm">
                    <th><label for="userPassword"><?php echo PASSWORD; ?></label></th>
                    <td>
                        <input id="userPassword" class="text" name="pw" value="<?php echo $form->getValue('pw'); ?>" maxlength="20" type="password">
                        <span class="error"><?php echo $form->getError('pw'); ?></span>
                    </td>
                </tr>
            </tbody>
        </table>

        <h4 class="round">Choose tribe</h4>
        <p class="tribeInfo">Before signing up, please read through the <a href="http://t4.answers.travian.us/index.php?aid=7#go2answer" target="_blank">manual</a> in order to gain a better understanding of the advantages and disadvantages of the three tribes.</p>
        <div class="tribeSelect">
            <div class="tribe romans">
                <div class="selection">
                    <input id="tribeRomans" class="radio" name="vid" value="1" type="radio" <?php echo $form->getRadio('vid',1); ?>> <label for="tribeRomans"><?php echo ROMANS; ?></label>
                </div>
                <label for="tribeRomans"><img src="img/x.gif" class="tribeImage romans" alt="<?php echo ROMANS; ?>"></label>
            </div>

            <div class="tribe teutons">
                <div class="selection">
                    <input id="tribeTeutons" class="radio" name="vid" value="2" type="radio" <?php echo $form->getRadio('vid',2); ?>> <label for="tribeTeutons"><?php echo TEUTONS; ?></label>
                </div>
                <label for="tribeTeutons"><img src="img/x.gif" class="tribeImage teutons" alt="<?php echo TEUTONS; ?>"></label>
            </div>


            <div class="tribe gauls">
                <div class="selection">
                    <input id="tribeGauls" class="radio" name="vid" value="3" type="radio" <?php echo $form->getRadio('vid',3); ?>> <label for="tribeGauls"><?php echo GAULS; ?></label>
                </div>
                <label for="tribeGauls"><img src="img/x.gif" class="tribeImage gauls" alt="<?php echo GAULS; ?>"></label>
            </div>

            <div class="clear"></div>
        </div>

        <h4 class="round">Starting position</h4>
        <table id="sign_select" class="transparent" cellpadding="1" cellspacing="1">
            <tbody>
                <tr>
                    <td>
                        <input class="radio" id="positionRandom" name="kid" value="0" checked="checked" type="radio">&nbsp;<label for="positionRandom"><?php echo RANDOM; ?></label>
                    </td>
                    <td>
                        <input class="radio" id="positionNW" name="kid" value="1" type="radio" <?php echo $form->getRadio('kid',1); ?>>&nbsp;<label for="positionNW"><?php echo NW; ?></label>
                    </td>
                    <td>
                        <input class="radio" id="positionNE" name="kid" value="2" type="radio" <?php echo $form->getRadio('kid',2); ?>>&nbsp;<label for="positionNE"><?php echo NE; ?></label>
                    </td>
                </tr>
                <tr>
                    <td class="pos2">
                        &nbsp;
                    </td>
                    <td>
                        <input class="radio" id="positionSW" name="kid" value="3" type="radio" <?php echo $form->getRadio('kid',3); ?>>&nbsp;<label for="positionSW"><?php echo SW; ?></label>
                    </td>
                    <td>
                        <input class="radio" id="positionSE" name="kid" value="4" type="radio" <?php echo $form->getRadio('kid',4); ?>>&nbsp;<label for="positionSE"><?php echo SE; ?></label>
                    </td>
                </tr>
            </tbody>
        </table>
    
            <h4 class="round">more information</h4>
            <div class="checks">
                <input class="check" id="agb" name="agb" value="1" type="checkbox">
                <label for="agb">I have read and accept the <a href="rules.php" target="_blank">rules</a> and <a href="terms.php" target="_blank">terms and conditions</a>.</label>
            </div>
           
        
        <div class="btn">
            <input name="w" value="" maxlength="9" type="hidden">
            <input name="form" value="1" type="hidden">
            <button type="submit" value="register" name="s1" id="s1"><div class="button-container"><div class="button-position"><div class="btl"><div class="btr"><div class="btc"></div></div></div><div class="bml"><div class="bmr"><div class="bmc"></div></div></div><div class="bbl"><div class="bbr"><div class="bbc"></div></div></div></div><div class="button-contents">register</div></div></button>
        </div>
    </form> <center><p class="info"><?php echo ONE_PER_SERVER; ?></p></center>                                <div class="clear">&nbsp;</div>                            </div>                            <div class="clear"></div>
                        </div>                         <div class="contentFooter">&nbsp;</div>
                    </div>                    <div id="side_info"><?php
if(NEWSBOX1) { include("Templates/News/newsbox1.tpl"); }
?> 
          
        </div>                    <div class="clear"></div>
                </div>
                <?php include("Templates/footer.tpl"); ?>  

            <div id="ce"></div>
                                                        </div>

            
<div style="position: absolute; top: 0px; left: 0px; visibility: hidden; opacity: 0; z-index: 10000;"><div class="tip"><div class="tip-container"><div class="tl"></div><div class="tr"></div><div class="tc"></div><div class="ml"></div><div class="mr"></div><div class="mc"></div><div class="bl"></div><div class="br"></div><div class="bc"></div><div class="tip-contents"><div class="title elementTitle"></div><div class="text elementText"></div></div></div></div></div></body></html>