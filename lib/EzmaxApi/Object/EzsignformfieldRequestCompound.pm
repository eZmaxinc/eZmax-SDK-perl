=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.5
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignformfieldRequestCompound;

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

use EzmaxApi::Object::EzsignformfieldRequest;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignformfield Object and children to create a complete structure
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.5
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


__PACKAGE__->class_documentation({description => 'An Ezsignformfield Object and children to create a complete structure',
                                  class => 'EzsignformfieldRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignformfield_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignformfieldID',
        description => 'The unique ID of the Ezsignformfield',
        format => '',
        read_only => '',
            },
    'i_ezsignpage_pagenumber' => {
        datatype => 'int',
        base_name => 'iEzsignpagePagenumber',
        description => 'The page number in the Ezsigndocument',
        format => '',
        read_only => '',
            },
    's_ezsignformfield_label' => {
        datatype => 'string',
        base_name => 'sEzsignformfieldLabel',
        description => 'The Label for the Ezsignformfield',
        format => '',
        read_only => '',
            },
    's_ezsignformfield_value' => {
        datatype => 'string',
        base_name => 'sEzsignformfieldValue',
        description => 'The value for the Ezsignformfield  This can only be set if eEzsignformfieldgroupType is Checkbox or Radio',
        format => '',
        read_only => '',
            },
    'i_ezsignformfield_x' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldX',
        description => 'The X coordinate (Horizontal) where to put the Ezsignformfield on the Ezsignpage.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsignformfield 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsignformfield_y' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldY',
        description => 'The Y coordinate (Vertical) where to put the Ezsignformfield on the Ezsignpage.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsignformfield 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsignformfield_width' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldWidth',
        description => 'The Width of the Ezsignformfield in pixels calculated at 100 DPI  The allowed values are varying based on the eEzsignformfieldgroupType.  | eEzsignformfieldgroupType | Valid values | | ------------------------- | ------------ | | Checkbox                  | 22           | | Dropdown                  | 22-65535     | | Radio                     | 22           | | Text                      | 22-65535     | | Textarea                  | 22-65535     |',
        format => '',
        read_only => '',
            },
    'i_ezsignformfield_height' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldHeight',
        description => 'The Height of the Ezsignformfield in pixels calculated at 100 DPI  The allowed values are varying based on the eEzsignformfieldgroupType.  | eEzsignformfieldgroupType | Valid values | | ------------------------- | ------------ | | Checkbox                  | 22           | | Dropdown                  | 22           | | Radio                     | 22           | | Text                      | 22           | | Textarea                  | 22-65535     | ',
        format => '',
        read_only => '',
            },
    'b_ezsignformfield_selected' => {
        datatype => 'boolean',
        base_name => 'bEzsignformfieldSelected',
        description => 'Whether the Ezsignformfield is selected or not by default.  This can only be set if eEzsignformfieldgroupType is **Checkbox** or **Radio**',
        format => '',
        read_only => '',
            },
    's_ezsignformfield_enteredvalue' => {
        datatype => 'string',
        base_name => 'sEzsignformfieldEnteredvalue',
        description => 'This is the value enterred for the Ezsignformfield  This can only be set if eEzsignformfieldgroupType is **Dropdown**, **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignformfield_id' => 'int',
    'i_ezsignpage_pagenumber' => 'int',
    's_ezsignformfield_label' => 'string',
    's_ezsignformfield_value' => 'string',
    'i_ezsignformfield_x' => 'int',
    'i_ezsignformfield_y' => 'int',
    'i_ezsignformfield_width' => 'int',
    'i_ezsignformfield_height' => 'int',
    'b_ezsignformfield_selected' => 'boolean',
    's_ezsignformfield_enteredvalue' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignformfield_id' => 'pkiEzsignformfieldID',
    'i_ezsignpage_pagenumber' => 'iEzsignpagePagenumber',
    's_ezsignformfield_label' => 'sEzsignformfieldLabel',
    's_ezsignformfield_value' => 'sEzsignformfieldValue',
    'i_ezsignformfield_x' => 'iEzsignformfieldX',
    'i_ezsignformfield_y' => 'iEzsignformfieldY',
    'i_ezsignformfield_width' => 'iEzsignformfieldWidth',
    'i_ezsignformfield_height' => 'iEzsignformfieldHeight',
    'b_ezsignformfield_selected' => 'bEzsignformfieldSelected',
    's_ezsignformfield_enteredvalue' => 'sEzsignformfieldEnteredvalue'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
