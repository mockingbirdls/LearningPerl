#!usr/bin/perl
use 5.010;
use warnings;
use strict;

say "Ex01: enter beforematchafter: ";
match('match');

say "Ex02: enter a word that ends with a: ";
match('\w+a\b');

say "Ex03: enter a word that ends with a again: ";
while (<>) {
        chomp;
    if (/(\w+a\b)/) {
        print  "Matched: \$1 contains $1\n ";
    }else {
        print "No match: |$_|\n";
    }
    
}
say "Ex04: named groups:";
while (<>) {
        chomp;
    if (/(?<group1>\w+a\b)/) {
        print  "Matched: <group1> contains $+{group1}\n ";
    }else {
        print "No match: |$_|\n";
    }
    
}


say "Ex05: match again 'a' word but with 5 symbols after that";
while (<>) {
        chomp;
    if (/(\w+a\b)(.{0,5})/) {
        print  "Matched: \$1 contains |$1| \$2 contains |$2|\n ";
    }else {
        print "No match: |$_|\n";
    }
    
}

say "Ex06: match empty spaces in the end of a string ";
while (<>) {
    chomp;
    if (/\s+$/) {
        say "S_|";
    }else{
        say "No match";
    }
    
}


sub match {
    my $regex = shift @_;
while (<>) {
        chomp;
    if (/$regex/) {
        print  "Matched: |$` <$&> $'|\n ";
    }else {
        print "No match: |$_|\n";
    }
    
}
}
