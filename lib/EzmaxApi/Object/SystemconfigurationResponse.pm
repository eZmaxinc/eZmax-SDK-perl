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
package EzmaxApi::Object::SystemconfigurationResponse;

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

use EzmaxApi::Object::CustomBrandingResponse;
use EzmaxApi::Object::FieldESystemconfigurationEzsign;
use EzmaxApi::Object::FieldESystemconfigurationEzsignofficeplan;
use EzmaxApi::Object::FieldESystemconfigurationLanguage1;
use EzmaxApi::Object::FieldESystemconfigurationLanguage2;
use EzmaxApi::Object::FieldESystemconfigurationNewexternaluseraction;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Systemconfiguration Object
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


__PACKAGE__->class_documentation({description => 'A Systemconfiguration Object',
                                  class => 'SystemconfigurationResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_systemconfiguration_id' => {
        datatype => 'int',
        base_name => 'pkiSystemconfigurationID',
        description => 'The unique ID of the Systemconfiguration',
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
    'fki_branding_id' => {
        datatype => 'int',
        base_name => 'fkiBrandingID',
        description => 'The unique ID of the Branding',
        format => '',
        read_only => '',
            },
    's_systemconfigurationtype_description_x' => {
        datatype => 'string',
        base_name => 'sSystemconfigurationtypeDescriptionX',
        description => 'The description of the Systemconfigurationtype in the language of the requester',
        format => '',
        read_only => '',
            },
    'e_systemconfiguration_newexternaluseraction' => {
        datatype => 'FieldESystemconfigurationNewexternaluseraction',
        base_name => 'eSystemconfigurationNewexternaluseraction',
        description => '',
        format => '',
        read_only => '',
            },
    'e_systemconfiguration_language1' => {
        datatype => 'FieldESystemconfigurationLanguage1',
        base_name => 'eSystemconfigurationLanguage1',
        description => '',
        format => '',
        read_only => '',
            },
    'e_systemconfiguration_language2' => {
        datatype => 'FieldESystemconfigurationLanguage2',
        base_name => 'eSystemconfigurationLanguage2',
        description => '',
        format => '',
        read_only => '',
            },
    'e_systemconfiguration_ezsign' => {
        datatype => 'FieldESystemconfigurationEzsign',
        base_name => 'eSystemconfigurationEzsign',
        description => '',
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
    'b_systemconfiguration_ezsignpaidbyoffice' => {
        datatype => 'boolean',
        base_name => 'bSystemconfigurationEzsignpaidbyoffice',
        description => 'Whether if Ezsign is paid by the company or not',
        format => '',
        read_only => '',
            },
    'b_systemconfiguration_ezsignpersonnal' => {
        datatype => 'boolean',
        base_name => 'bSystemconfigurationEzsignpersonnal',
        description => 'Whether if we allow the creation of personal files in eZsign',
        format => '',
        read_only => '',
            },
    'b_systemconfiguration_hascreditcardmerchant' => {
        datatype => 'boolean',
        base_name => 'bSystemconfigurationHascreditcardmerchant',
        description => 'Whether there is a creditcard merchant configured or not',
        format => '',
        read_only => '',
            },
    'b_systemconfiguration_isdisposalactive' => {
        datatype => 'boolean',
        base_name => 'bSystemconfigurationIsdisposalactive',
        description => 'Whether is Disposal processus is active or not',
        format => '',
        read_only => '',
            },
    'b_systemconfiguration_sspr' => {
        datatype => 'boolean',
        base_name => 'bSystemconfigurationSspr',
        description => 'Whether if we allow SSPR',
        format => '',
        read_only => '',
            },
    'dt_systemconfiguration_readonlyexpirationstart' => {
        datatype => 'string',
        base_name => 'dtSystemconfigurationReadonlyexpirationstart',
        description => 'The start date where the system will be in read only',
        format => '',
        read_only => '',
            },
    'dt_systemconfiguration_readonlyexpirationend' => {
        datatype => 'string',
        base_name => 'dtSystemconfigurationReadonlyexpirationend',
        description => 'The end date where the system will be in read only',
        format => '',
        read_only => '',
            },
    'obj_branding' => {
        datatype => 'CustomBrandingResponse',
        base_name => 'objBranding',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_systemconfiguration_id' => 'int',
    'fki_systemconfigurationtype_id' => 'int',
    'fki_branding_id' => 'int',
    's_systemconfigurationtype_description_x' => 'string',
    'e_systemconfiguration_newexternaluseraction' => 'FieldESystemconfigurationNewexternaluseraction',
    'e_systemconfiguration_language1' => 'FieldESystemconfigurationLanguage1',
    'e_systemconfiguration_language2' => 'FieldESystemconfigurationLanguage2',
    'e_systemconfiguration_ezsign' => 'FieldESystemconfigurationEzsign',
    'e_systemconfiguration_ezsignofficeplan' => 'FieldESystemconfigurationEzsignofficeplan',
    'b_systemconfiguration_ezsignpaidbyoffice' => 'boolean',
    'b_systemconfiguration_ezsignpersonnal' => 'boolean',
    'b_systemconfiguration_hascreditcardmerchant' => 'boolean',
    'b_systemconfiguration_isdisposalactive' => 'boolean',
    'b_systemconfiguration_sspr' => 'boolean',
    'dt_systemconfiguration_readonlyexpirationstart' => 'string',
    'dt_systemconfiguration_readonlyexpirationend' => 'string',
    'obj_branding' => 'CustomBrandingResponse'
} );

__PACKAGE__->attribute_map( {
    'pki_systemconfiguration_id' => 'pkiSystemconfigurationID',
    'fki_systemconfigurationtype_id' => 'fkiSystemconfigurationtypeID',
    'fki_branding_id' => 'fkiBrandingID',
    's_systemconfigurationtype_description_x' => 'sSystemconfigurationtypeDescriptionX',
    'e_systemconfiguration_newexternaluseraction' => 'eSystemconfigurationNewexternaluseraction',
    'e_systemconfiguration_language1' => 'eSystemconfigurationLanguage1',
    'e_systemconfiguration_language2' => 'eSystemconfigurationLanguage2',
    'e_systemconfiguration_ezsign' => 'eSystemconfigurationEzsign',
    'e_systemconfiguration_ezsignofficeplan' => 'eSystemconfigurationEzsignofficeplan',
    'b_systemconfiguration_ezsignpaidbyoffice' => 'bSystemconfigurationEzsignpaidbyoffice',
    'b_systemconfiguration_ezsignpersonnal' => 'bSystemconfigurationEzsignpersonnal',
    'b_systemconfiguration_hascreditcardmerchant' => 'bSystemconfigurationHascreditcardmerchant',
    'b_systemconfiguration_isdisposalactive' => 'bSystemconfigurationIsdisposalactive',
    'b_systemconfiguration_sspr' => 'bSystemconfigurationSspr',
    'dt_systemconfiguration_readonlyexpirationstart' => 'dtSystemconfigurationReadonlyexpirationstart',
    'dt_systemconfiguration_readonlyexpirationend' => 'dtSystemconfigurationReadonlyexpirationend',
    'obj_branding' => 'objBranding'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
