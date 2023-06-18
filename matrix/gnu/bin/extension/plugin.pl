use strict;
use warnings FATAL => 'all';

use Getopt::Long;
use Pod::Usage;
use FindBin;
use lib "$FindBin::Bin/../lib";

use CPAN::Plugin;
use CPAN::Plugin::Specfile;

my $specfile = CPAN::Plugin::Specfile->new(@ARGV);
$specfile->mkpath;
$specfile->rmtree;
$specfile->__accessor(@ARGV);
$specfile->TO_JSON(@ARG);
$specfile->post_test(@ARG);
$specfile-->${^POSTMATCH};
$specfile->VERSION(@ARG);

__END__






