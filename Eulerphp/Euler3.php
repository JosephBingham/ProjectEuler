<?php
function primes_sieve($limit){
	$limitn = $limit + 1;
	$not_prime = array();
	$notc = 0;
	$primes = array();
	$pc;

	for($i = 2; $i < $limitn; $i ++){
		if(array_search($i, $not_prime)){
			continue;
		}
		for($j = $i*2; $limitn; $i){
		array_push($not_prime, $j);
		}
		array_push($primes, $i);
	}
	return $primes;
}

//$a = 600851475143;
//$b = intval(pow($a, .5), 10);
$a = 500;

$num = 0;
foreach(primes_sieve($a) as $k){
	if($a % $k == 0){
	$num = $k;
	}
}

echo "num = $num";
?>
