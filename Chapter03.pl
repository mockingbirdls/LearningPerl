#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Chapter03 Ex01: Reverse array

chomp (my @lines = <STDIN>); 
my @new_lines = reverse(@lines);
say  @new_lines;

#Chapter03 Ex02: Read specific index of an array

my @names = qw[Fred Betty Barney Dino Betty];
say "Enter the wanted indexes on separate lines:";
chomp (my @index = <STDIN>);
foreach(@index){
    say $names[$_];    
}


#Chapter03 Ex03: sort array
say "Enter your input on separate lines";
chomp(my @input = <STDIN>);
print sort @input;
