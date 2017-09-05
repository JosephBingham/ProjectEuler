#!/usr/bin/perl
use warnings;
use strict;
use 5.010;

my $timer = time; 
#say $timer;
sub collatz{
	my $num = shift;
	my $count = 0;
	while($num > 1){
		if($num == 1){
			return 0;
		}
		if($num % 2 == 0){
			$num /= 2;
			$count++;
		}
		else{
			$num = 3*$num + 1;
			$num /= 2;
			$count += 2;
		}
	}
	return $count;
}


my $n = 1;
my $bestc = 0;
my $bestn = 1;
while($n<1000000){
	my $a = &collatz($n);	
	if ($a > $bestc){
		$bestc = $a;
		$bestn = $n;
#		print $bestn;
	}
	$n++;
#	say $n;
}

say $bestn;
#say time;
#say time - $timer;

