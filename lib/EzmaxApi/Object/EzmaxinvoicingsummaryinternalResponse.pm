=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzmaxinvoicingsummaryinternalResponse;

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

use EzmaxApi::Object::MultilingualEzmaxinvoicingsummaryinternalDescription;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezmaxinvoicingsummaryinternal Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
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


__PACKAGE__->class_documentation({description => 'A Ezmaxinvoicingsummaryinternal Object',
                                  class => 'EzmaxinvoicingsummaryinternalResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezmaxinvoicingsummaryinternal_id' => {
        datatype => 'int',
        base_name => 'pkiEzmaxinvoicingsummaryinternalID',
        description => 'The unique ID of the Ezmaxinvoicingsummaryinternal',
        format => '',
        read_only => '',
            },
    'obj_ezmaxinvoicingsummaryinternal_description' => {
        datatype => 'MultilingualEzmaxinvoicingsummaryinternalDescription',
        base_name => 'objEzmaxinvoicingsummaryinternalDescription',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezmaxinvoicingsummaryinternal_description_x' => {
        datatype => 'string',
        base_name => 'sEzmaxinvoicingsummaryinternalDescriptionX',
        description => 'The Ezmaxinvoicingsummaryinternal description in the language of the requester',
        format => '',
        read_only => '',
            },
    'fki_ezmaxinvoicing_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxinvoicingID',
        description => 'The unique ID of the Ezmaxinvoicing',
        format => '',
        read_only => '',
            },
    'fki_billingentityinternal_id' => {
        datatype => 'int',
        base_name => 'fkiBillingentityinternalID',
        description => 'The unique ID of the Billingentityinternal.',
        format => '',
        read_only => '',
            },
    's_billingentityinternal_description_x' => {
        datatype => 'string',
        base_name => 'sBillingentityinternalDescriptionX',
        description => 'The description of the Billingentityinternal in the language of the requester',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezmaxinvoicingsummaryinternal_id' => 'int',
    'obj_ezmaxinvoicingsummaryinternal_description' => 'MultilingualEzmaxinvoicingsummaryinternalDescription',
    's_ezmaxinvoicingsummaryinternal_description_x' => 'string',
    'fki_ezmaxinvoicing_id' => 'int',
    'fki_billingentityinternal_id' => 'int',
    's_billingentityinternal_description_x' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezmaxinvoicingsummaryinternal_id' => 'pkiEzmaxinvoicingsummaryinternalID',
    'obj_ezmaxinvoicingsummaryinternal_description' => 'objEzmaxinvoicingsummaryinternalDescription',
    's_ezmaxinvoicingsummaryinternal_description_x' => 'sEzmaxinvoicingsummaryinternalDescriptionX',
    'fki_ezmaxinvoicing_id' => 'fkiEzmaxinvoicingID',
    'fki_billingentityinternal_id' => 'fkiBillingentityinternalID',
    's_billingentityinternal_description_x' => 'sBillingentityinternalDescriptionX'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
