use 5.006;
use strict;
use warnings FATAL => 'all';
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Task::App::Z9Smoker',
    license             => 'MIT',
    dist_author         => q{Janusz J. Maczka <bug5lay4r@gmail.com>},
    dist_version_from   => 'lib/Task/App/Z9Smoker.pm',
    dist_abstract	=> 'Semi-manual smokin\' environment',
    release_status      => 'testing',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'Term::ReadLine::Gnu'   		=> 0,
        'Term::ReadKey'				=> 0,
        'Test::Reporter'			=> 0,
        'IO::All'				=> 0,
        'Test::More'				=> 0.98,
        'Test::Reporter::Transport::Socket'	=> 0,
        'Mozilla::CA'				=> 0,
        
        'IO::Socket::SSL'			=> 0,
        'Test::Reporter::Transport::Metabase'	=> 0,
        'App::Ack'				=> 0,
        'App::perlbrew'				=> 0,
        'App::pmuninstall'			=> 0,
        'CPAN::Reporter'			=> 0,
        'Test::Differences'			=> 0,
        'Test::Most'				=> 0,
    },
    add_to_cleanup     => [ 'Task-App-Z9Smoker-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
