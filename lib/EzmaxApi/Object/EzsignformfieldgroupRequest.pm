=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.11
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignformfieldgroupRequest;

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

use EzmaxApi::Object::FieldEEzsignformfieldgroupSignerrequirement;
use EzmaxApi::Object::FieldEEzsignformfieldgroupTooltipposition;
use EzmaxApi::Object::FieldEEzsignformfieldgroupType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignformfieldgroup Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.11
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


__PACKAGE__->class_documentation({description => 'An Ezsignformfieldgroup Object',
                                  class => 'EzsignformfieldgroupRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignformfieldgroup_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignformfieldgroupID',
        description => 'The unique ID of the Ezsignformfieldgroup',
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
    'e_ezsignformfieldgroup_type' => {
        datatype => 'FieldEEzsignformfieldgroupType',
        base_name => 'eEzsignformfieldgroupType',
        description => '',
        format => '',
        read_only => '',
            },
    'e_ezsignformfieldgroup_signerrequirement' => {
        datatype => 'FieldEEzsignformfieldgroupSignerrequirement',
        base_name => 'eEzsignformfieldgroupSignerrequirement',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezsignformfieldgroup_label' => {
        datatype => 'string',
        base_name => 'sEzsignformfieldgroupLabel',
        description => 'The Label for the Ezsignformfieldgroup',
        format => '',
        read_only => '',
            },
    'i_ezsignformfieldgroup_step' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldgroupStep',
        description => 'The step when the Ezsignsigner will be invited to fill the form fields',
        format => '',
        read_only => '',
            },
    's_ezsignformfieldgroup_defaultvalue' => {
        datatype => 'string',
        base_name => 'sEzsignformfieldgroupDefaultvalue',
        description => 'The default value for the Ezsignformfieldgroup',
        format => '',
        read_only => '',
            },
    'i_ezsignformfieldgroup_filledmin' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldgroupFilledmin',
        description => 'The minimum number of Ezsignformfield that must be filled in the Ezsignformfieldgroup',
        format => '',
        read_only => '',
            },
    'i_ezsignformfieldgroup_filledmax' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldgroupFilledmax',
        description => 'The maximum number of Ezsignformfield that must be filled in the Ezsignformfieldgroup',
        format => '',
        read_only => '',
            },
    'b_ezsignformfieldgroup_readonly' => {
        datatype => 'boolean',
        base_name => 'bEzsignformfieldgroupReadonly',
        description => 'Whether the Ezsignformfieldgroup is read only or not.',
        format => '',
        read_only => '',
            },
    'i_ezsignformfieldgroup_maxlength' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldgroupMaxlength',
        description => 'The maximum length for the value in the Ezsignformfieldgroup  This can only be set if eEzsignformfieldgroupType is **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
    'b_ezsignformfieldgroup_encrypted' => {
        datatype => 'boolean',
        base_name => 'bEzsignformfieldgroupEncrypted',
        description => 'Whether the Ezsignformfieldgroup is encrypted in the database or not. Encrypted values are not displayed on the Ezsigndocument. This can only be set if eEzsignformfieldgroupType is **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
    's_ezsignformfieldgroup_regexp' => {
        datatype => 'string',
        base_name => 'sEzsignformfieldgroupRegexp',
        description => 'A regular expression to indicate what values are acceptable for the Ezsignformfieldgroup.  This can only be set if eEzsignformfieldgroupType is **Text** or **Textarea**',
        format => '',
        read_only => '',
            },
    't_ezsignformfieldgroup_tooltip' => {
        datatype => 'string',
        base_name => 'tEzsignformfieldgroupTooltip',
        description => 'A tooltip that will be presented to Ezsignsigner about the Ezsignformfieldgroup',
        format => '',
        read_only => '',
            },
    'e_ezsignformfieldgroup_tooltipposition' => {
        datatype => 'FieldEEzsignformfieldgroupTooltipposition',
        base_name => 'eEzsignformfieldgroupTooltipposition',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignformfieldgroup_id' => 'int',
    'fki_ezsigndocument_id' => 'int',
    'e_ezsignformfieldgroup_type' => 'FieldEEzsignformfieldgroupType',
    'e_ezsignformfieldgroup_signerrequirement' => 'FieldEEzsignformfieldgroupSignerrequirement',
    's_ezsignformfieldgroup_label' => 'string',
    'i_ezsignformfieldgroup_step' => 'int',
    's_ezsignformfieldgroup_defaultvalue' => 'string',
    'i_ezsignformfieldgroup_filledmin' => 'int',
    'i_ezsignformfieldgroup_filledmax' => 'int',
    'b_ezsignformfieldgroup_readonly' => 'boolean',
    'i_ezsignformfieldgroup_maxlength' => 'int',
    'b_ezsignformfieldgroup_encrypted' => 'boolean',
    's_ezsignformfieldgroup_regexp' => 'string',
    't_ezsignformfieldgroup_tooltip' => 'string',
    'e_ezsignformfieldgroup_tooltipposition' => 'FieldEEzsignformfieldgroupTooltipposition'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignformfieldgroup_id' => 'pkiEzsignformfieldgroupID',
    'fki_ezsigndocument_id' => 'fkiEzsigndocumentID',
    'e_ezsignformfieldgroup_type' => 'eEzsignformfieldgroupType',
    'e_ezsignformfieldgroup_signerrequirement' => 'eEzsignformfieldgroupSignerrequirement',
    's_ezsignformfieldgroup_label' => 'sEzsignformfieldgroupLabel',
    'i_ezsignformfieldgroup_step' => 'iEzsignformfieldgroupStep',
    's_ezsignformfieldgroup_defaultvalue' => 'sEzsignformfieldgroupDefaultvalue',
    'i_ezsignformfieldgroup_filledmin' => 'iEzsignformfieldgroupFilledmin',
    'i_ezsignformfieldgroup_filledmax' => 'iEzsignformfieldgroupFilledmax',
    'b_ezsignformfieldgroup_readonly' => 'bEzsignformfieldgroupReadonly',
    'i_ezsignformfieldgroup_maxlength' => 'iEzsignformfieldgroupMaxlength',
    'b_ezsignformfieldgroup_encrypted' => 'bEzsignformfieldgroupEncrypted',
    's_ezsignformfieldgroup_regexp' => 'sEzsignformfieldgroupRegexp',
    't_ezsignformfieldgroup_tooltip' => 'tEzsignformfieldgroupTooltip',
    'e_ezsignformfieldgroup_tooltipposition' => 'eEzsignformfieldgroupTooltipposition'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
