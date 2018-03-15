#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Chapter 07 Ex01: find fred

@ARGV = "Chapter07EX.txt";

while (<>) {
	chomp;
	if (/fred/) {
		say $_;
	}
	
}

print "\n";
#Chapter 07 EX 02: The Big Fred

@ARGV = "Chapter07EX.txt";
while (<>) {
	chomp;
	if (/[Ff]red/) {
		say $_;
	}
	
}
print "\n";
#Chapter 07 Ex03:
@ARGV = "Chapter07EX.txt";
while (<>) {
	chomp;
	if (/\./) {
		say $_;
	}
	
}
print "\n";
#Chapter 07 Ex 04;
@ARGV = "Chapter07EX.txt";
while (<>) {
	chomp;
	if (//) {
		say $_;
	}
	
}
<>;