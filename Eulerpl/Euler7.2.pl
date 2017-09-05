#!/usr/bin/perl
#second attempt at Euler problem 7, using conventional prime check hoping this will behave better as arrays are not lists, unlike python
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

#if(is_prime(5)){ say "yep";}
#if(not is_prime(5)){ say "nope";}

my $primecount = 0;

my $i = 0;

while( $primecount <= 10001){
#	say $i;
	if(is_prime($i)){
		$primecount += 1;	
#		say "prime = $primecount";
	}
	$i += 1;
}

say $i-1;


