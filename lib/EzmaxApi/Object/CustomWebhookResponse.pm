=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.18
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::CustomWebhookResponse;

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

use EzmaxApi::Object::FieldEWebhookEzsignevent;
use EzmaxApi::Object::FieldEWebhookManagementevent;
use EzmaxApi::Object::FieldEWebhookModule;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A custom Webhook object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.18
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


__PACKAGE__->class_documentation({description => 'A custom Webhook object',
                                  class => 'CustomWebhookResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pks_customer_code' => {
        datatype => 'string',
        base_name => 'pksCustomerCode',
        description => 'The customer code assigned to your account',
        format => '',
        read_only => '',
            },
    'b_webhook_test' => {
        datatype => 'boolean',
        base_name => 'bWebhookTest',
        description => 'Wheter the webhook received is a manual test or a real event',
        format => '',
        read_only => '',
            },
    'pki_webhook_id' => {
        datatype => 'int',
        base_name => 'pkiWebhookID',
        description => 'The unique ID of the Webhook',
        format => '',
        read_only => '',
            },
    's_webhook_description' => {
        datatype => 'string',
        base_name => 'sWebhookDescription',
        description => 'The description of the Webhook',
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
    'e_webhook_module' => {
        datatype => 'FieldEWebhookModule',
        base_name => 'eWebhookModule',
        description => '',
        format => '',
        read_only => '',
            },
    'e_webhook_ezsignevent' => {
        datatype => 'FieldEWebhookEzsignevent',
        base_name => 'eWebhookEzsignevent',
        description => '',
        format => '',
        read_only => '',
            },
    'e_webhook_managementevent' => {
        datatype => 'FieldEWebhookManagementevent',
        base_name => 'eWebhookManagementevent',
        description => '',
        format => '',
        read_only => '',
            },
    's_webhook_url' => {
        datatype => 'string',
        base_name => 'sWebhookUrl',
        description => 'The URL of the Webhook callback',
        format => '',
        read_only => '',
            },
    's_webhook_emailfailed' => {
        datatype => 'string',
        base_name => 'sWebhookEmailfailed',
        description => 'The email that will receive the Webhook in case all attempts fail',
        format => '',
        read_only => '',
            },
    'b_webhook_isactive' => {
        datatype => 'boolean',
        base_name => 'bWebhookIsactive',
        description => 'Whether the Webhook is active or not',
        format => '',
        read_only => '',
            },
    'b_webhook_skipsslvalidation' => {
        datatype => 'boolean',
        base_name => 'bWebhookSkipsslvalidation',
        description => 'Wheter the server&#39;s SSL certificate should be validated or not. Not recommended to skip for production use',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pks_customer_code' => 'string',
    'b_webhook_test' => 'boolean',
    'pki_webhook_id' => 'int',
    's_webhook_description' => 'string',
    'fki_ezsignfoldertype_id' => 'int',
    's_ezsignfoldertype_name_x' => 'string',
    'e_webhook_module' => 'FieldEWebhookModule',
    'e_webhook_ezsignevent' => 'FieldEWebhookEzsignevent',
    'e_webhook_managementevent' => 'FieldEWebhookManagementevent',
    's_webhook_url' => 'string',
    's_webhook_emailfailed' => 'string',
    'b_webhook_isactive' => 'boolean',
    'b_webhook_skipsslvalidation' => 'boolean'
} );

__PACKAGE__->attribute_map( {
    'pks_customer_code' => 'pksCustomerCode',
    'b_webhook_test' => 'bWebhookTest',
    'pki_webhook_id' => 'pkiWebhookID',
    's_webhook_description' => 'sWebhookDescription',
    'fki_ezsignfoldertype_id' => 'fkiEzsignfoldertypeID',
    's_ezsignfoldertype_name_x' => 'sEzsignfoldertypeNameX',
    'e_webhook_module' => 'eWebhookModule',
    'e_webhook_ezsignevent' => 'eWebhookEzsignevent',
    'e_webhook_managementevent' => 'eWebhookManagementevent',
    's_webhook_url' => 'sWebhookUrl',
    's_webhook_emailfailed' => 'sWebhookEmailfailed',
    'b_webhook_isactive' => 'bWebhookIsactive',
    'b_webhook_skipsslvalidation' => 'bWebhookSkipsslvalidation'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
