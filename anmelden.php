<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.09                                                  ##
##  Filename:      anmelden.php                                                ##
##  Developed by:  Dzoki                                                       ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include('GameEngine/Account.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title><?php echo SERVER_NAME; ?></title>
	<link rel="shortcut icon" href="favicon.ico"/>
	<meta name="content-language" content="<?php echo LANG; ?>" />
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<script src="mt-core.js" type="text/javascript"></script>
	<script src="mt-more.js" type="text/javascript"></script>
	<script src="unx.js" type="text/javascript"></script>
	<script src="new.js" type="text/javascript"></script>
   	<link href="<?php echo GP_LOCATE; ?>lang/en/compact.css" rel="stylesheet" type="text/css" />
   	<link href="<?php echo GP_LOCATE; ?>lang/en/lang.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo GP_LOCATE ?>travian.css" rel="stylesheet" type="text/css" />
</head>
<body class="ie ie7" onload="initCounter()">
    <div class="wrapper">
        <div id="dynamic_header"></div>
        <div id="header"></div>
        <div id="mid">
			<?php include("Templates/menu.tpl"); ?>
            <div id="content" class="signup">
                <h1><img src="img/x.gif" class="anmelden" alt="register for the game"></h1>
                <h5><img src="img/x.gif" class="img_u05" alt="registration"/></h5>
                <p><?php echo BEFORE_REGISTER; ?></p>
				<form name="snd" method="post" action="anmelden.php">
                    <input type="hidden" name="ft" value="a1" />
                    <table cellpadding="1" cellspacing="1" id="sign_input">
                        <tbody>
                            <tr class="top">
                                <th><?php echo NICKNAME; ?></td>
                                <td><input class="text" type="text" name="name" value="<?php echo $form->getValue('name'); ?>" maxlength="15" />
                                <span class="error"><?php echo $form->getError('name'); ?></span>
                                </td>
                            </tr>
                            <tr>
                                <th><?php echo EMAIL; ?></th>
                                <td>
                                    <input class="text" type="text" name="email" value="<?php echo $form->getValue('email'); ?>" maxlength="40" />
                                    <span class="error"><?php echo $form->getError('email'); ?></span>
                                    </td>
                                </tr>
                            <tr class="btm">
                                <th><?php echo PASSWORD; ?></th>
                                <td>
                                    <input class="text" type="password" name="pw" value="<?php echo $form->getValue('pw'); ?>" maxlength="20" />
                                    <span class="error"><?php echo $form->getError('pw'); ?></span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <table cellpadding="1" cellspacing="1" id="sign_select">
                        <tbody>
                            <tr class="top">
                                <th width="109"><img src="img/x.gif" class="img_u06" alt="choose tribe"></th>
                                <th colspan="2"><img src="img/x.gif" class="img_u07" alt="starting position"></th>
                            </tr>
                            <tr>
                                <td rowspan="5" class="nat">
                                    <label>
                                        <img src="img/rpage/Roman.jpg" alt="Romans" width="87" height="87" longdesc="img" />
                                        <br />
                                        <input class="radio" type="radio" name="vid" value="1" <?php echo $form->getRadio('vid',1); ?>>&nbsp;<?php echo ROMANS; ?>
                                    </label>
                                </td>
                                <td width="170" class="btm">&nbsp;</td>
                                <td width="158" class="btm">&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="pos1"><label><input class="radio" type="radio" name="kid" value="0" checked>&nbsp;<?php echo RANDOM; ?></label></td>
                                <td width="158" class="btm">&nbsp;</td>
                            </tr>
                            <tr>
                                <td><label><input class="radio" type="radio" name="kid" value="1" <?php echo $form->getRadio('kid',1); ?>>&nbsp;<?php echo NW; ?> <b>(-|+)</b></label></td>
                                <td><label><input class="radio" type="radio" name="kid" value="2" <?php echo $form->getRadio('kid',2); ?>>&nbsp;<?php echo NE; ?> <b>(+|+)</b></label></td>
                            </tr>
                            <tr>
                                <td><label><input class="radio" type="radio" name="kid" value="3" <?php echo $form->getRadio('kid',3); ?>>&nbsp;<?php echo SW; ?> <b>(-|-)</b></label></td>
                                <td><label><input class="radio" type="radio" name="kid" value="4" <?php echo $form->getRadio('kid',4); ?>>&nbsp;<?php echo SE; ?> <b>(+|-)</b></label></td>
                            </tr>
                            <tr>
                                <td class="btm">&nbsp;</td>
                                <td class="btm">&nbsp;</td>
                            </tr>		
                            <tr>
                                <td>
                                    <label>
                                        <img src="img/rpage/Teuton.jpg" alt="Teuton" width="87" height="87" longdesc="img" />
                                        <br />
                                        <input class="radio" type="radio" name="vid" value="2" <?php echo $form->getRadio('vid',2); ?>>&nbsp;<?php echo TEUTONS; ?>
                                    </label>
                                </td>
                                <td colspan="2" rowspan="2">
                                    <img src="img/rpage/travian_logo.png" width="219" height="234" longdesc="img" />
                                </td>
                            </tr>		
                            <tr>
                                <td>
                                    <label>
                                        <img src="img/rpage/Gaul.jpg" alt="Gaul" width="87" height="87" longdesc="img" />
                                        <br />
                                        <input class="radio" type="radio" name="vid" value="3" <?php echo $form->getRadio('vid',3); ?>>&nbsp;<?php echo GAULS; ?>
                                    </label>
                                </td> 
                            </tr>
                            <tr>
                                <td>
                                    <label>
                                        <img src="img/rpage/Nature.jpg" alt="Gaul" width="87" height="87" longdesc="img" />
                                        <br />
                                        <input class="radio" type="radio" name="vid" value="4" <?php echo $form->getRadio('vid',4); ?>>&nbsp;Nature
                                    </label>
                                    <th colspan="2">
                                    	Nature don't work 100%, sorry.
                                    </th>
                                </td> 
                            </tr>
                            <tr class="btm">
                                <td>
                                    <label>
                                        <img src="img/rpage/Natars.jpg" alt="Gaul" width="87" height="87" longdesc="img" />
                                        <br />
                                        <input class="radio" type="radio" name="vid" value="5" <?php echo $form->getRadio('vid',5); ?>>&nbsp;Natars
                                    </label>
                                    <th colspan="2">
                                    	Natars don't work 100%, sorry.
                                    </th>
                                </td> 
                            </tr>
                        </tbody>
                    </table>
                    <ul class="important">
						<?php
							echo $form->getError('tribe');
							echo $form->getError('agree');
                        ?>
                    </ul>
                    <p><input class="check" type="checkbox" name="agb" value="1" <?php echo $form->getRadio('agb',1); ?>/><?php echo ACCEPT_RULES; ?></p>
                    <p class="btn"><input type="image" value="anmelden" name="s1" id="btn_signup" class="dynamic_img" src="img/x.gif" alt="register"/></p>
				</form>
                <p class="info"><?php echo ONE_PER_SERVER; ?></p>
            </div>
            <div id="side_info" class="outgame">
				<?php include("Templates/news.tpl"); ?>
            </div>
            <div class="clear"></div>
        </div>
        <div class="footer-stopper outgame"></div>
        <div class="clear"></div>
		<?php include("Templates/footer.tpl"); ?>
    <div id="ce"></div>
</body>
</html>