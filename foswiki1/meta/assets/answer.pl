#!/usr/bin/perl
use warnings;
use strict;

my %step = (
            'step1' => \&step1,
            'step2' => \&step2,
##          'test'  => \&test,
          );

my $solutionTgz = 'SolutionMeta.tgz'; ## Change this globally

getSolution() unless ( -e '/tmp/SolutionMeta.tgz' );

if ( ! $ARGV[0] ) { print "Please provide the step as the first parameter: answer.pl stepx\n"; return }

foreach my $request ( @ARGV ) {
  if ( ! $step{$request} ) { print "No answer for $request\n" }
  else { &{$step{$request}} }
}


sub step1 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionMeta.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/Step1*
  );
  $cmd = join( " ", @command ); `$cmd`; 

  refresh( 'Sandbox' );
}


sub step2 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionMeta.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/Step2*
  );
  $cmd = join( " ", @command ); `$cmd`; 

  refresh( 'Sandbox' );
}


sub refresh {
  my ($web ) = @_;
  
  my $dir = `pwd`;
  
  my $command =
            'cd /var/www/foswiki/bin; '
          . './view ' . $web . '.WebHome -refresh=on;'
          . 'cd ' . $dir;
          
  return `$command`;
}

sub getSolution {
  my ( $cmd, @command );
  
@command = qw(
    curl
           -LJ
           --output-dir /tmp
           --output SolutionMeta.tgz
           https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki1/meta/assets/SolutionMeta.tgz?raw=true
  );
  $cmd = join( " ", @command ); `$cmd`;
  
  @command = qw(
    /bin/bash -c '
    pushd /var/www/foswiki/bin ;
    sudo -u daemon
    ./manage
         -action=createweb
         -baseweb=_default
         -newweb=Sandbox/Solutions
         -webbgcolor=green
         -websummary="Web for solutions" ;
    popd'
  );
  $cmd = join( " ", @command ); `$cmd`;
}
