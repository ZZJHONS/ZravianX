<ul id="navbox">
    <li>
        <a class="treenode" href="?menu=start&content=start">Start</a>
        <?php if(!isset($_GET['menu'])) { $_GET['menu'] = ""; } if ($_GET['menu'] == "") { ?>
        <ul>
            <li><a href="?menu=start&content=archive">Archive</a></li>
            <li><a href="?menu=start&content=links">Enlaces</a></li>
        </ul>
        <?php } if ($_GET['menu'] == "start") { ?>
        <ul>
            <li><a href="?menu=start&content=archive">Archive</a></li>
            <li><a href="?menu=start&content=links">Enlaces</a></li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=tutorials&content=tutorials">Tutorials</a>
        <?php if ($_GET['menu'] == "tutorials") { ?>
        <ul>
            <li>
                <a class="treenode-2" href="?menu=tutorials&tmenu=game&content=gameplay">Gameplay</a>
                <?php  if(!isset($_GET['tmenu'])) { $_GET['tmenu'] = ""; } if ($_GET['tmenu'] == "game") { ?>
                <ul>
                    <li><a href="?menu=tutorials&tmenu=game&content=tuttxt">Text Tutorials</a></li>
                    <li><a href="?menu=tutorials&tmenu=game&content=tutvideo">Video Tutorials</a></li>
                </ul>
                <?php } ?>
            </li>
            <li><a class="treenode-2" href="?menu=tutorials&tmenu=misc&content=misc">Miscellaneous</a>
                <?php if ($_GET['tmenu'] == "misc") { ?>
                <ul>
                    <li><a href="?menu=tutorials&tmenu=misc&content=tutmaps">Create Worldmaps</a></li>
                </ul>
                <?php } ?>
            </li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=build&content=build">Buildings</a>
        <?php if ($_GET['menu'] == "build") { ?>
        <ul>
            <li><a href="?menu=build&content=buildoverview">Building Overview</a></li>
            <li><a href="?menu=build&content=build#buildingtree">Building tree</a></li>
            <li>
                <a class="treenode-2" href="?menu=build&build=structure&content=structure">Infrastructure</a>
                <?php  if(!isset($_GET['build'])) { $_GET['build'] = ""; } if ($_GET['build'] == "structure") { ?>
                <ul>
                    <li><a href="?menu=build&build=structure&content=brewery">Brewery</a></li>
                    <li><a href="?menu=build&build=structure&content=cranny">Cranny</a></li>
                    <li><a href="?menu=build&build=structure&content=embassy">Embassy</a></li>
                    <li><a href="?menu=build&build=structure&content=granary">Granary</a></li>
                    <li><a href="?menu=build&build=structure&content=greatgranary">Great Granary</a></li>
                    <li><a href="?menu=build&build=structure&content=greatwarehouse">Great Warehouse</a></li>
                    <li><a href="?menu=build&build=structure&content=horsedrink">Horse Drinking Trough</a></li>
                    <li><a href="?menu=build&build=structure&content=mainbuilding">Main Building</a></li>
                    <li><a href="?menu=build&build=structure&content=marketplace">Marketplace</a></li>
                    <li><a href="?menu=build&build=structure&content=palace">Palace</a></li>
                    <li><a href="?menu=build&build=structure&content=residence">Residence</a></li>
                    <li><a href="?menu=build&build=structure&content=stonemason">Stonemason's Lodge</a></li>
                    <li><a href="?menu=build&build=structure&content=townhall">Town Hall</a></li>
                    <li><a href="?menu=build&build=structure&content=tradeoffice">Trade Office</a></li>
                    <li><a href="?menu=build&build=structure&content=treasury">Treasury</a></li>
                    <li><a href="?menu=build&build=structure&content=warehouse">Warehouse</a></li>
                    <li><a href="?menu=build&build=structure&content=ww">Wonder of the World</a></li>
                </ul>
                <?php } ?>
            </li>
            <li>
                <a class="treenode-2" href="?menu=build&build=military&content=military">Military</a>
                <?php if ($_GET['build'] == "military") { ?>
                <ul>
                    <li><a href="?menu=build&build=military&content=academy">Academy</a></li>
                    <li><a href="?menu=build&build=military&content=armoury">Armoury</a></li>
                    <li><a href="?menu=build&build=military&content=barracks">Barracks</a></li>
                    <li><a href="?menu=build&build=military&content=blacksmith">Blacksmith</a></li>
                    <li><a href="?menu=build&build=military&content=citywall">City Wall</a></li>
                    <li><a href="?menu=build&build=military&content=earthwall">Earth Wall</a></li>
                    <li><a href="?menu=build&build=military&content=greatbarracks">Greats Barracks</a></li>
                    <li><a href="?menu=build&build=military&content=greatstable">Great Stable</a></li>
                    <li><a href="?menu=build&build=military&content=heromansion">Hero's Mansion</a></li>
                    <li><a href="?menu=build&build=military&content=palisade">Palisade</a></li>
                    <li><a href="?menu=build&build=military&content=rallypoint">Rally Point</a></li>
                    <li><a href="?menu=build&build=military&content=stable">Stable</a></li>
                    <li><a href="?menu=build&build=military&content=tournamentsquare">Tournament Square</a></li>
                    <li><a href="?menu=build&build=military&content=trapper">Trapper</a></li>
                    <li><a href="?menu=build&build=military&content=workshop">Workshop</a></li>
                </ul>
                <?php } ?>
            </li>
            <li>
                <a class="treenode-2" href="?menu=build&build=resources&content=resources">Resources</a>
                <?php if ($_GET['build'] == "resources") { ?>
                <ul>
                    <li><a href="?menu=build&build=resources&content=bakery">Bakery</a></li>
                    <li><a href="?menu=build&build=resources&content=brickyard">Brickyard</a></li>
                    <li><a href="?menu=build&build=resources&content=claypit">Clay Pit</a></li>
                    <li><a href="?menu=build&build=resources&content=cropland">Cropland</a></li>
                    <li><a href="?menu=build&build=resources&content=grainmill">Grain Mill</a></li>
                    <li><a href="?menu=build&build=resources&content=ironfoundry">Iron Foundry</a></li>
                    <li><a href="?menu=build&build=resources&content=ironmine">Iron Mine</a></li>
                    <li><a href="?menu=build&build=resources&content=sawmill">Sawmill</a></li>
                    <li><a href="?menu=build&build=resources&content=woodcutter">Woodcutter</a></li>
                </ul>
                <?php } ?>
            </li>
            <li><a href="?menu=build&content=build#villagecenter">Village Centre</a></li>
            <li><a href="?menu=build&content=build#villageoverview">Village Overview</a></li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=troops&content=troops">Troops</a>
        <?php if ($_GET['menu'] == "troops") { ?>
        <ul>
            <li><a href="?menu=troops&content=gallictroops">Gallic Troops</a></li>
            <li><a href="?menu=troops&content=heroes">Heroes</a></li>
            <li><a href="?menu=troops&content=makeanduse">Making and Using Troops</a></li>
            <li><a href="?menu=troops&content=natariantroops">Natarian Troops</a></li>
            <li><a href="?menu=troops&content=naturetroops">Nature's Troops</a></li>
            <li><a href="?menu=troops&content=romantroops">Roman Troops</a></li>
            <li><a href="?menu=troops&content=teutonictroops">Teutonic Troops</a></li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=game&content=game">Game</a>
        <?php if ($_GET['menu'] == "game") { ?>
        <ul>
            <li><a href="?menu=game&content=alliances">Alliances</a></li>
            <li><a href="?menu=game&content=artefacts">Artefacts</a></li>
            <li><a href="?menu=game&content=beginnersprotection">Beginner's Protection</a></li>
            <li><a href="?menu=game&content=cancellingactions">Cancelling Actions</a></li>
            <li><a href="?menu=game&content=capitals">Capitals</a></li>
            <li><a href="?menu=game&content=changelog">Change log</a></li>
            <li><a href="?menu=game&content=conqueringvillages">Conquering Villages</a></li>
            <li><a href="?menu=game&content=culturepoints">Culture Points</a></li>
            <li><a href="?menu=game&content=faqtplus">FAQ TravianX Plus</a></li>
            <li><a href="?menu=game&content=gamerules">Game Rules</a></li>
            <li><a href="?menu=game&content=gettingfarmed">Getting Farmed</a></li>
            <li><a href="?menu=game&content=interactivingwithothers">Interactiving with Others</a></li>
            <li><a href="?menu=game&content=map">Map</a></li>
            <li><a href="?menu=game&content=messagesandreports">Messages and Reports</a></li>
            <li><a href="?menu=game&content=miscellaneous">Miscellaneous</a></li>
            <li><a href="?menu=game&content=newvillages">New Villages</a></li>
            <li><a href="?menu=game&content=oases">Oases</a></li>
            <li><a href="?menu=game&content=population">Population</a></li>
            <li><a href="?menu=game&content=preventingconquerings">Prevening Conquerings</a></li>
            <li><a href="?menu=game&content=problemswithcorp">Problems with Corp</a></li>
            <li><a href="?menu=game&content=statistics">Statistics</a></li>
            <li><a href="?menu=game&content=tplusandgold">TravianX Plus and Gold</a></li>
            <li><a href="?menu=game&content=tribes">Tribes</a></li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=profile&content=profile">Player Profile</a>
        <?php if ($_GET['menu'] == "profile") { ?>
        <ul>
            <li><a href="?menu=profile&content=overviewprofile">Overview/Profile</a></li>
            <li><a href="?menu=profile&content=renamingvillages">Renaming Villages</a></li>
            <li><a href="?menu=profile&content=preferences">Preferences</a></li>
            <li><a href="?menu=profile&content=account">Account</a></li>
            <li><a href="?menu=profile&content=gpacks">Graphic Packs</a></li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=irc&content=irc">IRC</a>
        <?php if ($_GET['menu'] == "irc") { ?>
        <ul>
            <li><a href="?menu=irc&content=ircrules">IRC Rules</a></li>
            <li><a class="treenode-2" href="?menu=irc&irc=tut&content=irctut">IRC Tutorials</a></li>
            <?php  if(!isset($_GET['irc'])) { $_GET['irc'] = ""; } if ($_GET['irc'] == "tut") { ?>
            <ul>
            	<li><a href="?menu=irc&irc=tut&content=channels">Channels</a></li>
            	<li><a href="?menu=irc&irc=tut&content=chatzilla">Chatzilla</a></li>
            	<li><a href="?menu=irc&irc=tut&content=memos">Memos</a></li>
            	<li><a href="?menu=irc&irc=tut&content=miranda">Miranda</a></li>
            	<li><a href="?menu=irc&irc=tut&content=mirc">Mirc</a></li>
            	<li><a href="?menu=irc&irc=tut&content=nicknames">Nicknames</a></li>
            	<li><a href="?menu=irc&irc=tut&content=trillian">Trillian</a></li>
            </ul>
            <?php } ?>
            <li><a href="http://www.unrealircd.com/files/docs/unreal32docs.html">Network</a></li>
            <li><a class="treenode-2" href="?menu=irc&irc=services&content=services">Services</a></li>
            <?php  if(!isset($_GET['irc'])) { $_GET['irc'] = ""; } if ($_GET['irc'] == "services") { ?>
            <ul>
            	<li><a href="http://dev.anope.org/docgen/en_us/BotServ.php">BotServ</a></li>
            	<li><a href="http://dev.anope.org/docgen/en_us/ChanServ.php">ChanServ</a></li>
            	<li><a href="http://dev.anope.org/docgen/en_us/HostServ.php">HostServ</a></li>
            	<li><a href="http://dev.anope.org/docgen/en_us/MemoServ.php">MemoServ</a></li>
            	<li><a href="http://dev.anope.org/docgen/en_us/NickServ.php">NickServ</a></li>
            	<li><a href="http://dev.anope.org/docgen/en_us/OperServ.php">Openserv</a></li>
            </ul>
            <?php } ?>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="treenode" href="?menu=dict&content=dict">Dictionary</a>
        <?php if ($_GET['menu'] == "dict") { ?>
        <ul>
            <li><a href="?menu=dict&content=buildings">Buildings</a></li>
            <li><a href="?menu=dict&content=forumchat">Forum/Chat</a></li>
            <li><a href="?menu=dict&content=dgame">Game</a></li>
            <li><a href="?menu=dict&content=smilies">Smilies/Emoticons</a></li>
            <li><a href="?menu=dict&content=travianxteam">TravianX-Team</a></li>
            <li><a href="?menu=dict&content=dtroops">Troops</a></li>
        </ul>
        <?php } ?>
    </li>
    <li>
        <a class="noexpand" href="?menu=sitemap&content=sitemap">Sitemap</a>
    </li>
</ul>