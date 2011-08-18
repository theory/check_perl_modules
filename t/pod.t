#!/usr/bin/perl -w

use strict;
use Test::More;
use File::Spec::Functions 'catfile';
eval 'use Test::Pod 1.41';
plan skip_all => 'Test::Pod 1.41 required for testing POD' if $@;
all_pod_files_ok( catfile qw(bin check_perl_modules));
