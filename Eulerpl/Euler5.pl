#!/usr/bin/perl

use strict;
use warnings;
use 5.010;

my $divisible = 0; 
my $i = 2520;

sub divisable{
my $returnval = 0;
my $param = shift;
for(11..20){ 
	if($param %% $_ != 0){
		$returnval = 0;
	 	continue;
	}else{
	$returnval = 0;
	}
return $returnval;
}
}


while(! &divisable($i) ){
$i ++;
}
say $i
