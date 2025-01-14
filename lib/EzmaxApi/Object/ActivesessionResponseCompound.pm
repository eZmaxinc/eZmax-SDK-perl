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
package EzmaxApi::Object::ActivesessionResponseCompound;

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

use EzmaxApi::Object::ActivesessionResponseCompoundApikey;
use EzmaxApi::Object::ActivesessionResponseCompoundUser;
use EzmaxApi::Object::FieldEActivesessionEzsign;
use EzmaxApi::Object::FieldEActivesessionEzsignaccess;
use EzmaxApi::Object::FieldEActivesessionEzsignprepaid;
use EzmaxApi::Object::FieldEActivesessionOrigin;
use EzmaxApi::Object::FieldEActivesessionRealestateinprogress;
use EzmaxApi::Object::FieldEActivesessionUsertype;
use EzmaxApi::Object::FieldEActivesessionWeekdaystart;
use EzmaxApi::Object::FieldESystemconfigurationEzsignofficeplan;
use EzmaxApi::Object::FieldEUserEzsignaccess;
use EzmaxApi::Object::FieldEUserEzsignprepaid;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Payload for GET /1/object/activesession/getCurrent
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


__PACKAGE__->class_documentation({description => 'Payload for GET /1/object/activesession/getCurrent',
                                  class => 'ActivesessionResponseCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'e_activesession_usertype' => {
        datatype => 'FieldEActivesessionUsertype',
        base_name => 'eActivesessionUsertype',
        description => '',
        format => '',
        read_only => '',
            },
    'e_activesession_origin' => {
        datatype => 'FieldEActivesessionOrigin',
        base_name => 'eActivesessionOrigin',
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
    'b_activesession_issuperadmin' => {
        datatype => 'boolean',
        base_name => 'bActivesessionIssuperadmin',
        description => 'Whether the active session is superadmin or not',
        format => '',
        read_only => '',
            },
    'b_activesession_attachment' => {
        datatype => 'boolean',
        base_name => 'bActivesessionAttachment',
        description => 'Can access attachment when we clone a user',
        format => '',
        read_only => '',
            },
    'b_activesession_canafe' => {
        datatype => 'boolean',
        base_name => 'bActivesessionCanafe',
        description => 'Can access canafe when we clone a user',
        format => '',
        read_only => '',
            },
    'b_activesession_financial' => {
        datatype => 'boolean',
        base_name => 'bActivesessionFinancial',
        description => 'Can access financial element when we clone a user',
        format => '',
        read_only => '',
            },
    'b_activesession_realestatecompleted' => {
        datatype => 'boolean',
        base_name => 'bActivesessionRealestatecompleted',
        description => 'Can access closed realestate folders when we clone a user',
        format => '',
        read_only => '',
            },
    'e_activesession_ezsign' => {
        datatype => 'FieldEActivesessionEzsign',
        base_name => 'eActivesessionEzsign',
        description => '',
        format => '',
        read_only => '',
            },
    'e_activesession_ezsignaccess' => {
        datatype => 'FieldEActivesessionEzsignaccess',
        base_name => 'eActivesessionEzsignaccess',
        description => '',
        format => '',
        read_only => '',
            },
    'e_activesession_ezsignprepaid' => {
        datatype => 'FieldEActivesessionEzsignprepaid',
        base_name => 'eActivesessionEzsignprepaid',
        description => '',
        format => '',
        read_only => '',
            },
    'e_activesession_realestateinprogress' => {
        datatype => 'FieldEActivesessionRealestateinprogress',
        base_name => 'eActivesessionRealestateinprogress',
        description => '',
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
    'fki_systemconfigurationtype_id' => {
        datatype => 'int',
        base_name => 'fkiSystemconfigurationtypeID',
        description => 'The unique ID of the Systemconfigurationtype',
        format => '',
        read_only => '',
            },
    'fki_signature_id' => {
        datatype => 'int',
        base_name => 'fkiSignatureID',
        description => 'The unique ID of the Signature',
        format => '',
        read_only => '',
            },
    'fki_ezsignuser_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignuserID',
        description => 'The unique ID of the Ezsignuser',
        format => '',
        read_only => '',
            },
    'b_systemconfiguration_ezsignpaidbyoffice' => {
        datatype => 'boolean',
        base_name => 'bSystemconfigurationEzsignpaidbyoffice',
        description => 'Whether if Ezsign is paid by the company or not',
        format => '',
        read_only => '',
            },
    'e_systemconfiguration_ezsignofficeplan' => {
        datatype => 'FieldESystemconfigurationEzsignofficeplan',
        base_name => 'eSystemconfigurationEzsignofficeplan',
        description => '',
        format => '',
        read_only => '',
            },
    'e_user_ezsignaccess' => {
        datatype => 'FieldEUserEzsignaccess',
        base_name => 'eUserEzsignaccess',
        description => '',
        format => '',
        read_only => '',
            },
    'e_user_ezsignprepaid' => {
        datatype => 'FieldEUserEzsignprepaid',
        base_name => 'eUserEzsignprepaid',
        description => '',
        format => '',
        read_only => '',
            },
    'b_user_ezsigntrial' => {
        datatype => 'boolean',
        base_name => 'bUserEzsigntrial',
        description => 'Whether the User&#39;s eZsign subscription is a trial',
        format => '',
        read_only => '',
            },
    'dt_user_ezsignprepaidexpiration' => {
        datatype => 'string',
        base_name => 'dtUserEzsignprepaidexpiration',
        description => 'The eZsign prepaid expiration date',
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
    'e_activesession_usertype' => 'FieldEActivesessionUsertype',
    'e_activesession_origin' => 'FieldEActivesessionOrigin',
    'e_activesession_weekdaystart' => 'FieldEActivesessionWeekdaystart',
    'fki_language_id' => 'int',
    's_company_name_x' => 'string',
    's_department_name_x' => 'string',
    'b_activesession_debug' => 'boolean',
    'b_activesession_issuperadmin' => 'boolean',
    'b_activesession_attachment' => 'boolean',
    'b_activesession_canafe' => 'boolean',
    'b_activesession_financial' => 'boolean',
    'b_activesession_realestatecompleted' => 'boolean',
    'e_activesession_ezsign' => 'FieldEActivesessionEzsign',
    'e_activesession_ezsignaccess' => 'FieldEActivesessionEzsignaccess',
    'e_activesession_ezsignprepaid' => 'FieldEActivesessionEzsignprepaid',
    'e_activesession_realestateinprogress' => 'FieldEActivesessionRealestateinprogress',
    'pks_customer_code' => 'string',
    'fki_systemconfigurationtype_id' => 'int',
    'fki_signature_id' => 'int',
    'fki_ezsignuser_id' => 'int',
    'b_systemconfiguration_ezsignpaidbyoffice' => 'boolean',
    'e_systemconfiguration_ezsignofficeplan' => 'FieldESystemconfigurationEzsignofficeplan',
    'e_user_ezsignaccess' => 'FieldEUserEzsignaccess',
    'e_user_ezsignprepaid' => 'FieldEUserEzsignprepaid',
    'b_user_ezsigntrial' => 'boolean',
    'dt_user_ezsignprepaidexpiration' => 'string',
    'a_pki_permission_id' => 'ARRAY[int]',
    'obj_user_real' => 'ActivesessionResponseCompoundUser',
    'obj_user_cloned' => 'ActivesessionResponseCompoundUser',
    'obj_apikey' => 'ActivesessionResponseCompoundApikey',
    'a_e_module_internalname' => 'ARRAY[string]'
} );

__PACKAGE__->attribute_map( {
    'e_activesession_usertype' => 'eActivesessionUsertype',
    'e_activesession_origin' => 'eActivesessionOrigin',
    'e_activesession_weekdaystart' => 'eActivesessionWeekdaystart',
    'fki_language_id' => 'fkiLanguageID',
    's_company_name_x' => 'sCompanyNameX',
    's_department_name_x' => 'sDepartmentNameX',
    'b_activesession_debug' => 'bActivesessionDebug',
    'b_activesession_issuperadmin' => 'bActivesessionIssuperadmin',
    'b_activesession_attachment' => 'bActivesessionAttachment',
    'b_activesession_canafe' => 'bActivesessionCanafe',
    'b_activesession_financial' => 'bActivesessionFinancial',
    'b_activesession_realestatecompleted' => 'bActivesessionRealestatecompleted',
    'e_activesession_ezsign' => 'eActivesessionEzsign',
    'e_activesession_ezsignaccess' => 'eActivesessionEzsignaccess',
    'e_activesession_ezsignprepaid' => 'eActivesessionEzsignprepaid',
    'e_activesession_realestateinprogress' => 'eActivesessionRealestateinprogress',
    'pks_customer_code' => 'pksCustomerCode',
    'fki_systemconfigurationtype_id' => 'fkiSystemconfigurationtypeID',
    'fki_signature_id' => 'fkiSignatureID',
    'fki_ezsignuser_id' => 'fkiEzsignuserID',
    'b_systemconfiguration_ezsignpaidbyoffice' => 'bSystemconfigurationEzsignpaidbyoffice',
    'e_systemconfiguration_ezsignofficeplan' => 'eSystemconfigurationEzsignofficeplan',
    'e_user_ezsignaccess' => 'eUserEzsignaccess',
    'e_user_ezsignprepaid' => 'eUserEzsignprepaid',
    'b_user_ezsigntrial' => 'bUserEzsigntrial',
    'dt_user_ezsignprepaidexpiration' => 'dtUserEzsignprepaidexpiration',
    'a_pki_permission_id' => 'a_pkiPermissionID',
    'obj_user_real' => 'objUserReal',
    'obj_user_cloned' => 'objUserCloned',
    'obj_apikey' => 'objApikey',
    'a_e_module_internalname' => 'a_eModuleInternalname'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
