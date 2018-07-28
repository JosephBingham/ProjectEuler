#!/usr/bin/perl

sub pops{
	$str = shift;
	return  substr $str, 0, (length($str) - 1);
}

sub get_c{
	$n = shift;
	$str = "";
	$i = 1;
	while(length $str < $n){
		$str .= $i;
		$i += 1;
		#print "$str\n";
	}
	while(length $str > $n){
		$str = pops $str;
	}
	return substr($str, length($str)-1, length($str));
}

print get_c(1) * get_c(10) * get_c(100) * get_c(1000) * get_c(10000) * get_c(100000);
print "\n";


