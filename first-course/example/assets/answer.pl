#!/usr/bin/perl
my %steps = ( step1 => \&step1 );
&{\$steps{\$ARGV[0]}};
sub step1 {
  print "Hello from answer.pl - step1 running on ",`hostname`,"\n";
}
