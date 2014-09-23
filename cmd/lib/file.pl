#!/usr/bin/env perl
use 5.012;
use utf8;
use strict;
use warnings;

sub read_file {
  my ($filename) = @_;
  my $fh = undef;
  my @contents = ();
  eval {
    open($fh, $filename) or die "open $filename";
    while (<$fh>) {
      chomp($_);
      push(@contents, $_);
    }
    close($fh) or die "close file handle";
  };

  if ($@) {
    my $err = $@;
    print STDERR "ERROR: $err";
    if (defined($fh)) {
      close($fh) or die "close file handle";
    }
    die $err;
  }

  \@contents;
}

1;
