use Module::Build;

my $build = Module::Build->new(
    module_name        => 'check_perl_modules',
    license            => 'perl',
    create_makefile_pl => 'traditional',
    script_files       => [ 'bin/check_perl_modules' ],
    dist_version_from  => 'bin/check_perl_modules',
    pm_files           => {},
    configure_requires => { 'Module::Build' => '0.2701' },
    requires           => {
        'App::cpanoutdated' => 0,
        'Getopt::Long'      => 0,
        'Pod::Usage'        => 0,
    },
    build_requires     => {
        'Test::More'    => '0.17',
        'Module::Build' => '0.2701',
        'File::Spec'    => 0,
    },
    meta_merge => {
        resources => {
            homepage   => 'http://search.cpan.org/dist/check_perl_modules/',
            bugtracker => 'http://github.com/theory/check_perl_modules/issues/',
            repository => 'http://github.com/theory/check_perl_modules/',
        }
    },
);
$build->create_build_script;
