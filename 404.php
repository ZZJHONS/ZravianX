<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.10.30                                                  ##
##  Filename:      404.php                                                     ##
##  Developed by:  Dzoki & SlimShady95                                         ##
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
	<link rel="shortcut icon" href="favicon.ico" />
	<meta name="content-language" content="<?php echo LANG; ?>" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<script src="mt-core.js" type="text/javascript"></script>
	<script src="unx.js" type="text/javascript"></script>
	<script src="new.js" type="text/javascript"></script>
	<link href="<?php echo GP_LOCATE; ?>lang/en/compact.css" rel="stylesheet" type="text/css" />
	<link href="<<?php echo GP_LOCATE; ?>lang/en/lang.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo GP_LOCATE; ?>/travian.css" rel="stylesheet" type="text/css" />
</head>
<body class="v35">
	<div class="wrapper">
		<div id="dynamic_header"></div>
		<div id="header"></div>
		<div id="mid">
			<?php include("Templates/menu.tpl"); ?>
            <div id="content"  class="error_site">
				<?php include ("Templates/404.tpl"); ?>
            </div>
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