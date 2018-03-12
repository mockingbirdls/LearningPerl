#!usr/bin/perl
use 5.010;
use strict;
use warnings;

#Chapter 4 Ex 01: subroutine sum of numbers
my @fred = qw{3 5 7 9};
my $fred_total = total(@fred);
say "Total of \@fred is $fred_total";
say "Enter some numbers on separate lines";
my $user_total = &total(<STDIN>);
say "The total of these numbers is $user_total";

#Chapter 4 Ex 02: sum of numbers from 1 to 1000

say "The sum of numbers from 1 to 1000 is ", total(1..1000);

#Chapter 4 Ex 03: above average
my @avrgNumber = above_avrg(1..10);
say "The numbers above average are: @avrgNumber";

#Chapter 4 Ex 04/05: greet people
greet("Willma");
greet("Barney");
greet("Fred");

sub greet{
	state @people;
	say "Hello @_!";
	if(@people){
			say "@people are also here."
	}
	else{
				say "You are the only one here."
	}
	push @people, @_;
}


sub above_avrg{
my $avrg = &total(@_)/@_;
my @output;
foreach(@_){
if ($_ > $avrg){
push @output,$_;
}
}
@output;
}


sub total{
 my $sum = 0;
    foreach(@_){
        $sum += $_;
    }
    return $sum;
}
<>;