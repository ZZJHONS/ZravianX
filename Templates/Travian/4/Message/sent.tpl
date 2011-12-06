<?php

/** --------------------------------------------------- **\
| ********* DO NOT REMOVE THIS COPYRIGHT NOTICE ********* |
+---------------------------------------------------------+
| Credits:     All the developers including the leaders:  |
|              Advocaite & Dzoki & Donnchadh              |
|                                                         |
| Copyright:   TravianX Project All rights reserved       |
\** --------------------------------------------------- **/
?>
<!--
<div id="content" class="messages">
	<h1 class="titleInHeader">Messages</h1>
	<div class="contentNavi subNavi">
		<div title="" class="container normal" >
			<div class="background-start">&nbsp;</div> <div class="background-end">&nbsp;</div>
			<div class="content"><a title="" href="msg.php"><span class="tabItem">Inbox</span></a></div>
		</div>
		<div title="" class="container normal" >
			<div class="background-start">&nbsp;</div> <div class="background-end">&nbsp;</div>
			<div class="content"><a title="" href="msg.php?t=1"><span class="tabItem"> Write </span></a></div>
		</div>
		<div title="" class="container active" >
			<div class="background-start">&nbsp;</div> <div class="background-end">&nbsp;</div>
			<div class="content"><a title="" href="msg.php?t=2"><span class="tabItem"> Sent </span></a></div>
				</div>		<div class="clear"></div>
		</div>
<form method="post" action="msg.php?p=0&t=2" name="msg">
<table cellpadding="1" cellspacing="1" id="overview" class="row_table_data">
	<thead>
		<tr>
			<th><input type="checkbox" onclick="checkedAll();"></th>
			<th>Subject</th>
			<th></th>
			<th class="sent">Sent</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="233"></td>
			<td class="top"><a href="msg.php?id=233">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="232"></td>
			<td class="top"><a href="msg.php?id=232">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="231"></td>
			<td class="top"><a href="msg.php?id=231">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="230"></td>
			<td class="top"><a href="msg.php?id=230">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="229"></td>
			<td class="top"><a href="msg.php?id=229">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="228"></td>
			<td class="top"><a href="msg.php?id=228">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="227"></td>
			<td class="top"><a href="msg.php?id=227">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="226"></td>
			<td class="top"><a href="msg.php?id=226">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="225"></td>
			<td class="top"><a href="msg.php?id=225">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:48</td>
		</tr>
				<tr>
			<td class="sel"><input class="check" type="checkbox" name="dm[]" value="224"></td>
			<td class="top"><a href="msg.php?id=224">Hi</a> </td>
			<td class="send"><a href="profile.php?uid=505">Harcos</a></td>
			<td class="dat">11/12/05 01:47</td>
		</tr>
			</tbody>
	<tfoot>
	<tr>
		<th>&nbsp;</th>
			<th colspan="2" class="buttons">
	<div class="clear"></div>
		<div class="buttons">
		<button type="submit" value="Delete" name="delmsg" id="delmsg"><div class="button-container">
		<div class="button-position"><div class="btl"><div class="btr"><div class="btc"></div></div></div>
		<div class="bml"><div class="bmr"><div class="bmc"></div></div></div><div class="bbl">
		<div class="bbr"><div class="bbc"></div></div></div></div><div class="button-contents">Delete</div></div>
		</button> <input type="hidden" name="s" value="0" />
	</div></th>
	<th class="navi"><a href="msg.php?t=2">&laquo; newer </a>|<a href="msg.php?t=2&amp;p=2"> older &raquo;</a></th>
		</tr>
	</tfoot>
</table>
</form>
-->
<div id="content"  class="messages">
    <h1>Messages</h1>
        <?php include("menu.tpl"); ?>
    <form method="post" action="nachrichten.php" name="msg">
    <input type="hidden" name="ft" value="m4" />
    <table cellpadding="1" cellspacing="1" id="overview">
        <thead><tr>
            <th></th>
            <th>Subject</th>
            <th>Recipient</th>
            <th class="sent"><a href="nachrichten.php?s=0&amp;t=2&amp;o=1">Sent</a></th>
            </tr></thead><tfoot><tr><th><?php
		$MyGold = mysql_query("SELECT * FROM ".TB_PREFIX."users WHERE `username`='".$session->username."'") or die(mysql_error());
		$golds = mysql_fetch_array($MyGold);
		$date2=strtotime("NOW");
		if ($golds['plus'] <= $date2) { ?>
		<?php } else { ?>
		<input class="check" type="checkbox" id="s10" name="s10" onclick="Allmsg(this.form);" />
		<?php } ?></th>
	<th colspan="2" class="buttons"><input name="delmsg" value="delete" type="image" id="btn_delete" class="dynamic_img" src="img/x.gif" alt="delete" /></th><th class="navi"><?php 
     if(!isset($_GET['s']) && count($message->sent) < 10) {
    echo "&laquo;&raquo;";
    }
    else if (!isset($_GET['s']) && count($message->sent) > 10) {
    echo "&laquo;<a href=\"?s=10&o=0\">&raquo;</a>";
    }
    else if(isset($_GET['s']) && count($message->sent) > $_GET['s']) {
    	if(count($message->sent) > ($_GET['s']+10) && $_GET['s']-10 < count($message->sent) && $_GET['s'] != 0) {
         echo "<a href=\"?s=".($_GET['s']-10)."&o=0\">&laquo;</a><a href=\"?s=".($_GET['s']+10)."&o=0\">&raquo;</a>";
         }
         else if(count($message->sent) > $_GET['s']+10) {
         	echo "&laquo;<a href=\"?s=".($_GET['s']+10)."&o=0\">&raquo;</a>";
         }
        else {
        echo "<a href=\"?s=".($_GET['s']-10)."&o=0\">&laquo;</a>&raquo;";
        }
    }
    ?></th></tr></tfoot>
<tbody>
   <?php 
    if(isset($_GET['s'])) {
    $s = $_GET['s'];
    }
    else {
    $s = 0;
    }
    $name = 1;
    for($i=(1+$s);$i<=(10+$s);$i++) {
    if(count($message->sent) >= $i) {
    if($message->sent[$i-1]['target'] == 0) {
    echo "<tr class=\"sup\">";
    }
    else {
    echo "<tr>";
    }
    echo "<td class=\"sel\"><input class=\"check\" type=\"checkbox\" name=\"n".$name."\" value=\"".$message->sent[$i-1]['id']."\" /></td>
		<td class=\"top\"><a href=\"nachrichten.php?id=".$message->sent[$i-1]['id']."\">".$message->sent[$i-1]['topic']."</a> ";
    if($message->sent[$i-1]['viewed'] == 0) {
    echo "(unread)";
    }
    $date = $generator->procMtime($message->sent[$i-1]['time']);
    echo "</td><td class=\"send\"><a href=\"spieler.php?uid=".$message->sent[$i-1]['target']."\">".$database->getUserField($message->sent[$i-1]['target'],'username',0)."</a></td>
		<td class=\"dat\">".$date[0]." ".$date[1]."</td></tr>";
        }
        $name++;
    }
    if(count($message->sent) == 0) {
    echo "<td colspan=\"4\" class=\"none\">There are no sent messages available.</td></tr>";
    }
    ?>
</tbody></table>
</form>
</div>
