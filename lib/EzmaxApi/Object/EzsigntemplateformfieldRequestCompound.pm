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
package EzmaxApi::Object::EzsigntemplateformfieldRequestCompound;

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

use EzmaxApi::Object::EzsigntemplateformfieldRequest;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsigntemplateformfield Object and children to create a complete structure
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


__PACKAGE__->class_documentation({description => 'An Ezsigntemplateformfield Object and children to create a complete structure',
                                  class => 'EzsigntemplateformfieldRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsigntemplateformfield_id' => {
        datatype => 'int',
        base_name => 'pkiEzsigntemplateformfieldID',
        description => 'The unique ID of the Ezsigntemplateformfield',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplatedocumentpage_pagenumber' => {
        datatype => 'int',
        base_name => 'iEzsigntemplatedocumentpagePagenumber',
        description => 'The page number in the Ezsigntemplatedocument',
        format => '',
        read_only => '',
            },
    's_ezsigntemplateformfield_label' => {
        datatype => 'string',
        base_name => 'sEzsigntemplateformfieldLabel',
        description => 'The Label for the Ezsigntemplateformfield',
        format => '',
        read_only => '',
            },
    's_ezsigntemplateformfield_value' => {
        datatype => 'string',
        base_name => 'sEzsigntemplateformfieldValue',
        description => 'The value for the Ezsigntemplateformfield  This can only be set if eEzsigntemplateformfieldgroupType is Checkbox or Radio',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_x' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldX',
        description => 'The X coordinate (Horizontal) where to put the Ezsigntemplateformfield on the Ezsigntemplatepage.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsigntemplateformfield 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_y' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldY',
        description => 'The Y coordinate (Vertical) where to put the Ezsigntemplateformfield on the Ezsigntemplatepage.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsigntemplateformfield 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_width' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldWidth',
        description => 'The Width of the Ezsigntemplateformfield in pixels calculated at 100 DPI  The allowed values are varying based on the eEzsigntemplateformfieldgroupType.  | eEzsigntemplateformfieldgroupType | Valid values | | ------------------------- | ------------ | | Checkbox                  | 22           | | Dropdown                  | 22-65535     | | Radio                     | 22           | | Text                      | 22-65535     | | Textarea                  | 22-65535     |',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_height' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldHeight',
        description => 'The Height of the Ezsigntemplateformfield in pixels calculated at 100 DPI  The allowed values are varying based on the eEzsigntemplateformfieldgroupType.  | eEzsigntemplateformfieldgroupType | Valid values | | ------------------------- | ------------ | | Checkbox                  | 22           | | Dropdown                  | 22           | | Radio                     | 22           | | Text                      | 22           | | Textarea                  | 22-65535     | ',
        format => '',
        read_only => '',
            },
    'b_ezsigntemplateformfield_selected' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplateformfieldSelected',
        description => 'Whether the Ezsigntemplateformfield is selected or not by default.  This can only be set if eEzsigntemplateformfieldgroupType is **Checkbox** or **Radio**',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsigntemplateformfield_id' => 'int',
    'i_ezsigntemplatedocumentpage_pagenumber' => 'int',
    's_ezsigntemplateformfield_label' => 'string',
    's_ezsigntemplateformfield_value' => 'string',
    'i_ezsigntemplateformfield_x' => 'int',
    'i_ezsigntemplateformfield_y' => 'int',
    'i_ezsigntemplateformfield_width' => 'int',
    'i_ezsigntemplateformfield_height' => 'int',
    'b_ezsigntemplateformfield_selected' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsigntemplateformfield_id' => 'pkiEzsigntemplateformfieldID',
    'i_ezsigntemplatedocumentpage_pagenumber' => 'iEzsigntemplatedocumentpagePagenumber',
    's_ezsigntemplateformfield_label' => 'sEzsigntemplateformfieldLabel',
    's_ezsigntemplateformfield_value' => 'sEzsigntemplateformfieldValue',
    'i_ezsigntemplateformfield_x' => 'iEzsigntemplateformfieldX',
    'i_ezsigntemplateformfield_y' => 'iEzsigntemplateformfieldY',
    'i_ezsigntemplateformfield_width' => 'iEzsigntemplateformfieldWidth',
    'i_ezsigntemplateformfield_height' => 'iEzsigntemplateformfieldHeight',
    'b_ezsigntemplateformfield_selected' => 'bEzsigntemplateformfieldSelected'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
