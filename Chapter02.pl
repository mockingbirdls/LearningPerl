#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Circle area
say "Chapter02 Ex01, Ex02, Ex03:";
say "Enter radius value: ";
chomp (my $radius = <STDIN>);
if($radius < 0){
    say "Result is 0!"
} else {
    my $circle = (2 * 3.141592654) * $radius;
    say "result = $circle";
    };


# Multiply numbers
say "\nChapter02 Ex04:";
say "Enter your first number: ";
my $first = <STDIN>;
say "Enter your second number: ";
my $second = <STDIN>;
say "result is ".($first*$second);

# Repeat word "n" times
say "\nChapter02 Ex05";
say "Enter a word:";
chomp (my $word = <STDIN>);
say "How many times do you want me to repeat it?";
chomp(my $times = <STDIN>);
say $word x $times;
