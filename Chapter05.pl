#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Chapter 05 Ex 01: tac program
say "Enter the names of the files you want to read on separate lines (press Clr+Z when you are done): ";
chomp(my @files = <>);
@ARGV = reverse @files;
print reverse <>;
<>;

