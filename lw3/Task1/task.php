<?php

header("Content-Type: text/plain");
$str = $_GET['text'];
$str = trim($str, " ");
while(strpos($str, '  ') !== false)
{ 
    $str = str_replace('  ', ' ', $str);
}
echo $str;   