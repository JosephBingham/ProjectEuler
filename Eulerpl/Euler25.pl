#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

my $previous = 0;
my $current = 1;
my $next = 1;
my $sum = 0;
while($current/(10**1000) < 1 ){
        $next = $previous + $current;
        $previous = $current;
        $current = $next;
	$sum += 1;
}

say $sum;
