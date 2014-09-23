#!/usr/bin/env perl
use 5.012;
use utf8;
use warnings;
use strict;

require "lib/stdin.pl";
require "lib/stdout.pl";

sub _sort {
  my ($lines) = @_;
  my @ary = sort @$lines;
  \@ary;
}

_write(_sort(_read()));
