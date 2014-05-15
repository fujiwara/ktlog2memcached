requires "Cache::Memcached";
requires "Pod::Usage";
requires "Compress::Zlib";
requires "Config::PL";
on "test" => sub {
    requires "Test::Memcached";
    requires "Test::More";
};
