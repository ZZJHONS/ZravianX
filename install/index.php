<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.06                                                  ##
##  Filename:      install/index.php                                           ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include 'templates/script.tpl';
if(!isset($_GET['s'])){
	$_GET['s']=0;
}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>ZravianX Installation</title>
	<link rel="shortcut icon" href="../favicon.ico" />
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=us-ascii" />
	<script src="../mt-full.js" type="text/javascript"></script>
	<script src="../unx.js" type="text/javascript"></script>
	<script src="../new.js" type="text/javascript"></script>
	<link href="../gpack/travian3.6/lang/en/compact.css" rel="stylesheet" type="text/css" />
	<link href="../gpack/travian3.6/travian.css" rel="stylesheet" type="text/css" />
	<link href="../gpack/travian3.6/lang/en/lang.css" rel="stylesheet" type="text/css" />
</head>
<body>
	<div class="wrapper">
		<img class="c1" src="img/x.gif" id="msfilter" alt="" name="msfilter" />
		<div id="dynamic_header"></div>
		<div id="header">
			<div id="mtop"></div>
		</div>
		<div id="mid">
			<div id="side_navi">
				<?php include 'templates/menu.tpl'; ?>
			</div>
			<div id="content" class="login">
				<?php
					IHG_Progressbar::draw_css();
					$bar = new IHG_Progressbar(7, 'Step %d from %d ');
					$bar->draw();
					for($i = 0; $i < ($_GET['s']+1); $i++){
						$bar->tick();
					}
				?>
				<div class="headline">
					<center>
						<span class="f18 c5">ZravianX Installation Script</span>
					</center>
				</div>
				<?php
					if(substr(sprintf('%o', fileperms('../')), -4)<'700'){
							echo '<span class="f18 c5">ERROR!</span><br />It\'s not possible to write the config file. Change the permission to "777". After that, refresh this page!';
					}else{
						switch($_GET['s']){
							case 0:
								include 'templates/greet.tpl';
								break;
							case 1:
								include 'templates/config.tpl';
								break;
							case 2:
								include 'templates/dataform.tpl';
								break;
							case 3:
								include 'templates/field.tpl';
								break;
							case 4:
								include 'templates/multihunter.tpl';
								break;
							case 5:
								include 'templates/oasis.tpl';
								break;
							case 6:
								include 'templates/end.tpl';
								break;
						}
					}
				?>
			</div>
			<div id="side_info" class="outgame"></div>
			<div class="clear"></div>
		</div>
		<div class="footer-stopper outgame"></div>
		<div class="clear"></div>
		<div id="footer">
			<div class="footer-menu c3" id="mfoot">
				<br />
				<div class="copyright">&copy; 2011 ZravianX All rights reserved</div>
				<div class="copyright">Server running on: <b><font color="red">v<?php include '../Templates/version.tpl'; ?></font></b></div>
				<div class="copyright"><a rel="license" href="http://creativecommons.org/licenses/by-nc-sa/3.0/"><img alt="Licencia Creative Commons" style="border-width:0" src="http://i.creativecommons.org/l/by-nc-sa/3.0/88x31.png" /></a></div>
			</div>
			<div id="cfoot"></div>
		</div>
	</div>
	<div id="ce"></div>
</body>
</html>