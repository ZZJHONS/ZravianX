<?php
    $input = $message->reading['message'];
    include("GameEngine/BBCode.php");
?>
<div id="messageNavigation">
	<div id="backToInbox">
		<a href="nachrichten.php">back to the inbox</a>
	</div>
	<div id="deleteMessage">
		<form method="post" action="nachrichten.php">
			<input type="hidden" name="n1" value="<?php echo $message->reading['id']; ?>" id="n1">			
			<button type="submit" value="Delete" name="delmsg" id="delmsg">
				<div class="button-container">
                    <div class="button-position">
                        <div class="btl">
                            <div class="btr">
                                <div class="btc"></div>
                            </div>
                        </div>
                        <div class="bml">
                            <div class="bmr">
                                <div class="bmc"></div>
                            </div>
                        </div>
                        <div class="bbl">
                            <div class="bbr">
                                <div class="bbc"></div>
                            </div>
                        </div>
                    </div>
                    <div class="button-contents">Delete</div>
                </div>
            </button>
            <input type="hidden" name="s" value="" />
		</form>
	</div>
	<div class="clear"></div>
</div>
<div class="paper">
	<div class="layout">
		<div class="paperTop"></div>
		<div class="paperMiddle"></div>
		<div class="paperBottom"></div>
	</div>
	<div class="paperContent">
		<div id="sender">
			<div class="header label">Sender:</div>
			<div class="header text"><?php echo $database->getUserField($message->reading['owner'],"username",0); ?><a href="spieler.php?uid=0"></a></div>
			<div class="clear"></div>
		</div>
		<div id="subject">
			<div class="header label">Subject:</div>
			<div class="header text"><?php echo $message->reading['topic']; ?></div>
			<div class="clear"></div>
		</div>
		<div id="time">
			<div class="header label">Sent:</div>
			<div class="header text"><?php $date = $generator->procMtime($message->reading['time']); echo $date[0]; ?> <?php echo $date[1]; ?></div>
			<div class="clear"></div>
		</div>
		<div class="separator"></div>
		<div id="message"><?php echo nl2br($bbcoded); ?></div>
		<div id="answer">
            <form method="post" action="nachrichten.php">
                <input type="hidden" name="id" value="<?php echo $message->reading['id']; ?>" id="id">
                <input type="hidden" name="t" value="1" id="t">
                <button type="submit" value="" name="s1" id="btn_reply">
                    <div class="button-container">
                        <div class="button-position">
                            <div class="btl">
                                <div class="btr">
                                    <div class="btc"></div>
                                </div>
                            </div>
                            <div class="bml">
                                <div class="bmr">
                                    <div class="bmc"></div>
                                </div>
                            </div>
                            <div class="bbl">
                                <div class="bbr">
                                    <div class="bbc"></div>
                                </div>
                            </div>
                        </div>
                        <div class="button-contents">answer</div>
                    </div>
                </button>
            </form>
        </div>
    </div>
</div>