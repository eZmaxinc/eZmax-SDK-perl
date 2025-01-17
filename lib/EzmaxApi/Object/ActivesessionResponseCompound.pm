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

use EzmaxApi::Object::ActivesessionResponse;
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

use base ("Class::Accessor", "Class::Data::Inheritable", "EzmaxApi::Object::ActivesessionResponse");

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

    # initialize parent object ActivesessionResponse
    $self->EzmaxApi::Object::ActivesessionResponse::init(%args);
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    # call ActivesessionResponse to_hash and then combine hash
    $_hash = { %$_hash, %$self->EzmaxApi::Object::ActivesessionResponse::to_hash };

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

    # combine parent (ActivesessionResponse) TO_JSON
    $_data = { %$_data, %$self->EzmaxApi::Object::ActivesessionResponse::TO_JSON };

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

    # call parent (ActivesessionResponse) from_hash
    $self->EzmaxApi::Object::ActivesessionResponse::from_hash($hash);

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
