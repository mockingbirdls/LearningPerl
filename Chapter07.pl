#!usr/bin/perl
use 5.010;
use strict;
use warnings;

say "Ex01: find fred";
match("fred");

say "EX02: The Big Fred";
match("[Ff]red");

say "Ex03: Match dots";
match('\.');

say "Ex04: Match a word thath starts with capital letter";
match("[A-Z][a-z]+");

say "Ex05: Match the same letter two times in a row";
match('(\S)\1');

say "Ex06: match fred and wilma";
match("(fred.*wilma)|(wilma.*fred)");

sub match{
	@ARGV = "Chapter07EX.txt";
	my $regex = $_[0] ;
while (<>) {
	chomp;
	if (/$regex/) {
		say $_;
	}
}
}
<>;