<h1 class="titleInHeader">Messages</h1>
<div class="contentNavi subNavi">
	<div title="" class="container <?php if(!isset($_GET['t'])) {echo "active";} else {echo "normal";} ?>">
		<div class="background-start">&nbsp;</div>
		<div class="background-end">&nbsp;</div>
		<div class="content"><a href="nachrichten.php"><span class="tabItem">Inbox</span></a></div>
	</div>
	<div title="" class="container <?php if(isset($_GET['t']) && $_GET['t'] == 1) {echo "active";} else {echo "normal";} ?>">
        <div class="background-start">&nbsp;</div>
        <div class="background-end">&nbsp;</div>
        <div class="content"><a href="nachrichten.php?t=1"><span class="tabItem">Write</span></a></div>
    </div>
	<div title="" class="container <?php if(isset($_GET['t']) && $_GET['t'] == 2) {echo "active";} else {echo "normal";} ?>">
        <div class="background-start">&nbsp;</div>
        <div class="background-end">&nbsp;</div>
        <div class="content"><a href="nachrichten.php?t=2"><span class="tabItem">Sent</span></a></div>
    </div>
	<?php if($session->plus) { ?>
	<div title="" class="container <?php if(isset($_GET['t']) && $_GET['t'] == 3) {echo "active";} else {echo "normal";} ?>">
        <div class="background-start">&nbsp;</div>
        <div class="background-end">&nbsp;</div>
        <div class="content"><a href="nachrichten.php?t=3"><span class="tabItem">Archive</span></a></div>
    </div>
    <div title="" class="container <?php if(isset($_GET['t']) && $_GET['t'] == 4) {echo "active";} else {echo "normal";} ?>">
        <div class="background-start">&nbsp;</div>
        <div class="background-end">&nbsp;</div>
        <div class="content"><a href="nachrichten.php?t=4"><span class="tabItem">Notes</span></a></div>
        </div><div class="clear">
    </div>
    <?php } ?>
</div>
<script type="text/javascript">
	window.addEvent('domready', function(){
		$$('.subNavi').each(function(element){
			new Travian.Game.Menu(element);
		});
	});
</script>