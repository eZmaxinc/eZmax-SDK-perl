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
package EzmaxApi::Object::CommunicationRequestCompound;

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

use EzmaxApi::Object::CommunicationexternalrecipientRequestCompound;
use EzmaxApi::Object::CommunicationrecipientRequestCompound;
use EzmaxApi::Object::CommunicationreferenceRequestCompound;
use EzmaxApi::Object::CustomCommunicationattachmentRequest;
use EzmaxApi::Object::CustomCommunicationsenderRequest;
use EzmaxApi::Object::FieldECommunicationImportance;
use EzmaxApi::Object::FieldECommunicationType;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Request for POST /1/object/communication
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


__PACKAGE__->class_documentation({description => 'Request for POST /1/object/communication',
                                  class => 'CommunicationRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_communication_id' => {
        datatype => 'int',
        base_name => 'pkiCommunicationID',
        description => 'The unique ID of the Communication.',
        format => '',
        read_only => '',
            },
    'e_communication_importance' => {
        datatype => 'FieldECommunicationImportance',
        base_name => 'eCommunicationImportance',
        description => '',
        format => '',
        read_only => '',
            },
    'e_communication_type' => {
        datatype => 'FieldECommunicationType',
        base_name => 'eCommunicationType',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_communicationsender' => {
        datatype => 'CustomCommunicationsenderRequest',
        base_name => 'objCommunicationsender',
        description => '',
        format => '',
        read_only => '',
            },
    's_communication_subject' => {
        datatype => 'string',
        base_name => 'sCommunicationSubject',
        description => 'The subject of the Communication',
        format => '',
        read_only => '',
            },
    't_communication_body' => {
        datatype => 'string',
        base_name => 'tCommunicationBody',
        description => 'The Body of the Communication',
        format => '',
        read_only => '',
            },
    'b_communication_private' => {
        datatype => 'boolean',
        base_name => 'bCommunicationPrivate',
        description => 'Whether the Communication is private or not',
        format => '',
        read_only => '',
            },
    'e_communication_attachmenttype' => {
        datatype => 'string',
        base_name => 'eCommunicationAttachmenttype',
        description => 'How the attachment should be included in the email.   Only used if eCommunicationType is **Email**',
        format => '',
        read_only => '',
            },
    'i_communication_attachmentlinkexpiration' => {
        datatype => 'int',
        base_name => 'iCommunicationAttachmentlinkexpiration',
        description => 'The number of days before the attachment link expired.   Only used if eCommunicationType is **Email** and eCommunicationattachmentType is **Link**',
        format => '',
        read_only => '',
            },
    'b_communication_readreceipt' => {
        datatype => 'boolean',
        base_name => 'bCommunicationReadreceipt',
        description => 'Whether we ask for a read receipt or not.',
        format => '',
        read_only => '',
            },
    'a_obj_communicationattachment' => {
        datatype => 'ARRAY[CustomCommunicationattachmentRequest]',
        base_name => 'a_objCommunicationattachment',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_communicationrecipient' => {
        datatype => 'ARRAY[CommunicationrecipientRequestCompound]',
        base_name => 'a_objCommunicationrecipient',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_communicationreference' => {
        datatype => 'ARRAY[CommunicationreferenceRequestCompound]',
        base_name => 'a_objCommunicationreference',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_communicationexternalrecipient' => {
        datatype => 'ARRAY[CommunicationexternalrecipientRequestCompound]',
        base_name => 'a_objCommunicationexternalrecipient',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_communication_id' => 'int',
    'e_communication_importance' => 'FieldECommunicationImportance',
    'e_communication_type' => 'FieldECommunicationType',
    'obj_communicationsender' => 'CustomCommunicationsenderRequest',
    's_communication_subject' => 'string',
    't_communication_body' => 'string',
    'b_communication_private' => 'boolean',
    'e_communication_attachmenttype' => 'string',
    'i_communication_attachmentlinkexpiration' => 'int',
    'b_communication_readreceipt' => 'boolean',
    'a_obj_communicationattachment' => 'ARRAY[CustomCommunicationattachmentRequest]',
    'a_obj_communicationrecipient' => 'ARRAY[CommunicationrecipientRequestCompound]',
    'a_obj_communicationreference' => 'ARRAY[CommunicationreferenceRequestCompound]',
    'a_obj_communicationexternalrecipient' => 'ARRAY[CommunicationexternalrecipientRequestCompound]'
} );

__PACKAGE__->attribute_map( {
    'pki_communication_id' => 'pkiCommunicationID',
    'e_communication_importance' => 'eCommunicationImportance',
    'e_communication_type' => 'eCommunicationType',
    'obj_communicationsender' => 'objCommunicationsender',
    's_communication_subject' => 'sCommunicationSubject',
    't_communication_body' => 'tCommunicationBody',
    'b_communication_private' => 'bCommunicationPrivate',
    'e_communication_attachmenttype' => 'eCommunicationAttachmenttype',
    'i_communication_attachmentlinkexpiration' => 'iCommunicationAttachmentlinkexpiration',
    'b_communication_readreceipt' => 'bCommunicationReadreceipt',
    'a_obj_communicationattachment' => 'a_objCommunicationattachment',
    'a_obj_communicationrecipient' => 'a_objCommunicationrecipient',
    'a_obj_communicationreference' => 'a_objCommunicationreference',
    'a_obj_communicationexternalrecipient' => 'a_objCommunicationexternalrecipient'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
