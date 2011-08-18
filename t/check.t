#!/usr/bin/perl -w

use strict;
use File::Spec::Functions 'catfile';

print "1..1\n";
close STDERR;
my $ret = system $^X, '-c', catfile(qw(bin check_perl_modules)), '-h';
print +($ret ? 'not ' : ''), "ok 1\n"
