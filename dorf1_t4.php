<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.20                                                  ##
##  Filename:      dorf1.php                                                   ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

include("GameEngine/Village.php");
$start = $generator->pageLoadTimeStart();
if(isset($_GET['ok'])){
	$database->updateUserField($session->username,'ok','0','0'); $_SESSION['ok'] = '0'; }
if(isset($_GET['newdid'])) {
	$_SESSION['wid'] = $_GET['newdid'];
	header("Location: ".$_SERVER['PHP_SELF']);
}
else {
	$building->procBuild($_GET);
}
$dorf1active ="active";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<style id="jScroll.css" media="screen" type="text/css">
		.jScroll {overflow: hidden; width: 100%; height: 100%;position:relative;}
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
        .jScroll .jScroll-element-down {background: transparent url(A2EB891D63C8/avg_ls_dom.jsimages/down.gif) no-repeat center bottom; height: 6px;}
        .jScroll .jScroll-element-down:hover {background-image: url(A2EB891D63C8/avg_ls_dom.jsimages/down-hover.gif);}
        .jScroll .jScroll-element-up {background: transparent url(A2EB891D63C8/avg_ls_dom.jsimages/up.gif) no-repeat center top; height: 6px;}
        .jScroll .jScroll-element-up:hover {background-image: url(A2EB891D63C8/avg_ls_dom.jsimages/up-hover.gif);}
        .jScroll .jScroll-element-between {margin-left: 4px; width: 7px; opacity: 0; background-color: #000000; filter: alpha(opacity=0);}
        .jScroll .jScroll-element-between:hover {opacity: 0.25; filter: alpha(opacity=25);}
        .jScroll .jScroll-element-between.clicked {opacity: 0.5; filter: alpha(opacity=50);}
        .jScroll .jScroll-element-slider .top {background: transparent url(A2EB891D63C8/avg_ls_dom.jsimages/slider-top.gif) no-repeat center top; height: 1px;}
        .jScroll .jScroll-element-slider:hover .top {background-image: url(A2EB891D63C8/avg_ls_dom.jsimages/slider-top-hover.gif);}
        .jScroll .jScroll-element-slider .center {background: transparent url(A2EB891D63C8/avg_ls_dom.jsimages/slider-center.gif) repeat-y center top;}
        .jScroll .jScroll-element-slider:hover .center {background-image: url(A2EB891D63C8/avg_ls_dom.jsimages/slider-center-hover.gif);}
        .jScroll .jScroll-element-slider .bottom {background: transparent url(A2EB891D63C8/avg_ls_dom.jsimages/slider-bottom.gif) no-repeat center bottom; height: 1px;}
        .jScroll .jScroll-element-slider:hover .bottom {background-image: url(A2EB891D63C8/avg_ls_dom.jsimages/slider-bottom-hover.gif);}
    </style>
	<title><?php echo SERVER_NAME; ?></title>
	<meta http-equiv="cache-control" content="max-age=0">
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="expires" content="0">
    <meta http-equiv="imagetoolbar" content="no">
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
	<meta name="content-language" content="<?php echo LANG; ?>">
	<link href="gpack/travian4/lang/en/compact.css" rel="stylesheet" type="text/css" />
    <link href="gpack/travian4/lang/en/lang.css" rel="stylesheet" type="text/css" />
    <link href="img/travian4/travian_basics.css" rel="stylesheet" type="text/css" />
	<script src="crypt_t4.js"> type="text/javascript"</script>
	<script type="text/javascript">
        Travian.Translation.add(
        {
            'allgemein.anleitung':    'Instructions',
            'allgemein.cancel':    'cancel',
            'allgemein.ok':    'OK',
            'cropfinder.keine_ergebnisse': 'No search results found.'
        });
        Travian.applicationId = 'ZravianX Game';
        Travian.Game.version = '2011.11.20';
        Travian.Game.worldId = 'ZravianX';
    </script>
</head>                    
<body class="v35 webkit chrome village1">
	<div id="wrapper">
		<img id="staticElements" src="img/x.gif" alt="">
		<div id="logoutContainer">
			<a id="logout" href="logout.php">&nbsp;</a>
		</div>
		<div class="bodyWrapper">
			<img style="" src="img/x.gif" id="msfilter" alt="">
			<div id="header">
            	<?php include ("Templates/Travian/4/header.tpl");  ?>
			</div>
			<div id="mid">
				<a id="ingameManual" href="help.php"><img src="img/x.gif" class="question" alt="Help"></a>
				<div class="clear"></div>
				<div id="contentOuterContainer">
					<div class="contentTitle">&nbsp;</div>
						<div class="contentContainer">
							<div id="content" class="village1">
                            	<?php
                                	include ("Templates/Travian/4/field.tpl");
									$timer = 1;
									if($building->NewBuilding){include("Templates/Building.tpl");}
								?>
							<div id="map_details">
								<?php
                                    include("Templates/Travian/4/movement.tpl"); 
                                    include("Templates/Travian/4/production.tpl"); 
                                    include("Templates/Travian/4/troops.tpl"); 
                                ?>
                                <div class="clear"></div>
                            </div>
                            <div class="clear"></div>
							<div class="clear">&nbsp;</div>
						</div>
                        <div class="clear"></div>
					</div>
                    <div class="contentFooter">&nbsp;</div>
				</div>
				<div id="side_info">
					<div class="sideInfoHero">
						<img id="heroImage" src="img/hero_image.gif" class="heroImage" alt="Hero">
						<div class="heroImageBorder"></div>
                            <a id="heroProfile" href="hero_inventory.php" class="heroProfile"></a>
                            <a href="hero_adventure.php" class="adventures"></a>
                            <a href="hero_auction.php" class="auctions"></a>
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
							<a class="signLink" href="spieler.php?uid=<?php echo $session->uid; ?>" title="Profile">
								<span class="wrap"><?php echo $_SESSION['username']; ?></span>
							</a>
							<img class="nationBig nationBig<?php echo $session->tribe; ?>" alt="Tribe"  title="Tribe" src="img/x.gif">
						</div>
						<? include("Templates/Travian/4/multivillage.tpl"); ?> 
				</div>
				<div class="clear"></div>
			</div>
			<?php include("Templates/Travian/4/footer.tpl"); ?>
		<div id="stime" class="stime">
			<div class="content-background-l">&nbsp;</div>
			<div class="content-background-r">&nbsp;</div>
			<div class="content day">
				Server time:&nbsp;<span id="tp1"><?php echo date('H:i:s'); ?></span>
			</div>
		</div>
        <div id="plusLink">
			<div id="gs">
				<p class="gold"><a href="plus.php?id=3"><img src="img/x.gif" alt="Gold" class="gold"><br><?php echo $session->gold ?></a></p>
				<p class="silver"><a href="hero_auction.php"><img src="img/x.gif" alt="Silver" class="silver"><br>0</a></p>
				<div class="clear"></div>
			</div>
			<div id="plus">
				<a href="plus.php" class="plusBtn"><span class="plusBtn-l"><span class="plus_g">P</span><span class="plus_o">l</span><span class="plus_g">u</span><span class="plus_o">s</span></span><span class="plusBtn-r">&nbsp;</span></a>
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
			<div class="clickable" ondblclick="Travian.Game.showEditVillageDialog('Change village name.', 'New village name:', 'Save',15027);">
				<span id="villageNameField"><?php echo $village->vname; ?></span>
                <br />
				<span class="loyalty high">
					Loyalty: <?php echo $village->loyalty; ?>%
				</span>
			</div>
        </div>
		<div class="questMaster">
			<div id="anm" style="width:120px; height:140px; visibility:hidden;"></div>
            <div id="qge">
                <img onclick="qst_handle();" src="img/x.gif" id="qgei" class="master nation<?php echo $session->tribe; ?>" title="To the quest" alt="To the quest" />
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
            Travian.Translation.add({
                'close' : 'close'
            });
        </script>
	</div>
	<div id="ce"></div>
</div>
<div style="position: absolute; top: 45px; left: 162px; visibility: hidden; opacity: 0; z-index: 10000;">
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
                <div style="display: block;" class="text elementText">ZravianX</div>
            </div>
        </div>
    </div>
</div>
<img style="position: absolute;" alt="" src="img/stats_002.htm" height="1" width="1">
</body>
</html>