function Close()
{
myElement = document.getElementById("ce");
if(myElement != null){myElement.innerHTML='';}
}
            var popupStatus = 0;
            var error = 0;
            function loadPopup(poplayer){
                //loads popup only if it is disabled
                if(popupStatus==0){
                    $("#backgroundSlider").css({"opacity": "0.7"});
                    $("#backgroundSlider").fadeIn("slow");
                    $(poplayer).fadeIn(1000);$("#slider").easySlider();popupStatus = 1;
                }
            }

            function disablePopup(poplayer){
                //disables popup only if it is enabled
                if(popupStatus==1){
                    $("#backgroundSlider").fadeOut("slow");
                    $(poplayer).fadeOut("slow");popupStatus = 0;
                }
            }

            function centerPopup(poplayer,xpos,ypos){
                var windowWidth = document.documentElement.clientWidth;
                var windowHeight = document.documentElement.clientHeight;
                var popupHeight = $(poplayer).height();
                var popupWidth = $(poplayer).width();
                //centering
                $(poplayer).css({"position": "absolute","top": windowHeight/2-popupHeight/2,"left": windowWidth/2-popupWidth/2
                });
                return false;
            }
            //document onload
            $(function(){

                //slider
                //errors
                if(error==2){
                    $("#name").css({'border-color':'#ff0000'});
                }
                else if(error==3){
                    $("#email").css({'border-color':'#ff0000'});
                }
                else if(error==4){
                    $("#pw").css({'border-color':'#ff0000'});
                }
                else if(error==5){
                    $("#agb").css({'border':'1px solid #ff0000'});
                }
                //LOADING POPUP
                //Click the button event!
                $("#ss").click(function(){
                            //  alert ('ready to load slider'+land);
                var html = '<ul><li><img src="images/s1.png" alt="'+alt+'" /></li>';
                    html+='<li><img src="images/s2.png" alt="'+alt+'" /></li>';                    
					html+='<li><img src="images/s3.png" alt="'+alt+'" /></li>';
                    html+='<li><img src="images/s4.png" alt="'+alt+'" /></li>';
                    html+='<li><img src="images/s5.png" alt="'+alt+'" /></li>';
                    html+='<li><img src="images/s7.png" alt="'+alt+'" /></li>';
                    html+='<li><img src="images/s8.png" alt="'+alt+'" /></li></ul>';
                    $("#slider").empty().append(html);

                    //centering with css
                    centerPopup('#containerSlider');
                    //load popup
                    loadPopup('#containerSlider');
                });

                //CLOSING POPUP
                //Click the x event!
                $("#sliderClose").click(function(){
                    disablePopup('#containerSlider');
                });
                //Click out event!
                $("#backgroundSlider").click(function(){
                    disablePopup('#containerSlider');
                });
                //Press Escape event!
                $(document).keypress(function(e){
                    if(e.keyCode==27 && popupStatus==1){
                        disablePopup('#containerSlider');
                    }
                });


            });