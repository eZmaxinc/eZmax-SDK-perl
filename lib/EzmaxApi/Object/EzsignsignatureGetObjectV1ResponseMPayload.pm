=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.15
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignsignatureGetObjectV1ResponseMPayload;

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

use EzmaxApi::Object::EzsignsignatureResponseCompound;
use EzmaxApi::Object::EzsignsignaturecustomdateResponseCompound;
use EzmaxApi::Object::FieldEEzsignsignatureAttachmentnamesource;
use EzmaxApi::Object::FieldEEzsignsignatureFont;
use EzmaxApi::Object::FieldEEzsignsignatureTooltipposition;
use EzmaxApi::Object::FieldEEzsignsignatureType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Payload for GET /1/object/ezsignsignature/{pkiEzsignsignatureID}
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.15
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


__PACKAGE__->class_documentation({description => 'Payload for GET /1/object/ezsignsignature/{pkiEzsignsignatureID}',
                                  class => 'EzsignsignatureGetObjectV1ResponseMPayload',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignsignature_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignsignatureID',
        description => 'The unique ID of the Ezsignsignature',
        format => '',
        read_only => '',
            },
    'fki_ezsigndocument_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigndocumentID',
        description => 'The unique ID of the Ezsigndocument',
        format => '',
        read_only => '',
            },
    'fki_ezsignfoldersignerassociation_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldersignerassociationID',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
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
    'i_ezsignsignature_x' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureX',
        description => 'The X coordinate (Horizontal) where to put the Ezsignsignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsignsignature 2 inches from the left border of the page, you would use \&quot;200\&quot; for the X coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_y' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureY',
        description => 'The Y coordinate (Vertical) where to put the Ezsignsignature on the page.  Coordinate is calculated at 100dpi (dot per inch). So for example, if you want to put the Ezsignsignature 3 inches from the top border of the page, you would use \&quot;300\&quot; for the Y coordinate.',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_step' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureStep',
        description => 'The step when the Ezsignsigner will be invited to sign',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_type' => {
        datatype => 'FieldEEzsignsignatureType',
        base_name => 'eEzsignsignatureType',
        description => '',
        format => '',
        read_only => '',
            },
    't_ezsignsignature_tooltip' => {
        datatype => 'string',
        base_name => 'tEzsignsignatureTooltip',
        description => 'A tooltip that will be presented to Ezsignsigner about the Ezsignsignature',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_tooltipposition' => {
        datatype => 'FieldEEzsignsignatureTooltipposition',
        base_name => 'eEzsignsignatureTooltipposition',
        description => '',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_font' => {
        datatype => 'FieldEEzsignsignatureFont',
        base_name => 'eEzsignsignatureFont',
        description => '',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_validationstep' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureValidationstep',
        description => 'The step when the Ezsignsigner will be invited to validate the Ezsignsignature of eEzsignsignatureType Attachments',
        format => '',
        read_only => '',
            },
    's_ezsignsignature_attachmentdescription' => {
        datatype => 'string',
        base_name => 'sEzsignsignatureAttachmentdescription',
        description => 'The description attached to the attachment name added in Ezsignsignature of eEzsignsignatureType Attachments',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_attachmentnamesource' => {
        datatype => 'FieldEEzsignsignatureAttachmentnamesource',
        base_name => 'eEzsignsignatureAttachmentnamesource',
        description => '',
        format => '',
        read_only => '',
            },
    'b_ezsignsignature_required' => {
        datatype => 'boolean',
        base_name => 'bEzsignsignatureRequired',
        description => 'Whether the Ezsignsignature is required or not. This field is relevant only with Ezsignsignature with eEzsignsignatureType &#x3D; Attachments.',
        format => '',
        read_only => '',
            },
    'fki_ezsignfoldersignerassociation_id_validation' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldersignerassociationIDValidation',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        format => '',
        read_only => '',
            },
    'b_ezsignsignature_customdate' => {
        datatype => 'boolean',
        base_name => 'bEzsignsignatureCustomdate',
        description => 'Whether the Ezsignsignature has a custom date format or not. (Only possible when eEzsignsignatureType is **Name** or **Handwritten**)',
        format => '',
        read_only => '',
            },
    'a_obj_ezsignsignaturecustomdate' => {
        datatype => 'ARRAY[EzsignsignaturecustomdateResponseCompound]',
        base_name => 'a_objEzsignsignaturecustomdate',
        description => 'An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsignsignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignsignature_id' => 'int',
    'fki_ezsigndocument_id' => 'int',
    'fki_ezsignfoldersignerassociation_id' => 'int',
    'i_ezsignpage_pagenumber' => 'int',
    'i_ezsignsignature_x' => 'int',
    'i_ezsignsignature_y' => 'int',
    'i_ezsignsignature_step' => 'int',
    'e_ezsignsignature_type' => 'FieldEEzsignsignatureType',
    't_ezsignsignature_tooltip' => 'string',
    'e_ezsignsignature_tooltipposition' => 'FieldEEzsignsignatureTooltipposition',
    'e_ezsignsignature_font' => 'FieldEEzsignsignatureFont',
    'i_ezsignsignature_validationstep' => 'int',
    's_ezsignsignature_attachmentdescription' => 'string',
    'e_ezsignsignature_attachmentnamesource' => 'FieldEEzsignsignatureAttachmentnamesource',
    'b_ezsignsignature_required' => 'boolean',
    'fki_ezsignfoldersignerassociation_id_validation' => 'int',
    'b_ezsignsignature_customdate' => 'boolean',
    'a_obj_ezsignsignaturecustomdate' => 'ARRAY[EzsignsignaturecustomdateResponseCompound]'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignsignature_id' => 'pkiEzsignsignatureID',
    'fki_ezsigndocument_id' => 'fkiEzsigndocumentID',
    'fki_ezsignfoldersignerassociation_id' => 'fkiEzsignfoldersignerassociationID',
    'i_ezsignpage_pagenumber' => 'iEzsignpagePagenumber',
    'i_ezsignsignature_x' => 'iEzsignsignatureX',
    'i_ezsignsignature_y' => 'iEzsignsignatureY',
    'i_ezsignsignature_step' => 'iEzsignsignatureStep',
    'e_ezsignsignature_type' => 'eEzsignsignatureType',
    't_ezsignsignature_tooltip' => 'tEzsignsignatureTooltip',
    'e_ezsignsignature_tooltipposition' => 'eEzsignsignatureTooltipposition',
    'e_ezsignsignature_font' => 'eEzsignsignatureFont',
    'i_ezsignsignature_validationstep' => 'iEzsignsignatureValidationstep',
    's_ezsignsignature_attachmentdescription' => 'sEzsignsignatureAttachmentdescription',
    'e_ezsignsignature_attachmentnamesource' => 'eEzsignsignatureAttachmentnamesource',
    'b_ezsignsignature_required' => 'bEzsignsignatureRequired',
    'fki_ezsignfoldersignerassociation_id_validation' => 'fkiEzsignfoldersignerassociationIDValidation',
    'b_ezsignsignature_customdate' => 'bEzsignsignatureCustomdate',
    'a_obj_ezsignsignaturecustomdate' => 'a_objEzsignsignaturecustomdate'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
