#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

my @powers = {4, 8};

my %hash{@powers} = () ;
for(my $i = 2; $i < 101; $i++){
	for(my $j = 2; $j < 101; $j++){
		%hash {$i**$j} = $i ** $j;
	}
}

say %hash;
