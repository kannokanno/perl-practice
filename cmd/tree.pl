use strict;
use warnings;
use 5.010;
use File::Basename;

if (@ARGV < 1) {
    say "Usage: perl tree.pl <path>";
    exit;
}

sub print_tree {
    my ($path, $prefix) = @_;
    my @files = glob $path . "/*";
    my $max   = scalar(@files) - 1;
    for (0..$max) {
        my $file     = $files[$_];
        my $basename = basename($file);
        my $is_last  = $_ == $max;
        my $edge     = $is_last ? "└── " : "├── ";
        say $prefix . $edge . $basename;
        if (-d $file) {
            my $next_prefix = $is_last ? "     " : "│   ";
            print_tree($file, $prefix . $next_prefix);
        }
    }
}

my $entry_path = $ARGV[0];
say $entry_path;
print_tree($entry_path, '');
