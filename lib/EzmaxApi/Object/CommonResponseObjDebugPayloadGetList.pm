=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.7
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::CommonResponseObjDebugPayloadGetList;

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

use EzmaxApi::Object::CommonResponseFilter;
use EzmaxApi::Object::CommonResponseObjDebugPayload;
use EzmaxApi::Object::CommonResponseObjDebugPayloadGetListAllOf;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#This is a debug object containing debugging information on the actual function
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.7
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


__PACKAGE__->class_documentation({description => 'This is a debug object containing debugging information on the actual function',
                                  class => 'CommonResponseObjDebugPayloadGetList',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'i_version_min' => {
        datatype => 'int',
        base_name => 'iVersionMin',
        description => 'The minimum version of the function that can be called',
        format => '',
        read_only => '',
            },
    'i_version_max' => {
        datatype => 'int',
        base_name => 'iVersionMax',
        description => 'The maximum version of the function that can be called',
        format => '',
        read_only => '',
            },
    'a_required_permission' => {
        datatype => 'ARRAY[int]',
        base_name => 'a_RequiredPermission',
        description => 'An array of permissions required to access this function.  If the value \&quot;0\&quot; is present in the array, anyone can call this function.  You must have one of the permission to access the function. You don&#39;t need to have all of them.',
        format => '',
        read_only => '',
            },
    'a_filter' => {
        datatype => 'CommonResponseFilter',
        base_name => 'a_Filter',
        description => '',
        format => '',
        read_only => '',
            },
    'a_order_by' => {
        datatype => 'HASH[string,string]',
        base_name => 'a_OrderBy',
        description => 'List of available values for *eOrderBy*',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'i_version_min' => 'int',
    'i_version_max' => 'int',
    'a_required_permission' => 'ARRAY[int]',
    'a_filter' => 'CommonResponseFilter',
    'a_order_by' => 'HASH[string,string]'
} );

__PACKAGE__->attribute_map( {
    'i_version_min' => 'iVersionMin',
    'i_version_max' => 'iVersionMax',
    'a_required_permission' => 'a_RequiredPermission',
    'a_filter' => 'a_Filter',
    'a_order_by' => 'a_OrderBy'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
