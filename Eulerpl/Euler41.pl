
sub is_prime {
	my $n = shift;
	if($n == 2){
		return 1;
	}
	if($n < 2 || $n % 2 == 0){
		return 0;
	}
	for(my $i = 3; $i < $n ** .5 + 1; $i += 2){
		if($n % $i == 0){
			return 0;
		}
	}
	return 1;
}

sub is_pan{
	$n = shift;
	$str = $n . "";
	for($i = 0; $i < 10; $i++){
		$j = $i . "";
		if(index($i,$str) == -1){
			return 0;
		}
	}
	return 1;
}

for(my $i = 10000000000; $i > 1000000000; $i--){
	if(is_prime($i) && is_pan($i)){
		print "$i\n";
		die;
	}
	#print "$i\n";
}

