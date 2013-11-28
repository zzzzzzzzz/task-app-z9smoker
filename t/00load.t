#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( 'Task::App::Z9Smoker' ) || print "Bail out!\n";
}

diag( "Testing Task::App::Z9Smoker $Task::App::Z9Smoker::VERSION, Perl $], $^X" );
