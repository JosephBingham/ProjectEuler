#!/usr/bin/perl

use strict;
use warnings;
use 5.010;
use List::Util qw(sum);

my $n = 100;
my @arr = "";

for (my $i = 0; $i < $n ** $n; $i++) {
    push @arr, 0;
}

for (my $i = 2; $i < $n; $i++) {
    for (my $j = 2; $j < $n; $j++) { 
        @arr[$i**$j] = 1;
    }
}

say sum <@arr>;
