=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.1
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsigntemplateformfieldResponse;

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

use EzmaxApi::Object::EnumHorizontalalignment;
use EzmaxApi::Object::FieldEEzsigntemplateformfieldDependencyrequirement;
use EzmaxApi::Object::FieldEEzsigntemplateformfieldPositioning;
use EzmaxApi::Object::FieldEEzsigntemplateformfieldPositioningoccurence;
use EzmaxApi::Object::TextstylestaticResponseCompound;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsigntemplateformfield Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.1
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
            my $_json_attribute = $self->attribute_map->{$_key};
            my $_type = $self->openapi_types->{$_key};
            my $_value = $self->{$_key};
            if ($_type =~ /^array\[(.+)\]$/i) { # array
                my $_subclass = $1;
                $_data->{$_json_attribute} =  [ map { $self->_to_json_primitives($_subclass, $_) } @$_value ];
            } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
                my $_subclass = $1;
                my %_hash = ();
                while (my($_key, $_element) = each %{$_value}) {
                    $_hash{$_key} = $self->_to_json_primitives($_subclass, $_element);
                }
                $_data->{$_json_attribute} = \%_hash;
            } elsif ( grep( /^$_type$/, ('int', 'double', 'string', 'boolean', 'DATE', 'DATE_TIME'))) {
                $_data->{$_json_attribute} = $self->_to_json_primitives($_type, $_value);
            } else {
                $_data->{$_json_attribute} = $_value;
            }
        }
    }

    return $_data;
}

