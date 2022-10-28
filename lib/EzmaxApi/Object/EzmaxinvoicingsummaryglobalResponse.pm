=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.13
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzmaxinvoicingsummaryglobalResponse;

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
#A Ezmaxinvoicingsummaryglobal Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.13
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


__PACKAGE__->class_documentation({description => 'A Ezmaxinvoicingsummaryglobal Object',
                                  class => 'EzmaxinvoicingsummaryglobalResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezmaxinvoicingsummaryglobal_id' => {
        datatype => 'int',
        base_name => 'pkiEzmaxinvoicingsummaryglobalID',
        description => 'The unique ID of the Ezmaxinvoicingsummaryglobal',
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
    'dt_ezmaxinvoicingsummaryglobal_start' => {
        datatype => 'string',
        base_name => 'dtEzmaxinvoicingsummaryglobalStart',
        description => 'The start date for the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'dt_ezmaxinvoicingsummaryglobal_end' => {
        datatype => 'string',
        base_name => 'dtEzmaxinvoicingsummaryglobalEnd',
        description => 'The end date for the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingsummaryglobal_days' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingsummaryglobalDays',
        description => 'The number of days for the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_countreal' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalCountreal',
        description => 'The The count item calculated',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_countbilled' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalCountbilled',
        description => 'The The count item billed',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_subtotal' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalSubtotal',
        description => 'The Ezmaxinvoicingsummaryglobal subtotal',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_rebateamount' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalRebateamount',
        description => 'The rebate amount for the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_rebatepercent' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalRebatepercent',
        description => 'The rebate percentage of the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_rebatetotal' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalRebatetotal',
        description => 'The rebate amount total for the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_total' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalTotal',
        description => 'The Ezmaxinvoicingsummaryglobal total',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_representative' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalRepresentative',
        description => 'The amount of commission for the representative',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_partner' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalPartner',
        description => 'The amount of commission for the partner',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicingsummaryglobal_net' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingsummaryglobalNet',
        description => 'The net amount of the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
    'b_ezmaxinvoicingsummaryglobal_adjustment' => {
        datatype => 'boolean',
        base_name => 'bEzmaxinvoicingsummaryglobalAdjustment',
        description => 'Whether it is adjustment for the Ezmaxinvoicingsummaryglobal',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezmaxinvoicingsummaryglobal_id' => 'int',
    'fki_ezmaxinvoicing_id' => 'int',
    'fki_ezmaxproduct_id' => 'int',
    's_ezmaxproduct_description_x' => 'string',
    'dt_ezmaxinvoicingsummaryglobal_start' => 'string',
    'dt_ezmaxinvoicingsummaryglobal_end' => 'string',
    'i_ezmaxinvoicingsummaryglobal_days' => 'int',
    'd_ezmaxinvoicingsummaryglobal_countreal' => 'string',
    'd_ezmaxinvoicingsummaryglobal_countbilled' => 'string',
    'd_ezmaxinvoicingsummaryglobal_subtotal' => 'string',
    'd_ezmaxinvoicingsummaryglobal_rebateamount' => 'string',
    'd_ezmaxinvoicingsummaryglobal_rebatepercent' => 'string',
    'd_ezmaxinvoicingsummaryglobal_rebatetotal' => 'string',
    'd_ezmaxinvoicingsummaryglobal_total' => 'string',
    'd_ezmaxinvoicingsummaryglobal_representative' => 'string',
    'd_ezmaxinvoicingsummaryglobal_partner' => 'string',
    'd_ezmaxinvoicingsummaryglobal_net' => 'string',
    'b_ezmaxinvoicingsummaryglobal_adjustment' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'pki_ezmaxinvoicingsummaryglobal_id' => 'pkiEzmaxinvoicingsummaryglobalID',
    'fki_ezmaxinvoicing_id' => 'fkiEzmaxinvoicingID',
    'fki_ezmaxproduct_id' => 'fkiEzmaxproductID',
    's_ezmaxproduct_description_x' => 'sEzmaxproductDescriptionX',
    'dt_ezmaxinvoicingsummaryglobal_start' => 'dtEzmaxinvoicingsummaryglobalStart',
    'dt_ezmaxinvoicingsummaryglobal_end' => 'dtEzmaxinvoicingsummaryglobalEnd',
    'i_ezmaxinvoicingsummaryglobal_days' => 'iEzmaxinvoicingsummaryglobalDays',
    'd_ezmaxinvoicingsummaryglobal_countreal' => 'dEzmaxinvoicingsummaryglobalCountreal',
    'd_ezmaxinvoicingsummaryglobal_countbilled' => 'dEzmaxinvoicingsummaryglobalCountbilled',
    'd_ezmaxinvoicingsummaryglobal_subtotal' => 'dEzmaxinvoicingsummaryglobalSubtotal',
    'd_ezmaxinvoicingsummaryglobal_rebateamount' => 'dEzmaxinvoicingsummaryglobalRebateamount',
    'd_ezmaxinvoicingsummaryglobal_rebatepercent' => 'dEzmaxinvoicingsummaryglobalRebatepercent',
    'd_ezmaxinvoicingsummaryglobal_rebatetotal' => 'dEzmaxinvoicingsummaryglobalRebatetotal',
    'd_ezmaxinvoicingsummaryglobal_total' => 'dEzmaxinvoicingsummaryglobalTotal',
    'd_ezmaxinvoicingsummaryglobal_representative' => 'dEzmaxinvoicingsummaryglobalRepresentative',
    'd_ezmaxinvoicingsummaryglobal_partner' => 'dEzmaxinvoicingsummaryglobalPartner',
    'd_ezmaxinvoicingsummaryglobal_net' => 'dEzmaxinvoicingsummaryglobalNet',
    'b_ezmaxinvoicingsummaryglobal_adjustment' => 'bEzmaxinvoicingsummaryglobalAdjustment'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
