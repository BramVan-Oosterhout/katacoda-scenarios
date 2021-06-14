#!/usr/bin/perl
use warnings;
use strict;

my %step = (
            'execises' => \&exercises,
            'step1' => \&step1,
            'step2' => \&step2,
##          'test'  => \&test,
          );

my $solutionTgz = 'SolutionTemplates.tgz'; ## Change this globally

getSolution() unless ( -e '/tmp/SolutionTemplates.tgz' );

if ( ! $ARGV[0] ) { print "Please provide the step as the first parameter: answer.pl stepx\n"; return }

foreach my $request ( @ARGV ) {
  if ( ! $step{$request} ) { print "No answer for $request\n" }
  else { &{$step{$request}} }
}

sub exercises {
  
  getAsset( 'templates', 'tracetmpl.pl');
  
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionTemplates.tgz
         -C /var/www/foswiki/data/Sandbox
         Exercises/*
  );
  $cmd = join( " ", @command ); `$cmd`; 

  refresh( 'Sandbox' );
}


sub step3 {
  my ($cmd, @command );
  
  @command = qw(
    sudo -u daemon
    tar
         --wildcards
         -xvzf /tmp/SolutionTemplates.tgz
         -C /var/www/foswiki/data/Sandbox
         Solutions/MyskinSkinViewTemplate*
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

sub getAsset {
  my ( $scenario, $asset ) = @_;
  
  my ( $cmd, @command );
    
  @command = split /\s\n/, qq(
    curl
           -LJ
           --output-dir /tmp
           --output $asset
           https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki1/$scenario/assets/$asset?raw=true
  );
  $cmd = join( " ", @command ); `$cmd`;
}

sub getSolution {
  my ( $cmd, @command );
  
@command = qw(
    curl
           -LJ
           --output-dir /tmp
           --output SolutionTemplates.tgz
           https://github.com/BramVan-Oosterhout/katacoda-scenarios/blob/master/foswiki1/templates/assets/SolutionTemplates.tgz?raw=true
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
