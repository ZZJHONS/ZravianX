            <div id="side_info">
                <?php
                    include("Templates/quest.tpl");
                    include("Templates/news.tpl");
                    include("Templates/multivillage.tpl");
                    include("Templates/links.tpl");
                ?>
            </div>
            <div class="clear"></div>
        </div>
        <div class="footer-stopper"></div>
        <div class="clear"></div>
		<?php 
            include("Templates/footer.tpl"); 
            include("Templates/res.tpl"); 
        ?>
    <div id="stime">
        <div id="ltime">
            <div id="ltimeWrap">
				<?php echo CALCULATED_IN;?> <b><?php echo round(($generator->pageLoadTimeEnd()-$start)*1000); ?></b> ms
                <br /><?php echo SEVER_TIME;?> <span id="tp1" class="b"><?php echo date('H:i:s'); ?></span>
            </div>
        </div>
    </div>
    <div id="ce"></div>
</body>
</html>