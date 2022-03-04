=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.7
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsigndocumentResponse;

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

use EzmaxApi::Object::CommonAudit;
use EzmaxApi::Object::FieldEEzsigndocumentStep;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Ezsigndocument Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.7
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


__PACKAGE__->class_documentation({description => 'An Ezsigndocument Object',
                                  class => 'EzsigndocumentResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'fki_ezsignfolder_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignfolderID',
        description => 'The unique ID of the Ezsignfolder',
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
    'pki_ezsigndocument_id' => {
        datatype => 'int',
        base_name => 'pkiEzsigndocumentID',
        description => 'The unique ID of the Ezsigndocument',
        format => '',
        read_only => '',
            },
    'e_ezsigndocument_step' => {
        datatype => 'FieldEEzsigndocumentStep',
        base_name => 'eEzsigndocumentStep',
        description => '',
        format => '',
        read_only => '',
            },
    'dt_ezsigndocument_firstsend' => {
        datatype => 'string',
        base_name => 'dtEzsigndocumentFirstsend',
        description => 'The date and time when the Ezsigndocument was first sent.',
        format => '',
        read_only => '',
            },
    'dt_ezsigndocument_lastsend' => {
        datatype => 'string',
        base_name => 'dtEzsigndocumentLastsend',
        description => 'The date and time when the Ezsigndocument was sent the last time.',
        format => '',
        read_only => '',
            },
    'i_ezsigndocument_order' => {
        datatype => 'int',
        base_name => 'iEzsigndocumentOrder',
        description => 'The order in which the Ezsigndocument will be presented to the signatory in the Ezsignfolder.',
        format => '',
        read_only => '',
            },
    'i_ezsigndocument_pagetotal' => {
        datatype => 'int',
        base_name => 'iEzsigndocumentPagetotal',
        description => 'The number of pages in the Ezsigndocument.',
        format => '',
        read_only => '',
            },
    'i_ezsigndocument_signaturesigned' => {
        datatype => 'int',
        base_name => 'iEzsigndocumentSignaturesigned',
        description => 'The number of signatures that were signed in the document.',
        format => '',
        read_only => '',
            },
    'i_ezsigndocument_signaturetotal' => {
        datatype => 'int',
        base_name => 'iEzsigndocumentSignaturetotal',
        description => 'The number of total signatures that were requested in the Ezsigndocument.',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_md5initial' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentMD5initial',
        description => 'MD5 Hash of the initial PDF Document before signatures were applied to it.',
        format => '',
        read_only => '',
            },
    's_ezsigndocument_md5signed' => {
        datatype => 'string',
        base_name => 'sEzsigndocumentMD5signed',
        description => 'MD5 Hash of the final PDF Document after all signatures were applied to it.',
        format => '',
        read_only => '',
            },
    'obj_audit' => {
        datatype => 'CommonAudit',
        base_name => 'objAudit',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'fki_ezsignfolder_id' => 'int',
    'dt_ezsigndocument_duedate' => 'string',
    'fki_language_id' => 'int',
    's_ezsigndocument_name' => 'string',
    'pki_ezsigndocument_id' => 'int',
    'e_ezsigndocument_step' => 'FieldEEzsigndocumentStep',
    'dt_ezsigndocument_firstsend' => 'string',
    'dt_ezsigndocument_lastsend' => 'string',
    'i_ezsigndocument_order' => 'int',
    'i_ezsigndocument_pagetotal' => 'int',
    'i_ezsigndocument_signaturesigned' => 'int',
    'i_ezsigndocument_signaturetotal' => 'int',
    's_ezsigndocument_md5initial' => 'string',
    's_ezsigndocument_md5signed' => 'string',
    'obj_audit' => 'CommonAudit'
} );

__PACKAGE__->attribute_map( {
    'fki_ezsignfolder_id' => 'fkiEzsignfolderID',
    'dt_ezsigndocument_duedate' => 'dtEzsigndocumentDuedate',
    'fki_language_id' => 'fkiLanguageID',
    's_ezsigndocument_name' => 'sEzsigndocumentName',
    'pki_ezsigndocument_id' => 'pkiEzsigndocumentID',
    'e_ezsigndocument_step' => 'eEzsigndocumentStep',
    'dt_ezsigndocument_firstsend' => 'dtEzsigndocumentFirstsend',
    'dt_ezsigndocument_lastsend' => 'dtEzsigndocumentLastsend',
    'i_ezsigndocument_order' => 'iEzsigndocumentOrder',
    'i_ezsigndocument_pagetotal' => 'iEzsigndocumentPagetotal',
    'i_ezsigndocument_signaturesigned' => 'iEzsigndocumentSignaturesigned',
    'i_ezsigndocument_signaturetotal' => 'iEzsigndocumentSignaturetotal',
    's_ezsigndocument_md5initial' => 'sEzsigndocumentMD5initial',
    's_ezsigndocument_md5signed' => 'sEzsigndocumentMD5signed',
    'obj_audit' => 'objAudit'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
