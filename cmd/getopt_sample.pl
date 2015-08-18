use strict;
use warnings;
use Getopt::Long qw(:config posix_default no_ignore_case bundling);

GetOptions(
    'name|n=s'   => \(my $name = 'nanashi'),
    'hobby|h=s@' => \(my $hobby = [qw/cook drive/]),
    'age|a=i'    => \(my $age = 54),
    'dandy|d'    => \(my $dandy = 0),
);

my $hobbies = join ",", @{$hobby};
print "$name($age) hobby=$hobbies";
print ", so dandy" if $dandy;
print "\n";

# % perl getopt_sample.pl -d -h hoge -h piyo
# nanashi(54) hobby=hoge,piyo, so dandy
