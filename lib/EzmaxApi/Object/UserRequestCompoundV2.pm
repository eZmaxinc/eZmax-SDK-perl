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
package EzmaxApi::Object::UserRequestCompoundV2;

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

use EzmaxApi::Object::EmailRequestCompound;
use EzmaxApi::Object::FieldEUserEzsignaccess;
use EzmaxApi::Object::FieldEUserLogintype;
use EzmaxApi::Object::FieldEUserType;
use EzmaxApi::Object::PhoneRequestCompoundV2;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A User Object and children
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


__PACKAGE__->class_documentation({description => 'A User Object and children',
                                  class => 'UserRequestCompoundV2',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_user_id' => {
        datatype => 'int',
        base_name => 'pkiUserID',
        description => 'The unique ID of the User',
        format => '',
        read_only => '',
            },
    'fki_agent_id' => {
        datatype => 'int',
        base_name => 'fkiAgentID',
        description => 'The unique ID of the Agent.',
        format => '',
        read_only => '',
            },
    'fki_broker_id' => {
        datatype => 'int',
        base_name => 'fkiBrokerID',
        description => 'The unique ID of the Broker.',
        format => '',
        read_only => '',
            },
    'fki_assistant_id' => {
        datatype => 'int',
        base_name => 'fkiAssistantID',
        description => 'The unique ID of the Assistant.',
        format => '',
        read_only => '',
            },
    'fki_employee_id' => {
        datatype => 'int',
        base_name => 'fkiEmployeeID',
        description => 'The unique ID of the Employee.',
        format => '',
        read_only => '',
            },
    'fki_company_id_default' => {
        datatype => 'int',
        base_name => 'fkiCompanyIDDefault',
        description => 'The unique ID of the Company',
        format => '',
        read_only => '',
            },
    'fki_department_id_default' => {
        datatype => 'int',
        base_name => 'fkiDepartmentIDDefault',
        description => 'The unique ID of the Department',
        format => '',
        read_only => '',
            },
    'fki_timezone_id' => {
        datatype => 'int',
        base_name => 'fkiTimezoneID',
        description => 'The unique ID of the Timezone',
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
    'obj_email' => {
        datatype => 'EmailRequestCompound',
        base_name => 'objEmail',
        description => '',
        format => '',
        read_only => '',
            },
    'fki_billingentityinternal_id' => {
        datatype => 'int',
        base_name => 'fkiBillingentityinternalID',
        description => 'The unique ID of the Billingentityinternal.',
        format => '',
        read_only => '',
            },
    'obj_phone_home' => {
        datatype => 'PhoneRequestCompoundV2',
        base_name => 'objPhoneHome',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_phone_sms' => {
        datatype => 'PhoneRequestCompoundV2',
        base_name => 'objPhoneSMS',
        description => '',
        format => '',
        read_only => '',
            },
    'fki_secretquestion_id' => {
        datatype => 'int',
        base_name => 'fkiSecretquestionID',
        description => 'The unique ID of the Secretquestion.  Valid values:  |Value|Description| |-|-| |1|The name of the hospital in which you were born| |2|The name of your grade school| |3|The last name of your favorite teacher| |4|Your favorite sports team| |5|Your favorite TV show| |6|Your favorite movie| |7|The name of the street on which you grew up| |8|The name of your first employer| |9|Your first car| |10|Your favorite food| |11|The name of your first pet| |12|Favorite musician/band| |13|What instrument you play| |14|Your father&#39;s middle name| |15|Your mother&#39;s maiden name| |16|Name of your eldest child| |17|Your spouse&#39;s middle name| |18|Favorite restaurant| |19|Childhood nickname| |20|Favorite vacation destination| |21|Your boat&#39;s name| |22|Date of Birth (YYYY-MM-DD)| |22|Secret Code| |22|Your reference code|',
        format => '',
        read_only => '',
            },
    's_user_secretresponse' => {
        datatype => 'string',
        base_name => 'sUserSecretresponse',
        description => 'The answer to the Secretquestion',
        format => '',
        read_only => '',
            },
    'fki_module_id_form' => {
        datatype => 'int',
        base_name => 'fkiModuleIDForm',
        description => 'The unique ID of the Module',
        format => '',
        read_only => '',
            },
    'e_user_type' => {
        datatype => 'FieldEUserType',
        base_name => 'eUserType',
        description => '',
        format => '',
        read_only => '',
            },
    'e_user_logintype' => {
        datatype => 'FieldEUserLogintype',
        base_name => 'eUserLogintype',
        description => '',
        format => '',
        read_only => '',
            },
    's_user_firstname' => {
        datatype => 'string',
        base_name => 'sUserFirstname',
        description => 'The first name of the user',
        format => '',
        read_only => '',
            },
    's_user_lastname' => {
        datatype => 'string',
        base_name => 'sUserLastname',
        description => 'The last name of the user',
        format => '',
        read_only => '',
            },
    's_user_loginname' => {
        datatype => 'string',
        base_name => 'sUserLoginname',
        description => 'The login name of the User.',
        format => '',
        read_only => '',
            },
    's_user_jobtitle' => {
        datatype => 'string',
        base_name => 'sUserJobtitle',
        description => 'The job title of the user',
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
    'b_user_isactive' => {
        datatype => 'boolean',
        base_name => 'bUserIsactive',
        description => 'Whether the User is active or not',
        format => '',
        read_only => '',
            },
    'b_user_validatebyadministration' => {
        datatype => 'boolean',
        base_name => 'bUserValidatebyadministration',
        description => 'Whether if the transactions in which the User is implicated must be validated by administrative personnel or not',
        format => '',
        read_only => '',
            },
    'b_user_validatebydirector' => {
        datatype => 'boolean',
        base_name => 'bUserValidatebydirector',
        description => 'Whether if the transactions in which the User is implicated must be validated by a director or not',
        format => '',
        read_only => '',
            },
    'b_user_attachmentautoverified' => {
        datatype => 'boolean',
        base_name => 'bUserAttachmentautoverified',
        description => 'Whether if Attachments uploaded by the User must be validated or not',
        format => '',
        read_only => '',
            },
    'b_user_changepassword' => {
        datatype => 'boolean',
        base_name => 'bUserChangepassword',
        description => 'Whether if the User is forced to change its password',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_user_id' => 'int',
    'fki_agent_id' => 'int',
    'fki_broker_id' => 'int',
    'fki_assistant_id' => 'int',
    'fki_employee_id' => 'int',
    'fki_company_id_default' => 'int',
    'fki_department_id_default' => 'int',
    'fki_timezone_id' => 'int',
    'fki_language_id' => 'int',
    'obj_email' => 'EmailRequestCompound',
    'fki_billingentityinternal_id' => 'int',
    'obj_phone_home' => 'PhoneRequestCompoundV2',
    'obj_phone_sms' => 'PhoneRequestCompoundV2',
    'fki_secretquestion_id' => 'int',
    's_user_secretresponse' => 'string',
    'fki_module_id_form' => 'int',
    'e_user_type' => 'FieldEUserType',
    'e_user_logintype' => 'FieldEUserLogintype',
    's_user_firstname' => 'string',
    's_user_lastname' => 'string',
    's_user_loginname' => 'string',
    's_user_jobtitle' => 'string',
    'e_user_ezsignaccess' => 'FieldEUserEzsignaccess',
    'b_user_isactive' => 'boolean',
    'b_user_validatebyadministration' => 'boolean',
    'b_user_validatebydirector' => 'boolean',
    'b_user_attachmentautoverified' => 'boolean',
    'b_user_changepassword' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'pki_user_id' => 'pkiUserID',
    'fki_agent_id' => 'fkiAgentID',
    'fki_broker_id' => 'fkiBrokerID',
    'fki_assistant_id' => 'fkiAssistantID',
    'fki_employee_id' => 'fkiEmployeeID',
    'fki_company_id_default' => 'fkiCompanyIDDefault',
    'fki_department_id_default' => 'fkiDepartmentIDDefault',
    'fki_timezone_id' => 'fkiTimezoneID',
    'fki_language_id' => 'fkiLanguageID',
    'obj_email' => 'objEmail',
    'fki_billingentityinternal_id' => 'fkiBillingentityinternalID',
    'obj_phone_home' => 'objPhoneHome',
    'obj_phone_sms' => 'objPhoneSMS',
    'fki_secretquestion_id' => 'fkiSecretquestionID',
    's_user_secretresponse' => 'sUserSecretresponse',
    'fki_module_id_form' => 'fkiModuleIDForm',
    'e_user_type' => 'eUserType',
    'e_user_logintype' => 'eUserLogintype',
    's_user_firstname' => 'sUserFirstname',
    's_user_lastname' => 'sUserLastname',
    's_user_loginname' => 'sUserLoginname',
    's_user_jobtitle' => 'sUserJobtitle',
    'e_user_ezsignaccess' => 'eUserEzsignaccess',
    'b_user_isactive' => 'bUserIsactive',
    'b_user_validatebyadministration' => 'bUserValidatebyadministration',
    'b_user_validatebydirector' => 'bUserValidatebydirector',
    'b_user_attachmentautoverified' => 'bUserAttachmentautoverified',
    'b_user_changepassword' => 'bUserChangepassword'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
