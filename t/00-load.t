#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'App::escurl' ) || print "Bail out!\n";
}

diag( "Testing App::escurl $App::escurl::VERSION, Perl $], $^X" );
