<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.25                                                  ##
##  Filename:      Templates/Travian/4/karte.tpl                               ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################
# Test #
?>
<div id="content" class="map">
	<h1 class="titleInHeader">Map</h1>
    <div class="map2">
		<div id="mapContainer">
			<div class="innerShadow">
				<div class="innerShadow-tl">
					<div class="innerShadow-tr">
						<div class="innerShadow-tc"></div>
					</div>
				</div>
				<div class="innerShadow-ml">
					<div class="innerShadow-mr"></div>
				</div>
				<div class="innerShadow-bl">
					<div class="innerShadow-br">
						<div class="innerShadow-bc"></div>
					</div>
                </div>
            </div>
            <div id="toolbar" class="toolbar">
                <div class="ml">
                    <div class="mr">
                        <div class="mc">
                            <div class="contents">
                                <div class="iconButton zoomIn" title="zoom in"></div>
                                <div class="iconButton zoomOut" title="zoom out"></div>
									<div class="dropdown">
										<div class="dataContainer">
											<div class="entry display">100%</div>
                                            <div class="entry hide">50%</div>
                                            <div class="entry hide">8%</div>
										</div>
										<div class="iconButton dropDownImage" title="zoom level"></div>
										<div class="clear"></div>
									</div>
									<div class="separator"></div>
                                    <div class="text">Filter</div>
                                    <div class="iconButton filterMy checked" title="show my marks"></div>
                                    <div class="iconButton filterAlliance disabled" title="show alliance´s marks"></div>
                                    <div class="clear"></div>
                                </div>
                            </div>
                        </div>
                    </div>
					<div class="bl">
                        <div class="br">
                            <div class="bc"></div>
                        </div>
                    </div>
                </div>
				<script type="text/javascript">
                    Travian.Game.Map.Options.Toolbar.filterPlayer.checked = true;
                    Travian.Game.Map.Options.Toolbar.filterAlliance.checked =  false;
                </script>
				<form id="mapCoordEnter" action="karte.php" method="get" class="toolbar ">
					<div class="ml">
                        <div class="mr">
                            <div class="mc">
                                <div class="contents">
                                    <div class="coordinatesInput">
                                        <div class="xCoord">
                                            <label for="xCoordInputMap">X:</label>
                                            <input maxlength="4" value="0" name="x" id="xCoordInputMap" class="text coordinates x " />
                                        </div>
                                        <div class="yCoord">
                                            <label for="yCoordInputMap">Y:</label>
                                            <input maxlength="4" value="0" name="y" id="yCoordInputMap" class="text coordinates y " />
                                        </div>
                                        <div class="clear"></div>
                                    </div>
									<button type="submit" value="OK" class="small">
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
                                            <div class="button-contents">OK</div>
										</div>
                                    </button>
                                    <div class="clear"></div>
								</div>
                            </div>
                        </div>
                    </div>
                </form>
                <div id="minimapContainer">
                    <div class="background"></div>
                    <div class="headline">
                        <div class="title">Minimap</div>
                        <div class="iconButton small"></div>
                        <div class="clear"></div>
                    </div>
                    <div id="miniMap">
                        <img class="map" style="width: 185px; height: 109px;" src="minimap.php" alt="Minimap" />
                    </div>
                    <div class="bl">
                        <div class="br">
                            <div class="bc"></div>
                        </div>
                    </div>
                </div>
                <div id="outline">
                    <div class="tl">
                        <div class="tr">
                            <div class="tc"></div>
                        </div>
                    </div>
                    <div class="background"></div>
                    <div id="mapMarks">
                        <div class="headline">
                            <div class="title">Outline</div>
                            <div class="iconButton small"></div>
                            <div class="clear"></div>
                        </div>
                        <div class="tabContainer">
                            <div class="tab">
                                <div class="entry selected">
                                    <div class="tab-container">
                                        <div class="tab-position">
                                            <div class="tab-tl">
                                                <div class="tab-tr">
                                                    <div class="tab-tc"></div>
                                                </div>
                                            </div>
                                            <div class="tab-ml">
                                                <div class="tab-mr">
                                                    <div class="tab-mc"></div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-contents">
                                            <a href="#" onclick="
                                                if (!$(this).up('.entry').hasClass('selected'))
                                                {
                                                    $('tabPlayer').show();
                                                    $('tabAlliance').hide();
                                                    $(this).up('.entry').toggleClass('selected').next('.entry').toggleClass('selected');
                                                }
                                                $('mapContainer')._map.mapMarks.player.update(false);
                                                return false;
                                            ">Players</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="clear"></div>
                            </div>
                            <div id="tabPlayer" class="dataTab"></div>
                            <div id="tabAlliance" class="dataTab"></div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="contextmenu">
                <div class="background">
                    <div class="background-tl">
                        <div class="background-tr">
                            <div class="background-tc"></div>
                        </div>
                    </div>
                    <div class="background-ml">
                        <div class="background-mr">
                            <div class="background-mc"></div>
                        </div>
                    </div>
                    <div class="background-bl">
                        <div class="background-br">
                            <div class="background-bc"></div>
                        </div>
                    </div>
                </div>
                <div class="background-content">
                    <div>
                        <div class="tl">
                            <div class="tr">
                                <div class="tc"></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="contents">
                                        <div id="contextMenuSendTroops" class="entry">
                                            <a href="#flag">send troops</a>
                                        </div>
                                        <div id="contextMenuSendTraders" class="entry">
                                            <a href="#flag">send merchants</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc"></div>
                            </div>
                        </div>
                    </div>
                    <div class="separator separatorActions"></div>
                    <div>
                        <div class="tl">
                            <div class="tr">
                                <div class="tc"></div>
                            </div>
                        </div>
                        <div class="ml">
                            <div class="mr">
                                <div class="mc">
                                    <div class="contents">
                                        <div class="hideIE6 title">Players</div>
                                        <div id="contextMenuMarkPlayerAlliance" class="hideIE6 entry">
                                            <a href="#flag">mark alliance</a>
                                        </div>
                                        <div id="contextMenuMarkPlayerPlayer" class="hideIE6 entry">
                                            <a href="#flag">mark player</a>
                                        </div>
                                        <div id="contextMenuFlagPlayer" class="hideIE6 entry">
                                            <a href="#flag">mark field</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="bl">
                            <div class="br">
                                <div class="bc"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<script type="text/javascript">
                Travian.Translation.add(
            {
                'k.spieler':		'Player',
                'k.einwohner':		'Population',
                'k.allianz':		'Alliance',
                'k.volk':			'Tribe',
                'k.dt':				'Village',
                'k.bt':				'Occupied oasis',
                'k.fo':				'Unoccupied oasis',
                'k.vt':				'Abandoned valley',
                'k.loadingData':	'Loading...',
        
                'a.v1':		'Romans',
                'a.v2':		'Teutons',
                'a.v3':		'Gauls',
                'a.v4':		'Nature',
                'a.v5':		'Natars',
        
                'k.f1':		'3-3-3-9',
                'k.f2':		'3-4-5-6',
                'k.f3':		'4-4-4-6',
                'k.f4':		'4-5-3-6',
                'k.f5':		'5-3-4-6',
                'k.f6':		'1-1-1-15',
                'k.f7':		'4-4-3-7',
                'k.f8':		'3-4-4-7',
                'k.f9':		'4-3-4-7',
                'k.f10':	'3-5-4-6',
                'k.f11':	'4-3-5-6',
                'k.f12':	'5-4-3-6',
                'k.f99':	'Natarian village',
        
                'b.ri1':	'Won as attacker without losses.',
                'b.ri2':	'Won as attacker with losses.',
                'b.ri3':	'Lost as attacker.',
                'b.ri4':	'Won as defender without losses.',
                'b.ri5':	'Won as defender with losses.',
                'b.ri6':	'Lost as defender with losses.',
                'b.ri7':	'Lost as defender without losses.',
        
                'b:ri1':	'&lt;img src="img/x.gif" class="iReport iReport1"/&gt;'.unescapeHtml(),
                'b:ri2':	'&lt;img src="img/x.gif" class="iReport iReport2"/&gt;'.unescapeHtml(),
                'b:ri3':	'&lt;img src="img/x.gif" class="iReport iReport3"/&gt;'.unescapeHtml(),
                'b:ri4':	'&lt;img src="img/x.gif" class="iReport iReport4"/&gt;'.unescapeHtml(),
                'b:ri5':	'&lt;img src="img/x.gif" class="iReport iReport5"/&gt;'.unescapeHtml(),
                'b:ri6':	'&lt;img src="img/x.gif" class="iReport iReport6"/&gt;'.unescapeHtml(),
                'b:ri7':	'&lt;img src="img/x.gif" class="iReport iReport7"/&gt;'.unescapeHtml(),
        
                'b:bi0':	'&lt;img class="carry empty" src="img/x.gif" alt="Bounty" /&gt;'.unescapeHtml(),
                'b:bi1':	'&lt;img class="carry half" src="img/x.gif" alt="Bounty" /&gt;'.unescapeHtml(),
                'b:bi2':	'&lt;img class="carry" src="img/x.gif" alt="Bounty" /&gt;'.unescapeHtml(),
        
                'a.r1':		'Lumber',
                'a.r2':		'Clay',
                'a.r3':		'Iron',
                'a.r4':		'Crop',
        
                'a.atm1':	'Adventure 1',
                'a.atm2':	'Adventure 2',
                'a.atm3':	'Adventure 3',
                'a.atm4':	'Adventure 4',
                'a.atm5':	'Adventure 5',
                'a.atm6':	'Adventure 6',
                'a.atm7':	'Adventure 7',
                'a.atm8':	'Adventure 8',
                'a.atm9':	'Adventure 9',
                'a.atm10':	'Adventure 10',
                'a.atm11':	'Adventure 11',
                'a.atm12':	'Adventure 12',
                'a.atm13':	'Adventure 13',
                'a.atm14':	'Adventure 14',
                'a.atm15':	'Adventure 15',
                'a.atm16':	'Adventure 16',
                'a.atm17':	'Adventure 17',
                
                'a.ad':		'Difficulty:',
                'a.ad0':	'hard',
                'a.ad1':	'normal',
                'a.ad2':	'normal',
                'a.ad3':	'normal',
                
                'a:r1':		'&lt;img alt="Lumber" src="img/x.gif" class="r1"&gt;'.unescapeHtml(),
                'a:r2':		'&lt;img alt="Clay" src="img/x.gif" class="r2"&gt;'.unescapeHtml(),
                'a:r3':		'&lt;img alt="Iron" src="img/x.gif" class="r3"&gt;'.unescapeHtml(),
                'a:r4':		'&lt;img alt="Crop" src="img/x.gif" class="r4"&gt;'.unescapeHtml(),
        
                'k.arrival':	'arrival at',
                'k.ssupport':	'reinforcement',
                'k.sspy':		'scouting',
                'k.sreturn':	'return',
                'k.sraid':		'raid',
                'k.sattack':	'attack'
            });
        </script>
		<script type="text/javascript">
                window.addEvent('domready', function()
            {
                        var containerViewSize = {
                    width:	543,
                    height: 401
                };
        
                var fnDelayMe = function()
                {
                
                    var fnInit = function()
                    {
                        Travian.Game.Map.Options.Rulers.steps = $merge(Travian.Game.Map.Options.Rulers.steps, {"x":{"1":1,"2":1,"3":10,"4":20},"y":{"1":1,"2":1,"3":10,"4":20}});
                        Travian.Game.Map.Options.Default.dataStore = $merge(Travian.Game.Map.Options.Default.dataStore, {"cachingTimeForType":{"blocks":1800000,"symbol":600000,"tile":600000,"tooltip":300000},"persistentStorage":false,"useStorageForType":{"blocks":false,"symbol":false,"tile":false,"tooltip":false},"clearStorageForType":{"blocks":false,"symbol":false,"tile":false,"tooltip":false}});
                        Travian.Game.Map.Options.Default.updater = $merge(Travian.Game.Map.Options.Default.updater, {"maxRequestCount":5,"requestDelayTime":{"multiple":100,"position":300},"url":"ajax.php","positionOptions":{"areaAroundPosition":{"1":{"left":-5,"top":-4,"right":5,"bottom":4},"2":{"left":-10,"top":-8,"right":10,"bottom":8},"3":{"left":-15,"top":-15,"right":15,"bottom":15},"4":{"left":-15,"top":-15,"right":15,"bottom":15}}}});
                        Travian.Game.Map.Options.Default.tileDisplayInformation.type = 'dialog';
        
                        Travian.Game.Map.Options.MapMark.Flag.dialog.html = '<div class=\"mapMarkField\">\n	<div class=\"flag {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\">\n		<input id=\"coordinateDialogText\" class=\"text {inputText}\" type=\"text\" />\n	<\/div>\n<\/div>';
                        Travian.Game.Map.Options.MapMark.Mark.dialog.html = '<div class=\"mapMarkMark\">\n	<div class=\"color {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\"><\/div>\n<\/div>';
        
                        Travian.Game.Map.Options.Default.mapMarks.player.layers.alliance.dialog.html = '<div class=\"mapMarkMark\">\n	<div class=\"color {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\"><\/div>\n<\/div>';
                        Travian.Game.Map.Options.Default.mapMarks.player.layers.player.dialog.html = '<div class=\"mapMarkMark\">\n	<div class=\"color {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\"><\/div>\n<\/div>';
                        Travian.Game.Map.Options.Default.mapMarks.alliance.layers.alliance.dialog.html = '<div class=\"mapMarkMark\">\n	<div class=\"color {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\"><\/div>\n<\/div>';
                        Travian.Game.Map.Options.Default.mapMarks.alliance.layers.player.dialog.html = '<div class=\"mapMarkMark\">\n	<div class=\"color {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\"><\/div>\n<\/div>';
        
                        Travian.Game.Map.Options.Default.mapMarks.player.layers.flag.dialog.html = '<div class=\"mapMarkField\">\n	<div class=\"flag {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\">\n		<input id=\"coordinateDialogText\" class=\"text {inputText}\" type=\"text\" />\n	<\/div>\n<\/div>';
                        Travian.Game.Map.Options.Default.mapMarks.alliance.layers.flag.dialog.html = '<div class=\"mapMarkField\">\n	<div class=\"flag {select}\"><\/div>\n	<div class=\"{coord}\">\n		\n			<div class=\"coordinatesInput\">\n				<div class=\"xCoord\">\n					<label for=\"coordinateDialogX\">X:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"x\" id=\"coordinateDialogX\" class=\"text coordinates x {inputX}\" />\n				<\/div>\n				<div class=\"yCoord\">\n					<label for=\"coordinateDialogY\">Y:<\/label>\n					<input maxlength=\"4\" value=\"\" name=\"y\" id=\"coordinateDialogY\" class=\"text coordinates y {inputY}\" />\n				<\/div>\n				<div class=\"clear\"><\/div>\n			<\/div>\n			<\/div>\n	<div class=\"{textDisplay}\">\n		<input id=\"coordinateDialogText\" class=\"text {inputText}\" type=\"text\" />\n	<\/div>\n<\/div>';
        
                        Travian.Game.Map.Tips.tooltipHtml = '<span class=\"coordinates coordinatesWithText\"><span class=\"coordinateX\">({x}<\/span><span class=\"coordinatePipe\">|<\/span><span class=\"coordinateY\">{y})<\/span><\/span>';
                        Travian.Game.Map.Options.Default.block.tooltipHtml = '<span class=\"coordinates coordinatesWithText\"><span class=\"coordinateX\">({x}<\/span><span class=\"coordinatePipe\">|<\/span><span class=\"coordinateY\">{y})<\/span><\/span><br />{k.loadingData}';
                        Travian.Game.Map.Options.MiniMap.tooltipHtml = '<span class=\"coordinates coordinatesWithText\"><span class=\"coordinateX\">({x}<\/span><span class=\"coordinatePipe\">|<\/span><span class=\"coordinateY\">{y})<\/span><\/span>';
        
                        
                        new Travian.Game.Map.Container($merge(Travian.Game.Map.Options.Default,
                        {
                            blockOverflow: 1,
                            blockSize:
                            {
                                width:	600,
                                height:	600					},
                            containerViewSize:	containerViewSize,
                            mapInitialPosition:
                            {
                                x:	18,
                                y:	225					},
                            transition:
                            {
                                zoomOptions:
                                {
                                    level:  1,
                                    sizes:	[{"x":10,"y":10},{"x":20,"y":20},{"x":120,"y":120}]		                }
                            },
                            data: {"elements":[{"x":19,"y":224,"s":[{"dataId":"adventure12589594","x":"19","y":"224","type":"adventure","parameters":{"difficulty":"2"},"title":"Adventure","text":"{a.atm1}\u003Cbr \/\u003E{a.ad} {a.ad2}"}]},{"x":17,"y":228,"s":[{"dataId":"adventure12589595","x":"17","y":"228","type":"adventure","parameters":{"difficulty":"3"},"title":"Adventure","text":"{a.atm2}\u003Cbr \/\u003E{a.ad} {a.ad3}"}]},{"x":19,"y":216,"s":[{"dataId":"adventure12589596","x":"19","y":"216","type":"adventure","parameters":{"difficulty":"0"},"title":"Adventure","text":"{a.atm3}\u003Cbr \/\u003E{a.ad} {a.ad0}"}]},{"x":21,"y":226,"s":[{"dataId":"adventure12589597","x":"21","y":"226","type":"adventure","parameters":{"difficulty":"1"},"title":"Adventure","text":"{a.atm4}\u003Cbr \/\u003E{a.ad} {a.ad1}"}]},{"x":16,"y":222,"s":[{"dataId":"adventure12589598","x":"16","y":"222","type":"adventure","parameters":{"difficulty":"2"},"title":"Adventure","text":"{a.atm5}\u003Cbr \/\u003E{a.ad} {a.ad2}"}]},{"x":14,"y":226,"s":[{"dataId":"adventure12589599","x":"14","y":"226","type":"adventure","parameters":{"difficulty":"3"},"title":"Adventure","text":"{a.atm6}\u003Cbr \/\u003E{a.ad} {a.ad3}"}]},{"x":20,"y":225,"s":[{"dataId":"adventure12589600","x":"20","y":"225","type":"adventure","parameters":{"difficulty":"0"},"title":"Adventure","text":"{a.atm7}\u003Cbr \/\u003E{a.ad} {a.ad0}"}]},{"x":18,"y":219,"s":[{"dataId":"adventure12589601","x":"18","y":"219","type":"adventure","parameters":{"difficulty":"1"},"title":"Adventure","text":"{a.atm8}\u003Cbr \/\u003E{a.ad} {a.ad1}"}]},{"x":18,"y":217,"s":[{"dataId":"adventure12589602","x":"18","y":"217","type":"adventure","parameters":{"difficulty":"2"},"title":"Adventure","text":"{a.atm9}\u003Cbr \/\u003E{a.ad} {a.ad2}"}]},{"x":24,"y":218,"s":[{"dataId":"adventure12589603","x":"24","y":"218","type":"adventure","parameters":{"difficulty":"3"},"title":"Adventure","text":"{a.atm10}\u003Cbr \/\u003E{a.ad} {a.ad3}"}]},{"x":12,"y":224,"s":[{"dataId":"adventure12589604","x":"12","y":"224","type":"adventure","parameters":{"difficulty":"0"},"title":"Adventure","text":"{a.atm11}\u003Cbr \/\u003E{a.ad} {a.ad0}"}]},{"x":22,"y":230,"s":[{"dataId":"adventure12589605","x":"22","y":"230","type":"adventure","parameters":{"difficulty":"1"},"title":"Adventure","text":"{a.atm12}\u003Cbr \/\u003E{a.ad} {a.ad1}"}]},{"x":12,"y":222,"s":[{"dataId":"adventure12589606","x":"12","y":"222","type":"adventure","parameters":{"difficulty":"2"},"title":"Adventure","text":"{a.atm13}\u003Cbr \/\u003E{a.ad} {a.ad2}"}]},{"x":13,"y":230,"s":[{"dataId":"adventure12589607","x":"13","y":"230","type":"adventure","parameters":{"difficulty":"3"},"title":"Adventure","text":"{a.atm14}\u003Cbr \/\u003E{a.ad} {a.ad3}"}]},{"x":26,"y":225,"s":[{"dataId":"adventure12589608","x":"26","y":"225","type":"adventure","parameters":{"difficulty":"0"},"title":"Adventure","text":"{a.atm15}\u003Cbr \/\u003E{a.ad} {a.ad0}"}]},{"x":16,"y":228,"s":[{"dataId":"adventure12589609","x":"16","y":"228","type":"adventure","parameters":{"difficulty":"1"},"title":"Adventure","text":"{a.atm16}\u003Cbr \/\u003E{a.ad} {a.ad1}"}]},{"x":8,"y":226,"s":[{"dataId":"adventure12589610","x":"8","y":"226","type":"adventure","parameters":{"difficulty":"2"},"title":"Adventure","text":"{a.atm17}\u003Cbr \/\u003E{a.ad} {a.ad2}"}]}],"blocks":{"0":{"210":{"9":{"219":{"version":"58"}}},"220":{"9":{"229":{"version":"34"}}},"230":{"9":{"239":{"version":"25"}}},"240":{"9":{"249":{"version":"5"}}}},"10":{"210":{"19":{"219":{"version":"59"}}},"220":{"19":{"229":{"version":"75"}}},"230":{"19":{"239":{"version":"14"}}}},"20":{"210":{"29":{"219":{"version":"107"}}},"220":{"29":{"229":{"version":"126"}}},"230":{"29":{"239":{"version":"10"}}},"240":{"29":{"249":{"version":"11"}}}},"30":{"210":{"39":{"219":{"version":"58"}}},"220":{"39":{"229":{"version":"68"}}},"230":{"39":{"239":{"version":"19"}}},"240":{"39":{"249":{"version":"3"}}}}}},
                            mapMarks:
                            {
                                player:
                                {
                                    data: [],
                                    layers:
                                    {
                                        alliance:
                                        {
                                                                                title:	'Alliance',
                                            dialog:
                                            {
                                                title: 'Own alliance marks.',
                                                textOkay: 'save',
                                                textCancel:	'cancel'
                                            },
                                            optionsData:
                                            {
                                                urlLink: 'allianz.php?aid={markId}'
                                            }
                                        },
                                        player:
                                        {
                                                                                title: 'Players',
                                            dialog:
                                            {
                                                title: 'Own player marks.',
                                                textOkay: 'save',
                                                textCancel: 'cancel'
                                            },
                                            optionsData:
                                            {
                                                urlLink: 'spieler.php?uid={markId}'
                                            }
                                        },
                                        flag:
                                        {
                                                                                title: 'flags',
                                            dialog:
                                            {
                                                title: 'Own field marks.',
                                                textOkay: 'save',
                                                textCancel: 'cancel'
                                            }
                                        }
                                    }
                                },
                                alliance:
                                {
                                                                enabled: false,
                                                                data: null,
                                    layers:
                                    {
                                        alliance:
                                        {
                                                                                editable: false,
                                                                                title: 'Alliance',
                                            dialog:
                                            {
                                                title: 'Alliance marks for my alliance.',
                                                textOkay: 'save',
                                                textCancel: 'cancel'
                                            },
                                            optionsData:
                                            {
                                                urlLink: 'allianz.php?aid={markId}'
                                            }
                                        },
                                        player:
                                        {
                                                                                editable:	false,
                                                                                title: 'Players',
                                            dialog:
                                            {
                                                title: 'Player marks for my alliance.',
                                                textOkay: 'save',
                                                textCancel: 'cancel'
                                            },
                                            optionsData:
                                            {
                                                urlLink: 'spieler.php?uid={markId}'
                                            }
                                        },
                                        flag:
                                        {
                                                                                editable: false,
                                                                                title: 'flags',
                                            dialog:
                                            {
                                                title: 'Field marks for my alliance.',
                                                textOkay: 'save',
                                                textCancel: 'cancel'
                                            }
                                        }
                                    }
                                }
                            }
                        }));
                    };
        
                                if (!Browser.Engine.webkit || $('mapContainer').getSize().y == containerViewSize.height)
                    {
                        fnInit();
                    }
                    else
                    {
                        fnDelayMe.delay(100);
                    }
                };
                fnDelayMe();
            });
        </script>