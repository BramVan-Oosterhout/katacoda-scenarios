
Alternatives to using the scenario created in the Preamble.

#### Fork `my-example` from _BramVan-Oosterhout_	

Login to GitHub with your credentials and navigate to `BramVan-Oosterhout/my-example`. Click the _Fork_ button. GitHub creates a copy of `my-example` under your user name. Continue by cloning this repo.

`git clone <https://github.com/YourUserName/my-example.git> katacoda-tutorial`{{copy}}

----

 sub step01 \{ git clone git://github.com/BramVan-Oosterhout/my-exercise.git katacoda-tutorial; chdir katacoda-tutorial; if ( -e 'first-course/example/assets/first-course.dck' ) \{ my $startingPoint = getStartingPoint(); git checkout -f $startingPoint; git symbolic-ref HEAD refs/heads/master; git commit -m "reverted to starting point of the exercise"; git push origin master; \} \}

 sub getStartingPoint\{ my @revList = split " ", git rev-list --all --pretty=oneline --abbrev-commit;

 foreach my $rev (@revList )\{ $rev =~ m!\\A(\\w\{7\})\\s(.\*)\\Z!; return $1 if $2 eq 'my first commit'; \} \}

```
userid: BramVan-Oosterhout
repo: my-exercise
pat: your Personal Access Token here
```

```
sub gitConfig{
  my & $gitConfigFile ) = @_;
  open $cfg, "<" $gitConfigFile || die "Cannot open $gitCofigFile: $!
";
  my %config = ();
  while( <$cfg> ) {
    chop;
    my ( $key, $value ) = ( $_ =~ m!\A\s*(.*?):\s+(.*)\Z!;
    $config{$key} = $value;
  }
}
```