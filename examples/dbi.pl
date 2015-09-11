use strict;
use warnings;
use DBI;

# DBD::mysql must be installed

sub connect_mysql {
    my ($user, $pass, $db) = @_;
    DBI->connect("dbi:mysql:dbname=$db:host=localhost;port=3306", $user, $pass) or die 'error connect';
}

use Data::Dumper;
warn Dumper(connect_mysql('root', 'password', 'test'));
