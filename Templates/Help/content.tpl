<?php 
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.12.04                                                  ##
##  Filename:      Templates/Help/cotent.tpl                                   ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

if(!isset($_GET['content'])){include '../Templates/Help/start.tpl';}
elseif($_GET['content'] == ''){include '../Templates/Help/start.tpl';}
elseif($_GET['content'] == 'start'){include '../Templates/Help/start.tpl';}
elseif($_GET['content'] == 'archive'){include '../Templates/Help/Start/archive.tpl';}
elseif($_GET['content'] == 'links'){include '../Templates/Help/Start/links.tpl';}
elseif($_GET['content'] == 'tutorials'){include '../Templates/Help/tutorials.tpl';}
elseif($_GET['content'] == 'gameplay'){include '../Templates/Help/Tutorials/gameplay.tpl';}
elseif($_GET['content'] == 'tuttxt'){include '../Templates/Help/Tutorials/Gameplay/tuttxt.tpl';}
elseif($_GET['content'] == 'tutvideo'){include '../Templates/Help/Tutorials/Gameplay/tutvideo.tpl';}
elseif($_GET['content'] == 'misc'){include '../Templates/Help/Tutorials/misc.tpl';}
elseif($_GET['content'] == 'tutmaps'){include '../Templates/Help/Tutorials/Misc/tutmap.tpl';}
elseif($_GET['content'] == 'build'){include '../Templates/Help/buildings.tpl';}
elseif($_GET['content'] == 'buildoverview'){include '../Templates/Help/Build/buildoverview.tpl';}
elseif($_GET['content'] == 'structure'){include '../Templates/Help/Build/structure.tpl';}
elseif($_GET['content'] == 'brewery'){include '../Templates/Help/Build/Infrastructure/brewery.tpl';}
elseif($_GET['content'] == 'cranny'){include '../Templates/Help/Build/Infrastructure/cranny.tpl';}
elseif($_GET['content'] == 'embassy'){include '../Templates/Help/Build/Infrastructure/embassy.tpl';}
elseif($_GET['content'] == 'granary'){include '../Templates/Help/Build/Infrastructure/granary.tpl';}
elseif($_GET['content'] == 'greatgranary'){include '../Templates/Help/Build/Infrastructure/greatgranary.tpl';}
elseif($_GET['content'] == 'greatwarehouse'){include '../Templates/Help/Build/Infrastructure/greatwarehouse.tpl';}
elseif($_GET['content'] == 'horsedrink'){include '../Templates/Help/Build/Infrastructure/horsedrink.tpl';}
elseif($_GET['content'] == 'mainbuilding'){include '../Templates/Help/Build/Infrastructure/mainbuilding.tpl';}
elseif($_GET['content'] == 'marketplace'){include '../Templates/Help/Build/Infrastructure/marketplace.tpl';}
elseif($_GET['content'] == 'palace'){include '../Templates/Help/Build/Infrastructure/palace.tpl';}
elseif($_GET['content'] == 'residence'){include '../Templates/Help/Build/Infrastructure/residence.tpl';}
elseif($_GET['content'] == 'stonemason'){include '../Templates/Help/Build/Infrastructure/stonemason.tpl';}
elseif($_GET['content'] == 'townhall'){include '../Templates/Help/Build/Infrastructure/townhall.tpl';}
elseif($_GET['content'] == 'tradeoffice'){include '../Templates/Help/Build/Infrastructure/tradeoffice.tpl';}
elseif($_GET['content'] == 'treasury'){include '../Templates/Help/Build/Infrastructure/treasury.tpl';}
elseif($_GET['content'] == 'warehouse'){include '../Templates/Help/Build/Infrastructure/warehouse.tpl';}
elseif($_GET['content'] == 'ww'){include '../Templates/Help/Build/Infrastructure/ww.tpl';}
elseif($_GET['content'] == 'military'){include '../Templates/Help/Build/military.tpl';}
elseif($_GET['content'] == 'academy'){include '../Templates/Help/Build/Military/academy.tpl';}
elseif($_GET['content'] == 'armoury'){include '../Templates/Help/Build/Military/armoury.tpl';}
elseif($_GET['content'] == 'barracks'){include '../Templates/Help/Build/Military/barracks.tpl';}
elseif($_GET['content'] == 'blacksmith'){include '../Templates/Help/Build/Military/blacksmith.tpl';}
elseif($_GET['content'] == 'citywall'){include '../Templates/Help/Build/Military/citywall.tpl';}
elseif($_GET['content'] == 'earthwall'){include '../Templates/Help/Build/Military/earthwall.tpl';}
elseif($_GET['content'] == 'greatbarracks'){include '../Templates/Help/Build/Military/greatbarracks.tpl';}
elseif($_GET['content'] == 'greatstable'){include '../Templates/Help/Build/Military/greatstable.tpl';}
elseif($_GET['content'] == 'heromansion'){include '../Templates/Help/Build/Military/heromansion.tpl';}
elseif($_GET['content'] == 'palisade'){include '../Templates/Help/Build/Military/palisade.tpl';}
elseif($_GET['content'] == 'rallypoint'){include '../Templates/Help/Build/Military/rallypoint.tpl';}
elseif($_GET['content'] == 'stable'){include '../Templates/Help/Build/Military/stable.tpl';}
elseif($_GET['content'] == 'tournamentsquare'){include '../Templates/Help/Build/Military/tournamentsquare.tpl';}
elseif($_GET['content'] == 'trapper'){include '../Templates/Help/Build/Military/trapper.tpl';}
elseif($_GET['content'] == 'workshop'){include '../Templates/Help/Build/Military/workshop.tpl';}
elseif($_GET['content'] == 'resources'){include '../Templates/Help/Build/resources.tpl';}
elseif($_GET['content'] == 'bakery'){include '../Templates/Help/Build/Resources/bakery.tpl';}
elseif($_GET['content'] == 'brickyard'){include '../Templates/Help/Build/Resources/brickyard.tpl';}
elseif($_GET['content'] == 'claypit'){include '../Templates/Help/Build/Resources/claypit.tpl';}
elseif($_GET['content'] == 'cropland'){include '../Templates/Help/Build/Resources/cropland.tpl';}
elseif($_GET['content'] == 'grainmill'){include '../Templates/Help/Build/Resources/grainmill.tpl';}
elseif($_GET['content'] == 'ironfoundry'){include '../Templates/Help/Build/Resources/ironfoundry.tpl';}
elseif($_GET['content'] == 'ironmine'){include '../Templates/Help/Build/Resources/ironmine.tpl';}
elseif($_GET['content'] == 'sawmill'){include '../Templates/Help/Build/Resources/sawmill.tpl';}
elseif($_GET['content'] == 'woodcutter'){include '../Templates/Help/Build/Resources/woodcutter.tpl';}
elseif($_GET['content'] == 'troops'){include '../Templates/Help/troops.tpl';}
elseif($_GET['content'] == 'gallictroops'){include '../Templates/Help/Troops/gallictroops.tpl';}
elseif($_GET['content'] == 'heroes'){include '../Templates/Help/Troops/heroes.tpl';}
elseif($_GET['content'] == 'makeanduse'){include '../Templates/Help/Troops/makeanduse.tpl';}
elseif($_GET['content'] == 'natariantroops'){include '../Templates/Help/Troops/natariantroops.tpl';}
elseif($_GET['content'] == 'naturetroops'){include '../Templates/Help/Troops/naturetroops.tpl';}
elseif($_GET['content'] == 'romantroops'){include '../Templates/Help/Troops/romantroops.tpl';}
elseif($_GET['content'] == 'teutonictroops'){include '../Templates/Help/Troops/teutonictroops.tpl';}
elseif($_GET['content'] == 'game'){include '../Templates/Help/game.tpl';}
elseif($_GET['content'] == 'alliances'){include '../Templates/Help/Game/alliances.tpl';}
elseif($_GET['content'] == 'artefacts'){include '../Templates/Help/Game/artefacts.tpl';}
elseif($_GET['content'] == 'beginnersprotection'){include '../Templates/Help/Game/beginnersprotection.tpl';}
elseif($_GET['content'] == 'cancellingactions'){include '../Templates/Help/Game/cancellingactions.tpl';}
elseif($_GET['content'] == 'capitals'){include '../Templates/Help/Game/capitals.tpl';}
elseif($_GET['content'] == 'changelog'){include '../Templates/Help/Game/changelog.tpl';}
elseif($_GET['content'] == 'conqueringvillages'){include '../Templates/Help/Game/conqueringvillages.tpl';}
elseif($_GET['content'] == 'culturepoints'){include '../Templates/Help/Game/culturepoints.tpl';}
elseif($_GET['content'] == 'faqtplus'){include '../Templates/Help/Game/faqtplus.tpl';}
elseif($_GET['content'] == 'gamerules'){include '../Templates/Help/Game/gamerules.tpl';}
elseif($_GET['content'] == 'gettingfarmed'){include '../Templates/Help/Game/gettingfarmed.tpl';}
elseif($_GET['content'] == 'interactivingwithothers'){include '../Templates/Help/Game/interactivingwithothers.tpl';}
elseif($_GET['content'] == 'map'){include '../Templates/Help/Game/map.tpl';}
elseif($_GET['content'] == 'messagesandreports'){include '../Templates/Help/Game/messagesandreports.tpl';}
elseif($_GET['content'] == 'miscellaneous'){include '../Templates/Help/Game/miscellaneous.tpl';}
elseif($_GET['content'] == 'newvillages'){include '../Templates/Help/Game/newvillages.tpl';}
elseif($_GET['content'] == 'oases'){include '../Templates/Help/Game/oases.tpl';}
elseif($_GET['content'] == 'population'){include '../Templates/Help/Game/population.tpl';}
elseif($_GET['content'] == 'preventingconquerings'){include '../Templates/Help/Game/preventingconquerings.tpl';}
elseif($_GET['content'] == 'problemswithcorp'){include '../Templates/Help/Game/problemswithcorp.tpl';}
elseif($_GET['content'] == 'statistics'){include '../Templates/Help/Game/statistics.tpl';}
elseif($_GET['content'] == 'tplusandgold'){include '../Templates/Help/Game/tplusandgold.tpl';}
elseif($_GET['content'] == 'tribes'){include '../Templates/Help/Game/tribes.tpl';}
elseif($_GET['content'] == 'profile'){include '../Templates/Help/profile.tpl';}
elseif($_GET['content'] == 'overviewprofile'){include '../Templates/Help/Profile/overviewprofile.tpl';}
elseif($_GET['content'] == 'renamingvillages'){include '../Templates/Help/Profile/renamingvillages.tpl';}
elseif($_GET['content'] == 'preferences'){include '../Templates/Help/Profile/preferences.tpl';}
elseif($_GET['content'] == 'account'){include '../Templates/Help/Profile/account.tpl';}
elseif($_GET['content'] == 'gpacks'){include '../Templates/Help/Profile/gpacks.tpl';}
elseif($_GET['content'] == 'irc'){include '../Templates/Help/irc.tpl';}
elseif($_GET['content'] == 'ircrules'){include '../Templates/Help/IRC/ircrules.tpl';}
elseif($_GET['content'] == 'irctut'){include '../Templates/Help/IRC/irctut.tpl';}
elseif($_GET['content'] == 'channels'){include '../Templates/Help/IRC/Tutorials/channels.tpl';}
elseif($_GET['content'] == 'chatzilla'){include '../Templates/Help/IRC/Tutorials/chatzilla.tpl';}
elseif($_GET['content'] == 'memos'){include '../Templates/Help/IRC/Tutorials/memos.tpl';}
elseif($_GET['content'] == 'miranda'){include '../Templates/Help/IRC/Tutorials/miranda.tpl';}
elseif($_GET['content'] == 'mirc'){include '../Templates/Help/IRC/Tutorials/mirc.tpl';}
elseif($_GET['content'] == 'nicknames'){include '../Templates/Help/IRC/Tutorials/nicknames.tpl';}
elseif($_GET['content'] == 'trillian'){include '../Templates/Help/IRC/Tutorials/trillian.tpl';}
elseif($_GET['content'] == 'services'){include '../Templates/Help/IRC/services.tpl';}
elseif($_GET['content'] == 'dict'){include '../Templates/Help/dictionary.tpl';}
elseif($_GET['content'] == 'buildings'){include '../Templates/Help/Dictionary/buildings.tpl';}
elseif($_GET['content'] == 'forumchat'){include '../Templates/Help/Dictionary/forumchat.tpl';}
elseif($_GET['content'] == 'dgame'){include '../Templates/Help/Dictionary/dgame.tpl';}
elseif($_GET['content'] == 'smilies'){include '../Templates/Help/Dictionary/smilies.tpl';}
elseif($_GET['content'] == 'travianxteam'){include '../Templates/Help/Dictionary/travianxteam.tpl';}
elseif($_GET['content'] == 'dtroops'){include '../Templates/Help/Dictionary/dtroops.tpl';}
elseif($_GET['content'] == 'sitemap'){include '../Templates/Help/sitemap.tpl';}
else{include '../Templates/Help/start.tpl';}
?>