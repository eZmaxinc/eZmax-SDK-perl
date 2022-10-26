=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.12
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzmaxinvoicingsummaryexternaldetailResponse;

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
#A Ezmaxinvoicingsummaryexternaldetail Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.12
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


__PACKAGE__->class_documentation({description => 'A Ezmaxinvoicingsummaryexternaldetail Object',
                                  class => 'EzmaxinvoicingsummaryexternaldetailResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezmaxinvoicingsummaryexternaldetail_id' => {
        datatype => 'int',
        base_name => 'pkiEzmaxinvoicingsummaryexternaldetailID',
        description => 'The unique ID of the Ezmaxinvoicingsummaryexternaldetail',
        format => '',
        read_only => '',
            },
    'fki_ezmaxinvoicingsummaryexternal_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxinvoicingsummaryexternalID',
        description => 'The unique ID of the Ezmaxinvoicingsummaryexternal',
        format => '',
        read_only => '',
            },
    'fki_ezmaxproduct_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxproductID',
        description => 'The unique ID of the Ezmaxproduct',
        format => '',
        read_only => '',
            },
    's_ezmaxproduct_description_x' => {
        datatype => 'string',
        base_name => 'sEzmaxproductDescriptionX',
        description => 'The description of the Ezmaxproduct in the language of the requester',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryexternaldetail_countreal' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryexternaldetailCountreal',
        description => 'The count item invoiced for the product',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryexternaldetail_subtotal' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryexternaldetailSubtotal',
        description => 'The subtotal invoiced for the product',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryexternaldetail_rebate' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryexternaldetailRebate',
        description => 'The rebate for the product',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryexternaldetail_total' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryexternaldetailTotal',
        description => 'The total invoiced for the product',
        format => '',
        read_only => '',
            },
    'b_ezmaxinvoicingsummaryexternaldetail_adjustment' => {
        datatype => 'boolean',
        base_name => 'bEzmaxinvoicingsummaryexternaldetailAdjustment',
        description => 'Whether it&#39;s an adjustment',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezmaxinvoicingsummaryexternaldetail_id' => 'int',
    'fki_ezmaxinvoicingsummaryexternal_id' => 'int',
    'fki_ezmaxproduct_id' => 'int',
    's_ezmaxproduct_description_x' => 'string',
    'd_ezmaxinvoicingsummaryexternaldetail_countreal' => 'string',
    'd_ezmaxinvoicingsummaryexternaldetail_subtotal' => 'string',
    'd_ezmaxinvoicingsummaryexternaldetail_rebate' => 'string',
    'd_ezmaxinvoicingsummaryexternaldetail_total' => 'string',
    'b_ezmaxinvoicingsummaryexternaldetail_adjustment' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'pki_ezmaxinvoicingsummaryexternaldetail_id' => 'pkiEzmaxinvoicingsummaryexternaldetailID',
    'fki_ezmaxinvoicingsummaryexternal_id' => 'fkiEzmaxinvoicingsummaryexternalID',
    'fki_ezmaxproduct_id' => 'fkiEzmaxproductID',
    's_ezmaxproduct_description_x' => 'sEzmaxproductDescriptionX',
    'd_ezmaxinvoicingsummaryexternaldetail_countreal' => 'dEzmaxinvoicingsummaryexternaldetailCountreal',
    'd_ezmaxinvoicingsummaryexternaldetail_subtotal' => 'dEzmaxinvoicingsummaryexternaldetailSubtotal',
    'd_ezmaxinvoicingsummaryexternaldetail_rebate' => 'dEzmaxinvoicingsummaryexternaldetailRebate',
    'd_ezmaxinvoicingsummaryexternaldetail_total' => 'dEzmaxinvoicingsummaryexternaldetailTotal',
    'b_ezmaxinvoicingsummaryexternaldetail_adjustment' => 'bEzmaxinvoicingsummaryexternaldetailAdjustment'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
