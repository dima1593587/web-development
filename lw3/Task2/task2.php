<?php

header("Content-Type: text/plain");
$str = $_GET['identifier'];
$str = rtrim($str);
$arr1 = str_split($str);
$count = strlen($str);
if ($count === 0) 
{
    echo('identifier Not Found');
}
else 
{
    if ($count === 1)
    {
	   	$count = $count - 1;
        If (((($arr1[$count]) >= 'a') and (($arr1[$count]) <= 'z')) or ((($arr1[$count]) >= 'A') and (($arr1[$count]) <= 'Z')))
     	{	 
		    echo('YES');
		}
		else
	    {
		    echo('No, because first symbol not a letter'); 
		}
    }
    else
    {
		$count = $count - 1;
	    while($count !== 0)
        { 
            if ((((($arr1[$count]) >= '0') and (($arr1[$count]) <= '9'))) or ((($arr1[$count]) >= 'a') and (($arr1[$count]) <= 'z')) or ((($arr1[$count]) >= 'A') and (($arr1[$count]) <= 'Z')))
            {
                $count = $count - 1;
            }
            else
		    {
			    echo('No, because  symbol not a letter or a digit');
                die();				
			}
		}
        If (((($arr1[$count]) >= 'a') and (($arr1[$count]) <= 'z')) or ((($arr1[$count]) >= 'A') and (($arr1[$count]) <= 'Z')))
    	{	 
		    echo('YES');
		}
		else
	    {
		    echo('No, because first symbol not a letter'); 
        }
	 
    }
}

