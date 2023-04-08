=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.17
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignfolderResponse;

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
use EzmaxApi::Object::FieldEEzsignfolderSendreminderfrequency;
use EzmaxApi::Object::FieldEEzsignfolderStep;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignfolder Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.17
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


__PACKAGE__->class_documentation({description => 'An Ezsignfolder Object',
                                  class => 'EzsignfolderResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignfolder_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignfolderID',
        description => 'The unique ID of the Ezsignfolder',
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
    's_ezsignfoldertype_name_x' => {
        datatype => 'string',
        base_name => 'sEzsignfoldertypeNameX',
        description => 'The name of the Ezsignfoldertype in the language of the requester',
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
    's_billingentityinternal_description_x' => {
        datatype => 'string',
        base_name => 'sBillingentityinternalDescriptionX',
        description => 'The description of the Billingentityinternal in the language of the requester',
        format => '',
        read_only => '',
            },
    'fki_ezsigntsarequirement_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigntsarequirementID',
        description => 'The unique ID of the Ezsigntsarequirement.  Determine if a Time Stamping Authority should add a timestamp on each of the signature. Valid values:  |Value|Description| |-|-| |1|No. TSA Timestamping will requested. This will make all signatures a lot faster since no round-trip to the TSA server will be required. Timestamping will be made using eZsign server&#39;s time.| |2|Best effort. Timestamping from a Time Stamping Authority will be requested but is not mandatory. In the very improbable case it cannot be completed, the timestamping will be made using eZsign server&#39;s time. **Additional fee applies**| |3|Mandatory. Timestamping from a Time Stamping Authority will be requested and is mandatory. In the very improbable case it cannot be completed, the signature will fail and the user will be asked to retry. **Additional fee applies**|',
        format => '',
        read_only => '',
            },
    's_ezsigntsarequirement_description_x' => {
        datatype => 'string',
        base_name => 'sEzsigntsarequirementDescriptionX',
        description => 'The description of the Ezsigntsarequirement in the language of the requester',
        format => '',
        read_only => '',
            },
    's_ezsignfolder_description' => {
        datatype => 'string',
        base_name => 'sEzsignfolderDescription',
        description => 'The description of the Ezsignfolder',
        format => '',
        read_only => '',
            },
    't_ezsignfolder_note' => {
        datatype => 'string',
        base_name => 'tEzsignfolderNote',
        description => 'Note about the Ezsignfolder',
        format => '',
        read_only => '',
            },
    'b_ezsignfolder_isdisposable' => {
        datatype => 'boolean',
        base_name => 'bEzsignfolderIsdisposable',
        description => 'If the Ezsigndocument can be disposed',
        format => '',
        read_only => '',
            },
    'e_ezsignfolder_sendreminderfrequency' => {
        datatype => 'FieldEEzsignfolderSendreminderfrequency',
        base_name => 'eEzsignfolderSendreminderfrequency',
        description => '',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_delayedsenddate' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderDelayedsenddate',
        description => 'The date and time at which the Ezsignfolder will be sent in the future.',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_duedate' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderDuedate',
        description => 'The maximum date and time at which the Ezsignfolder can be signed.',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_sentdate' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderSentdate',
        description => 'The date and time at which the Ezsignfolder was sent the last time.',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_scheduledarchive' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderScheduledarchive',
        description => 'The scheduled date and time at which the Ezsignfolder should be archived.',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_scheduleddispose' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderScheduleddispose',
        description => 'The scheduled date at which the Ezsignfolder should be Disposed.',
        format => '',
        read_only => '',
            },
    'e_ezsignfolder_step' => {
        datatype => 'FieldEEzsignfolderStep',
        base_name => 'eEzsignfolderStep',
        description => '',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_close' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderClose',
        description => 'The date and time at which the Ezsignfolder was closed. Either by applying the last signature or by completing it prematurely.',
        format => '',
        read_only => '',
            },
    't_ezsignfolder_message' => {
        datatype => 'string',
        base_name => 'tEzsignfolderMessage',
        description => 'A custom text message that will be added to the email sent.',
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
    's_ezsignfolder_externalid' => {
        datatype => 'string',
        base_name => 'sEzsignfolderExternalid',
        description => 'This field can be used to store an External ID from the client&#39;s system.  Anything can be stored in this field, it will never be evaluated by the eZmax system and will be returned AS-IS.  To store multiple values, consider using a JSON formatted structure, a URL encoded string, a CSV or any other custom format. ',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignfolder_id' => 'int',
    'fki_ezsignfoldertype_id' => 'int',
    's_ezsignfoldertype_name_x' => 'string',
    'fki_billingentityinternal_id' => 'int',
    's_billingentityinternal_description_x' => 'string',
    'fki_ezsigntsarequirement_id' => 'int',
    's_ezsigntsarequirement_description_x' => 'string',
    's_ezsignfolder_description' => 'string',
    't_ezsignfolder_note' => 'string',
    'b_ezsignfolder_isdisposable' => 'boolean',
    'e_ezsignfolder_sendreminderfrequency' => 'FieldEEzsignfolderSendreminderfrequency',
    'dt_ezsignfolder_delayedsenddate' => 'string',
    'dt_ezsignfolder_duedate' => 'string',
    'dt_ezsignfolder_sentdate' => 'string',
    'dt_ezsignfolder_scheduledarchive' => 'string',
    'dt_ezsignfolder_scheduleddispose' => 'string',
    'e_ezsignfolder_step' => 'FieldEEzsignfolderStep',
    'dt_ezsignfolder_close' => 'string',
    't_ezsignfolder_message' => 'string',
    'obj_audit' => 'CommonAudit',
    's_ezsignfolder_externalid' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignfolder_id' => 'pkiEzsignfolderID',
    'fki_ezsignfoldertype_id' => 'fkiEzsignfoldertypeID',
    's_ezsignfoldertype_name_x' => 'sEzsignfoldertypeNameX',
    'fki_billingentityinternal_id' => 'fkiBillingentityinternalID',
    's_billingentityinternal_description_x' => 'sBillingentityinternalDescriptionX',
    'fki_ezsigntsarequirement_id' => 'fkiEzsigntsarequirementID',
    's_ezsigntsarequirement_description_x' => 'sEzsigntsarequirementDescriptionX',
    's_ezsignfolder_description' => 'sEzsignfolderDescription',
    't_ezsignfolder_note' => 'tEzsignfolderNote',
    'b_ezsignfolder_isdisposable' => 'bEzsignfolderIsdisposable',
    'e_ezsignfolder_sendreminderfrequency' => 'eEzsignfolderSendreminderfrequency',
    'dt_ezsignfolder_delayedsenddate' => 'dtEzsignfolderDelayedsenddate',
    'dt_ezsignfolder_duedate' => 'dtEzsignfolderDuedate',
    'dt_ezsignfolder_sentdate' => 'dtEzsignfolderSentdate',
    'dt_ezsignfolder_scheduledarchive' => 'dtEzsignfolderScheduledarchive',
    'dt_ezsignfolder_scheduleddispose' => 'dtEzsignfolderScheduleddispose',
    'e_ezsignfolder_step' => 'eEzsignfolderStep',
    'dt_ezsignfolder_close' => 'dtEzsignfolderClose',
    't_ezsignfolder_message' => 'tEzsignfolderMessage',
    'obj_audit' => 'objAudit',
    's_ezsignfolder_externalid' => 'sEzsignfolderExternalid'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
