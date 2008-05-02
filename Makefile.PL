use strict;
use warnings;
use inc::Module::Install;

name 'MooseX-MetaDescription';
all_from 'lib/MooseX/MetaDescription.pm';
license 'perl';

# prereqs
requires 'Moose' => 0.40;

# things the tests need
build_requires 'Test::More' => '0.62';

tests('t/*.t');

WriteAll();

