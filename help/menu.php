<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>Test Travian Help New Menu</title>
	<link rel="stylesheet" type="text/css" href="sdmenu/sdmenu.css" />
	<script type="text/javascript" src="sdmenu/sdmenu.js"></script>
	<script type="text/javascript">
	// <![CDATA[
	var myMenu;
	window.onload = function() {
		myMenu = new SDMenu("my_menu");
		myMenu.init();
	};
	// ]]>
	</script>
  </head>
  <body>
    <div style="float: left;" id="my_menu" class="sdmenu">
      <div>
        <span>Start</span>
        <a href="?content=start">Start</a>
        <a href="?content=archive">Archive</a>
        <a href="?content=links">Enlaces</a>
        <br />
      </div>
      <div>
        <span>Tutorials</span>
        <a href="?content=tutorials">Tutorials</a>
        <div>
        	<span>Gameplay</span>
            <a href="?content=tuttxt">Text Tutorials</a>
            <a href="?content=tutvideo">Video Tutorials</a>
            <br />
        </div>
        <div>
        	<span>Miscellaneous</span>
            <a href="?content=tutmaps">Create Worldmaps</a>
        </div>
        <br />
      </div>
      <div>
        <span>Buildings</span>
        <a href="?content=build">Buildings</a>
        <a href="?content=buildoverview">Building Overview</a>
        <a href="?content=build#buildingtree">Building tree</a>
        <div>
        	<span>Infrastucture</span>
            <a href="?content=structure">Infrastructure</a>
            <a href="?content=brewery">Brewery</a>
            <a href="?content=cranny">Cranny</a>
            <a href="?content=embassy">Embassy</a>
            <a href="?content=granary">Granary</a>
            <a href="?content=greatgranary">Great Granary</a>
            <a href="?content=greatwarehouse">Great Warehouse</a>
            <a href="?content=horsedrink">Horse Drinking Trough</a>
            <a href="?content=mainbuilding">Main Building</a>
            <a href="?content=marketplace">Marketplace</a>
            <a href="?content=palace">Palace</a>
            <a href="?content=residence">Residence</a>
            <a href="?content=stonemason">Stonemason's Lodge</a>
            <a href="?content=townhall">Town Hall</a>
            <a href="?content=tradeoffice">Trade Office</a>
            <a href="?content=treasury">Treasury</a>
            <a href="?content=warehouse">Warehouse</a>
            <a href="?content=ww">Wonder of the World</a>
            <br />
        </div>
        <div>
        	<span>Military</span>
            <a href="?content=military">Military</a>
            <a href="?content=academy">Academy</a>
            <a href="?content=armoury">Armoury</a>
            <a href="?content=barracks">Barracks</a>
            <a href="?content=blacksmith">Blacksmith</a>
            <a href="?content=citywall">City Wall</a>
            <a href="?content=earthwall">Earth Wall</a>
            <a href="?content=greatbarracks">Greats Barracks</a>
            <a href="?content=greatstable">Great Stable</a>
            <a href="?content=heromansion">Hero's Mansion</a>
            <a href="?content=palisade">Palisade</a>
            <a href="?content=rallypoint">Rally Point</a>
            <a href="?content=stable">Stable</a>
            <a href="?content=tournamentsquare">Tournament Square</a>
            <a href="?content=trapper">Trapper</a>
            <a href="?content=workshop">Workshop</a>
            <br />
        </div>
        <div>
        	<span>Resources</span>
            <a href="?content=resources">Resources</a>
            <a href="?content=bakery">Bakery</a>
            <a href="?content=brickyard">Brickyard</a>
            <a href="?content=claypit">Clay Pit</a>
            <a href="?content=cropland">Cropland</a>
            <a href="?content=grainmill">Grain Mill</a>
            <a href="?content=ironfoundry">Iron Foundry</a>
            <a href="?content=ironmine">Iron Mine</a>
            <a href="?content=sawmill">Sawmill</a>
            <a href="?content=woodcutter">Woodcutter</a>
            <br />
        </div>
        <a href="?content=build#villagecenter">Village Centre</a>
        <a href="?content=build#villageoverview">Village Overview</a>
        <br />
      </div>
      <div>
        <span>Troops</span>
        <a href="?content=troops">Troops</a>
      </div>
    </div>
  </body>
</html>