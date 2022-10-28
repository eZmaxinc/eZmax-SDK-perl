=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.13
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::BrandingGetObjectV1ResponseMPayload;

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

use EzmaxApi::Object::BrandingResponseCompound;
use EzmaxApi::Object::FieldEBrandingLogo;
use EzmaxApi::Object::MultilingualBrandingDescription;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#Payload for GET /1/object/branding/{pkiBrandingID}
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.13
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


__PACKAGE__->class_documentation({description => 'Payload for GET /1/object/branding/{pkiBrandingID}',
                                  class => 'BrandingGetObjectV1ResponseMPayload',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_branding_id' => {
        datatype => 'int',
        base_name => 'pkiBrandingID',
        description => 'The unique ID of the Branding',
        format => '',
        read_only => '',
            },
    'obj_branding_description' => {
        datatype => 'MultilingualBrandingDescription',
        base_name => 'objBrandingDescription',
        description => '',
        format => '',
        read_only => '',
            },
    's_branding_description_x' => {
        datatype => 'string',
        base_name => 'sBrandingDescriptionX',
        description => 'The Description of the Branding in the language of the requester',
        format => '',
        read_only => '',
            },
    'e_branding_logo' => {
        datatype => 'FieldEBrandingLogo',
        base_name => 'eBrandingLogo',
        description => '',
        format => '',
        read_only => '',
            },
    'i_branding_colortext' => {
        datatype => 'int',
        base_name => 'iBrandingColortext',
        description => 'The color of the text. This is a RGB color converted into integer',
        format => '',
        read_only => '',
            },
    'i_branding_colortextlinkbox' => {
        datatype => 'int',
        base_name => 'iBrandingColortextlinkbox',
        description => 'The color of the text in the link box. This is a RGB color converted into integer',
        format => '',
        read_only => '',
            },
    'i_branding_colortextbutton' => {
        datatype => 'int',
        base_name => 'iBrandingColortextbutton',
        description => 'The color of the text in the button. This is a RGB color converted into integer',
        format => '',
        read_only => '',
            },
    'i_branding_colorbackground' => {
        datatype => 'int',
        base_name => 'iBrandingColorbackground',
        description => 'The color of the background. This is a RGB color converted into integer',
        format => '',
        read_only => '',
            },
    'i_branding_colorbackgroundbutton' => {
        datatype => 'int',
        base_name => 'iBrandingColorbackgroundbutton',
        description => 'The color of the background of the button. This is a RGB color converted into integer',
        format => '',
        read_only => '',
            },
    'i_branding_colorbackgroundsmallbox' => {
        datatype => 'int',
        base_name => 'iBrandingColorbackgroundsmallbox',
        description => 'The color of the background of the small box. This is a RGB color converted into integer',
        format => '',
        read_only => '',
            },
    'b_branding_isactive' => {
        datatype => 'boolean',
        base_name => 'bBrandingIsactive',
        description => 'Whether the Branding is active or not',
        format => '',
        read_only => '',
            },
    's_branding_logourl' => {
        datatype => 'string',
        base_name => 'sBrandingLogourl',
        description => 'The url of the picture used as logo in the Branding',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_branding_id' => 'int',
    'obj_branding_description' => 'MultilingualBrandingDescription',
    's_branding_description_x' => 'string',
    'e_branding_logo' => 'FieldEBrandingLogo',
    'i_branding_colortext' => 'int',
    'i_branding_colortextlinkbox' => 'int',
    'i_branding_colortextbutton' => 'int',
    'i_branding_colorbackground' => 'int',
    'i_branding_colorbackgroundbutton' => 'int',
    'i_branding_colorbackgroundsmallbox' => 'int',
    'b_branding_isactive' => 'boolean',
    's_branding_logourl' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_branding_id' => 'pkiBrandingID',
    'obj_branding_description' => 'objBrandingDescription',
    's_branding_description_x' => 'sBrandingDescriptionX',
    'e_branding_logo' => 'eBrandingLogo',
    'i_branding_colortext' => 'iBrandingColortext',
    'i_branding_colortextlinkbox' => 'iBrandingColortextlinkbox',
    'i_branding_colortextbutton' => 'iBrandingColortextbutton',
    'i_branding_colorbackground' => 'iBrandingColorbackground',
    'i_branding_colorbackgroundbutton' => 'iBrandingColorbackgroundbutton',
    'i_branding_colorbackgroundsmallbox' => 'iBrandingColorbackgroundsmallbox',
    'b_branding_isactive' => 'bBrandingIsactive',
    's_branding_logourl' => 'sBrandingLogourl'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
