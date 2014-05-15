# SYNOPSIS

    ktremotemgr slave -ts `date +%s000000000` -uw | ktlog2memcached --host 127.0.0.1 --port 11211

# DESCRIPTION

ktlog2memcached is KyotoTycoon's slave agent, replicate updates to memcached.

See also http://fallabs.com/blog-ja/promenade.cgi?id=115 (Japanese language).

# Configuration

## Replicate to sigle memcached

    ktlog2memcached --host memcached_hostname --port memcached_port

## More complex configuration

You may write config.pl to create memcached client object.

    # config.pl
    {
        servers => ["...", "..."],
        compress_threshold => 1024,
        # ... and more options
    });

    ktlog2memcached --config config.pl

# LICENSE

Copyright (C) FUJIWARA Shunichiro.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

FUJIWARA Shunichiro <fujiwara.shunichiro@gmail.com>
