<?php

$raw = file_get_contents('test/select5.test');

$pattern = '/query\s\w+\s[\w\d\s\-]+\n([\w\d\s\t\n\.\*\,\'\=\>\<\~\!\/\"\_\-{1}\|\+\(\)\[\]\;]*?)\-{3}/i';

$matched = preg_match_all($pattern, $raw, $matches);
if($matched == false){
    error_log('unable parse querys');
    exit;
}

$previous_index = 0;
list(, $querys) = $matches;


for($i=0,$ii=count($querys);$i<$ii;$i++){
    
    $query = $querys[$i];

	file_put_contents(
		sprintf('%s/query-5-%s.sql',
			'querys',
			$i),
            $query);
}
