#!/usr/bin/env perl
use 5.012;
use utf8;
use warnings;
use strict;

require "lib/stdin.pl";
require "lib/stdout.pl";
require "lib/file.pl";

sub _sort {
  my ($lines) = @_;
  if (length $lines < 1) {
    return [];
  }
  my @ary = sort @$lines;
  \@ary;
}

if (@ARGV < 1) {
  print "Usage sort.pl <file>\n";
}

_write(_sort(read_file($ARGV[0])));

#_write(_sort(_read()));
