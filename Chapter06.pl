#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Chapter 06 EX 01: Hashes- show surname

my %names = ("Fred" => "Flinstone",
			 "Barney" => "Rubble",
			 "Wilma" => "Flinstone");
say "Who are you looking for? (Press Ctlr+Z when you are finished)";

while(<>){
	chomp;
	say "$_ => $names{$_}";
}

#Chapter 06 Ex02: Counting words

say "Enter some words as many times as you want: ";
my %words;
while(<>){
	chomp;
	if(exists $words{"$_"}){
		$words{$_} += 1;
	} else{
		$words{"$_"} = 1;
	}
	
}
foreach my $key (sort keys %words){
	say "I saw $key => $words{$key} times."
}


#Chapter 06 Ex03: print %ENV

my $length = 0;
foreach my $key( keys %ENV){
	if ($length < length($key)) {
		$length = length($key);
	}
}

foreach my $key(sort keys %ENV){
	printf "%${length}s | %s\n", $key, $ENV{$key};
}

<>;