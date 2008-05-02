package MooseX::MetaDescription::Meta::Attribute;
use Moose;

our $VERSION   = '0.01';
our $AUTHORITY = 'cpan:STEVAN';

extends 'Moose::Meta::Attribute';
   with 'MooseX::MetaDescription::Meta::Trait';

no Moose; 1;

__END__

=pod

=head1 NAME

MooseX::MetaDescription::Meta::Attribute - Custom attribute metaclass for meta-descriptions

=head1 DESCRIPTION

Nothing worth saying yet actually, mostly internal usage only. See the 
SYNPOSIS in L<MooseX::MetaDescription> for an example of usage.

=head1 BUGS

All complex software has bugs lurking in it, and this module is no 
exception. If you find a bug please either email me, or add the bug
to cpan-RT.

=head1 AUTHOR

Stevan Little E<lt>stevan.little@iinteractive.comE<gt>

=head1 COPYRIGHT AND LICENSE

Copyright 2008 Infinity Interactive, Inc.

L<http://www.iinteractive.com>

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
