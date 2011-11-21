var flag_state = '';

function start()
{
if(document.getElementById("link1") != null){document.getElementById("link1").href = "#";}
if(document.getElementById("link2") != null){document.getElementById("link2").href = "#";}
if(document.getElementById("link3") != null){document.getElementById("link3").href = "#";}
t_minus();

if (top != self) top.location = self.location;
}


function Popup(i,j,game_url)
{
myElement = document.getElementById("ce");
if(myElement != null)
{
var hilfe = "<div class=\"popup3\"><iframe frameborder=\"0\" id=\"Frame\" src=\""+ game_url + "manual.php?typ="+i+"&s="+j+"\" width=\"412\" height=\"440\" border=\"0\"></iframe></div><a href=\"#\" onClick=\"Close()\"><img src=\"img/un/x.gif\" border=\"1\" class=\"popup4\" alt=\"Close\"></a>";
myElement.innerHTML=hilfe;
}
}

function Close()
{
myElement = document.getElementById("ce");
if(myElement != null){myElement.innerHTML='';}
}

/*
function Popup(i)
{
myElement = document.getElementById("ce");
if(myElement != null)
{
var hilfe = "<div class=\"popup3\"><iframe frameborder=\"0\" scrolling=\"no\" id=\"Frame\" src=\"hilfe.php?s="+ i + "\" width=\"415\" height=\"400\" border=\"0\"></iframe></div><a href=\"#\" onClick=\"Close()\"><img src=\"img/a/x.gif\" border=\"1\" class=\"popup4\" alt=\"Schlie�en\"></a>";
myElement.innerHTML=hilfe;
}
}
*/

var dom			= document.getElementById ? 1 : 0;
var ie			= document.all ? 1 : 0;
var mac			= (navigator.userAgent.indexOf("Mac") > -1) ? 1 : 0;
var ieReal		= (ie && (!mac) && ( typeof(window.offscreenBuffering) != 'undefined') ) ? 1 : 0;
var isActiveX	= ieReal;
var isSp2		= ieReal && (window.navigator.userAgent.indexOf("SV1") != -1);

function changeOpacity(obj, opacity) {
if(ieReal) {
obj.style.filter = 'progid:DXImageTransform.Microsoft.Alpha(opacity=' + (opacity * 100) + ')';
}
else if(dom) {
obj.style.MozOpacity = opacity;
//obj.style.opacity = opacity;
}
}



//Lagerbestand wird hoch gez&auml;hlt





function Serverwahl(i) {
	login = document.getElementById("login_layer");
	signup = document.getElementById("signup_layer");
	if(login != null && signup != null) {
		if(i == 1) {
			signup.style.display = "none";
			login.style.display = "block";
		} else if(i == 2) {
			login.style.display = "none";
			signup.style.display = "block";
		} else {
			login.style.display = "none";
			signup.style.display = "none";
		}
	}
}


function hl_bt(on) {
	element = document.getElementById("image_button");
	if (on) {element.style.display = "block";}
	else {element.style.display = "none";}
}


function t_minus(){
//Zeit wird herunter gezaehlt
for(i=1;; i++) {
myElement = document.getElementById("timer" + i);
if(myElement != null)
{
sek = t_format1(myElement)-1;
if (sek < 0){setTimeout("document.location.reload()", 1000);}
else{sek = t_format2(sek); myElement.innerHTML=sek;}
}
else break;
}
setTimeout("t_minus()", 1000);
}

function t_format1(myElement) {
//00:01:30 wird zu 90s umformatiert
p = myElement.innerHTML.split(":");
sek = p[0]*3600+p[1]*60+p[2]*1;
return sek;
}

function t_format2(s) {
//90s wird zu 00:01:30 umformatiert
if(s > -1){
stunden = Math.floor(s/3600);
minuten = Math.floor(s/60) % 60;
sekunden = s % 60; t = stunden + ":";
if(minuten < 10){t += "0";} t += minuten + ":";
if(sekunden < 10){t += "0";} t += sekunden;}else{t = "0:00:0?";}
return t;
}

function is_child(dnode, p_name){
 var found = false;
 if (dnode!=null) { 
  while (dnode.id!=p_name && dnode.nodeName!='BODY'){
   dnode = dnode.parentNode;
  }
  if (dnode.id==p_name) found = true;
 }
 return found;
}

