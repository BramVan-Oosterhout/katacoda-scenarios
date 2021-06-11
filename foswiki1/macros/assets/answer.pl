#!/usr/bin/perl
use warnings;
use strict;

my %step = (
            'step2' => \&step2,
            'step4' => \&step4,
            'step5' => \&step5,
            'step6' => \&step6,
##          'test'  => \&test,
          );

getSolution() unless ( -e '/tmp/SolutionMacros.tgz' );  

sub step2 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionMacros.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/Step2*
  );
  $cmd = join( " ", @command ); `$cmd`; 

  refresh( 'Sandbox' );
}


sub step4 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionMacros.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/Step4*
  );
  $cmd = join( " ", @command ); `$cmd`; 

  refresh( 'Sandbox' );
}


sub step5 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionMacros.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/Step5*
  );
  $cmd = join( " ", @command ); `$cmd`; 

  refresh( 'Sandbox' );
}


sub step6 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionMacros.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/Step6*
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
           --output SolutionMacros.tgz
           https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki1/macros/assets/SolutionMacros.tgz?raw=true
  );
  $cmd = join( " ", @command ); `$cmd`; 
  )
}
