#!/usr/bin/perl
use warnings;
use strict;
use 5.010;
#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 
#284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#Evaluate the sum of all the amicable numbers under 10000.
sub div{
	my $num = shift;
	my @div = [];
	for( my $i = 2 ; $i <= $num**.5 ; $i ++){
		if( $num % $i == 0){
			unshift(@div, $i);
			unshift(@div, $num/$i);
		}

	}
	say @div;
	return (scalar @div) - 1;

}


say div(5);
say div(24);
say div(100);
