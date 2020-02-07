#!/usr/bin/perl -w
use strict;

#print @ARGV;
print "File: $ARGV[0]\n";
my $template = slurp($ARGV[0]);
#print "template: --\n$template\n";
while ( $template =~ m!%TMPL:DEF{"([^"]+)"}%(.*?)%TMPL:END%!gs ) {
  print "\n---------- $1 ----------\n$2\n---------- $1 END ----------\n";
}

$template =~ s!%TMPL:DEF{"([^"]+)"}%(.*?)%TMPL:END%!!gs;
$template =~ s!%{.*?}%!!gs;

print "\n---------- TEMPLATE ----------\n$template\n";




sub slurp {
  my ( $filename ) = @_;
  my $t = $/;
  undef $/;
  open FILE, "<$filename";
  my $file = <FILE>;
  close FILE;
  $/ = $t;
  return $file; 
}