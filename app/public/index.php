<?php

error_reporting(2048);

define("APP_PATH", dirname(__DIR__));

$log = APP_PATH."/runtime/1.txt";
echo $log;

var_dump(file_put_contents( $log, "hello"));

echo 1;

d();


