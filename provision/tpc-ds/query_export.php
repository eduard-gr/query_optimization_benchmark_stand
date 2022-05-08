<?php

$raw = file_get_contents('/home/sk/School/query_optimization_benchmark_stand/provision/tpc-ds/query/query_0.sql');

$pattern = '/\-{2}\sstart\squery\s(\d+)[\w\d\s\t\n\.\*\,\'\=\>\<\~\!\/\"\_\-{1}\|\+\(\)\[\]\;]*?\-{2}\send\squery\s.+/i';


$matched = preg_match_all($pattern, $raw, $matches);
if($matched == false){
    error_log('unable parse querys');
    exit;
}

$previous_index = 0;
list($querys, $indices) = $matches;

for($i=0,$ii=count($querys);$i<$ii;$i++){
    $query = $querys[$i];
    $index = $indices[$i];

    if($previous_index - $index > 1){
        error_log(sprintf('missed requests between %d and %d',
            $previous_index,
            $index
        ));
    }

    $previous_index = $index;
	file_put_contents(
		sprintf('%s/query-%s.sql',
			'/home/sk/School/query_optimization_benchmark_stand/provision/tpc-ds/tasks',
			$index),
            $query);
}

