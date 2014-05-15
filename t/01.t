# -*- mode:perl -*-
use strict;
use warnings;
use Test::More;
use Test::Memcached;
use Cache::Memcached;

my $memd = Test::Memcached->new();
ok $memd->start, "memcached started";
my $port = $memd->option('tcp_port');
my $client = Cache::Memcached->new({ servers => ["127.0.0.1:$port"] });
ok $client, "memcached client";

qx{ cat t/data/test1.log | $^X ./ktlog2memcached --host 127.0.0.1 --port $port };

is $client->get("one") => undef;
is $client->get("two") => "second";

$memd->stop;

done_testing;
