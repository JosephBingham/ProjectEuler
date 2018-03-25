<?php
function primes_sieve($limit){
	$limitn = $limit + 1;
	
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
