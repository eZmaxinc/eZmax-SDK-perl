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
package EzmaxApi::Object::ActivesessionGetCurrentV1ResponseMPayload;

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

use EzmaxApi::Object::ActivesessionResponseCompound;
use EzmaxApi::Object::ActivesessionResponseCompoundApikey;
use EzmaxApi::Object::ActivesessionResponseCompoundUser;
use EzmaxApi::Object::FieldEActivesessionSessiontype;
use EzmaxApi::Object::FieldEActivesessionWeekdaystart;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Payload for the /1/object/activesession/getCurrent API Request
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


__PACKAGE__->class_documentation({description => 'Payload for the /1/object/activesession/getCurrent API Request',
                                  class => 'ActivesessionGetCurrentV1ResponseMPayload',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'e_activesession_sessiontype' => {
        datatype => 'FieldEActivesessionSessiontype',
        base_name => 'eActivesessionSessiontype',
        description => '',
        format => '',
        read_only => '',
            },
    'e_activesession_weekdaystart' => {
        datatype => 'FieldEActivesessionWeekdaystart',
        base_name => 'eActivesessionWeekdaystart',
        description => '',
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
    's_company_name_x' => {
        datatype => 'string',
        base_name => 'sCompanyNameX',
        description => 'The Name of the Company in the language of the requester',
        format => '',
        read_only => '',
            },
    's_department_name_x' => {
        datatype => 'string',
        base_name => 'sDepartmentNameX',
        description => 'The Name of the Department in the language of the requester',
        format => '',
        read_only => '',
            },
    'b_activesession_debug' => {
        datatype => 'boolean',
        base_name => 'bActivesessionDebug',
        description => 'Whether the active session is in debug or not',
        format => '',
        read_only => '',
            },
    'pks_customer_code' => {
        datatype => 'string',
        base_name => 'pksCustomerCode',
        description => 'The customer code assigned to your account',
        format => '',
        read_only => '',
            },
    'a_pki_permission_id' => {
        datatype => 'ARRAY[int]',
        base_name => 'a_pkiPermissionID',
        description => 'An array of permissions granted to the user or api key',
        format => '',
        read_only => '',
            },
    'obj_user_real' => {
        datatype => 'ActivesessionResponseCompoundUser',
        base_name => 'objUserReal',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_user_cloned' => {
        datatype => 'ActivesessionResponseCompoundUser',
        base_name => 'objUserCloned',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_apikey' => {
        datatype => 'ActivesessionResponseCompoundApikey',
        base_name => 'objApikey',
        description => '',
        format => '',
        read_only => '',
            },
    'a_e_module_internalname' => {
        datatype => 'ARRAY[string]',
        base_name => 'a_eModuleInternalname',
        description => 'An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'e_activesession_sessiontype' => 'FieldEActivesessionSessiontype',
    'e_activesession_weekdaystart' => 'FieldEActivesessionWeekdaystart',
    'fki_language_id' => 'int',
    's_company_name_x' => 'string',
    's_department_name_x' => 'string',
    'b_activesession_debug' => 'boolean',
    'pks_customer_code' => 'string',
    'a_pki_permission_id' => 'ARRAY[int]',
    'obj_user_real' => 'ActivesessionResponseCompoundUser',
    'obj_user_cloned' => 'ActivesessionResponseCompoundUser',
    'obj_apikey' => 'ActivesessionResponseCompoundApikey',
    'a_e_module_internalname' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'e_activesession_sessiontype' => 'eActivesessionSessiontype',
    'e_activesession_weekdaystart' => 'eActivesessionWeekdaystart',
    'fki_language_id' => 'fkiLanguageID',
    's_company_name_x' => 'sCompanyNameX',
    's_department_name_x' => 'sDepartmentNameX',
    'b_activesession_debug' => 'bActivesessionDebug',
    'pks_customer_code' => 'pksCustomerCode',
    'a_pki_permission_id' => 'a_pkiPermissionID',
    'obj_user_real' => 'objUserReal',
    'obj_user_cloned' => 'objUserCloned',
    'obj_apikey' => 'objApikey',
    'a_e_module_internalname' => 'a_eModuleInternalname'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