# to_json non-array data
sub _to_json_primitives {
    my ($self, $type, $data) = @_;
    if ( grep( /^$type$/, ('int', 'double'))) {
        # https://metacpan.org/pod/JSON#simple-scalars
        # numify it, ensuring it will be dumped as a number
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        # https://metacpan.org/pod/JSON#simple-scalars
        # stringified
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        # https://metacpan.org/pod/JSON#JSON::true,-JSON::false,-JSON::null
        return $data ? \1 : \0;
    } elsif ($type eq 'DATE') {
        return undef unless defined $data;
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Eymd($optional_separator),-$dt-%3Emdy(...),-$dt-%3Edmy(...)
            return $data->ymd;
        }
        return $data .q();
    } elsif ($type eq 'DATE_TIME') {
        return undef unless defined $data;
        # the date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Erfc3339
            return $data->rfc3339;
        }
        return $data .q();
    } else { # hash (model),  In this case, the TO_JSON of the $data object is executed
        return $data;
    }
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

    if (grep( /^$type$/ , ('DATE_TIME', 'DATE'))) {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double'))) {
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        return !!$data;
    } else { # hash(model)
        my $_instance = eval "EzmaxApi::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'An Ezsigntemplateformfield Object',
                                  class => 'EzsigntemplateformfieldResponse',
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
    'e_ezsigntemplateformfield_positioning' => {
        datatype => 'FieldEEzsigntemplateformfieldPositioning',
        base_name => 'eEzsigntemplateformfieldPositioning',
        description => '',
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
        description => 'The value for the Ezsigntemplateformfield',
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
        description => 'The Width of the Ezsigntemplateformfield in pixels calculated at 100 DPI',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_height' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldHeight',
        description => 'The Height of the Ezsigntemplateformfield in pixels calculated at 100 DPI ',
        format => '',
        read_only => '',
            },
    'b_ezsigntemplateformfield_autocomplete' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplateformfieldAutocomplete',
        description => 'Whether the Ezsigntemplateformfield allows the use of the autocomplete of the browser.  This can only be set if eEzsigntemplateformfieldgroupType is **Text**',
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
    'e_ezsigntemplateformfield_dependencyrequirement' => {
        datatype => 'FieldEEzsigntemplateformfieldDependencyrequirement',
        base_name => 'eEzsigntemplateformfieldDependencyrequirement',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezsigntemplateformfield_positioningpattern' => {
        datatype => 'string',
        base_name => 'sEzsigntemplateformfieldPositioningpattern',
        description => 'The string pattern to search for the positioning. **This is not a regexp**  This will be required if **eEzsigntemplateformfieldPositioning** is set to **PerCoordinates**',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_positioningoffsetx' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldPositioningoffsetx',
        description => 'The offset X  This will be required if **eEzsigntemplateformfieldPositioning** is set to **PerCoordinates**',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfield_positioningoffsety' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldPositioningoffsety',
        description => 'The offset Y  This will be required if **eEzsigntemplateformfieldPositioning** is set to **PerCoordinates**',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplateformfield_positioningoccurence' => {
        datatype => 'FieldEEzsigntemplateformfieldPositioningoccurence',
        base_name => 'eEzsigntemplateformfieldPositioningoccurence',
        description => '',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplateformfield_horizontalalignment' => {
        datatype => 'EnumHorizontalalignment',
        base_name => 'eEzsigntemplateformfieldHorizontalalignment',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_textstylestatic' => {
        datatype => 'TextstylestaticResponseCompound',
        base_name => 'objTextstylestatic',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsigntemplateformfield_id' => 'int',
    'e_ezsigntemplateformfield_positioning' => 'FieldEEzsigntemplateformfieldPositioning',
    'i_ezsigntemplatedocumentpage_pagenumber' => 'int',
    's_ezsigntemplateformfield_label' => 'string',
    's_ezsigntemplateformfield_value' => 'string',
    'i_ezsigntemplateformfield_x' => 'int',
    'i_ezsigntemplateformfield_y' => 'int',
    'i_ezsigntemplateformfield_width' => 'int',
    'i_ezsigntemplateformfield_height' => 'int',
    'b_ezsigntemplateformfield_autocomplete' => 'boolean',
    'b_ezsigntemplateformfield_selected' => 'boolean',
    'e_ezsigntemplateformfield_dependencyrequirement' => 'FieldEEzsigntemplateformfieldDependencyrequirement',
    's_ezsigntemplateformfield_positioningpattern' => 'string',
    'i_ezsigntemplateformfield_positioningoffsetx' => 'int',
    'i_ezsigntemplateformfield_positioningoffsety' => 'int',
    'e_ezsigntemplateformfield_positioningoccurence' => 'FieldEEzsigntemplateformfieldPositioningoccurence',
    'e_ezsigntemplateformfield_horizontalalignment' => 'EnumHorizontalalignment',
    'obj_textstylestatic' => 'TextstylestaticResponseCompound'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsigntemplateformfield_id' => 'pkiEzsigntemplateformfieldID',
    'e_ezsigntemplateformfield_positioning' => 'eEzsigntemplateformfieldPositioning',
    'i_ezsigntemplatedocumentpage_pagenumber' => 'iEzsigntemplatedocumentpagePagenumber',
    's_ezsigntemplateformfield_label' => 'sEzsigntemplateformfieldLabel',
    's_ezsigntemplateformfield_value' => 'sEzsigntemplateformfieldValue',
    'i_ezsigntemplateformfield_x' => 'iEzsigntemplateformfieldX',
    'i_ezsigntemplateformfield_y' => 'iEzsigntemplateformfieldY',
    'i_ezsigntemplateformfield_width' => 'iEzsigntemplateformfieldWidth',
    'i_ezsigntemplateformfield_height' => 'iEzsigntemplateformfieldHeight',
    'b_ezsigntemplateformfield_autocomplete' => 'bEzsigntemplateformfieldAutocomplete',
    'b_ezsigntemplateformfield_selected' => 'bEzsigntemplateformfieldSelected',
    'e_ezsigntemplateformfield_dependencyrequirement' => 'eEzsigntemplateformfieldDependencyrequirement',
    's_ezsigntemplateformfield_positioningpattern' => 'sEzsigntemplateformfieldPositioningpattern',
    'i_ezsigntemplateformfield_positioningoffsetx' => 'iEzsigntemplateformfieldPositioningoffsetx',
    'i_ezsigntemplateformfield_positioningoffsety' => 'iEzsigntemplateformfieldPositioningoffsety',
    'e_ezsigntemplateformfield_positioningoccurence' => 'eEzsigntemplateformfieldPositioningoccurence',
    'e_ezsigntemplateformfield_horizontalalignment' => 'eEzsigntemplateformfieldHorizontalalignment',
    'obj_textstylestatic' => 'objTextstylestatic'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
