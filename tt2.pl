#! /usr/bin/perl -w

# find intersection and union of array and Lists
use strict;
use Data::Dumper;

my @arr1 = qw(1 2 3 4 5 6 7);
my @arr2 = qw(2 5 8 9 7 26);

push(@arr1,@arr2);

my %hash = map{ $_=> '1'}  @arr1;
my @inter;
my %interHash;
for (@arr1){
	if($interHash{$_}){
		push(@inter,$_);
		next;
	}
	$interHash{$_} = '1';
}
print "==== Array intersection is @inter \n";

print "Array union is ===>"; print sort keys %hash;





