=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.41
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::ActivesessionGetCurrentV1ResponseMPayload;

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


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Payload for the /1/object/activesession/getCurrent API Request
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.41
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
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
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

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "EzmaxApi::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}



__PACKAGE__->class_documentation({description => 'Payload for the /1/object/activesession/getCurrent API Request',
                                  class => 'ActivesessionGetCurrentV1ResponseMPayload',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    's_customer_code' => {
        datatype => 'string',
        base_name => 'sCustomerCode',
        description => 'The customer code specific to the client in which the API request is being made',
        format => '',
        read_only => '',
            },
    'e_activesession_sessiontype' => {
        datatype => 'string',
        base_name => 'eActivesessionSessiontype',
        description => 'The type of session used for the API request call',
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
    's_company_name_x' => {
        datatype => 'string',
        base_name => 'sCompanyNameX',
        description => 'The name of the active Company in the current language',
        format => '',
        read_only => '',
            },
    's_department_name_x' => {
        datatype => 'string',
        base_name => 'sDepartmentNameX',
        description => 'The name of the active Department in the current language',
        format => '',
        read_only => '',
            },
    'a_registered_modules' => {
        datatype => 'ARRAY[string]',
        base_name => 'a_RegisteredModules',
        description => 'An Array of Registered modules.  These are the modules that are Licensed to be used by the User or the API Key.',
        format => '',
        read_only => '',
            },
    'a_permissions' => {
        datatype => 'ARRAY[int]',
        base_name => 'a_Permissions',
        description => 'An array of permissions granted to the user or api key',
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
    'fki_apikey_id' => {
        datatype => 'int',
        base_name => 'fkiApikeyID',
        description => 'The unique ID of the Apikey',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    's_customer_code' => 'string',
    'e_activesession_sessiontype' => 'string',
    'fki_language_id' => 'int',
    's_company_name_x' => 'string',
    's_department_name_x' => 'string',
    'a_registered_modules' => 'ARRAY[string]',
    'a_permissions' => 'ARRAY[int]',
    'fki_user_id' => 'int',
    'fki_apikey_id' => 'int'
} );

__PACKAGE__->attribute_map( {
    's_customer_code' => 'sCustomerCode',
    'e_activesession_sessiontype' => 'eActivesessionSessiontype',
    'fki_language_id' => 'fkiLanguageID',
    's_company_name_x' => 'sCompanyNameX',
    's_department_name_x' => 'sDepartmentNameX',
    'a_registered_modules' => 'a_RegisteredModules',
    'a_permissions' => 'a_Permissions',
    'fki_user_id' => 'fkiUserID',
    'fki_apikey_id' => 'fkiApikeyID'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
