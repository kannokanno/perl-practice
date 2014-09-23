#!/usr/bin/env perl
use 5.012;
use utf8;
use strict;
use warnings;

sub _read {
  my @lines = ();
  while (defined(my $line = <STDIN>)) {
    chomp($line);
    push(@lines, $line);
  }
  return \@lines;
}

1;
