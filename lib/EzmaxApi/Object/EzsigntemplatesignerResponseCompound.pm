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
package EzmaxApi::Object::EzsigntemplatesignerResponseCompound;

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

use EzmaxApi::Object::FieldEEzsigntemplatesignerMapping;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezsigntemplatesigner Object
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


__PACKAGE__->class_documentation({description => 'A Ezsigntemplatesigner Object',
                                  class => 'EzsigntemplatesignerResponseCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsigntemplatesigner_id' => {
        datatype => 'int',
        base_name => 'pkiEzsigntemplatesignerID',
        description => 'The unique ID of the Ezsigntemplatesigner',
        format => '',
        read_only => '',
            },
    'fki_ezsigntemplate_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigntemplateID',
        description => 'The unique ID of the Ezsigntemplate',
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
    'fki_usergroup_id' => {
        datatype => 'int',
        base_name => 'fkiUsergroupID',
        description => 'The unique ID of the Usergroup',
        format => '',
        read_only => '',
            },
    'fki_ezdoctemplatedocument_id' => {
        datatype => 'int',
        base_name => 'fkiEzdoctemplatedocumentID',
        description => 'The unique ID of the Ezdoctemplatedocument',
        format => '',
        read_only => '',
            },
    'b_ezsigntemplatesigner_receivecopy' => {
        datatype => 'boolean',
        base_name => 'bEzsigntemplatesignerReceivecopy',
        description => 'If this flag is true. The signatory will receive a copy of every signed Ezsigndocument even if it ain&#39;t required to sign the document.',
        format => '',
        read_only => '',
            },
    'e_ezsigntemplatesigner_mapping' => {
        datatype => 'FieldEEzsigntemplatesignerMapping',
        base_name => 'eEzsigntemplatesignerMapping',
        description => '',
        format => '',
        read_only => '',
            },
    's_ezsigntemplatesigner_description' => {
        datatype => 'string',
        base_name => 'sEzsigntemplatesignerDescription',
        description => 'The description of the Ezsigntemplatesigner',
        format => '',
        read_only => '',
            },
    's_user_name' => {
        datatype => 'string',
        base_name => 'sUserName',
        description => 'The description of the User in the language of the requester',
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
});

__PACKAGE__->openapi_types( {
    'pki_ezsigntemplatesigner_id' => 'int',
    'fki_ezsigntemplate_id' => 'int',
    'fki_user_id' => 'int',
    'fki_usergroup_id' => 'int',
    'fki_ezdoctemplatedocument_id' => 'int',
    'b_ezsigntemplatesigner_receivecopy' => 'boolean',
    'e_ezsigntemplatesigner_mapping' => 'FieldEEzsigntemplatesignerMapping',
    's_ezsigntemplatesigner_description' => 'string',
    's_user_name' => 'string',
    's_usergroup_name_x' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsigntemplatesigner_id' => 'pkiEzsigntemplatesignerID',
    'fki_ezsigntemplate_id' => 'fkiEzsigntemplateID',
    'fki_user_id' => 'fkiUserID',
    'fki_usergroup_id' => 'fkiUsergroupID',
    'fki_ezdoctemplatedocument_id' => 'fkiEzdoctemplatedocumentID',
    'b_ezsigntemplatesigner_receivecopy' => 'bEzsigntemplatesignerReceivecopy',
    'e_ezsigntemplatesigner_mapping' => 'eEzsigntemplatesignerMapping',
    's_ezsigntemplatesigner_description' => 'sEzsigntemplatesignerDescription',
    's_user_name' => 'sUserName',
    's_usergroup_name_x' => 'sUsergroupNameX'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
