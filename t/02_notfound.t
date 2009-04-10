use strict;
use warnings;
use Test::More tests => 1;
use Test::PPPort;

do {
    no warnings 'redefine';
    local *Test::Builder::skip_all = sub {
        ok(1, 'skip_all: ' . $_[1]);
    };
    local *Test::Builder::plan = sub {
        ok(0, 'why called plan method?');
    };

    ppport_ok;
};
