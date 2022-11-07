=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.15
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzmaxinvoicingcommissionResponse;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezmaxinvoicingcommission Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.15
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "EzmaxApi::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'A Ezmaxinvoicingcommission Object',
                                  class => 'EzmaxinvoicingcommissionResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezmaxinvoicingcommission_id' => {
        datatype => 'int',
        base_name => 'pkiEzmaxinvoicingcommissionID',
        description => 'The unique ID of the Ezmaxinvoicingcommission',
        format => '',
        read_only => '',
            },
    'fki_ezmaxinvoicingsummaryglobal_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxinvoicingsummaryglobalID',
        description => 'The unique ID of the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'fki_ezmaxpartner_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxpartnerID',
        description => 'The unique ID of the Ezmaxpartner',
        format => '',
        read_only => '',
            },
    'fki_ezmaxrepresentative_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxrepresentativeID',
        description => 'The unique ID of the Ezmaxrepresentative',
        format => '',
        read_only => '',
            },
    'dt_ezmaxinvoicingcommission_start' => {
        datatype => 'string',
        base_name => 'dtEzmaxinvoicingcommissionStart',
        description => 'The start date for the Ezmaxinvoicingcommission',
        format => '',
        read_only => '',
            },
    'dt_ezmaxinvoicingcommission_end' => {
        datatype => 'string',
        base_name => 'dtEzmaxinvoicingcommissionEnd',
        description => 'The end date for the Ezmaxinvoicingcommission',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingcommission_days' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingcommissionDays',
        description => 'This is the number of days during the month on which the Ezmaxinvoigcommission applies',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingcommission_amount' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingcommissionAmount',
        description => 'The amount of Ezmaxinvoicingcommission',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezmaxinvoicingcommission_id' => 'int',
    'fki_ezmaxinvoicingsummaryglobal_id' => 'int',
    'fki_ezmaxpartner_id' => 'int',
    'fki_ezmaxrepresentative_id' => 'int',
    'dt_ezmaxinvoicingcommission_start' => 'string',
    'dt_ezmaxinvoicingcommission_end' => 'string',
    'i_ezmaxinvoicingcommission_days' => 'int',
    'd_ezmaxinvoicingcommission_amount' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezmaxinvoicingcommission_id' => 'pkiEzmaxinvoicingcommissionID',
    'fki_ezmaxinvoicingsummaryglobal_id' => 'fkiEzmaxinvoicingsummaryglobalID',
    'fki_ezmaxpartner_id' => 'fkiEzmaxpartnerID',
    'fki_ezmaxrepresentative_id' => 'fkiEzmaxrepresentativeID',
    'dt_ezmaxinvoicingcommission_start' => 'dtEzmaxinvoicingcommissionStart',
    'dt_ezmaxinvoicingcommission_end' => 'dtEzmaxinvoicingcommissionEnd',
    'i_ezmaxinvoicingcommission_days' => 'iEzmaxinvoicingcommissionDays',
    'd_ezmaxinvoicingcommission_amount' => 'dEzmaxinvoicingcommissionAmount'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
