#!/usr/bin/perl
use warnings;
use strict;

my %step = (
            'step7' => \&step7,
##          'test'  => \&test,
          );

if ( ! $ARGV[0] ) { print "Please provide the step as the first parameter: answer.pl stepx\n"; return }

foreach my $request ( @ARGV ) {
  if ( ! $step{$request} ) { print "No answer for $request\n" }
  else { &{$step{$request}} }
}


sub step7 {
   `git add *`;
   `git commit -m "step7"`;
   `git push origin master`;
}

