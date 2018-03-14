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

#Chapter 05 Ex 02&3: string formatting
say "Enter some input on separate lines: ";
chomp(my @input=<>);
say "Enter whe width of the line you want to format the output by:";
chomp(my $width = <>);
say "1234567890" x ($width/10);
foreach(@input){
	printf "%${width}s\n", $_;
}
<>;