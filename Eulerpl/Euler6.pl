
#!/usr/bin/perl
use strict;
use warnings;
use 5.010;

my $sumofsquares = 0;
my $squareofsums = 0;
my $num = 0;
for(1..100){
    $squareofsums += $_;
    $sumofsquares += ($_ * $_);
}

$squareofsums *= $squareofsums;

$num = $squareofsums - $sumofsquares;

say $num;
