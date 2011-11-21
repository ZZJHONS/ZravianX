<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.20                                                  ##
##  Filename:      Templates/Travian/4/login.tpl                               ##
##  Developed by:  Dzoki                                                       ##
##  Reworked by:   ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
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
		<img id="staticElements" src="img/x.gif" alt="" />
		<div class="bodyWrapper">
			<img style="" src="img/x.gif" id="msfilter" alt="" />
			<div id="header">
				<div id="mtop">
                    <a id="logo" href="<?php echo HOMEPAGE; ?>" target="_blank" title="ZravianX"></a>
                    <div class="clear"></div>
				</div>
			</div>
			<div id="mid">
				<a id="ingameManual" href="support.php" title="<?php echo HELP; ?>"><img src="img/x.gif" class="question" alt="<?php echo HELP; ?>"></a>
				<?php include("Templates/Travian/4/menu.tpl"); ?>  
				<div id="contentOuterContainer">
					<div class="contentTitle">&nbsp;</div>
						<div class="contentContainer">
							<div id="content" class="login">
                            	<h1 class="titleInHeader">Login</h1>
                                <h4>Log into game</h4>
                                <p>You must have cookies enabled to be able to log in. If you share this computer with other people you should log out after each session for your own safety.</p>
                            <noscript>
								<div id="noJavaScript">JavaScript is deactivated. You must activate it in your browser settings to be able to play Travian.</div>
                            </noscript>
                            <form method="post" name="snd" action="login.php">
                                <input type="hidden" name="ft" value="a4" />
								<div class="boxes boxesColor gray">
                                    <div class="boxes-tl"></div>
                                    <div class="boxes-tr"></div>
                                    <div class="boxes-tc"></div>
                                    <div class="boxes-ml"></div>
                                    <div class="boxes-mr"></div>
                                    <div class="boxes-mc"></div>
                                    <div class="boxes-bl"></div>
                                    <div class="boxes-br"></div>
                                    <div class="boxes-bc"></div>
                                    <div class="boxes-contents">
										<table class="transparent" cellpadding="1"  cellspacing="1"id="login_form">
											<tbody>
												<tr class="top">
													<th><?php echo NAME; ?> :</th>
													<td>
                                                    	<input class="text" type="text" name="user" value="<?php echo $form->getDiff("user",$_COOKIE['COOKUSR']); ?>" />
                                                        <span class="error"><?php echo $form->getError("user"); ?></span>
													</td>
                                                </tr>
                                                <tr class="btm">
													<th><?php echo PASSWORD; ?></th>
													<td>
														<input class="text" type="password" name="pw" value="" maxlength="20">
                                                        <span class="error"><?php echo $form->getError("pw"); ?></span>
													</td>
												</tr>
												<tr>
													<th></th>
                                                    <td><!--
                                                        <input type="checkbox" id="lowRes" name="lowRes" value="1" />
                                                        <label for="lowRes">Low resolution and low bandwidth version<br />(Notice: reduced map feature set)</label>
                                                    --></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                                <p class="btn">
                                    <button type="submit" value="<?php echo LOGIN; ?>" name="s1" id="s1" onclick="document.snd.w.value=screen.width+':'+screen.height;">
                                        <div class="button-container">
                                            <div class="button-position">
                                                <div class="btl">
                                                    <div class="btr">
                                                        <div class="btc"></div>
                                                    </div>
                                                </div>
                                                <div class="bml">
                                                    <div class="bmr">
                                                        <div class="bmc"></div>
                                                    </div>
                                                </div>
                                                <div class="bbl">
                                                    <div class="bbr">
                                                        <div class="bbc"></div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="button-contents"><?php echo LOGIN; ?></div>
                                        </div>
                                    </button>
                                    <input type="hidden" name="w" value="" />
                                    <input type="hidden" name="login" value="<?php echo COMMENCE; ?>">
                                </p>
                            </form>
							<?php
                                if ($form->getError("pw") == LOGIN_PW_ERROR){
                                    echo "<p class=\"error_box\">
                                    <span class=\"error\">".PW_FORGOTTEN."</span>
                                    <br />
                                    ".PW_REQUEST."
                                    <br />
                                    <a href=\"activate.php?npw=new\">".PW_GENERATE."</a>
                                    </p>";
                                }
                                if($form->getError("activate") != ""){
                                    echo "<p class=\"error_box\">
                                    <span class=\"error\">".EMAIL_NOT_VERIFIED."</span>
                                    <br />
                                    ".EMAIL_FOLLOW."
                                    <br />
                                    <a href=\"activate.php?usr=".$form->getError("activate")."\">".VERIFY_EMAIL."</a>
                                    </p>";
                                }
                            ?>
							<div class="clear">&nbsp;</div>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="contentFooter">&nbsp;</div>
                </div>
                <div id="side_info">
					<?php include("Templates/Travian/4/news.tpl"); ?> 
				</div>
                <div class="clear"></div>
			</div>
			<?php include("Templates/Travian/4/out-footer.tpl"); ?>
        </div>
        <div id="ce"></div>
    </div>            
    <div style="position: absolute; top: 33px; left: 332px; visibility: hidden; opacity: 0; z-index: 10000;">
        <div class="tip">
            <div style="width: 54px;" class="tip-container">
                <div class="tl"></div>
                <div class="tr"></div>
                <div class="tc"></div>
                <div class="ml"></div>
                <div class="mr"></div>
                <div class="mc"></div>
                <div class="bl"></div>
                <div class="br"></div>
                <div class="bc"></div>
                <div class="tip-contents">
                    <div style="display: none;" class="title elementTitle"></div>
                    <div style="display: block;" class="text elementText">Travian</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>