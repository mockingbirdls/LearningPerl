#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Ex01: find fred
match("fred");

#EX02: The Big Fred
match("[Ff]red");

#Ex03: Match dots
match("\.");

#Ex04: Match a word thath starts with capital letter
match("[A-Z][a-z]+");

#Ex05:



sub match{
	@ARGV = "Chapter07EX.txt";
	my $regex = $_[0] ;
while (<>) {
	chomp;
	if (/$regex/) {
		say $_;
	}
}
print "\n";
}
<>;