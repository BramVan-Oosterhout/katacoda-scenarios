#!/usr/bin/perl
my %steps = ( step01 => \&step01 );

print "welcome to answer.pl\n";
exit unless $ARGV[0];

&{$steps{$ARGV[0]}};
sub step01 {
  print "Hello from step01\n";
}
