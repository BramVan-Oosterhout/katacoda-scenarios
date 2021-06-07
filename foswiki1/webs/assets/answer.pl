#!/usr/bin/perl
use warnings;
use strict;

step3();

sub step3 {
  my ($cmd, @command );
  
  @command = qw(
    curl
           -LJ
           --output-dir /tmp
           --output SolutionWebs.tgz
           https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki/webs/assets/SolutionWebs.tgz?raw=true
  );
  $cmd = join( " ", @command ); `$cmd`; 
  
  @command = qw(
    tar
         --wildcards
         -xvzf /tmp/WorkbenchExample.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions*
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
