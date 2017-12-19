#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

sub isPrime{
	my $num = shift;
	if($num < 2){
		return 0;
	}
	if($num == 2){
		return 1;
	}
	for(my $i = 3; $i < ($num**.5) + 1; $i++){
		if($num % $i == 0){
			return 0;
		}
	} 
	return 1;	
}

my $max = 0;

my @best = {0,0};

for( my $b = 0; $b < 1000; $b++){
	for( my $a = -999; $a < 999; $a++){
		my $count = 0;
		if(&isPrime($b)){
			while(&isPrime($count**2 + $a*$count + $b)){
				$count++;
			}
			if($count > $max){
				$max = $count;
				$best[0] = $a;
				$best[1] = $b;
			}
		}
	}
}	

say "@best, $max"; 
say $best[0]*$best[1];
