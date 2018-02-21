#!usr/bin/perl
use 5.010;
use strict;
use warnings;

say "Enter radius value: ";
chomp (my $radius = <STDIN>);
if($radius < 0){
    say "Result is 0!"
} else {
    my $circle = (2 * 3.141592654) * $radius;
    say "result = $circle";
    };
