#Find the sum of all the primes below two million.

use strict;
use warnings;
use 5.010;
use POSIX;

sub is_prime{
	my $num = shift;
	if($num == 2){
		return 1;
	}
	if($num % 2 == 0 or $num < 2){
		return 0;
	}
	for(my $j = 3; $j < ($num ** .5) + 1; $j += 2){
		if($num % $j == 0){
			return 0;
		}	
	}
	return 1;

}

my $sum = 0;
my $i = 0;
while($i++ < 2000000){
	if(is_prime($i)){
		$sum += $i;	
	}
}
say $sum;





