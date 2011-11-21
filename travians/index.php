<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.01                                                  ##
##  Filename:      travians/index.php                                          ##
##  Developed by:  ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

	include ("../GameEngine/config.php");
	include ("../GameEngine/Database.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en">
	<head>
		<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="pragma" content="no-cache" />
		<title>Travians</title>
		<link rel="stylesheet" type="text/css" href="img/portal_ltr.css?lang=de&t=18433.htm" />
		<!--[if lte IE 6]>
		<link rel="stylesheet" href="/layout/portal_ie6_ltr.css.php?lang=de&amp;t=608222" type="text/css" />
		<![endif]-->
	<script src="js/mootools/mootools-core-1.3.1-full-compat.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/mootools/mootools-1.2-more.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/swfobject/swfobject.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/portal.js" type="text/javascript" charset="utf-8"></script>
    <script src="js/script.js" type="text/javascript" charset="utf-8"></script>  
</head>
<body id="body" class="interface_background portal  newsbox">
	<!-- Start Visual Website Optimizer Code -->
		<script type='text/javascript'>
			var _vis_opt_account_id = 7028;
			var _vis_opt_protocol = (('https:' == document.location.protocol) ? 'https://' : 'http://');
			document.write('<s' + 'cript src="' + _vis_opt_protocol + 'dev.visualwebsiteoptimizer.com/deploy/js_visitor_settings.php?v=1&a='+_vis_opt_account_id+'&url='+encodeURIComponent(document.URL)+'&random='+Math.random()+'" type="text/javascript">' + '<\/s' + 'cript>');
        </script>
		<script type='text/javascript'>
			if(typeof(_vis_opt_settings_loaded) == "boolean") { document.write('<s' + 'cript src="' + _vis_opt_protocol + 'd5phz18u4wuww.cloudfront.net/vis_opt.js" type="text/javascript">' + '<\/s' + 'cript>'); }
			// if your site already has jQuery 1.4.2, replace vis_opt.js with vis_opt_no_jquery.js above
        </script>
		<script type='text/javascript'>
			if(typeof(_vis_opt_settings_loaded) == "boolean" && typeof(_vis_opt_top_initialize) == "function"){ _vis_opt_top_initialize();
			vwo_$(document).ready(function() { _vis_opt_bottom_initialize(); }); }
        </script>
    <!-- End Visual Website Optimizer Code -->			
    <div id="FB_HiddenContainer" style="position:absolute; top:-10000px; width:0px; height:0px;" ></div>
    <div id="blackOverlay"></div>
    <div class="dialog dialogMedium interface_dialog_medium_background" id="dialogMedium">
        <a href="javascript:;" id="dialogMediumClose" class="close interface_dialog_close"></a>
        <br />
        <br />
        <br />
        <h1 id="caption dialogMediumCaption">Test 1-1</h1>
        <div id="dialogMediumContent" class="content center"></div>
        <div class="content center">
            <br />
            Test 1-2
        </div>
    </div>
    <div class="dialog dialogBig interface_dialog_big_background" id="dialogBig">
        <a href="javascript:;" id="dialogBigClose" class="close interface_dialog_close"></a>
        <h1 id="caption dialogBigCaption"></h1>
        <div id="dialogBigContent" class="content center"></div>
    </div>
    <div class="dialog dialogWide" id="dialogWide">
        <a href="javascript:;" id="dialogWideClose" class="close interface_dialog_close"></a>
        <h1 id="caption dialogWideCaption"></h1>
        <div id="dialogWideContent" class="content center"></div>
    </div>
    <div id="page" class="interface_background">
        <div id="newsbox" class="interface_newsbox2">
            <div id="newstext1"><i>About Travians</i>
            <br />
            Is a multiplayer strategic browser game, run on v3.6. In the game you can choose between three nations, to build a village!
        </div>
        <div id="newstext2">
            Wir möchten hier noch einmal auf das Thema Sicherheit hinweisen. Bitte lest Euch dazu den Beitrag im <a target="_blank" href="#">Forum</a> einmal durch.
        </div>
    </div>
    <div id="StartseitenDescription">
        <div class="descHeader"></div>
        <div class="descContent">
            Erfülle spannende Missionen, erlerne einen Beruf , kämpfe in der Arena und entwickle so den Charakter deiner Figur weiter. Werde Teil der MMORPG-Community und schließe neue Freundschaften.
            <br />
            Jetzt kostenlos beim Online Game Travianer anmelden und gleich starten.
        </div><div class="descFooter"></div>
    </div>
    <div id="spider" class="interface_chars"></div>
    <a href="javascript:;" class="register playfree interface_playfree"></a>
    <div id="logo" class="logo interface_logo"></div>
        <div id="petBubble" class="petBubble bubble">
            <div class="top interface_bubble"></div>
            <div class="content interface_bubble">
                Hilf mir, das Rätsel um meine Herkunft zu lösen! Bei Travianer warten spannende Abenteuer auf Dich!
                <br />
                <b><a class="register" href="javascript:;">Jetzt mitspielen »</a></b>
            </div>
            <div class="bottom interface_bubble"></div>
        </div>
        <div id="maleBubble" class="maleBubble bubble">
            <div class="top interface_bubble"></div>
            <div class="content interface_bubble">
                Kämpf' mit mir! Mal sehen, wer der Stärkere ist und mehr Medaillen gewinnt!<br />
                <b><a class="register" href="javascript:;">Jetzt mitspielen »</a></b>
            </div>
            <div class="bottom interface_bubble"></div>
        </div>
        <div id="femaleBubble" class="femaleBubble bubble">
            <div class="top interface_bubble"></div>
            <div class="content interface_bubble">
                Komm mit in mein Dorf! Du kannst dir ein Haus einrichten und dich mit Freunden zu Gemeinschaftsaktionen treffen!<br />
                <b><a class="register" href="javascript:;">Jetzt mitspielen »</a></b>
            </div>
            <div class="bottom interface_bubble"></div>
        </div>
        <a href="javascript:;" id="pet" class="pet register interface_chars"></a>
        <a href="javascript:;" id="male" class="male register interface_chars" rel="Forum"></a>
        <span id="maleBubble" class="maleBubble bubble"></span>
        <a href="javascript:;" id="female" class="female register interface_chars" rel="Registrierung"></a>
        <span id="femaleBubble" class="femaleBubble bubble"></span>
        <a href="javascript:;" class="fighters interface_chars" rel="Registrierung"></a>
        <a href="javascript:;" id="trailer" class="trailer interface_trailer"></a>
        <a href="javascript:;" id="screenshots" class="screenshot screenshots interface_screenshots"></a>
        <a href="url1" id="stamp" class="stamp interface_stamp nopartner " target="_blank"></a>
        <a href="url2" id="stampalt" class="stamp alternate interface_stamp nopartner " target="_blank"></a>
        <div id="menu" class="menu">
            <a href="anmelden" class="register">Anmelden</a> 
            •<a class="imgLink" target="_blank" href="facebook1">
                <img class="fbLink" src="img/portal/interface/facebook_24.gif" />
            </a> <a href="facebook2" target="_blank">Gefällt mir</a> 
            •<a href="javascript:;" class="" id="forum">Forum</a> 
            •<a href="help" class="" target="_blank">Anleitung</a>
            <br />
            <span class="copyright">© Travian Games GmbH • <a href="impressum" id="imprint">Impressum</a></span>
        </div>
        <div id="adaptor">
            <div id="loginBox" class="loginBox interface_loginbox">
                <!--
                <a href="javascript:;" id="fbConnectLogin" class="interface_fbconnect"></a>
                    <span class="fbOr">oder</span>
                    -->
                <span class="one interface_loginbox"></span>
                <span class="two interface_loginbox"></span>
                <form action="login.php" method="post" name="snd" id="loginForm">
                    <input type="hidden" name="ft" value="a4" />
                    <span id="labelLogin" class="labelLogin">Name</span>
                    <span id="labelPassword" class="labelPassword">Password</span>
                    <div id="loginName" class="loginName">
                        <input id="loginNameID" name="user" type="text" value="" class="loginTextField interface_textfield "/>
                    </div>  
                    <div id="password" class="password">
                        <input id="loginPasswordID" name="pw" type="password" value="" class="loginTextField interface_textfield "/>
                    </div>
                    <input type="hidden" name="login" value="1311372931" />
                    <a href="#" class="forgotPassword">Lose password?</a>
                    <span class="register">You do not have an account? <a href="anmelden.php">Register now!</a></span>   
                    <a href="#" id="loginButton" class="button loginButton interface_forms_button_loginbutton"><span class="interface_forms_button_loginbutton"></span>Login</a>
                    <input type="submit" name="hiddenSubmit" class="hiddenSubmit"/>
                </form>
            </div>
        </div>
        <table id="stats" class="stats">
            <tr>
                <th>Players:</th>
                <td><?php echo $users; ?></td>
            </tr>
            <tr>
                <th>Online:</th>
                <td><?php echo $online; ?></td>
            </tr>
        </table>
        <div id="fighters" class="interface_chars"></div>
        <div id="lady" class="interface_chars"></div>
        <div id="mouse" class="interface_chars_mouse"></div>
        <div id="stream" class="interface_chars"></div>
        <div id="smoke" class="interface_chars"></div>
        <div id="flag" class="interface_chars"></div>
        <div id="flowergirl" class="interface_chars"></div>
        <div id="chopper" class="interface_chars"></div>
        <div id="bird" class="interface_chars"></div>
        <div id="mousecover"></div>
    </div>
    <input type="hidden" id="code" name="code" value="" />
    <input type="hidden" id="coopID" name="coopID" value="0" />
    <input type="hidden" id="lang" name="lang" value="en" />
    <div id="loadNotify" class="interface_ajax_loader_white"></div>
    <script type="text/javascript">
        //<![CDATA[
            var loginNameID = $('loginNameID');
            if (loginNameID) {
                if (loginNameID.value=="") {
                    loginNameID.focus();
                } else {
                    var loginPasswordID = $('loginPasswordID');
                    if (loginPasswordID) {
                        loginPasswordID.focus();
                    }
                }
            }
            var portal = new PortalApplication();
            function inArray (search, arr) {
            if (arr==null)
                return false;
            if (arr.length<1)
                return false;
            for (i=0; i<arr.length; i++)
                if (arr[i]==search) return true;
            return false;
        }
        function checkCookies() {
            cookies=document.cookie.split("; ");
            newCookie="";
            var tmpCookies=new Array();
            for (i=0; i<cookies.length; i++) {
                parts=cookies[i].split("=");
                if (inArray(parts[0], tmpCookies)) {
                    if (typeof(text) != 'undefined' && text['cookieProblem']!=undefined)
                        alert(text['cookieProblem']);
                    else
                        alert("Cookie problem");
                    return;
                } else {
                    tmpCookies.push(parts[0]);
                }
            }
        }
        checkCookies();
    </script>
    <noscript>
        <div class="dialog dialogMedium interface_dialog_medium_background" style="display: block; position: absolute;">
            <div class="content center">
                <h1>Bitte Javascript einschalten</h1>
                <br />
                <p style="font-size: 16px;">
                    Dieses Spiel funktioniert nur mit eingeschaltetem JavaScript									</p>
            </div>
        </div>
    </noscript>
    <script src="http://static.ak.connect.facebook.com/js/api_lib/v0.4/FeatureLoader.js.php/en_NE" type="text/javascript"></script>
    <script type="text/javascript">
        FB.init('6c7464eddf07afef7bd6bfc5672dac15', '/lib/facebook/xd_receiver.htm');
    </script>	
</body>
</html>