<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.10                                                  ##
##  Filename:      Templates/Ranking/general.tpl                               ##
##  Developed by:  All the developers including the leaders:                   ##
##                 Advocaite & Dzoki & Donnchadh                               ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

$tribe1 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 1");
$tribe2 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 2");
$tribe3 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 3");
$tribe4 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 4");
$tribe5 = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."users WHERE tribe = 5");
$tribes = Array(mysql_num_rows($tribe1),mysql_num_rows($tribe2),mysql_num_rows($tribe3),mysql_num_rows($tribe4),mysql_num_rows($tribe5));
?>
<table cellpadding="1" cellspacing="1" id="world_player" class="world">
	<thead>
		<tr>
			<th colspan="2">Players</th>
		</tr>
    </thead>
    <tbody>
        <tr>
            <th>Registered players</th>
            <td><?php echo $users; ?></td>
        </tr>
        <tr>
            <th>Active players</th>
            <td><?php echo $active; ?></td>
        </tr>
        <tr>
            <th>Players online</th>
            <td><?php echo $online; ?></td>
        </tr>
        <?php if($session->plus){ ?>
        <tr>
			<th>Villages settled</th>
			<td><?php $result = mysql_query("SELECT SQL_CACHE * FROM ".TB_PREFIX."vdata"); $num_rows = mysql_num_rows($result); echo $num_rows; ?></td>
        </tr>
        <?php } ?>
    </tbody>
</table>
<table cellpadding="1" cellspacing="1" id="world_tribes" class="world">
    <thead>
        <tr>
            <th colspan="3">Tribes</th>
        </tr>
        <tr>
            <td>Tribe</td>
            <td>Registered</td>
            <td>Percent</td>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>Romans</td>
            <td><?php echo $tribes[0] - 2; ?></td>
            <td><?php $percents = 100 * (($tribes[0]-2) / $users); echo $percents = intval($percents); echo "%"; ?></td>
        </tr>
        <tr>
            <td>Teutons</td>
            <td><?php echo $tribes[1]; ?></td>
            <td><?php $percents = 100 * ($tribes[1] / $users); echo $percents = intval($percents);  echo "%"; ?></td>
        </tr>
        <tr>
            <td>Gauls</td>
            <td><?php echo $tribes[2]; ?></td>
            <td><?php $percents = 100 * ($tribes[2] / $users); echo $percents = intval($percents); echo "%"; ?></td>
        </tr>
		<tr>
			<td>Nature</td>
			<td><?php echo $tribes[3]; ?></td>
			<td><?php $percents = 100*($tribes[3] / $users); echo $percents = intval ($percents); echo "%"; ?></td>
		</tr>
		<tr>
			<td>Natars</td>
			<td><?php echo $tribes[4]; ?></td>
			<td><?php $percents = 100*($tribes[4] / $users); echo $percents = intval ($percents); echo "%"; ?></td>
		</tr>
    </tbody>
</table>
<!-- NOT DONE
<table cellpadding="1" cellspacing="1" id="world_misc" class="world">
	<thead>
		<tr>
            <th colspan="3">Miscellaneous</th>
        </tr>
		<tr>
			<td>Attacks</td>
			<td>Casualties</td>
			<td>Date</td>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>7730</td>
			<td>73114</td>
			<td>10. Apr</td>
		</tr>
		<tr>
			<td>41227</td>
			<td>366850</td>
			<td>09. Apr</td>
		</tr>
		<tr>
			<td>41167</td>
			<td>307199</td>
			<td>08. Apr</td>
		</tr>
		<tr>
            <td>41032</td>
            <td>322104</td>
            <td>07. Apr</td>
        </tr>
        <tr>
            <td>42213</td>
            <td>323935</td>
            <td>06. Apr</td>
        </tr>
        <tr>
            <td>40565</td>
            <td>348493</td>
            <td>05. Apr</td>
        </tr>
        <tr>
            <td>39256</td>
            <td>305669</td>
            <td>04. Apr</td>
        </tr>
	</tbody>
</table>
   
<div>-->
