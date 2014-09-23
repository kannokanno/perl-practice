#!/usr/bin/env perl
use 5.012;
use utf8;
use strict;
use warnings;

sub _write {
  my ($ary) = @_;
  print "$_\n" for (@$ary);
}

1;
