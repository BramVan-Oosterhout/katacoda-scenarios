#!/usr/bin/perl
use warnings;
use strict;

my %step = (
            'step1' => \&step1,
            'step2' => \&step2,
            'step3' => \&step3,
            'step4' => \&step4,
            'step5' => \&step5,
            'step6' => \&step6,
            'step7' => \&step7,
          );

my $refresh = 'pushd ../bin; ./view Applications/SolutionExApp.WebHome refresh=on; popd';

if ( ! $ARGV[0] ) { print "Please define the step\n" }
elsif ( ! $step{$ARGV[0]} ) { print "No answer for $ARGV[0]\n" }
else { &{$step{$ARGV[0]}} }

sub step1 {
  `tar xvzf /tmp/SolutionExample.tgz -C /var/www/foswiki/data/Applications`;
  `$refresh`;
}
sub step2 {
  `tar xvzf /tmp/SolutionExampleTopics.tgz -C /var/www/foswiki/data/Applications SolutionExApp/SolutionExForm*`;
  `pushd ../bin; ./view Applications/SolutionExApp.WebHome refresh=on; popd`
}
sub step3 {
  `tar --wildcards --transform='flags=r;s/V1//' -xvzf /tmp/SolutionExampleTopics.tgz -C /var/www/foswiki/data/Applications SolutionExApp/SolutionExTypeV1*`;
  `tar xvzf /tmp/SolutionExampleTopics.tgz -C /var/www/foswiki/data/Applications SolutionExApp/SolutionExNote1*`;
  `pushd ../bin; ./view Applications/SolutionExApp.WebHome refresh=on; popd`
}
sub step4 {
  print "I am step 4\n";
}
sub step5 {
  print "I am step 5\n";
}
sub step6 {
  print "I am step 6\n";
}
sub step7 {
  print "I am step 7\n";
}
