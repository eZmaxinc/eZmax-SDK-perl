=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.10
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsigntemplatesignatureRequestCompound;

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

use EzmaxApi::Object::EzsigntemplatesignatureRequest;
use EzmaxApi::Object::EzsigntemplatesignatureRequestCompoundAllOf;
use EzmaxApi::Object::EzsigntemplatesignaturecustomdateRequestCompound;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureFont;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureTooltipposition;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezsigntemplatesignature Object and children
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.10
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


__PACKAGE__->class_documentation({description => 'A Ezsigntemplatesignature Object and children',
                                  class => 'EzsigntemplatesignatureRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsigntemplatesignature_id' => {
        datatype => 'int',
        base_name => 'pkiEzsigntemplatesignatureID',
        description => 'The unique ID of the Ezsigntemplatesignature',
        format => '',
        read_only => '',
            },
    'fki_ezsigntemplatedocument_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigntemplatedocumentID',
        description => 'The unique ID of the Ezsigntemplatedocument',
        format => '',
        read_only => '',
            },
    'fki_ezsigntemplatesigner_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigntemplatesignerID',
        description => 'The unique ID of the Ezsigntemplatesigner',
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
    'i_ezsigntemplatesignature_x' => {
        datatype => 'int',
        base_name => 'iEzsigntemplatesignatureX',
        description => 'The X coordinate (Horizontal) where to put the Ezsigntemplatesignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsigntemplatesignature 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplatesignature_y' => {
        datatype => 'int',
        base_name => 'iEzsigntemplatesignatureY',
        description => 'The Y coordinate (Vertical) where to put the Ezsigntemplatesignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsigntemplatesignature 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplatesignature_step' => {
        datatype => 'int',
        base_name => 'iEzsigntemplatesignatureStep',
        description => 'The step when the Ezsigntemplatesigner will be invited to sign',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplatesignature_type' => {
        datatype => 'FieldEEzsigntemplatesignatureType',
        base_name => 'eEzsigntemplatesignatureType',
        description => '',
        format => '',
        read_only => '',
            },
    't_ezsigntemplatesignature_tooltip' => {
        datatype => 'string',
        base_name => 'tEzsigntemplatesignatureTooltip',
        description => 'A tooltip that will be presented to Ezsigntemplatesigner about the Ezsigntemplatesignature',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplatesignature_tooltipposition' => {
        datatype => 'FieldEEzsigntemplatesignatureTooltipposition',
        base_name => 'eEzsigntemplatesignatureTooltipposition',
        description => '',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplatesignature_font' => {
        datatype => 'FieldEEzsigntemplatesignatureFont',
        base_name => 'eEzsigntemplatesignatureFont',
        description => '',
        format => '',
        read_only => '',
            },
    'b_ezsigntemplatesignature_customdate' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplatesignatureCustomdate',
        description => 'Whether the Ezsigntemplatesignature has a custom date format or not. (Only possible when eEzsigntemplatesignatureType is **Name** or **Handwritten**)',
        format => '',
        read_only => '',
            },
    'a_obj_ezsigntemplatesignaturecustomdate' => {
        datatype => 'ARRAY[EzsigntemplatesignaturecustomdateRequestCompound]',
        base_name => 'a_objEzsigntemplatesignaturecustomdate',
        description => 'An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsigntemplatesignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsigntemplatesignature_id' => 'int',
    'fki_ezsigntemplatedocument_id' => 'int',
    'fki_ezsigntemplatesigner_id' => 'int',
    'i_ezsigntemplatedocumentpage_pagenumber' => 'int',
    'i_ezsigntemplatesignature_x' => 'int',
    'i_ezsigntemplatesignature_y' => 'int',
    'i_ezsigntemplatesignature_step' => 'int',
    'e_ezsigntemplatesignature_type' => 'FieldEEzsigntemplatesignatureType',
    't_ezsigntemplatesignature_tooltip' => 'string',
    'e_ezsigntemplatesignature_tooltipposition' => 'FieldEEzsigntemplatesignatureTooltipposition',
    'e_ezsigntemplatesignature_font' => 'FieldEEzsigntemplatesignatureFont',
    'b_ezsigntemplatesignature_customdate' => 'boolean',
    'a_obj_ezsigntemplatesignaturecustomdate' => 'ARRAY[EzsigntemplatesignaturecustomdateRequestCompound]'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsigntemplatesignature_id' => 'pkiEzsigntemplatesignatureID',
    'fki_ezsigntemplatedocument_id' => 'fkiEzsigntemplatedocumentID',
    'fki_ezsigntemplatesigner_id' => 'fkiEzsigntemplatesignerID',
    'i_ezsigntemplatedocumentpage_pagenumber' => 'iEzsigntemplatedocumentpagePagenumber',
    'i_ezsigntemplatesignature_x' => 'iEzsigntemplatesignatureX',
    'i_ezsigntemplatesignature_y' => 'iEzsigntemplatesignatureY',
    'i_ezsigntemplatesignature_step' => 'iEzsigntemplatesignatureStep',
    'e_ezsigntemplatesignature_type' => 'eEzsigntemplatesignatureType',
    't_ezsigntemplatesignature_tooltip' => 'tEzsigntemplatesignatureTooltip',
    'e_ezsigntemplatesignature_tooltipposition' => 'eEzsigntemplatesignatureTooltipposition',
    'e_ezsigntemplatesignature_font' => 'eEzsigntemplatesignatureFont',
    'b_ezsigntemplatesignature_customdate' => 'bEzsigntemplatesignatureCustomdate',
    'a_obj_ezsigntemplatesignaturecustomdate' => 'a_objEzsigntemplatesignaturecustomdate'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
