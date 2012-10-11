use 5.006;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'App::escurl',
    AUTHOR              => q{Nour Sharabash <amirite@cpan.org>},
    ABSTRACT            => "Shortcut script for interfacing with ElasticSearch (alternative to curl in ES docs).",
    VERSION_FROM        => 'lib/App/escurl.pm',
    EXE_FILES           => [ 'bin/escurl' ],
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
         'Mojo::Base' => 0,
         'Mojo::UserAgent' => 0,
         'Getopt::Long' => 0,
         'IO::All' => 0,
         'JSON::PP' => 0,
         'YAML' => 0,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'App-escurl-*' },
);
