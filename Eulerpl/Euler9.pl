#!/usr/bin/perl
use strict;
use warnings;
use 5.010;


for( my $a = 0; $a < 1000; $a++ ){
	for( my $b = 0; $b < 1000; $b++ ){
		for( my $c =0; $c < 1000; $c++ ){
			if($a**2 + $b**2 == $c**2 and 
				$a + $b + $c == 1000 and $a*$b*$c >0 ){
				say $a*$b*$c;
				exit;
			}
		}
	}
}












