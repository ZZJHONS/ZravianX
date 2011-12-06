<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.07                                                  ##
##  Filename:      install/templates/multihunter.tpl                           ##
##  Developed by:  Dzoki & Dixie                                               ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

rename("include/constant.php","../GameEngine/config.php");
?>
<form action="include/multihunter.php" method="post" id="dataform">
	<p>
		<span class="f10 c">Create Multihunter account with your password</span>
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="mhpw" id="mhpw" value="Multihunter" disabled="disabled"></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="mhpw" id="mhpw" value="password"></td>
			</tr>
			<tr>
				<td>Note: Remember this password! You need it for the ACP</td>
				<td></td>
			</tr>
		</table>
	</p>
	<center>
		<input type="submit" name="Submit" id="Submit" value="Submit">
	</center>
</form>