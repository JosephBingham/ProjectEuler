#!/usr/bin/perl

#What is the value of the first triangle number to have over five hundred divisors?
use strict;
use warnings;
use 5.010;

sub div{
	my $num = shift;
	my $divs = 2;
	for( my $k = 2; $k <= $num; $k++ ){
		if( $num % $k == 0 ){
			$divs += 1;
			if($divs > 500){
				say $num;
				exit;
			}
		}
	}
}
my $i = 1;
my $j = 1;

while(not div($i)){
	$i += ++$j;
#	say "num $i step $j";
#	sleep(1);
}






