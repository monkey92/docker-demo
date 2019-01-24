<?php

ini_set("display_errors", 1);
ini_set("display_startup_errors", 1);
error_reporting(-1);

date_default_timezone_set("Asia/Shanghai");

define("APP_PATH", dirname(__DIR__));

$log = APP_PATH."/runtime/1.txt";

file_put_contents($log, time());

echo date("Y-m-d H:i:s", time());

