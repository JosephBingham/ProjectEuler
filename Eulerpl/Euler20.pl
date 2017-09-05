#!/usr/bin/perl
use strict;
use warnings;
use 5.010;
use bigint;
sub fac{
	my $n = shift;
	my $val = 1;
	my $i = 1;
	while(  $i <= $n ){
		$val *= $i++;
	}
	return $val;	
}

my $largenum = &fac(100);
my @listofnums = split("", $largenum);

my $sum = 0;

while(@listofnums){
	$sum += pop @listofnums;
}

say $sum;
