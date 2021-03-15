=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.33
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsigndocumentRequestCompound;

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

use EzmaxApi::Object::EzsigndocumentRequest;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsigndocument Object and children to create a complete structure
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.33
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



__PACKAGE__->class_documentation({description => 'An Ezsigndocument Object and children to create a complete structure',
                                  class => 'EzsigndocumentRequestCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
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
    'fki_ezsignfolder_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfolderID',
        description => 'A reference to a valid Ezsignfolder.  That value is returned after a successful Ezsignfolder Creation.',
        format => '',
        read_only => '',
            },
    'dt_ezsigndocument_duedate' => {
        datatype => 'string',
        base_name => 'dtEzsigndocumentDuedate',
        description => 'Represent a Date Time. The timezone is the one configured in the User&#39;s profile.',
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
    's_ezsigndocument_name' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentName',
        description => 'The name of the document that will be presented to Ezsignfoldersignerassociations',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'e_ezsigndocument_source' => 'string',
    'e_ezsigndocument_format' => 'string',
    's_ezsigndocument_base64' => 'string',
    'fki_ezsignfolder_id' => 'int',
    'dt_ezsigndocument_duedate' => 'string',
    'fki_language_id' => 'int',
    's_ezsigndocument_name' => 'string'
} );

__PACKAGE__->attribute_map( {
    'e_ezsigndocument_source' => 'eEzsigndocumentSource',
    'e_ezsigndocument_format' => 'eEzsigndocumentFormat',
    's_ezsigndocument_base64' => 'sEzsigndocumentBase64',
    'fki_ezsignfolder_id' => 'fkiEzsignfolderID',
    'dt_ezsigndocument_duedate' => 'dtEzsigndocumentDuedate',
    'fki_language_id' => 'fkiLanguageID',
    's_ezsigndocument_name' => 'sEzsigndocumentName'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
