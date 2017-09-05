#!/usr/bin/perl

$previous = 0;
$current = 1;
$next = 1;
$sum = 0;
while($current < 4000000){
	$next = $previous + $current;
	$previous = $current;
	$current = $next;
	if($current % 2 == 0){
	$sum = $sum + $current;
} 
}	
print "$sum\n";
