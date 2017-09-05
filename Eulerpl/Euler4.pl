#!/usr/bin/perl
use strict;
use 5.010;
use warnings;
#my $str = 'stressed';
#say $str;
#my $rev = reverse $str;
#say $rev;
#sub isPrime{
#my $param = shift;
#for (my $i=2; $i< $param; $i ++){
#	if ($param % $i == 0){
#		return 0;  
#	}
#}
#	return 1;
#}
my $max = 0;
for (my $i = 100; $i <= 999; $i ++) {
	for(my $j = 100; $j <= 999; $j ++ ) {
		my $inverse = reverse($j * $i );
		if ( ($j * $i ) == $inverse && $max < $inverse ) {
			$max = ($j * $i );
		}
   	}
}
say $max;
