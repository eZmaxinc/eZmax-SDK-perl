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
package EzmaxApi::Object::EzsigntemplatesignatureRequestCompound;

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

use EzmaxApi::Object::EnumTextvalidation;
use EzmaxApi::Object::EzsigntemplateelementdependencyRequest;
use EzmaxApi::Object::EzsigntemplatesignatureRequest;
use EzmaxApi::Object::EzsigntemplatesignaturecustomdateRequest;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureAttachmentnamesource;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureConsultationtrigger;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureDependencyrequirement;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureFont;
use EzmaxApi::Object::FieldEEzsigntemplatesignaturePositioning;
use EzmaxApi::Object::FieldEEzsigntemplatesignaturePositioningoccurence;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureTooltipposition;
use EzmaxApi::Object::FieldEEzsigntemplatesignatureType;

use base ("Class::Accessor", "Class::Data::Inheritable", "EzmaxApi::Object::EzsigntemplatesignatureRequest");

#
#A Ezsigntemplatesignature Object and children
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

    # initialize parent object EzsigntemplatesignatureRequest
    $self->EzmaxApi::Object::EzsigntemplatesignatureRequest::init(%args);
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    # call EzsigntemplatesignatureRequest to_hash and then combine hash
    $_hash = { %$_hash, %$self->EzmaxApi::Object::EzsigntemplatesignatureRequest::to_hash };

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

    # combine parent (EzsigntemplatesignatureRequest) TO_JSON
    $_data = { %$_data, %$self->EzmaxApi::Object::EzsigntemplatesignatureRequest::TO_JSON };

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

    # call parent (EzsigntemplatesignatureRequest) from_hash
    $self->EzmaxApi::Object::EzsigntemplatesignatureRequest::from_hash($hash);

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


__PACKAGE__->class_documentation({description => 'A Ezsigntemplatesignature Object and children',
                                  class => 'EzsigntemplatesignatureRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'b_ezsigntemplatesignature_customdate' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplatesignatureCustomdate',
        description => 'Whether the Ezsigntemplatesignature has a custom date format or not. (Only possible when eEzsigntemplatesignatureType is **Name** or **Handwritten**)',
        format => '',
        read_only => '',
            },
    'a_obj_ezsigntemplatesignaturecustomdate' => {
        datatype => 'ARRAY[EzsigntemplatesignaturecustomdateRequestCompound]',
        base_name => 'a_objEzsigntemplatesignaturecustomdate',
        description => 'An array of custom date blocks that will be filled at the time of signature.  Can only be used if bEzsigntemplatesignatureCustomdate is true.  Use an empty array if you don&#39;t want to have a date at all.',
        format => '',
        read_only => '',
            },
    'a_obj_ezsigntemplateelementdependency' => {
        datatype => 'ARRAY[EzsigntemplateelementdependencyRequestCompound]',
        base_name => 'a_objEzsigntemplateelementdependency',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'b_ezsigntemplatesignature_customdate' => 'boolean',
    'a_obj_ezsigntemplatesignaturecustomdate' => 'ARRAY[EzsigntemplatesignaturecustomdateRequestCompound]',
    'a_obj_ezsigntemplateelementdependency' => 'ARRAY[EzsigntemplateelementdependencyRequestCompound]'
} );

__PACKAGE__->attribute_map( {
    'b_ezsigntemplatesignature_customdate' => 'bEzsigntemplatesignatureCustomdate',
    'a_obj_ezsigntemplatesignaturecustomdate' => 'a_objEzsigntemplatesignaturecustomdate',
    'a_obj_ezsigntemplateelementdependency' => 'a_objEzsigntemplateelementdependency'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
