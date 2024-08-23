#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use Gorge;

Gorge->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Gorge;
use Plack::Builder;

builder {
    enable 'Deflater';
    Gorge->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use Gorge;
use Gorge_admin;

use Plack::Builder;

builder {
    mount '/'      => Gorge->to_app;
    mount '/admin'      => Gorge_admin->to_app;
}

=end comment

=cut

