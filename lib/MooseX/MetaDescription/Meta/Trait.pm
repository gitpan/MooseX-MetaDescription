package MooseX::MetaDescription::Meta::Trait;
use Moose::Role;

our $VERSION   = '0.01';
our $AUTHORITY = 'cpan:STEVAN';

has 'description' => (
    is      => 'ro',
    isa     => 'HashRef',
    lazy    => 1,   
    default => sub { +{} },
);

has 'metadescription_classname' => (
    is      => 'ro',
    isa     => 'Str', 
    lazy    => 1,  
    default => sub {
        'MooseX::MetaDescription::Description'
    }  
);

has 'metadescription' => (
    is      => 'ro',
    isa     => 'MooseX::MetaDescription::Description',
    lazy    => 1,   
    default => sub {
        my $self = shift;
        
        my $metadesc_class = $self->metadescription_classname;
        my $desc           = $self->description;
        
        if (my $traits = delete $desc->{traits}) {
            my $meta = Moose::Meta::Class->create_anon_class(
                superclasses => [ $metadesc_class ],
                roles        => $traits,
            );
            $meta->add_method('meta' => sub { $meta });
            $metadesc_class = $meta->name;
        }
        
        return $metadesc_class->new(%$desc, descriptor => $self);
    },
);

no Moose::Role; 1;

__END__

=pod

=head1 NAME

MooseX::MetaDescription::Meta::Trait - Custom class meta-trait for meta-descriptions

=head1 DESCRIPTION

Nothing worth saying yet actually, mostly internal usage only. See the 
SYNPOSIS in L<MooseX::MetaDescription> for an example of usage.

=head1 METHODS 

=over 4

=item B<description>

=item B<metadescription_classname>

=item B<metadescription>

=back

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
