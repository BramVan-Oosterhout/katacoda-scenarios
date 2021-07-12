#!/usr/bin/perl
my %steps = ( step01 => \&step01 );
&{$steps{$ARGV[0]}};
sub step01 {
  print "Hello from step01\n";
}
