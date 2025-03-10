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
package EzmaxApi::Object::ContactinformationsResponse;

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

use EzmaxApi::Object::AddressResponseCompound;
use EzmaxApi::Object::EmailResponseCompound;
use EzmaxApi::Object::FieldEContactinformationsType;
use EzmaxApi::Object::PhoneResponseCompound;
use EzmaxApi::Object::WebsiteResponseCompound;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Contactinformations Object
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


__PACKAGE__->class_documentation({description => 'A Contactinformations Object',
                                  class => 'ContactinformationsResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_contactinformations_id' => {
        datatype => 'int',
        base_name => 'pkiContactinformationsID',
        description => 'The unique ID of the Contactinformations',
        format => '',
        read_only => '',
            },
    'fki_address_id_default' => {
        datatype => 'int',
        base_name => 'fkiAddressIDDefault',
        description => 'The unique ID of the Address',
        format => '',
        read_only => '',
            },
    'fki_phone_id_default' => {
        datatype => 'int',
        base_name => 'fkiPhoneIDDefault',
        description => 'The unique ID of the Phone.',
        format => '',
        read_only => '',
            },
    'fki_email_id_default' => {
        datatype => 'int',
        base_name => 'fkiEmailIDDefault',
        description => 'The unique ID of the Email',
        format => '',
        read_only => '',
            },
    'fki_website_id_default' => {
        datatype => 'int',
        base_name => 'fkiWebsiteIDDefault',
        description => 'The unique ID of the Website Default',
        format => '',
        read_only => '',
            },
    'e_contactinformations_type' => {
        datatype => 'FieldEContactinformationsType',
        base_name => 'eContactinformationsType',
        description => '',
        format => '',
        read_only => '',
            },
    's_contactinformations_url' => {
        datatype => 'string',
        base_name => 'sContactinformationsUrl',
        description => 'The url of the Contactinformations',
        format => '',
        read_only => '',
            },
    'obj_address_default' => {
        datatype => 'AddressResponseCompound',
        base_name => 'objAddressDefault',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_phone_default' => {
        datatype => 'PhoneResponseCompound',
        base_name => 'objPhoneDefault',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_email_default' => {
        datatype => 'EmailResponseCompound',
        base_name => 'objEmailDefault',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_website_default' => {
        datatype => 'WebsiteResponseCompound',
        base_name => 'objWebsiteDefault',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_contactinformations_id' => 'int',
    'fki_address_id_default' => 'int',
    'fki_phone_id_default' => 'int',
    'fki_email_id_default' => 'int',
    'fki_website_id_default' => 'int',
    'e_contactinformations_type' => 'FieldEContactinformationsType',
    's_contactinformations_url' => 'string',
    'obj_address_default' => 'AddressResponseCompound',
    'obj_phone_default' => 'PhoneResponseCompound',
    'obj_email_default' => 'EmailResponseCompound',
    'obj_website_default' => 'WebsiteResponseCompound'
} );

__PACKAGE__->attribute_map( {
    'pki_contactinformations_id' => 'pkiContactinformationsID',
    'fki_address_id_default' => 'fkiAddressIDDefault',
    'fki_phone_id_default' => 'fkiPhoneIDDefault',
    'fki_email_id_default' => 'fkiEmailIDDefault',
    'fki_website_id_default' => 'fkiWebsiteIDDefault',
    'e_contactinformations_type' => 'eContactinformationsType',
    's_contactinformations_url' => 'sContactinformationsUrl',
    'obj_address_default' => 'objAddressDefault',
    'obj_phone_default' => 'objPhoneDefault',
    'obj_email_default' => 'objEmailDefault',
    'obj_website_default' => 'objWebsiteDefault'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
