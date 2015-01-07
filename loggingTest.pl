#! /usr/bin/perl

use strict;

#use Log::Log4perl;
#
#my $log_conf = q(
#				log4perl.rootLogger= INFO,A1
#    			log4perl.appender.A1=Log::Log4perl::Appender::Screen
#    			log4perl.appender.A1.stderr=0
#    			log4perl.appender.A1.layout=PatternLayout
#    			log4perl.appender.A1.layout.ConversionPattern= %m{chomp});
#    
#Log::Log4perl::init(\$log_conf);
#my $logger = Log::Log4perl->get_logger();
#
#$logger->info("Started Logger\n");
#
#my $item = 100;
#
#my $count = 0;
#
#for(0..$item-1){
#	$count++;
#	$logger->info("processed ===== $count out of $item");
#}

my @array = qw( 1 11 34 3 4 6 7);

print "Original Array is ==> @array \n";

my $rev_array = reverseArray(\@array);

print "Reversed Array is ===> @$rev_array \n";

sub reverseArray {
	my $array = shift;
	my @array  = @$array;
	my @new_array;
	for(my $i = $#array+1;$i--;$i== 0){
		push(@new_array,$array[$i]);
	}
	
	print "-- New array @new_array \n";
	return \@new_array;
}