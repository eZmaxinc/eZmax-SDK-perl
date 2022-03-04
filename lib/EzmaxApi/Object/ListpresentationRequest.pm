=begin comment

eZmax API Definition

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
package EzmaxApi::Object::ListpresentationRequest;

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
#A Listpresentation element
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

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


__PACKAGE__->class_documentation({description => 'A Listpresentation element',
                                  class => 'ListpresentationRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    's_listpresentation_description' => {
        datatype => 'string',
        base_name => 'sListpresentationDescription',
        description => 'A descriptive for the list presentation',
        format => '',
        read_only => '',
            },
    's_listpresentation_filter' => {
        datatype => 'string',
        base_name => 'sListpresentationFilter',
        description => 'The filter to apply to the request to limit results.',
        format => '',
        read_only => '',
            },
    's_listpresentation_orderby' => {
        datatype => 'string',
        base_name => 'sListpresentationOrderby',
        description => 'The order by the user chose',
        format => '',
        read_only => '',
            },
    'a_s_column_name' => {
        datatype => 'ARRAY[string]',
        base_name => 'a_sColumnName',
        description => 'An array of column names that the user chose to bee visible',
        format => '',
        read_only => '',
            },
    'i_listpresentation_row_max' => {
        datatype => 'int',
        base_name => 'iListpresentationRowMax',
        description => 'The maximum numbers of results to be returned',
        format => '',
        read_only => '',
            },
    'i_listpresentation_row_offset' => {
        datatype => 'int',
        base_name => 'iListpresentationRowOffset',
        description => 'The starting element from where to start retrieving the results. For example if you started at iRowOffset&#x3D;0 and asked for iRowMax&#x3D;100, to get the next 100 results, you could specify iRowOffset&#x3D;100&amp;iRowMax&#x3D;100,',
        format => '',
        read_only => '',
            },
    'b_listpresentation_default' => {
        datatype => 'boolean',
        base_name => 'bListpresentationDefault',
        description => 'Set to true if the user chose this Listpresentation as the default one. A single element should be set to true',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    's_listpresentation_description' => 'string',
    's_listpresentation_filter' => 'string',
    's_listpresentation_orderby' => 'string',
    'a_s_column_name' => 'ARRAY[string]',
    'i_listpresentation_row_max' => 'int',
    'i_listpresentation_row_offset' => 'int',
    'b_listpresentation_default' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    's_listpresentation_description' => 'sListpresentationDescription',
    's_listpresentation_filter' => 'sListpresentationFilter',
    's_listpresentation_orderby' => 'sListpresentationOrderby',
    'a_s_column_name' => 'a_sColumnName',
    'i_listpresentation_row_max' => 'iListpresentationRowMax',
    'i_listpresentation_row_offset' => 'iListpresentationRowOffset',
    'b_listpresentation_default' => 'bListpresentationDefault'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
