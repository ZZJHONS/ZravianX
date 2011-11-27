<h2>Granary</h2>
<div class="build_desc">
	<a href="#" onclick="return Travian.Game.iPopup(11,4);" class="build_logo">
		<img class="building big white g11" src="img/x.gif" alt="Granary">
	</a>
	In the granary, the crop produced on your farms is stored. By increasing its level, you increase the granary’s capacity.</div>
<div id="contract" class="contract contractNew contractWrapper">
	<div class="contractText">Costs:</div>
	<div class="contractCosts"><div class="showCosts"><span class="resources r1"><img class="r1" src="img/x.gif" alt="Lumber">80</span><span class="resources r2"><img class="r2" src="img/x.gif" alt="Clay">100</span><span class="resources r3 little_res"><img class="r3" src="img/x.gif" alt="Iron">70</span><span class="resources r4"><img class="r4" src="img/x.gif" alt="Crop">20</span><span class="resources r5"><img class="r5" src="img/x.gif" alt="Crop consumption">1</span><div class="clear"></div><span class="clocks"><img class="clock" src="img/x.gif" alt="duration">0:08:50</span><div class="clear"></div></div></div>
	<div class="contractLink"><span class="none">Enough resources today at 19:46</span></div>
	<div class="clear"></div>
</div>
<div class="clear"></div><hr>



<h2>Granary</h2>
<table class="new_building" cellpadding="1" cellspacing="1">
	<tbody>
		<tr>
			<td class="desc">In the granary the crop produced in your farms is stored. By increasing its level you increase the granary’s capacity.</td>
			<td rowspan="3" class="bimg">
				<a href="#" onClick="return Popup(11,4);">
					<img class="building g11" src="img/x.gif" alt="Granary" title="Granary" />
                </a>
			</td>
		</tr>
		<tr>
            <?php
                $_GET['bid'] = 11;
                include("availupgrade.tpl");
            ?>
		</tr>
    </tbody>
</table>