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
package EzmaxApi::Object::EzsignfoldertypeResponse;

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

use EzmaxApi::Object::FieldEEzsignfoldertypeCompletion;
use EzmaxApi::Object::FieldEEzsignfoldertypeDisposal;
use EzmaxApi::Object::FieldEEzsignfoldertypePrivacylevel;
use EzmaxApi::Object::FieldEEzsignfoldertypeSendreminderfrequency;
use EzmaxApi::Object::MultilingualEzsignfoldertypeName;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezsignfoldertype Object
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


__PACKAGE__->class_documentation({description => 'A Ezsignfoldertype Object',
                                  class => 'EzsignfoldertypeResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignfoldertype_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignfoldertypeID',
        description => 'The unique ID of the Ezsignfoldertype.',
        format => '',
        read_only => '',
            },
    'obj_ezsignfoldertype_name' => {
        datatype => 'MultilingualEzsignfoldertypeName',
        base_name => 'objEzsignfoldertypeName',
        description => '',
        format => '',
        read_only => '',
            },
    'fki_branding_id' => {
        datatype => 'int',
        base_name => 'fkiBrandingID',
        description => 'The unique ID of the Branding',
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
    'fki_usergroup_id' => {
        datatype => 'int',
        base_name => 'fkiUsergroupID',
        description => 'The unique ID of the Usergroup',
        format => '',
        read_only => '',
            },
    'fki_usergroup_id_restricted' => {
        datatype => 'int',
        base_name => 'fkiUsergroupIDRestricted',
        description => 'The unique ID of the Usergroup',
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
    's_branding_description_x' => {
        datatype => 'string',
        base_name => 'sBrandingDescriptionX',
        description => 'The Description of the Branding in the language of the requester',
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
    's_ezsigntsarequirement_description_x' => {
        datatype => 'string',
        base_name => 'sEzsigntsarequirementDescriptionX',
        description => 'The description of the Ezsigntsarequirement in the language of the requester',
        format => '',
        read_only => '',
            },
    's_email_address_signed' => {
        datatype => 'string',
        base_name => 'sEmailAddressSigned',
        description => 'The email address.',
        format => '',
        read_only => '',
            },
    's_email_address_summary' => {
        datatype => 'string',
        base_name => 'sEmailAddressSummary',
        description => 'The email address.',
        format => '',
        read_only => '',
            },
    's_usergroup_name_x' => {
        datatype => 'string',
        base_name => 'sUsergroupNameX',
        description => 'The Name of the Usergroup in the language of the requester',
        format => '',
        read_only => '',
            },
    's_usergroup_name_x_restricted' => {
        datatype => 'string',
        base_name => 'sUsergroupNameXRestricted',
        description => 'The Name of the Usergroup in the language of the requester',
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
    'e_ezsignfoldertype_sendreminderfrequency' => {
        datatype => 'FieldEEzsignfoldertypeSendreminderfrequency',
        base_name => 'eEzsignfoldertypeSendreminderfrequency',
        description => '',
        format => '',
        read_only => '',
            },
    'i_ezsignfoldertype_archivaldays' => {
        datatype => 'int',
        base_name => 'iEzsignfoldertypeArchivaldays',
        description => 'The number of days before the archival of Ezsignfolders created using this Ezsignfoldertype',
        format => '',
        read_only => '',
            },
    'e_ezsignfoldertype_disposal' => {
        datatype => 'FieldEEzsignfoldertypeDisposal',
        base_name => 'eEzsignfoldertypeDisposal',
        description => '',
        format => '',
        read_only => '',
            },
    'e_ezsignfoldertype_completion' => {
        datatype => 'FieldEEzsignfoldertypeCompletion',
        base_name => 'eEzsignfoldertypeCompletion',
        description => '',
        format => '',
        read_only => '',
            },
    'i_ezsignfoldertype_disposaldays' => {
        datatype => 'int',
        base_name => 'iEzsignfoldertypeDisposaldays',
        description => 'The number of days after the archival before the disposal of the Ezsignfolder',
        format => '',
        read_only => '',
            },
    'i_ezsignfoldertype_deadlinedays' => {
        datatype => 'int',
        base_name => 'iEzsignfoldertypeDeadlinedays',
        description => 'The number of days to get all Ezsignsignatures',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_delegate' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeDelegate',
        description => 'Wheter if delegation of signature is allowed to another user or not',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_reassign' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeReassign',
        description => 'Wheter if Reassignment of signature is allowed to another signatory or not',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_reassignezsignsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeReassignezsignsigner',
        description => 'Wheter if Reassignment of signature is allowed by a signatory to another signatory or not',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_reassignuser' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeReassignuser',
        description => 'Wheter if Reassignment of signature is allowed by a user to a signatory or another user or not',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendattatchmentsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendattatchmentsigner',
        description => 'THIS FIELD WILL BE DELETED. Whether we send the Ezsigndocument and the proof as attachment in the email',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtoezsignsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtoezsignsigner',
        description => 'Whether we send an email to Ezsignsigner  when document is completed',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtouser' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtouser',
        description => 'Whether we send an email to User who signed when document is completed',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendattachmentezsignsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendattachmentezsignsigner',
        description => 'Whether we send the Ezsigndocument in the email to Ezsignsigner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendproofezsignsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendproofezsignsigner',
        description => 'Whether we send the proof in the email to Ezsignsigner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendattachmentuser' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendattachmentuser',
        description => 'Whether we send the Ezsigndocument in the email to User',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendproofuser' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendproofuser',
        description => 'Whether we send the proof in the email to User',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendproofemail' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendproofemail',
        description => 'Whether we send the proof in the email to external recipient',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_allowdownloadattachmentezsignsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeAllowdownloadattachmentezsignsigner',
        description => 'Whether we allow the Ezsigndocument to be downloaded by an Ezsignsigner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_allowdownloadproofezsignsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeAllowdownloadproofezsignsigner',
        description => 'Whether we allow the proof to be downloaded by an Ezsignsigner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendproofreceivealldocument' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendproofreceivealldocument',
        description => 'Whether we send the proof to user and Ezsignsigner who receive all documents.',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtodocumentowner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtodocumentowner',
        description => 'Whether we send the signed Ezsigndocument to the Ezsigndocument&#39;s owner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtofolderowner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtofolderowner',
        description => 'Whether we send the signed Ezsigndocument to the Ezsignfolder&#39;s owner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtofullgroup' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtofullgroup',
        description => 'Whether we send the signed Ezsigndocument to the Usergroup that has acces to all Ezsignfolders',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtolimitedgroup' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtolimitedgroup',
        description => 'THIS FIELD WILL BE DELETED. Whether we send the signed Ezsigndocument to the Usergroup that has acces to only their own Ezsignfolders',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsignedtocolleague' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsignedtocolleague',
        description => 'Whether we send the signed Ezsigndocument to the colleagues',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsummarytodocumentowner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsummarytodocumentowner',
        description => 'Whether we send the summary to the Ezsigndocument&#39;s owner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsummarytofolderowner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsummarytofolderowner',
        description => 'Whether we send the summary to the Ezsignfolder&#39;s owner',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsummarytofullgroup' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsummarytofullgroup',
        description => 'Whether we send the summary to the Usergroup that has acces to all Ezsignfolders',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsummarytolimitedgroup' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsummarytolimitedgroup',
        description => 'Whether we send the summary to the Usergroup that has acces to only their own Ezsignfolders',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_sendsummarytocolleague' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeSendsummarytocolleague',
        description => 'Whether we send the summary to the colleagues',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_includeproofsigner' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeIncludeproofsigner',
        description => 'THIS FIELD WILL BE DELETED. Whether we include the proof with the signed Ezsigndocument for Ezsignsigners',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_includeproofuser' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeIncludeproofuser',
        description => 'Whether we include the proof with the signed Ezsigndocument for users',
        format => '',
        read_only => '',
            },
    'b_ezsignfoldertype_isactive' => {
        datatype => 'boolean',
        base_name => 'bEzsignfoldertypeIsactive',
        description => 'Whether the Ezsignfoldertype is active or not',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignfoldertype_id' => 'int',
    'obj_ezsignfoldertype_name' => 'MultilingualEzsignfoldertypeName',
    'fki_branding_id' => 'int',
    'fki_billingentityinternal_id' => 'int',
    'fki_usergroup_id' => 'int',
    'fki_usergroup_id_restricted' => 'int',
    'fki_ezsigntsarequirement_id' => 'int',
    's_branding_description_x' => 'string',
    's_billingentityinternal_description_x' => 'string',
    's_ezsigntsarequirement_description_x' => 'string',
    's_email_address_signed' => 'string',
    's_email_address_summary' => 'string',
    's_usergroup_name_x' => 'string',
    's_usergroup_name_x_restricted' => 'string',
    'e_ezsignfoldertype_privacylevel' => 'FieldEEzsignfoldertypePrivacylevel',
    'e_ezsignfoldertype_sendreminderfrequency' => 'FieldEEzsignfoldertypeSendreminderfrequency',
    'i_ezsignfoldertype_archivaldays' => 'int',
    'e_ezsignfoldertype_disposal' => 'FieldEEzsignfoldertypeDisposal',
    'e_ezsignfoldertype_completion' => 'FieldEEzsignfoldertypeCompletion',
    'i_ezsignfoldertype_disposaldays' => 'int',
    'i_ezsignfoldertype_deadlinedays' => 'int',
    'b_ezsignfoldertype_delegate' => 'boolean',
    'b_ezsignfoldertype_reassign' => 'boolean',
    'b_ezsignfoldertype_reassignezsignsigner' => 'boolean',
    'b_ezsignfoldertype_reassignuser' => 'boolean',
    'b_ezsignfoldertype_sendattatchmentsigner' => 'boolean',
    'b_ezsignfoldertype_sendsignedtoezsignsigner' => 'boolean',
    'b_ezsignfoldertype_sendsignedtouser' => 'boolean',
    'b_ezsignfoldertype_sendattachmentezsignsigner' => 'boolean',
    'b_ezsignfoldertype_sendproofezsignsigner' => 'boolean',
    'b_ezsignfoldertype_sendattachmentuser' => 'boolean',
    'b_ezsignfoldertype_sendproofuser' => 'boolean',
    'b_ezsignfoldertype_sendproofemail' => 'boolean',
    'b_ezsignfoldertype_allowdownloadattachmentezsignsigner' => 'boolean',
    'b_ezsignfoldertype_allowdownloadproofezsignsigner' => 'boolean',
    'b_ezsignfoldertype_sendproofreceivealldocument' => 'boolean',
    'b_ezsignfoldertype_sendsignedtodocumentowner' => 'boolean',
    'b_ezsignfoldertype_sendsignedtofolderowner' => 'boolean',
    'b_ezsignfoldertype_sendsignedtofullgroup' => 'boolean',
    'b_ezsignfoldertype_sendsignedtolimitedgroup' => 'boolean',
    'b_ezsignfoldertype_sendsignedtocolleague' => 'boolean',
    'b_ezsignfoldertype_sendsummarytodocumentowner' => 'boolean',
    'b_ezsignfoldertype_sendsummarytofolderowner' => 'boolean',
    'b_ezsignfoldertype_sendsummarytofullgroup' => 'boolean',
    'b_ezsignfoldertype_sendsummarytolimitedgroup' => 'boolean',
    'b_ezsignfoldertype_sendsummarytocolleague' => 'boolean',
    'b_ezsignfoldertype_includeproofsigner' => 'boolean',
    'b_ezsignfoldertype_includeproofuser' => 'boolean',
    'b_ezsignfoldertype_isactive' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignfoldertype_id' => 'pkiEzsignfoldertypeID',
    'obj_ezsignfoldertype_name' => 'objEzsignfoldertypeName',
    'fki_branding_id' => 'fkiBrandingID',
    'fki_billingentityinternal_id' => 'fkiBillingentityinternalID',
    'fki_usergroup_id' => 'fkiUsergroupID',
    'fki_usergroup_id_restricted' => 'fkiUsergroupIDRestricted',
    'fki_ezsigntsarequirement_id' => 'fkiEzsigntsarequirementID',
    's_branding_description_x' => 'sBrandingDescriptionX',
    's_billingentityinternal_description_x' => 'sBillingentityinternalDescriptionX',
    's_ezsigntsarequirement_description_x' => 'sEzsigntsarequirementDescriptionX',
    's_email_address_signed' => 'sEmailAddressSigned',
    's_email_address_summary' => 'sEmailAddressSummary',
    's_usergroup_name_x' => 'sUsergroupNameX',
    's_usergroup_name_x_restricted' => 'sUsergroupNameXRestricted',
    'e_ezsignfoldertype_privacylevel' => 'eEzsignfoldertypePrivacylevel',
    'e_ezsignfoldertype_sendreminderfrequency' => 'eEzsignfoldertypeSendreminderfrequency',
    'i_ezsignfoldertype_archivaldays' => 'iEzsignfoldertypeArchivaldays',
    'e_ezsignfoldertype_disposal' => 'eEzsignfoldertypeDisposal',
    'e_ezsignfoldertype_completion' => 'eEzsignfoldertypeCompletion',
    'i_ezsignfoldertype_disposaldays' => 'iEzsignfoldertypeDisposaldays',
    'i_ezsignfoldertype_deadlinedays' => 'iEzsignfoldertypeDeadlinedays',
    'b_ezsignfoldertype_delegate' => 'bEzsignfoldertypeDelegate',
    'b_ezsignfoldertype_reassign' => 'bEzsignfoldertypeReassign',
    'b_ezsignfoldertype_reassignezsignsigner' => 'bEzsignfoldertypeReassignezsignsigner',
    'b_ezsignfoldertype_reassignuser' => 'bEzsignfoldertypeReassignuser',
    'b_ezsignfoldertype_sendattatchmentsigner' => 'bEzsignfoldertypeSendattatchmentsigner',
    'b_ezsignfoldertype_sendsignedtoezsignsigner' => 'bEzsignfoldertypeSendsignedtoezsignsigner',
    'b_ezsignfoldertype_sendsignedtouser' => 'bEzsignfoldertypeSendsignedtouser',
    'b_ezsignfoldertype_sendattachmentezsignsigner' => 'bEzsignfoldertypeSendattachmentezsignsigner',
    'b_ezsignfoldertype_sendproofezsignsigner' => 'bEzsignfoldertypeSendproofezsignsigner',
    'b_ezsignfoldertype_sendattachmentuser' => 'bEzsignfoldertypeSendattachmentuser',
    'b_ezsignfoldertype_sendproofuser' => 'bEzsignfoldertypeSendproofuser',
    'b_ezsignfoldertype_sendproofemail' => 'bEzsignfoldertypeSendproofemail',
    'b_ezsignfoldertype_allowdownloadattachmentezsignsigner' => 'bEzsignfoldertypeAllowdownloadattachmentezsignsigner',
    'b_ezsignfoldertype_allowdownloadproofezsignsigner' => 'bEzsignfoldertypeAllowdownloadproofezsignsigner',
    'b_ezsignfoldertype_sendproofreceivealldocument' => 'bEzsignfoldertypeSendproofreceivealldocument',
    'b_ezsignfoldertype_sendsignedtodocumentowner' => 'bEzsignfoldertypeSendsignedtodocumentowner',
    'b_ezsignfoldertype_sendsignedtofolderowner' => 'bEzsignfoldertypeSendsignedtofolderowner',
    'b_ezsignfoldertype_sendsignedtofullgroup' => 'bEzsignfoldertypeSendsignedtofullgroup',
    'b_ezsignfoldertype_sendsignedtolimitedgroup' => 'bEzsignfoldertypeSendsignedtolimitedgroup',
    'b_ezsignfoldertype_sendsignedtocolleague' => 'bEzsignfoldertypeSendsignedtocolleague',
    'b_ezsignfoldertype_sendsummarytodocumentowner' => 'bEzsignfoldertypeSendsummarytodocumentowner',
    'b_ezsignfoldertype_sendsummarytofolderowner' => 'bEzsignfoldertypeSendsummarytofolderowner',
    'b_ezsignfoldertype_sendsummarytofullgroup' => 'bEzsignfoldertypeSendsummarytofullgroup',
    'b_ezsignfoldertype_sendsummarytolimitedgroup' => 'bEzsignfoldertypeSendsummarytolimitedgroup',
    'b_ezsignfoldertype_sendsummarytocolleague' => 'bEzsignfoldertypeSendsummarytocolleague',
    'b_ezsignfoldertype_includeproofsigner' => 'bEzsignfoldertypeIncludeproofsigner',
    'b_ezsignfoldertype_includeproofuser' => 'bEzsignfoldertypeIncludeproofuser',
    'b_ezsignfoldertype_isactive' => 'bEzsignfoldertypeIsactive'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
