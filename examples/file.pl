use strict;
use warnings;
use v5.12;

# example
# see more 'perldoc -f -X'
sub size { -s shift; }

sub example_read_by_open {
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

my $script_name = $0;

example_read_by_open $script_name;
