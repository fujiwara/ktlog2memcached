# DESCRIPTION

ktlog2memcached is KyotoTycoon's slave agent, replicate updates to memcached.

# SYNOPSIS

    ktremotemgr slave -ts `date +%s000000000` -uw | ktlog2memcached --host 127.0.0.1 --port 11211

See also http://fallabs.com/blog-ja/promenade.cgi?id=115 .

## Options

- host

    memcached host (hostname or IP address). default: "localhost".

- port

    memcached port. default: 11211.

- use-flag

    If you are running a KyotoTycoon with a memcached plugin and you access via memcached client, memcached's flag value was appended at the end of each record value.

    Cache::Memcached(perl library) is using the flag for detect type of value (raw, structured, compressed).

    If "use-flag" is specified, ktlog2memcached handle the flag as same of Cache::Memcached.

- config

    You may write config.pl to pass the options to Cache::Memcached->new().

        # config.pl
        {
            servers => ["...", "..."],
            compress_threshold => 1024,
            # ... and more options
        });

        ktlog2memcached --config config.pl

# LICENSE

Copyright (C) FUJIWARA Shunichiro.

This software is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

FUJIWARA Shunichiro <fujiwara.shunichiro@gmail.com>
