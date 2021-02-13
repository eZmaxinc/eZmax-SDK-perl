=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign application.

The version of the OpenAPI document: 1.0.30
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::PhoneRequest;

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

use EzmaxApi::Object::FieldEPhoneType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Phone Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign application.

The version of the OpenAPI document: 1.0.30
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



__PACKAGE__->class_documentation({description => 'A Phone Object',
                                  class => 'PhoneRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'fki_phonetype_id' => {
        datatype => 'int',
        base_name => 'fkiPhonetypeID',
        description => 'The unique ID of the Phonetype.  Valid values:  |Value|Description| |-|-| |1|Office| |2|Home| |3|Mobile| |4|Fax| |5|Pager| |6|Toll Free|',
        format => '',
        read_only => '',
            },
    'e_phone_type' => {
        datatype => 'FieldEPhoneType',
        base_name => 'ePhoneType',
        description => '',
        format => '',
        read_only => '',
            },
    's_phone_region' => {
        datatype => 'string',
        base_name => 'sPhoneRegion',
        description => 'The region of the phone number. (For a North America Number only)  The region is the \&quot;514\&quot; section in this sample phone number: (514) 990-1516 x123',
        format => '',
        read_only => '',
            },
    's_phone_exchange' => {
        datatype => 'string',
        base_name => 'sPhoneExchange',
        description => 'The exchange of the phone number. (For a North America Number only)  The exchange is the \&quot;990\&quot; section in this sample phone number: (514) 990-1516 x123',
        format => '',
        read_only => '',
            },
    's_phone_number' => {
        datatype => 'string',
        base_name => 'sPhoneNumber',
        description => 'The number of the phone number. (For a North America Number only)  The number is the \&quot;1516\&quot; section in this sample phone number: (514) 990-1516 x123',
        format => '',
        read_only => '',
            },
    's_phone_international' => {
        datatype => 'string',
        base_name => 'sPhoneInternational',
        description => 'The international phone number. (For phone numbers outside of North)  Do not specify the \&quot;011\&quot; part of the phone number used to dial an international phone number from North America.  For example for this sample phone number \&quot;+442071838750\&quot;, you would send \&quot;442071838750\&quot; without the \&quot;+\&quot; sign.',
        format => '',
        read_only => '',
            },
    's_phone_extension' => {
        datatype => 'string',
        base_name => 'sPhoneExtension',
        description => 'The extension of the phone number.  The extension is the \&quot;123\&quot; section in this sample phone number: (514) 990-1516 x123.  It can also be used with international phone numbers',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'fki_phonetype_id' => 'int',
    'e_phone_type' => 'FieldEPhoneType',
    's_phone_region' => 'string',
    's_phone_exchange' => 'string',
    's_phone_number' => 'string',
    's_phone_international' => 'string',
    's_phone_extension' => 'string'
} );

__PACKAGE__->attribute_map( {
    'fki_phonetype_id' => 'fkiPhonetypeID',
    'e_phone_type' => 'ePhoneType',
    's_phone_region' => 'sPhoneRegion',
    's_phone_exchange' => 'sPhoneExchange',
    's_phone_number' => 'sPhoneNumber',
    's_phone_international' => 'sPhoneInternational',
    's_phone_extension' => 'sPhoneExtension'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
