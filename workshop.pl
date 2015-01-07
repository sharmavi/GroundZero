#! /usr/bin/perl -w

use strict;
use Data::Dumper;

my @array = qw(vik sha Vik sha She ram ytrtt 65y ty y);

#my %testHash;
#my @uniqArray, my @duplicateArray;
#DUPLICATE: foreach (@array){
#	unless($testHash{$_}){
#		$testHash{$_} = 1;
#		push(@uniqArray,$_);
#		next DUPLICATE;
#	}
#	push(@duplicateArray,$_);
#}
#
#print Dumper(\@duplicateArray);

#my @screenedArray = grep{$_ =~ /^\w{1,3}[^e]$/i} @array;

my $fileName = 'test1.txt';

fileDelete($fileName);
fileAdd(\@array,$fileName);
fileModeTime($fileName);

sub fileAdd {
	my($arrayRef,$file) = @_;
	
	open(OUTFILE,">$file") || die "Couldn't open file $! \n";
	print OUTFILE "$_\n" for (@$arrayRef);
	close(OUTFILE);
}
sub fileDelete {
	unlink(@_) if(-e "@_") || warn "Couldn't find file $! \n";
}
sub fileModeTime {
	my $modTime;
	if(-e "@_"){
		$modTime = (stat(@_))[9];
	
		my $modeTimeLocal = localtime($modTime);
		print "File modified at $modeTimeLocal \n";
	}
	else {
		die "couldn't find file $! \n";
	}
}