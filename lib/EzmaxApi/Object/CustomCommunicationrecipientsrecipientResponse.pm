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
package EzmaxApi::Object::CustomCommunicationrecipientsrecipientResponse;

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

use EzmaxApi::Object::CustomContactNameResponse;
use EzmaxApi::Object::EmailResponseCompound;
use EzmaxApi::Object::PhoneResponseCompound;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Generic AutocompleteElement Response
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


__PACKAGE__->class_documentation({description => 'Generic AutocompleteElement Response',
                                  class => 'CustomCommunicationrecipientsrecipientResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
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
    'fki_contact_id' => {
        datatype => 'int',
        base_name => 'fkiContactID',
        description => 'The unique ID of the Contact',
        format => '',
        read_only => '',
            },
    'fki_customer_id' => {
        datatype => 'int',
        base_name => 'fkiCustomerID',
        description => 'The unique ID of the Customer.',
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
    'fki_ezsignsigner_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignsignerID',
        description => 'The unique ID of the Ezsignsigner',
        format => '',
        read_only => '',
            },
    'fki_franchiseoffice_id' => {
        datatype => 'int',
        base_name => 'fkiFranchiseofficeID',
        description => 'The unique ID of the Franchisereoffice',
        format => '',
        read_only => '',
            },
    'fki_user_id' => {
        datatype => 'int',
        base_name => 'fkiUserID',
        description => 'The unique ID of the User',
        format => '',
        read_only => '',
            },
    'fki_agentincorporation_id' => {
        datatype => 'int',
        base_name => 'fkiAgentincorporationID',
        description => 'The unique ID of the Agentincorporation.',
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
    'fki_externalbroker_id' => {
        datatype => 'int',
        base_name => 'fkiExternalbrokerID',
        description => 'The unique ID of the Externalbroker.',
        format => '',
        read_only => '',
            },
    'fki_ezcomagent_id' => {
        datatype => 'int',
        base_name => 'fkiEzcomagentID',
        description => 'The unique ID of the Ezcomagent.',
        format => '',
        read_only => '',
            },
    'fki_notary_id' => {
        datatype => 'int',
        base_name => 'fkiNotaryID',
        description => 'The unique ID of the Notary.',
        format => '',
        read_only => '',
            },
    'fki_rewardmember_id' => {
        datatype => 'int',
        base_name => 'fkiRewardmemberID',
        description => 'The unique ID of the Rewardmember.',
        format => '',
        read_only => '',
            },
    'fki_supplier_id' => {
        datatype => 'int',
        base_name => 'fkiSupplierID',
        description => 'The unique ID of the Supplier.',
        format => '',
        read_only => '',
            },
    'e_communicationrecipientsrecipient_objecttype' => {
        datatype => 'string',
        base_name => 'eCommunicationrecipientsrecipientObjecttype',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_contact_name' => {
        datatype => 'CustomContactNameResponse',
        base_name => 'objContactName',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_email' => {
        datatype => 'EmailResponseCompound',
        base_name => 'objEmail',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_phone_fax' => {
        datatype => 'PhoneResponseCompound',
        base_name => 'objPhoneFax',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_phone_sms' => {
        datatype => 'PhoneResponseCompound',
        base_name => 'objPhoneSMS',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'fki_agent_id' => 'int',
    'fki_broker_id' => 'int',
    'fki_contact_id' => 'int',
    'fki_customer_id' => 'int',
    'fki_employee_id' => 'int',
    'fki_ezsignsigner_id' => 'int',
    'fki_franchiseoffice_id' => 'int',
    'fki_user_id' => 'int',
    'fki_agentincorporation_id' => 'int',
    'fki_assistant_id' => 'int',
    'fki_externalbroker_id' => 'int',
    'fki_ezcomagent_id' => 'int',
    'fki_notary_id' => 'int',
    'fki_rewardmember_id' => 'int',
    'fki_supplier_id' => 'int',
    'e_communicationrecipientsrecipient_objecttype' => 'string',
    'obj_contact_name' => 'CustomContactNameResponse',
    'obj_email' => 'EmailResponseCompound',
    'obj_phone_fax' => 'PhoneResponseCompound',
    'obj_phone_sms' => 'PhoneResponseCompound'
} );

__PACKAGE__->attribute_map( {
    'fki_agent_id' => 'fkiAgentID',
    'fki_broker_id' => 'fkiBrokerID',
    'fki_contact_id' => 'fkiContactID',
    'fki_customer_id' => 'fkiCustomerID',
    'fki_employee_id' => 'fkiEmployeeID',
    'fki_ezsignsigner_id' => 'fkiEzsignsignerID',
    'fki_franchiseoffice_id' => 'fkiFranchiseofficeID',
    'fki_user_id' => 'fkiUserID',
    'fki_agentincorporation_id' => 'fkiAgentincorporationID',
    'fki_assistant_id' => 'fkiAssistantID',
    'fki_externalbroker_id' => 'fkiExternalbrokerID',
    'fki_ezcomagent_id' => 'fkiEzcomagentID',
    'fki_notary_id' => 'fkiNotaryID',
    'fki_rewardmember_id' => 'fkiRewardmemberID',
    'fki_supplier_id' => 'fkiSupplierID',
    'e_communicationrecipientsrecipient_objecttype' => 'eCommunicationrecipientsrecipientObjecttype',
    'obj_contact_name' => 'objContactName',
    'obj_email' => 'objEmail',
    'obj_phone_fax' => 'objPhoneFax',
    'obj_phone_sms' => 'objPhoneSMS'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
