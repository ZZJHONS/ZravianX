<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title><?php echo SERVER_NAME ?></title>
    <link rel="shortcut icon" href="favicon.ico"/>
	<meta http-equiv="cache-control" content="max-age=0" />
	<meta http-equiv="pragma" content="no-cache" />
	<meta http-equiv="expires" content="0" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta http-equiv="content-type" content="text/html; charset=UTF-8" />
	<script src="mt-full.js" type="text/javascript"></script>
	<script src="unx.js" type="text/javascript"></script>
	<script src="new.js" type="text/javascript"></script>
	<link href="<?php echo GP_LOCATE; ?>lang/en/compact.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo GP_LOCATE; ?>lang/en/lang.css" rel="stylesheet" type="text/css" />
	<?php
        if($session->gpack == null || GP_ENABLE == false) {
                echo "
                <link href='".GP_LOCATE."travian.css' rel='stylesheet' type='text/css' />
                <link href='".GP_LOCATE."lang/en/lang.css' rel='stylesheet' type='text/css' />";
            } else {
                echo "
                <link href='".$session->gpack."travian.css' rel='stylesheet' type='text/css' />
                <link href='".$session->gpack."lang/en/lang.css' rel='stylesheet' type='text/css' />";
            }
    ?>
	<script type="text/javascript">
		window.addEvent('domready', start);
	</script>
</head>