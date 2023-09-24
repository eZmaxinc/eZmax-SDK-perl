=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.0
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsigntemplateformfieldgroupRequestCompound;

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

use EzmaxApi::Object::CustomDropdownElementRequestCompound;
use EzmaxApi::Object::EnumTextvalidation;
use EzmaxApi::Object::EzsigntemplateformfieldRequestCompound;
use EzmaxApi::Object::EzsigntemplateformfieldgroupsignerRequestCompound;
use EzmaxApi::Object::FieldEEzsigntemplateformfieldgroupSignerrequirement;
use EzmaxApi::Object::FieldEEzsigntemplateformfieldgroupTooltipposition;
use EzmaxApi::Object::FieldEEzsigntemplateformfieldgroupType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezsigntemplateformfieldgroup Object and children
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.0
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


__PACKAGE__->class_documentation({description => 'A Ezsigntemplateformfieldgroup Object and children',
                                  class => 'EzsigntemplateformfieldgroupRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsigntemplateformfieldgroup_id' => {
        datatype => 'int',
        base_name => 'pkiEzsigntemplateformfieldgroupID',
        description => 'The unique ID of the Ezsigntemplateformfieldgroup',
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
    'e_ezsigntemplateformfieldgroup_type' => {
        datatype => 'FieldEEzsigntemplateformfieldgroupType',
        base_name => 'eEzsigntemplateformfieldgroupType',
        description => '',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplateformfieldgroup_signerrequirement' => {
        datatype => 'FieldEEzsigntemplateformfieldgroupSignerrequirement',
        base_name => 'eEzsigntemplateformfieldgroupSignerrequirement',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezsigntemplateformfieldgroup_label' => {
        datatype => 'string',
        base_name => 'sEzsigntemplateformfieldgroupLabel',
        description => 'The Label for the Ezsigntemplateformfieldgroup',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfieldgroup_step' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldgroupStep',
        description => 'The step when the Ezsigntemplatesigner will be invited to fill the form fields',
        format => '',
        read_only => '',
            },
    's_ezsigntemplateformfieldgroup_defaultvalue' => {
        datatype => 'string',
        base_name => 'sEzsigntemplateformfieldgroupDefaultvalue',
        description => 'The default value for the Ezsigntemplateformfieldgroup',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfieldgroup_filledmin' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldgroupFilledmin',
        description => 'The minimum number of Ezsigntemplateformfield that must be filled in the Ezsigntemplateformfieldgroup',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfieldgroup_filledmax' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldgroupFilledmax',
        description => 'The maximum number of Ezsigntemplateformfield that must be filled in the Ezsigntemplateformfieldgroup',
        format => '',
        read_only => '',
            },
    'b_ezsigntemplateformfieldgroup_readonly' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplateformfieldgroupReadonly',
        description => 'Whether the Ezsigntemplateformfieldgroup is read only or not.',
        format => '',
        read_only => '',
            },
    'i_ezsigntemplateformfieldgroup_maxlength' => {
        datatype => 'int',
        base_name => 'iEzsigntemplateformfieldgroupMaxlength',
        description => 'The maximum length for the value in the Ezsigntemplateformfieldgroup  This can only be set if eEzsigntemplateformfieldgroupType is **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
    'b_ezsigntemplateformfieldgroup_encrypted' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplateformfieldgroupEncrypted',
        description => 'Whether the Ezsigntemplateformfieldgroup is encrypted in the database or not. Encrypted values are not displayed on the Ezsigndocument. This can only be set if eEzsigntemplateformfieldgroupType is **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
    's_ezsigntemplateformfieldgroup_regexp' => {
        datatype => 'string',
        base_name => 'sEzsigntemplateformfieldgroupRegexp',
        description => 'A regular expression to indicate what values are acceptable for the Ezsigntemplateformfieldgroup.  This can only be set if eEzsigntemplateformfieldgroupType is **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplateformfieldgroup_textvalidation' => {
        datatype => 'EnumTextvalidation',
        base_name => 'eEzsigntemplateformfieldgroupTextvalidation',
        description => '',
        format => '',
        read_only => '',
            },
    't_ezsigntemplateformfieldgroup_tooltip' => {
        datatype => 'string',
        base_name => 'tEzsigntemplateformfieldgroupTooltip',
        description => 'A tooltip that will be presented to Ezsigntemplatesigner about the Ezsigntemplateformfieldgroup',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplateformfieldgroup_tooltipposition' => {
        datatype => 'FieldEEzsigntemplateformfieldgroupTooltipposition',
        base_name => 'eEzsigntemplateformfieldgroupTooltipposition',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezsigntemplateformfieldgroupsigner' => {
        datatype => 'ARRAY[EzsigntemplateformfieldgroupsignerRequestCompound]',
        base_name => 'a_objEzsigntemplateformfieldgroupsigner',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_dropdown_element' => {
        datatype => 'ARRAY[CustomDropdownElementRequestCompound]',
        base_name => 'a_objDropdownElement',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezsigntemplateformfield' => {
        datatype => 'ARRAY[EzsigntemplateformfieldRequestCompound]',
        base_name => 'a_objEzsigntemplateformfield',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsigntemplateformfieldgroup_id' => 'int',
    'fki_ezsigntemplatedocument_id' => 'int',
    'e_ezsigntemplateformfieldgroup_type' => 'FieldEEzsigntemplateformfieldgroupType',
    'e_ezsigntemplateformfieldgroup_signerrequirement' => 'FieldEEzsigntemplateformfieldgroupSignerrequirement',
    's_ezsigntemplateformfieldgroup_label' => 'string',
    'i_ezsigntemplateformfieldgroup_step' => 'int',
    's_ezsigntemplateformfieldgroup_defaultvalue' => 'string',
    'i_ezsigntemplateformfieldgroup_filledmin' => 'int',
    'i_ezsigntemplateformfieldgroup_filledmax' => 'int',
    'b_ezsigntemplateformfieldgroup_readonly' => 'boolean',
    'i_ezsigntemplateformfieldgroup_maxlength' => 'int',
    'b_ezsigntemplateformfieldgroup_encrypted' => 'boolean',
    's_ezsigntemplateformfieldgroup_regexp' => 'string',
    'e_ezsigntemplateformfieldgroup_textvalidation' => 'EnumTextvalidation',
    't_ezsigntemplateformfieldgroup_tooltip' => 'string',
    'e_ezsigntemplateformfieldgroup_tooltipposition' => 'FieldEEzsigntemplateformfieldgroupTooltipposition',
    'a_obj_ezsigntemplateformfieldgroupsigner' => 'ARRAY[EzsigntemplateformfieldgroupsignerRequestCompound]',
    'a_obj_dropdown_element' => 'ARRAY[CustomDropdownElementRequestCompound]',
    'a_obj_ezsigntemplateformfield' => 'ARRAY[EzsigntemplateformfieldRequestCompound]'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsigntemplateformfieldgroup_id' => 'pkiEzsigntemplateformfieldgroupID',
    'fki_ezsigntemplatedocument_id' => 'fkiEzsigntemplatedocumentID',
    'e_ezsigntemplateformfieldgroup_type' => 'eEzsigntemplateformfieldgroupType',
    'e_ezsigntemplateformfieldgroup_signerrequirement' => 'eEzsigntemplateformfieldgroupSignerrequirement',
    's_ezsigntemplateformfieldgroup_label' => 'sEzsigntemplateformfieldgroupLabel',
    'i_ezsigntemplateformfieldgroup_step' => 'iEzsigntemplateformfieldgroupStep',
    's_ezsigntemplateformfieldgroup_defaultvalue' => 'sEzsigntemplateformfieldgroupDefaultvalue',
    'i_ezsigntemplateformfieldgroup_filledmin' => 'iEzsigntemplateformfieldgroupFilledmin',
    'i_ezsigntemplateformfieldgroup_filledmax' => 'iEzsigntemplateformfieldgroupFilledmax',
    'b_ezsigntemplateformfieldgroup_readonly' => 'bEzsigntemplateformfieldgroupReadonly',
    'i_ezsigntemplateformfieldgroup_maxlength' => 'iEzsigntemplateformfieldgroupMaxlength',
    'b_ezsigntemplateformfieldgroup_encrypted' => 'bEzsigntemplateformfieldgroupEncrypted',
    's_ezsigntemplateformfieldgroup_regexp' => 'sEzsigntemplateformfieldgroupRegexp',
    'e_ezsigntemplateformfieldgroup_textvalidation' => 'eEzsigntemplateformfieldgroupTextvalidation',
    't_ezsigntemplateformfieldgroup_tooltip' => 'tEzsigntemplateformfieldgroupTooltip',
    'e_ezsigntemplateformfieldgroup_tooltipposition' => 'eEzsigntemplateformfieldgroupTooltipposition',
    'a_obj_ezsigntemplateformfieldgroupsigner' => 'a_objEzsigntemplateformfieldgroupsigner',
    'a_obj_dropdown_element' => 'a_objDropdownElement',
    'a_obj_ezsigntemplateformfield' => 'a_objEzsigntemplateformfield'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
