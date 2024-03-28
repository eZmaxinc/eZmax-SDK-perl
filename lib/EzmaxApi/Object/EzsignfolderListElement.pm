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
package EzmaxApi::Object::EzsignfolderListElement;

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

use EzmaxApi::Object::FieldEEzsignfolderStep;
use EzmaxApi::Object::FieldEEzsignfoldertypePrivacylevel;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsignfolder List Element
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


__PACKAGE__->class_documentation({description => 'An Ezsignfolder List Element',
                                  class => 'EzsignfolderListElement',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignfolder_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignfolderID',
        description => 'The unique ID of the Ezsignfolder',
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
    'e_ezsignfoldertype_privacylevel' => {
        datatype => 'FieldEEzsignfoldertypePrivacylevel',
        base_name => 'eEzsignfoldertypePrivacylevel',
        description => '',
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
    's_ezsignfolder_description' => {
        datatype => 'string',
        base_name => 'sEzsignfolderDescription',
        description => 'The description of the Ezsignfolder',
        format => '',
        read_only => '',
            },
    'e_ezsignfolder_step' => {
        datatype => 'FieldEEzsignfolderStep',
        base_name => 'eEzsignfolderStep',
        description => '',
        format => '',
        read_only => '',
            },
    'dt_created_date' => {
        datatype => 'string',
        base_name => 'dtCreatedDate',
        description => 'The date and time at which the object was created',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_delayedsenddate' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderDelayedsenddate',
        description => 'The date and time at which the Ezsignfolder will be sent in the future.',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_sentdate' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderSentdate',
        description => 'The date and time at which the Ezsignfolder was sent the last time.',
        format => '',
        read_only => '',
            },
    'dt_ezsignfolder_duedate' => {
        datatype => 'string',
        base_name => 'dtEzsignfolderDuedate',
        description => 'The maximum date and time at which the Ezsignfolder can be signed.',
        format => '',
        read_only => '',
            },
    'i_ezsigndocument' => {
        datatype => 'int',
        base_name => 'iEzsigndocument',
        description => 'The total number of Ezsigndocument in the folder',
        format => '',
        read_only => '',
            },
    'i_ezsigndocument_edm' => {
        datatype => 'int',
        base_name => 'iEzsigndocumentEdm',
        description => 'The total number of Ezsigndocument in the folder that were saved in the edm system',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature' => {
        datatype => 'int',
        base_name => 'iEzsignsignature',
        description => 'The total number of signature blocks in all Ezsigndocuments in the folder',
        format => '',
        read_only => '',
            },
    'i_ezsignsignature_signed' => {
        datatype => 'int',
        base_name => 'iEzsignsignatureSigned',
        description => 'The total number of already signed signature blocks in all Ezsigndocuments in the folder',
        format => '',
        read_only => '',
            },
    'i_ezsignformfieldgroup' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldgroup',
        description => 'The total number of Ezsignformfieldgroup in all Ezsigndocuments in the folder',
        format => '',
        read_only => '',
            },
    'i_ezsignformfieldgroup_completed' => {
        datatype => 'int',
        base_name => 'iEzsignformfieldgroupCompleted',
        description => 'The total number of completed Ezsignformfieldgroup in all Ezsigndocuments in the folder',
        format => '',
        read_only => '',
            },
    'b_ezsignform_hasdependencies' => {
        datatype => 'boolean',
        base_name => 'bEzsignformHasdependencies',
        description => 'Whether the Ezsignform/Ezsignsignatures has dependencies or not',
        format => '',
        read_only => '',
            },
    'd_ezsignfolder_completedpercentage' => {
        datatype => 'string',
        base_name => 'dEzsignfolderCompletedpercentage',
        description => 'Whether the Ezsignform/Ezsignsignatures has dependencies or not',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignfolder_id' => 'int',
    'fki_ezsignfoldertype_id' => 'int',
    'e_ezsignfoldertype_privacylevel' => 'FieldEEzsignfoldertypePrivacylevel',
    's_ezsignfoldertype_name_x' => 'string',
    's_ezsignfolder_description' => 'string',
    'e_ezsignfolder_step' => 'FieldEEzsignfolderStep',
    'dt_created_date' => 'string',
    'dt_ezsignfolder_delayedsenddate' => 'string',
    'dt_ezsignfolder_sentdate' => 'string',
    'dt_ezsignfolder_duedate' => 'string',
    'i_ezsigndocument' => 'int',
    'i_ezsigndocument_edm' => 'int',
    'i_ezsignsignature' => 'int',
    'i_ezsignsignature_signed' => 'int',
    'i_ezsignformfieldgroup' => 'int',
    'i_ezsignformfieldgroup_completed' => 'int',
    'b_ezsignform_hasdependencies' => 'boolean',
    'd_ezsignfolder_completedpercentage' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignfolder_id' => 'pkiEzsignfolderID',
    'fki_ezsignfoldertype_id' => 'fkiEzsignfoldertypeID',
    'e_ezsignfoldertype_privacylevel' => 'eEzsignfoldertypePrivacylevel',
    's_ezsignfoldertype_name_x' => 'sEzsignfoldertypeNameX',
    's_ezsignfolder_description' => 'sEzsignfolderDescription',
    'e_ezsignfolder_step' => 'eEzsignfolderStep',
    'dt_created_date' => 'dtCreatedDate',
    'dt_ezsignfolder_delayedsenddate' => 'dtEzsignfolderDelayedsenddate',
    'dt_ezsignfolder_sentdate' => 'dtEzsignfolderSentdate',
    'dt_ezsignfolder_duedate' => 'dtEzsignfolderDuedate',
    'i_ezsigndocument' => 'iEzsigndocument',
    'i_ezsigndocument_edm' => 'iEzsigndocumentEdm',
    'i_ezsignsignature' => 'iEzsignsignature',
    'i_ezsignsignature_signed' => 'iEzsignsignatureSigned',
    'i_ezsignformfieldgroup' => 'iEzsignformfieldgroup',
    'i_ezsignformfieldgroup_completed' => 'iEzsignformfieldgroupCompleted',
    'b_ezsignform_hasdependencies' => 'bEzsignformHasdependencies',
    'd_ezsignfolder_completedpercentage' => 'dEzsignfolderCompletedpercentage'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
