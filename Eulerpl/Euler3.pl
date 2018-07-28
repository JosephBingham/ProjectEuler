#!/usr/bin/perl

use warnings;
use strict;
use 5.010;
#600851475143
my $number = 600851475143;
my $largest = 0;
for(my $j = 1; $j < $number ** .5 ; $j += 2){
	
	if ($number % $j == 0 && &isPrime($j)==1) {
		$largest = $j;
}}
		print "$largest\n";



sub isPrime{
	my $param = shift;
	print "$param\n";

	for (my $i=2; $i< $param; $i ++){
		if ($param % $i == 0){
			return 0;  
		}
	}
	return 1;
}
