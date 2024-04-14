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
package EzmaxApi::Object::EzsigndocumentRequest;

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
#An Ezsigndocument Object
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


__PACKAGE__->class_documentation({description => 'An Ezsigndocument Object',
                                  class => 'EzsigndocumentRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsigndocument_id' => {
        datatype => 'int',
        base_name => 'pkiEzsigndocumentID',
        description => 'The unique ID of the Ezsigndocument',
        format => '',
        read_only => '',
            },
    'fki_ezsignfolder_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfolderID',
        description => 'The unique ID of the Ezsignfolder',
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
    'fki_ezsignfoldersignerassociation_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfoldersignerassociationID',
        description => 'The unique ID of the Ezsignfoldersignerassociation',
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
    'e_ezsigndocument_source' => {
        datatype => 'string',
        base_name => 'eEzsigndocumentSource',
        description => 'Indicates where to look for the document binary content.',
        format => '',
        read_only => '',
            },
    'e_ezsigndocument_format' => {
        datatype => 'string',
        base_name => 'eEzsigndocumentFormat',
        description => 'Indicates the format of the document.',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_base64' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentBase64',
        description => 'The Base64 encoded binary content of the document.  This field is Required when eEzsigndocumentSource &#x3D; Base64.',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_url' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentUrl',
        description => 'The url where the document content resides.  This field is Required when eEzsigndocumentSource &#x3D; Url.',
        format => '',
        read_only => '',
            },
    'b_ezsigndocument_forcerepair' => {
        datatype => 'boolean',
        base_name => 'bEzsigndocumentForcerepair',
        description => 'Try to repair the document or flatten it if it cannot be used for electronic signature. ',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_password' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentPassword',
        description => 'If the source document is password protected, the password to open/modify it.',
        format => '',
        read_only => '',
            },
    'e_ezsigndocument_form' => {
        datatype => 'string',
        base_name => 'eEzsigndocumentForm',
        description => 'If the document contains an existing PDF form this property must be set.  **Keep** leaves the form as-is in the document.  **Convert** removes the form and convert all the existing fields to Ezsignformfieldgroups and assign them to the specified **fkiEzsignfoldersignerassociationID**  **Discard** removes the form from the document.',
        format => '',
        read_only => '',
            },
    'dt_ezsigndocument_duedate' => {
        datatype => 'string',
        base_name => 'dtEzsigndocumentDuedate',
        description => 'The maximum date and time at which the Ezsigndocument can be signed.',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_name' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentName',
        description => 'The name of the document that will be presented to Ezsignfoldersignerassociations',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_externalid' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentExternalid',
        description => 'This field can be used to store an External ID from the client&#39;s system.  Anything can be stored in this field, it will never be evaluated by the eZmax system and will be returned AS-IS.  To store multiple values, consider using a JSON formatted structure, a URL encoded string, a CSV or any other custom format. ',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsigndocument_id' => 'int',
    'fki_ezsignfolder_id' => 'int',
    'fki_ezsigntemplate_id' => 'int',
    'fki_ezsignfoldersignerassociation_id' => 'int',
    'fki_language_id' => 'int',
    'e_ezsigndocument_source' => 'string',
    'e_ezsigndocument_format' => 'string',
    's_ezsigndocument_base64' => 'string',
    's_ezsigndocument_url' => 'string',
    'b_ezsigndocument_forcerepair' => 'boolean',
    's_ezsigndocument_password' => 'string',
    'e_ezsigndocument_form' => 'string',
    'dt_ezsigndocument_duedate' => 'string',
    's_ezsigndocument_name' => 'string',
    's_ezsigndocument_externalid' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsigndocument_id' => 'pkiEzsigndocumentID',
    'fki_ezsignfolder_id' => 'fkiEzsignfolderID',
    'fki_ezsigntemplate_id' => 'fkiEzsigntemplateID',
    'fki_ezsignfoldersignerassociation_id' => 'fkiEzsignfoldersignerassociationID',
    'fki_language_id' => 'fkiLanguageID',
    'e_ezsigndocument_source' => 'eEzsigndocumentSource',
    'e_ezsigndocument_format' => 'eEzsigndocumentFormat',
    's_ezsigndocument_base64' => 'sEzsigndocumentBase64',
    's_ezsigndocument_url' => 'sEzsigndocumentUrl',
    'b_ezsigndocument_forcerepair' => 'bEzsigndocumentForcerepair',
    's_ezsigndocument_password' => 'sEzsigndocumentPassword',
    'e_ezsigndocument_form' => 'eEzsigndocumentForm',
    'dt_ezsigndocument_duedate' => 'dtEzsigndocumentDuedate',
    's_ezsigndocument_name' => 'sEzsigndocumentName',
    's_ezsigndocument_externalid' => 'sEzsigndocumentExternalid'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
