=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.2
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignsignatureRequestCompound;

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

use EzmaxApi::Object::EnumTextvalidation;
use EzmaxApi::Object::EzsignelementdependencyRequestCompound;
use EzmaxApi::Object::EzsignsignaturecustomdateRequestCompound;
use EzmaxApi::Object::FieldEEzsignsignatureAttachmentnamesource;
use EzmaxApi::Object::FieldEEzsignsignatureConsultationtrigger;
use EzmaxApi::Object::FieldEEzsignsignatureDependencyrequirement;
use EzmaxApi::Object::FieldEEzsignsignatureFont;
use EzmaxApi::Object::FieldEEzsignsignatureTooltipposition;
use EzmaxApi::Object::FieldEEzsignsignatureType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignsignature Object and children to create a complete structure
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.2
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


__PACKAGE__->class_documentation({description => 'An Ezsignsignature Object and children to create a complete structure',
                                  class => 'EzsignsignatureRequestCompound',
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
    'fki_ezsignfoldersignerassociation_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldersignerassociationID',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        format => '',
        read_only => '',
            },
    'fki_paymentgateway_id' => {
        datatype => 'int',
        base_name => 'fkiPaymentgatewayID',
        description => 'The unique ID of the Paymentgateway',
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
    'i_ezsignsignature_width' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureWidth',
        description => 'The width of the Ezsignsignature.  Size is calculated at 100dpi (dot per inch). So for example, if you want the Ezsignsignature to have a width of 2 inches, you would use \&quot;200\&quot; for the iEzsignsignatureWidth.',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_height' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureHeight',
        description => 'The height of the Ezsignsignature.  Size is calculated at 100dpi (dot per inch). So for example, if you want the Ezsignsignature to have an height of 2 inches, you would use \&quot;200\&quot; for the iEzsignsignatureHeight.',
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
    'fki_ezsigndocument_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigndocumentID',
        description => 'The unique ID of the Ezsigndocument',
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
    'fki_ezsignfoldersignerassociation_id_validation' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldersignerassociationIDValidation',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
        format => '',
        read_only => '',
            },
    'b_ezsignsignature_handwritten' => {
        datatype => 'boolean',
        base_name => 'bEzsignsignatureHandwritten',
        description => 'Whether the Ezsignsignature must be handwritten or not when eEzsignsignatureType &#x3D; Signature.',
        format => '',
        read_only => '',
            },
    'b_ezsignsignature_reason' => {
        datatype => 'boolean',
        base_name => 'bEzsignsignatureReason',
        description => 'Whether the Ezsignsignature must include a reason or not when eEzsignsignatureType &#x3D; Signature.',
        format => '',
        read_only => '',
            },
    'b_ezsignsignature_required' => {
        datatype => 'boolean',
        base_name => 'bEzsignsignatureRequired',
        description => 'Whether the Ezsignsignature is required or not. This field is relevant only with Ezsignsignature with eEzsignsignatureType &#x3D; Attachments, Text or Textarea.',
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
    's_ezsignsignature_attachmentdescription' => {
        datatype => 'string',
        base_name => 'sEzsignsignatureAttachmentdescription',
        description => 'The description attached to the attachment name added in Ezsignsignature of eEzsignsignatureType Attachments',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_consultationtrigger' => {
        datatype => 'FieldEEzsignsignatureConsultationtrigger',
        base_name => 'eEzsignsignatureConsultationtrigger',
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
    'i_ezsignsignature_maxlength' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureMaxlength',
        description => 'The maximum length for the value in the Ezsignsignature  This can only be set if eEzsignsignatureType is **FieldText** or **FieldTextarea**',
        format => '',
        read_only => '',
            },
    's_ezsignsignature_defaultvalue' => {
        datatype => 'string',
        base_name => 'sEzsignsignatureDefaultvalue',
        description => 'The default value for the Ezsignsignature  You can use the codes below and they will be replaced at signature time.    | Code | Description | Example | | ------------------------- | ------------ | ------------ | | {sUserFirstname} | The first name of the contact | John | | {sUserLastname} | The last name of the contact | Doe | | {sUserJobtitle} | The job title | Sales Representative | | {sCompany} | Company name | eZmax Solutions Inc. | | {sEmailAddress} | The email address | email@example.com | | {sPhoneE164} | A phone number in E.164 Format | +15149901516 | | {sPhoneE164Cell} | A phone number in E.164 Format | +15149901516 |',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_textvalidation' => {
        datatype => 'EnumTextvalidation',
        base_name => 'eEzsignsignatureTextvalidation',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezsignsignature_textvalidationcustommessage' => {
        datatype => 'string',
        base_name => 'sEzsignsignatureTextvalidationcustommessage',
        description => 'Description of validation rule. Show by signatory.',
        format => '',
        read_only => '',
            },
    's_ezsignsignature_regexp' => {
        datatype => 'string',
        base_name => 'sEzsignsignatureRegexp',
        description => 'A regular expression to indicate what values are acceptable for the Ezsignsignature.  This can only be set if eEzsignsignatureType is **FieldText** or **FieldTextarea** and eEzsignsignatureTextvalidation is **Custom**',
        format => '',
        read_only => '',
            },
    'e_ezsignsignature_dependencyrequirement' => {
        datatype => 'FieldEEzsignsignatureDependencyrequirement',
        base_name => 'eEzsignsignatureDependencyrequirement',
        description => '',
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
        datatype => 'ARRAY[EzsignsignaturecustomdateRequestCompound]',
        base_name => 'a_objEzsignsignaturecustomdate',
        description => 'An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsignsignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all.',
        format => '',
        read_only => '',
            },
    'a_obj_ezsignelementdependency' => {
        datatype => 'ARRAY[EzsignelementdependencyRequestCompound]',
        base_name => 'a_objEzsignelementdependency',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignsignature_id' => 'int',
    'fki_ezsignfoldersignerassociation_id' => 'int',
    'fki_paymentgateway_id' => 'int',
    'i_ezsignpage_pagenumber' => 'int',
    'i_ezsignsignature_x' => 'int',
    'i_ezsignsignature_y' => 'int',
    'i_ezsignsignature_width' => 'int',
    'i_ezsignsignature_height' => 'int',
    'i_ezsignsignature_step' => 'int',
    'e_ezsignsignature_type' => 'FieldEEzsignsignatureType',
    'fki_ezsigndocument_id' => 'int',
    't_ezsignsignature_tooltip' => 'string',
    'e_ezsignsignature_tooltipposition' => 'FieldEEzsignsignatureTooltipposition',
    'e_ezsignsignature_font' => 'FieldEEzsignsignatureFont',
    'fki_ezsignfoldersignerassociation_id_validation' => 'int',
    'b_ezsignsignature_handwritten' => 'boolean',
    'b_ezsignsignature_reason' => 'boolean',
    'b_ezsignsignature_required' => 'boolean',
    'e_ezsignsignature_attachmentnamesource' => 'FieldEEzsignsignatureAttachmentnamesource',
    's_ezsignsignature_attachmentdescription' => 'string',
    'e_ezsignsignature_consultationtrigger' => 'FieldEEzsignsignatureConsultationtrigger',
    'i_ezsignsignature_validationstep' => 'int',
    'i_ezsignsignature_maxlength' => 'int',
    's_ezsignsignature_defaultvalue' => 'string',
    'e_ezsignsignature_textvalidation' => 'EnumTextvalidation',
    's_ezsignsignature_textvalidationcustommessage' => 'string',
    's_ezsignsignature_regexp' => 'string',
    'e_ezsignsignature_dependencyrequirement' => 'FieldEEzsignsignatureDependencyrequirement',
    'b_ezsignsignature_customdate' => 'boolean',
    'a_obj_ezsignsignaturecustomdate' => 'ARRAY[EzsignsignaturecustomdateRequestCompound]',
    'a_obj_ezsignelementdependency' => 'ARRAY[EzsignelementdependencyRequestCompound]'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignsignature_id' => 'pkiEzsignsignatureID',
    'fki_ezsignfoldersignerassociation_id' => 'fkiEzsignfoldersignerassociationID',
    'fki_paymentgateway_id' => 'fkiPaymentgatewayID',
    'i_ezsignpage_pagenumber' => 'iEzsignpagePagenumber',
    'i_ezsignsignature_x' => 'iEzsignsignatureX',
    'i_ezsignsignature_y' => 'iEzsignsignatureY',
    'i_ezsignsignature_width' => 'iEzsignsignatureWidth',
    'i_ezsignsignature_height' => 'iEzsignsignatureHeight',
    'i_ezsignsignature_step' => 'iEzsignsignatureStep',
    'e_ezsignsignature_type' => 'eEzsignsignatureType',
    'fki_ezsigndocument_id' => 'fkiEzsigndocumentID',
    't_ezsignsignature_tooltip' => 'tEzsignsignatureTooltip',
    'e_ezsignsignature_tooltipposition' => 'eEzsignsignatureTooltipposition',
    'e_ezsignsignature_font' => 'eEzsignsignatureFont',
    'fki_ezsignfoldersignerassociation_id_validation' => 'fkiEzsignfoldersignerassociationIDValidation',
    'b_ezsignsignature_handwritten' => 'bEzsignsignatureHandwritten',
    'b_ezsignsignature_reason' => 'bEzsignsignatureReason',
    'b_ezsignsignature_required' => 'bEzsignsignatureRequired',
    'e_ezsignsignature_attachmentnamesource' => 'eEzsignsignatureAttachmentnamesource',
    's_ezsignsignature_attachmentdescription' => 'sEzsignsignatureAttachmentdescription',
    'e_ezsignsignature_consultationtrigger' => 'eEzsignsignatureConsultationtrigger',
    'i_ezsignsignature_validationstep' => 'iEzsignsignatureValidationstep',
    'i_ezsignsignature_maxlength' => 'iEzsignsignatureMaxlength',
    's_ezsignsignature_defaultvalue' => 'sEzsignsignatureDefaultvalue',
    'e_ezsignsignature_textvalidation' => 'eEzsignsignatureTextvalidation',
    's_ezsignsignature_textvalidationcustommessage' => 'sEzsignsignatureTextvalidationcustommessage',
    's_ezsignsignature_regexp' => 'sEzsignsignatureRegexp',
    'e_ezsignsignature_dependencyrequirement' => 'eEzsignsignatureDependencyrequirement',
    'b_ezsignsignature_customdate' => 'bEzsignsignatureCustomdate',
    'a_obj_ezsignsignaturecustomdate' => 'a_objEzsignsignaturecustomdate',
    'a_obj_ezsignelementdependency' => 'a_objEzsignelementdependency'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
