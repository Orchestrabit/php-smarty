<?php

require_once('Smarty.class.php');

$smarty = new Smarty();

$smarty->template_dir = '/var/www/html/templates/';
$smarty->compile_dir  = '/tmp/core/templates_c/';
$smarty->config_dir   = '/tmp/core/configs/';
$smarty->cache_dir    = '/tmp/core/cache/';


?>
