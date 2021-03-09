<?php

header("Content-Type: text/plain");
$str = $_GET['name'];
if (empty($str))
{
    echo('Text not found');	
}
else
{
    $str = trim($str, ' ');
    while(strpos($str, '  ') !== false)
    { 
        $str = str_replace('  ', ' ', $str);
    }
	echo $str; 
}
  