package App::escurl;

use 5.006;
use strict;
use warnings;

our $VERSION = '0.001';

1;
__END__

=head1 NAME

escurl

=head1 DESCRIPTION

Shortcut script for interfacing with ElasticSearch. Why not use curl? Because the missing carriage return on ES http responses messes up my terminal. This is simpler.

=head1 USAGE

 # Specify request path.
 $ ./escurl /your_index/_mapping
 # ( Default transport/server is http://localhost:9200 and default request method is get. )

 # YAML output
 $ ./escurl /your_index/_settings -y

 # Search example
 $ ./escurl /your_index/_search -d '{ fields: [ "tlat.en.text" ], query: { query_string: { fields: [ "tlat.*.text" ],  query: "ever AND touched" } } }'

 # Same, with explicit settings
 $ ./escurl /your_index/_search -x post -s localhost:9200 -t http -d '{ fields: [ "tlat.en.text" ], query: { query_string: { fields: [ "tlat.*.text" ],  query: "ever AND touched" } } }'

 # Specify a file to read in place of data switch (-d)
 $ ./escurl /_bulk -x post -f data.json

=head1 AUTHOR

Nour Sharabash, C<< <amirite at cpan.org> >>

This script is free software and is provided "as is" without express
or implied warranty.  You can redistribute it and/or modify it under
the same terms as Perl itself.

=cut
