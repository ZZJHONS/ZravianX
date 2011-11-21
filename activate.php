<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.02                                                  ##
##  Filename:      activate.php                                                ##
##  Developed by:  Dixie                                                       ##
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
            <div id="content"  class="activate">
				<?php
                    if(isset($_GET['e'])) {
                        switch($_GET['e']) {
                            case 1:
                            include("Templates/activate/delete.tpl");
                            break;
                            case 2:
                            include("Templates/activate/activated.tpl");
                            break;
                            case 3:
                            include("Templates/activate/cantfind.tpl");
                            break;
                        }
                    } else if(isset($_GET['id']) && isset($_GET['c'])) {
                        $c=$database->getActivateField($_GET['id'],"email",0);
                        if($_GET['c'] == $generator->encodeStr($c,5)){
                            include("Templates/activate/delete.tpl");
                        } else { include("Templates/activate/activate.tpl"); }
                    } else {
                    include("Templates/activate/activate.tpl");
                    }
                    
                    /*if(isset($_GET['e'])) {
                        switch($_GET['e']) {
                            case 1:
                            include("Templates/activate/delete.tpl");
                            break;
                            case 2:
                            include("Templates/activate/activated.tpl");
                            break;
                            case 3:
                            include("Templates/activate/cantfind.tpl");
                            break;
                        }
                    } else
                    if(isset($_GET['id']) && isset($_GET['c']) && $_GET['c'] == $generator->encodeStr($_COOKIE['COOKEMAIL'],5)) {
                        include("Templates/activate/delete.tpl");
                    } else
                    if(isset($_GET['id']) && !isset($_GET['c']) && !isset($_GET['e'])) {
                        include("Templates/activate/activate.tpl");
                    }
                    else if(isset($_GET['usr']) && !isset($_GET['c']) && !isset($_GET['e'])) {
                        $_COOKIE['COOKUSR'] = $_GET['usr'];
                        $_COOKIE['COOKEMAIL'] = $database->getUserField($_GET['usr'],"email",1);
                        include("Templates/activate/activate.tpl");
                    } else
                    if(isset($_GET['npw'])) {
                    } else  {
                    
                    }*/
                ?>
            </div>
            <div id="side_info" class="outgame"></div>
            <div class="clear"></div>
        </div>
        <div class="footer-stopper outgame"></div>
        <div class="clear"></div>
        <?php include("Templates/footer.tpl"); ?>
    <div id="ce"></div>
</body>
</html>