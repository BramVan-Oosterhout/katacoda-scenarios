#!/usr/bin/perl
use warnings;
use strict;

my %step = (
            'step7' => \&step7,
            'step8' => \&step8,
##          'test'  => \&test,
          );

if ( ! $ARGV[0] ) { print "Please provide the step as the first parameter: answer.pl stepx\n"; return }

foreach my $request ( @ARGV ) {
  if ( ! $step{$request} ) { print "No answer for $request\n" }
  else { &{$step{$request}} }
}


sub step7 {
   addCommitPush( "step7" )
}

sub step8 {
   addCommitPush( "step8" )
}

sub addCommitPush {
   `git add *`;
   `git commit -m "Building a tutorial - Major steps: $_[0]"`;
   `git push origin master`;
}
