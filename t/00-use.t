use Test::More tests => 2;
use FindBin;
use lib "$FindBin::Bin/../inc";
use Devel::CheckLib;

BEGIN {
    use_ok('Alien::Libevent');
}

diag("Testing Alien::Libevent $Alien::Libevent::VERSION");

eval { Devel::CheckLib::assert_lib( lib => "event", LIBS => $ENV{LDFLAGS} ) };

is( $@, '', 'libevent found' );
