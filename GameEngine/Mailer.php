<?php
#################################################################################
##                                                                             ##
##              -= YOU MUST NOT REMOVE OR CHANGE THIS NOTICE =-                ##
##                                                                             ##
## --------------------------------------------------------------------------- ##
##                                                                             ##
##  Project:       ZravianX                                                    ##
##  Version:       2011.11.07                                                  ##
##  Filename:      GameEngine/Mailer.php                                       ##
##  Developed by:  Dixie                                                       ##
##  Edited by:     ZZJHONS                                                     ##
##  License:       Creative Commons BY-NC-SA 3.0                               ##
##  Copyright:     ZravianX (c) 2011 - All rights reserved                     ##
##  URLs:          http://zravianx.zzjhons.com                                 ##
##  Source code:   http://www.github.com/ZZJHONS/ZravianX                      ##
##                                                                             ##
#################################################################################

class Mailer {
	
	function sendActivate($email,$username,$pass,$act) {
		
		$subject = "Welcome to ".SERVER_NAME;
		
		$message = "Hello ".$username."

Thank you for your registration.

The server will start the Monday 7, October, 2011 at 20:00 GMT+2

----------------------------
Name: ".$username."
Password: ".$pass."
Activation code: ".$act."
----------------------------

Click the following link in order to activate your account:
".HOMEPAGE."activate.php?code=".$act."

Server homepage: ".HOMEPAGE."
Server tutorial: ".HOMEPAGE."/#tutorial
Server screenshots: ".HOMEPAGE."/#screenshots

Greetings,
ZravianX";
				
		$headers = "From: activate@".SERVER_NAME."\n";
		//$headers .= 'MIME-Version: 1.0' . "\r\n";
		//$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
		
		mail($email, $subject, $message, $headers);
	}
	
};
$mailer = new Mailer;
?>