function country_box_change(e){ 
	if (!e) var e = window.event;
	var box_target = (window.event) ? e.srcElement : e.target;
	var reltg = (e.relatedTarget) ? e.relatedTarget : e.toElement;
	var state = 0;
	var node = document.getElementById('flag_list');

	if (node!=null){
		if (node.style.visibility=='inherit') { state=1; } else { state=0; }
		if(e.type=='click') { state = !state; }
			else {
				
				if (!is_child(reltg, 'flag_list')){ 
						state = !state; 
				} 
			}
		if (state==1) { node.style.visibility='inherit'; } else { node.style.visibility = 'hidden'; }
	}
}

function change_visible(id_name, state){ 
   var dNode = document.getElementById(id_name);
	if (dNode != null) {
	 switch(state){
	  case 1: dNode.style.visibiltiy = 'inherit'; break;
	  case 0: dNode.style.visibility = 'hidden'; break;
	 }
   }
}

//Ajax
var http_request = false;

    function macheRequest(url,blubb) {

        http_request = false;

        if (window.XMLHttpRequest) { // Mozilla, Safari,...
            http_request = new XMLHttpRequest();
            if (http_request.overrideMimeType) {
                http_request.overrideMimeType('text/xml');
                // zu dieser Zeile siehe weiter unten
            }
        } else if (window.ActiveXObject) { // IE
            try {
                http_request = new ActiveXObject("Msxml2.XMLHTTP");
            } catch (e) {
                try {
                    http_request = new ActiveXObject("Microsoft.XMLHTTP");
                } catch (e) {}
            }
        }

        if (!http_request) {
            alert('Ende :( Kann keine XMLHTTP-Instanz erzeugen');
            return false;
        }
        http_request.onreadystatechange = function() { alertInhalt(blubb); } ;
        http_request.open('GET', url, true);
        http_request.send(null);

    }

    function alertInhalt(name) {

        if (http_request.readyState == 4) {
            if (http_request.status == 200) {
  //              alert(http_request.responseText);
myElement = document.getElementById(name);
if(myElement != null){myElement.innerHTML=http_request.responseText;}

            } else {
                alert('Bei dem Request ist ein Problem aufgetreten.');
            }
        }
    }
//End Ajax

// FAQ Additions:
function blank(url) {

	new_window = window.open(url, "new_window", "");
	new_window.focus();

}
// Hero creator
function timeS2R(x){return eval(x.replace(/^(\d* )?(\d+):(\d{2}):(\d{2})$/,"parseInt('0$1',10)+parseInt('$2',10)/24+parseInt('$3',10)/1440+parseInt('$4',10)/86400"))}
function timeR2S(x){u="";x=Math.round(x*86400);s=x%60;x=Math.floor(x/60);m=x%60;x=Math.floor(x/60);h=x%24;d=Math.floor(x/24);if(d){u+=d+" ";if(h<10)u+="0"};u+=h;u+=":";if(m<10)u+="0";u+=m;u+=":";if(s<10)u+="0";return u+s}
function small_last_3_digits(x){try{r=new RegExp("^(.*)([0-9]{3})$");a=r(x);if(a)return a[1]+a[2].small();else return x.small();}catch(e){return x;}}


var StateSaver = {
	bind:function(obj, pars) {
		this.object = obj;
		this.params = pars;
	},
	load:function() {
		var params_str=window.location.href.replace(/^.*?(\#(.*))?$/, "$2");
		var _get=params_str.split('&');
		for(i=0;i<_get.length;i++) {
			a=_get[i].split('=');
			switch (this.params[a[0]]) {
				case 'b': this.object[a[0]] = true; break;
				case 'i': this.object[a[0]] = parseInt(a[1]); break;
				case 's': this.object[a[0]] = unescape(a[1]); break;
				case 'a': this.object[a[0]] = a[1].split(','); break;
			}
		};
		this.check();
	},
	save:function() {
		var _get=[];
		for(p in this.params)
			if (this.object[p]) {
				switch (this.params[p]) {
					case 'b': _get.push(p); break;
					case 'i': _get.push(p+'='+this.object[p]); break;
					case 's': _get.push(p+'='+escape(this.object[p])); break;
					case 'a': if(eval(this.object[p].join('+')))_get.push(p+'='+this.object[p].join(',')); break;
				}
			}
		var params_str=_get.join('&');
		window.location.href = window.location.href
			.replace(/^([^#]+)(#.*)?$/, "$1") + '#' + params_str;
	},
	check:function() {}
}