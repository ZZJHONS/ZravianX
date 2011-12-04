<?php

#################################################################################
##              -= YOU MAY NOT REMOVE OR CHANGE THIS NOTICE =-                 ##
## --------------------------------------------------------------------------- ##
##  Filename       login.php                                                   ##
##  Developed by:  Dzoki                                                       ##
##  License:       TravianX Project                                            ##
##  Copyright:     TravianX (c) 2010-2011. All rights reserved.                ##
##                                                                             ##
#################################################################################


error_reporting(E_ALL);
include("GameEngine/Account.php");
if(isset($_GET['del_cookie'])) {
	setcookie("COOKUSR","",time()-3600*24,"/");
	header("Location: login.php");
}
if(!isset($_COOKIE['COOKUSR'])) {
	$_COOKIE['COOKUSR'] = "";
}
$logactive="active"; 
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
        <title><?php echo SERVER_NAME; ?></title>
        <meta http-equiv="cache-control" content="max-age=0">
        <meta http-equiv="pragma" content="no-cache">
        <meta http-equiv="expires" content="0">
        <meta http-equiv="imagetoolbar" content="no">
        <meta http-equiv="content-type" content="text/html; charset=UTF-8">
        <meta name="content-language" content="<?php echo LANG; ?>">
		<link href="gpack/travian4/lang/en/compact.css" rel="stylesheet" type="text/css">
        <link href="gpack/travian4/lang/en/lang.css" rel="stylesheet" type="text/css">
		<link href="img/travian4/travian_basics.css" rel="stylesheet" type="text/css">
		<script type="text/javascript">
			Travian.Translation.add({
					'allgemein.anleitung':    'Manual',
					'allgemein.cancel':    'Cancel',
					'allgemein.ok':    'OK',
					'cropfinder.keine_ergebnisse': 'No search results found.'
				});
			Travian.applicationId = 'ZravianX Game';
			Travian.Game.version = '2011.11.20';
			Travian.Game.worldId = 'ZravianX';
		</script>
	</head>
<body class="v35 webkit chrome login">
                    <div id="wrapper">
                <img id="staticElements" src="img/x.gif" alt="">
                                <div class="bodyWrapper">
                    
                                        <img style="" src="img/x.gif" id="msfilter" alt="">
                                        <div id="header">
                        <div id="mtop">
                            <a id="logo" href="http://www.travian.com.au/" target="_blank"></a>

                                                        <div class="clear"></div>
                        </div>
                    </div>

                    <div id="mid">
                    
                                                <a id="ingameManual" href="http://ts5.travian.com.au/support.php">
                            <img src="img/x.gif" class="question" alt="Help">
                        </a>
                        <?php include("Templates/menu.tpl"); ?>  
                        <div id="contentOuterContainer">
                            <div class="contentTitle">&nbsp;</div>
                            <div class="contentContainer">
                                <div id="content" class="login"><h1 class="titleInHeader">Login</h1>

<h4>Log into game</h4>
<p>You must have cookies enabled to be able to log in. If you share this
 computer with other people you should log out after each session for 
your own safety.</p>

<noscript>
    <div id="noJavaScript">
        JavaScript is deactivated. You must activate it in your browser settings to be able to play Travian.    </div>
</noscript>



<form method="post" name="snd" action="login.php">
<input type="hidden" name="ft" value="a4" /> 

    <div class="boxes boxesColor gray"><div class="boxes-tl"></div><div class="boxes-tr"></div><div class="boxes-tc"></div><div class="boxes-ml"></div><div class="boxes-mr"></div><div class="boxes-mc"></div><div class="boxes-bl"></div><div class="boxes-br"></div><div class="boxes-bc"></div><div class="boxes-contents">    <table class="transparent" id="login_form" cellpadding="1" cellspacing="1">
        <tbody>
            <tr class="top">
                <th><?php echo NAME; ?></th>
                <td>
                    <input class="text" name="user" value="<?php echo $form->getDiff("user",$_COOKIE['COOKUSR']); ?>" type="text"> <span class="error"><?php echo $form->getError("user"); ?> </span>
                </td>
            </tr>
            <tr class="btm">
                <th><?php echo PASSWORD; ?></th>
                <td>
                    <input class="text" name="pw" value="" maxlength="20" type="password"> <span class="error"><?php echo $form->getError("pw"); ?></span>
                </td>
            </tr>
            <tr>
                <th></th>
                <td>
                    
                </td>
            </tr>
        </tbody>
    </table>
    <div class="clear"></div>
        </div>
                </div>

    <p class="btn">
        <button type="submit" value="Login" name="s1" id="s1" onclick="document.snd.w.value=screen.width+':'+screen.height;"><div class="button-container"><div class="button-position"><div class="btl"><div class="btr"><div class="btc"></div></div></div><div class="bml"><div class="bmr"><div class="bmc"></div></div></div><div class="bbl"><div class="bbr"><div class="bbc"></div></div></div></div><div class="button-contents">Login</div></div></button>        <input name="w" value="" type="hidden">
        <input name="login" value="1314451416" type="hidden">
    </p>
</form>
<?php
if ($form->getError("pw") == LOGIN_PW_ERROR) {
echo "<p class=\"error_box\">
    <span class=\"error\">".PW_FORGOTTEN."</span><br>
    ".PW_REQUEST."<br>
    <a href=\"activate.php?npw=71699\">".PW_GENERATE."</a>
</p>";
}
if($form->getError("activate") != "") {
    echo "<p class=\"error_box\">
    <span class=\"error\">".EMAIL_NOT_VERIFIED."</span><br>
    ".EMAIL_FOLLOW."<br>
    <a href=\"activate.php?usr=".$form->getError("activate")."\">".VERIFY_EMAIL."</a>
    </p>";
}
?>

                                <div class="clear">&nbsp;</div>                            </div>                            <div class="clear"></div>
                        </div>                         <div class="contentFooter">&nbsp;</div>
                    </div>                    <div id="side_info"><?php
if(NEWSBOX1) { include("Templates/News/newsbox1.tpl"); }
?> 
          
        </div>                    <div class="clear"></div>
                </div>
                
<?php include("Templates/footer.tpl"); ?>  
<div id="ce"></div>
                                                        </div>

            
<div style="position: absolute; top: 33px; left: 332px; visibility: hidden; opacity: 0; z-index: 10000;"><div class="tip"><div style="width: 54px;" class="tip-container"><div class="tl"></div><div class="tr"></div><div class="tc"></div><div class="ml"></div><div class="mr"></div><div class="mc"></div><div class="bl"></div><div class="br"></div><div class="bc"></div><div class="tip-contents"><div style="display: none;" class="title elementTitle"></div><div style="display: block;" class="text elementText">Travian</div></div></div></div></div></body></html>