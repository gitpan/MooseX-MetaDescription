#!/usr/bin/perl

use strict;
use warnings;

use Test::More no_plan => 1;
use Test::Exception;

BEGIN {
    use_ok('MooseX::MetaDescription');

    use_ok('MooseX::MetaDescription::Meta::Class');
    use_ok('MooseX::MetaDescription::Meta::Attribute');
    use_ok('MooseX::MetaDescription::Meta::Trait');

    use_ok('MooseX::MetaDescription::Description');
}
