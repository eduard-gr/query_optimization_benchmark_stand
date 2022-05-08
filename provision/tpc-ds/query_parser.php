<?php
$str = <<<EOD
start query 1 in stream 0 using template query21.tpl
dsadasd
end query 1 in stream 0 using template query21.tpl
EOD;

$str2 = <<<EOD
-- start query 28 in stream 0 using template query28.tpl
select  *
-- end query 28 in stream 0 using template query28.tpl
EOD;

//var_dump($str);

//$pattern = '/start.*end/i';

$pattern = '/\-\-\sstart\squery\s\d+[\w\d\s\t\n\.\*\,\_\-\+\(\)\;]+\-\-\send\squery\s\d+/i';

if(preg_match_all($pattern, $str2, $matches)){
    var_dump($matches);
}




