use strict;
use warnings;
use File::Slurp;
use v5.12;

# example
# see more 'perldoc -f -X'
sub size { -s shift; }

sub read_by_open {
    my $filename = shift;
    open my ($fh), '<', $filename or die;

    eval {
        # do not use, foreach(<$fh>)
        while (defined( my $line = <$fh> )) {
            print $line;
        }
    };
    close $fh;
}

sub read_by_open_and_fast {
    my $filename = shift;
    local $/;
    open my ($fh), '<', $filename or die;
    <$fh>;
}

# use File::Slurp;
sub read_by_slurp {
    my $filename = shift;
    # $contents = read_file($filename);
    # @lines    = read_file($filename);
    read_file($filename);
}

my $script_name = $0;
say read_by_slurp  $script_name;
