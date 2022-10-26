=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.12
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignbulksendResponseCompound;

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

use EzmaxApi::Object::CommonAudit;
use EzmaxApi::Object::EzsignbulksendResponse;
use EzmaxApi::Object::EzsignbulksendResponseCompoundAllOf;
use EzmaxApi::Object::EzsignbulksenddocumentmappingResponseCompound;
use EzmaxApi::Object::EzsignbulksendsignermappingResponse;
use EzmaxApi::Object::FieldEEzsignfoldertypePrivacylevel;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignbulksend Object and children to create a complete structure
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.12
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


__PACKAGE__->class_documentation({description => 'An Ezsignbulksend Object and children to create a complete structure',
                                  class => 'EzsignbulksendResponseCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignbulksend_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignbulksendID',
        description => 'The unique ID of the Ezsignbulksend',
        format => '',
        read_only => '',
            },
    'fki_ezsignfoldertype_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldertypeID',
        description => 'The unique ID of the Ezsignfoldertype.',
        format => '',
        read_only => '',
            },
    'fki_language_id' => {
        datatype => 'int',
        base_name => 'fkiLanguageID',
        description => 'The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English|',
        format => '',
        read_only => '',
            },
    's_language_name_x' => {
        datatype => 'string',
        base_name => 'sLanguageNameX',
        description => 'The Name of the Language in the language of the requester',
        format => '',
        read_only => '',
            },
    'e_ezsignfoldertype_privacylevel' => {
        datatype => 'FieldEEzsignfoldertypePrivacylevel',
        base_name => 'eEzsignfoldertypePrivacylevel',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezsignfoldertype_name_x' => {
        datatype => 'string',
        base_name => 'sEzsignfoldertypeNameX',
        description => 'The name of the Ezsignfoldertype in the language of the requester',
        format => '',
        read_only => '',
            },
    's_ezsignbulksend_description' => {
        datatype => 'string',
        base_name => 'sEzsignbulksendDescription',
        description => 'The description of the Ezsignbulksend',
        format => '',
        read_only => '',
            },
    't_ezsignbulksend_note' => {
        datatype => 'string',
        base_name => 'tEzsignbulksendNote',
        description => 'Note about the Ezsignbulksend',
        format => '',
        read_only => '',
            },
    'b_ezsignbulksend_needvalidation' => {
        datatype => 'boolean',
        base_name => 'bEzsignbulksendNeedvalidation',
        description => 'Whether the Ezsigntemplatepackage was automatically modified and needs a manual validation',
        format => '',
        read_only => '',
            },
    'b_ezsignbulksend_isactive' => {
        datatype => 'boolean',
        base_name => 'bEzsignbulksendIsactive',
        description => 'Whether the Ezsignbulksend is active or not',
        format => '',
        read_only => '',
            },
    'obj_audit' => {
        datatype => 'CommonAudit',
        base_name => 'objAudit',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezsignbulksenddocumentmapping' => {
        datatype => 'ARRAY[EzsignbulksenddocumentmappingResponseCompound]',
        base_name => 'a_objEzsignbulksenddocumentmapping',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezsignbulksendsignermapping' => {
        datatype => 'ARRAY[EzsignbulksendsignermappingResponse]',
        base_name => 'a_objEzsignbulksendsignermapping',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignbulksend_id' => 'int',
    'fki_ezsignfoldertype_id' => 'int',
    'fki_language_id' => 'int',
    's_language_name_x' => 'string',
    'e_ezsignfoldertype_privacylevel' => 'FieldEEzsignfoldertypePrivacylevel',
    's_ezsignfoldertype_name_x' => 'string',
    's_ezsignbulksend_description' => 'string',
    't_ezsignbulksend_note' => 'string',
    'b_ezsignbulksend_needvalidation' => 'boolean',
    'b_ezsignbulksend_isactive' => 'boolean',
    'obj_audit' => 'CommonAudit',
    'a_obj_ezsignbulksenddocumentmapping' => 'ARRAY[EzsignbulksenddocumentmappingResponseCompound]',
    'a_obj_ezsignbulksendsignermapping' => 'ARRAY[EzsignbulksendsignermappingResponse]'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignbulksend_id' => 'pkiEzsignbulksendID',
    'fki_ezsignfoldertype_id' => 'fkiEzsignfoldertypeID',
    'fki_language_id' => 'fkiLanguageID',
    's_language_name_x' => 'sLanguageNameX',
    'e_ezsignfoldertype_privacylevel' => 'eEzsignfoldertypePrivacylevel',
    's_ezsignfoldertype_name_x' => 'sEzsignfoldertypeNameX',
    's_ezsignbulksend_description' => 'sEzsignbulksendDescription',
    't_ezsignbulksend_note' => 'tEzsignbulksendNote',
    'b_ezsignbulksend_needvalidation' => 'bEzsignbulksendNeedvalidation',
    'b_ezsignbulksend_isactive' => 'bEzsignbulksendIsactive',
    'obj_audit' => 'objAudit',
    'a_obj_ezsignbulksenddocumentmapping' => 'a_objEzsignbulksenddocumentmapping',
    'a_obj_ezsignbulksendsignermapping' => 'a_objEzsignbulksendsignermapping'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
