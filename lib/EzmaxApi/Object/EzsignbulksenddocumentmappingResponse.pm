=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzsignbulksenddocumentmappingResponse;

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
#A Ezsignbulksenddocumentmapping Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
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


__PACKAGE__->class_documentation({description => 'A Ezsignbulksenddocumentmapping Object',
                                  class => 'EzsignbulksenddocumentmappingResponse',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezsignbulksenddocumentmapping_id' => {
        datatype => 'int',
        base_name => 'pkiEzsignbulksenddocumentmappingID',
        description => 'The unique ID of the Ezsignbulksenddocumentmapping.',
        format => '',
        read_only => '',
            },
    'fki_ezsignbulksend_id' => {
        datatype => 'int',
        base_name => 'fkiEzsignbulksendID',
        description => 'The unique ID of the Ezsignbulksend',
        format => '',
        read_only => '',
            },
    'fki_ezsigntemplatepackage_id' => {
        datatype => 'int',
        base_name => 'fkiEzsigntemplatepackageID',
        description => 'The unique ID of the Ezsigntemplatepackage',
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
    'i_ezsignbulksenddocumentmapping_order' => {
        datatype => 'int',
        base_name => 'iEzsignbulksenddocumentmappingOrder',
        description => 'The order in which the Ezsigntemplate or Ezsigntemplatepackage will be presented to the signatory in the Ezsignfolder.',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezsignbulksenddocumentmapping_id' => 'int',
    'fki_ezsignbulksend_id' => 'int',
    'fki_ezsigntemplatepackage_id' => 'int',
    'fki_ezsigntemplate_id' => 'int',
    'i_ezsignbulksenddocumentmapping_order' => 'int'
} );

__PACKAGE__->attribute_map( {
    'pki_ezsignbulksenddocumentmapping_id' => 'pkiEzsignbulksenddocumentmappingID',
    'fki_ezsignbulksend_id' => 'fkiEzsignbulksendID',
    'fki_ezsigntemplatepackage_id' => 'fkiEzsigntemplatepackageID',
    'fki_ezsigntemplate_id' => 'fkiEzsigntemplateID',
    'i_ezsignbulksenddocumentmapping_order' => 'iEzsignbulksenddocumentmappingOrder'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
