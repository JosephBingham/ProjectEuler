#!/usr/bin/perl
use strict;
use warnings;
use POSIX;
use 5.010; 

my @primes = ( 1, 2 );    
my $max = shift || 500; 
my $enough = ceil ( $max ** 0.5 );

sub sieve {

    my $divisor = shift;
    my $sieve_ref;
    return sub {
        my $number = shift;

        return unless $number % $divisor;

         if ( $sieve_ref ){
             &$sieve_ref( $number );
             return
         }; 

        $sieve_ref = sieve( $number ) if $number < $enough;

        push @primes, $number;
    };
};

my $sieve = &sieve( 2 ); 

say $sieve[0];


