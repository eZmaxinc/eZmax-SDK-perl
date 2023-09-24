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
package EzmaxApi::Object::CustomNotificationtestgetnotificationtestsResponse;

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

use EzmaxApi::Object::FieldENotificationpreferenceStatus;
use EzmaxApi::Object::MultilingualNotificationtestName;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Notificationtest Object in the context of getNotificationtests
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


__PACKAGE__->class_documentation({description => 'A Notificationtest Object in the context of getNotificationtests',
                                  class => 'CustomNotificationtestgetnotificationtestsResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_notificationtest_id' => {
        datatype => 'int',
        base_name => 'pkiNotificationtestID',
        description => 'The unique ID of the Notificationtest',
        format => '',
        read_only => '',
            },
    'obj_notificationtest_name' => {
        datatype => 'MultilingualNotificationtestName',
        base_name => 'objNotificationtestName',
        description => '',
        format => '',
        read_only => '',
            },
    'fki_notificationsubsection_id' => {
        datatype => 'int',
        base_name => 'fkiNotificationsubsectionID',
        description => 'The unique ID of the Notificationsubsection',
        format => '',
        read_only => '',
            },
    's_notificationtest_function' => {
        datatype => 'string',
        base_name => 'sNotificationtestFunction',
        description => 'The function name of the Notificationtest',
        format => '',
        read_only => '',
            },
    's_notificationtest_name_x' => {
        datatype => 'string',
        base_name => 'sNotificationtestNameX',
        description => 'The name of the Notificationtest in the language of the requester',
        format => '',
        read_only => '',
            },
    'e_notificationpreference_status' => {
        datatype => 'FieldENotificationpreferenceStatus',
        base_name => 'eNotificationpreferenceStatus',
        description => '',
        format => '',
        read_only => '',
            },
    'i_notificationtest' => {
        datatype => 'int',
        base_name => 'iNotificationtest',
        description => 'The number of elements returned by the Notificationtest',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_notificationtest_id' => 'int',
    'obj_notificationtest_name' => 'MultilingualNotificationtestName',
    'fki_notificationsubsection_id' => 'int',
    's_notificationtest_function' => 'string',
    's_notificationtest_name_x' => 'string',
    'e_notificationpreference_status' => 'FieldENotificationpreferenceStatus',
    'i_notificationtest' => 'int'
} );

__PACKAGE__->attribute_map( {
    'pki_notificationtest_id' => 'pkiNotificationtestID',
    'obj_notificationtest_name' => 'objNotificationtestName',
    'fki_notificationsubsection_id' => 'fkiNotificationsubsectionID',
    's_notificationtest_function' => 'sNotificationtestFunction',
    's_notificationtest_name_x' => 'sNotificationtestNameX',
    'e_notificationpreference_status' => 'eNotificationpreferenceStatus',
    'i_notificationtest' => 'iNotificationtest'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
