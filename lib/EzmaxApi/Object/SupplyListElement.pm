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
package EzmaxApi::Object::SupplyListElement;

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
#A Supply List Element
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


__PACKAGE__->class_documentation({description => 'A Supply List Element',
                                  class => 'SupplyListElement',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_supply_id' => {
        datatype => 'int',
        base_name => 'pkiSupplyID',
        description => 'The unique ID of the Supply',
        format => '',
        read_only => '',
            },
    'fki_glaccount_id' => {
        datatype => 'int',
        base_name => 'fkiGlaccountID',
        description => 'The unique ID of the Glaccount',
        format => '',
        read_only => '',
            },
    'fki_glaccountcontainer_id' => {
        datatype => 'int',
        base_name => 'fkiGlaccountcontainerID',
        description => 'The unique ID of the Glaccountcontainer',
        format => '',
        read_only => '',
            },
    'fki_variableexpense_id' => {
        datatype => 'int',
        base_name => 'fkiVariableexpenseID',
        description => 'The unique ID of the Variableexpense',
        format => '',
        read_only => '',
            },
    's_supply_code' => {
        datatype => 'string',
        base_name => 'sSupplyCode',
        description => 'The code of the Supply',
        format => '',
        read_only => '',
            },
    's_supply_description_x' => {
        datatype => 'string',
        base_name => 'sSupplyDescriptionX',
        description => 'The description of the Supply in the language of the requester',
        format => '',
        read_only => '',
            },
    'd_supply_unitprice' => {
        datatype => 'string',
        base_name => 'dSupplyUnitprice',
        description => 'The unit price of the Supply',
        format => '',
        read_only => '',
            },
    'b_supply_isactive' => {
        datatype => 'boolean',
        base_name => 'bSupplyIsactive',
        description => 'Whether the supply is active or not',
        format => '',
        read_only => '',
            },
    'b_supply_variableprice' => {
        datatype => 'boolean',
        base_name => 'bSupplyVariableprice',
        description => 'Whether if the price is variable',
        format => '',
        read_only => '',
            },
    's_glaccount_description_x' => {
        datatype => 'string',
        base_name => 'sGlaccountDescriptionX',
        description => 'The Description for the Glaccount in the language of the requester',
        format => '',
        read_only => '',
            },
    's_glaccountcontainer_longdescription_x' => {
        datatype => 'string',
        base_name => 'sGlaccountcontainerLongdescriptionX',
        description => 'The Description for the Glaccountcontainer in the language of the requester',
        format => '',
        read_only => '',
            },
    's_variableexpense_description_x' => {
        datatype => 'string',
        base_name => 'sVariableexpenseDescriptionX',
        description => 'The description of the Variableexpense in the language of the requester',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_supply_id' => 'int',
    'fki_glaccount_id' => 'int',
    'fki_glaccountcontainer_id' => 'int',
    'fki_variableexpense_id' => 'int',
    's_supply_code' => 'string',
    's_supply_description_x' => 'string',
    'd_supply_unitprice' => 'string',
    'b_supply_isactive' => 'boolean',
    'b_supply_variableprice' => 'boolean',
    's_glaccount_description_x' => 'string',
    's_glaccountcontainer_longdescription_x' => 'string',
    's_variableexpense_description_x' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_supply_id' => 'pkiSupplyID',
    'fki_glaccount_id' => 'fkiGlaccountID',
    'fki_glaccountcontainer_id' => 'fkiGlaccountcontainerID',
    'fki_variableexpense_id' => 'fkiVariableexpenseID',
    's_supply_code' => 'sSupplyCode',
    's_supply_description_x' => 'sSupplyDescriptionX',
    'd_supply_unitprice' => 'dSupplyUnitprice',
    'b_supply_isactive' => 'bSupplyIsactive',
    'b_supply_variableprice' => 'bSupplyVariableprice',
    's_glaccount_description_x' => 'sGlaccountDescriptionX',
    's_glaccountcontainer_longdescription_x' => 'sGlaccountcontainerLongdescriptionX',
    's_variableexpense_description_x' => 'sVariableexpenseDescriptionX'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
