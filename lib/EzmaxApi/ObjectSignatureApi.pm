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
package EzmaxApi::ObjectSignatureApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use EzmaxApi::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'EzmaxApi::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = EzmaxApi::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# signature_create_object_v1
#
# Create a new Signature
#
# @param SignatureCreateObjectV1Request $signature_create_object_v1_request  (required)
{
    my $params = {
    'signature_create_object_v1_request' => {
        data_type => 'SignatureCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_create_object_v1' } = {
        summary => 'Create a new Signature',
        params => $params,
        returns => 'SignatureCreateObjectV1Response',
        };
}
# @return SignatureCreateObjectV1Response
#
sub signature_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'signature_create_object_v1_request' is set
    unless (exists $args{'signature_create_object_v1_request'}) {
      croak("Missing the required parameter 'signature_create_object_v1_request' when calling signature_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/signature';

    my $_method = 'POST';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    my $_body_data;
    # body params
    if ( exists $args{'signature_create_object_v1_request'}) {
        $_body_data = $args{'signature_create_object_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SignatureCreateObjectV1Response', $response);
    return $_response_object;
}

#
# signature_delete_object_v1
#
# Delete an existing Signature
#
# @param int $pki_signature_id The unique ID of the Signature (required)
{
    my $params = {
    'pki_signature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Signature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_delete_object_v1' } = {
        summary => 'Delete an existing Signature',
        params => $params,
        returns => 'SignatureDeleteObjectV1Response',
        };
}
# @return SignatureDeleteObjectV1Response
#
sub signature_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_signature_id' is set
    unless (exists $args{'pki_signature_id'}) {
      croak("Missing the required parameter 'pki_signature_id' when calling signature_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/signature/{pkiSignatureID}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_signature_id'}) {
        my $_base_variable = "{" . "pkiSignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_signature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SignatureDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# signature_edit_object_v1
#
# Edit an existing Signature
#
# @param int $pki_signature_id The unique ID of the Signature (required)
# @param SignatureEditObjectV1Request $signature_edit_object_v1_request  (required)
{
    my $params = {
    'pki_signature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Signature',
        required => '1',
    },
    'signature_edit_object_v1_request' => {
        data_type => 'SignatureEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_edit_object_v1' } = {
        summary => 'Edit an existing Signature',
        params => $params,
        returns => 'SignatureEditObjectV1Response',
        };
}
# @return SignatureEditObjectV1Response
#
sub signature_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_signature_id' is set
    unless (exists $args{'pki_signature_id'}) {
      croak("Missing the required parameter 'pki_signature_id' when calling signature_edit_object_v1");
    }

    # verify the required parameter 'signature_edit_object_v1_request' is set
    unless (exists $args{'signature_edit_object_v1_request'}) {
      croak("Missing the required parameter 'signature_edit_object_v1_request' when calling signature_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/signature/{pkiSignatureID}';

    my $_method = 'PUT';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type('application/json');

    # path params
    if ( exists $args{'pki_signature_id'}) {
        my $_base_variable = "{" . "pkiSignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_signature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'signature_edit_object_v1_request'}) {
        $_body_data = $args{'signature_edit_object_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SignatureEditObjectV1Response', $response);
    return $_response_object;
}

#
# signature_get_object_v2
#
# Retrieve an existing Signature
#
# @param int $pki_signature_id The unique ID of the Signature (required)
{
    my $params = {
    'pki_signature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Signature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_get_object_v2' } = {
        summary => 'Retrieve an existing Signature',
        params => $params,
        returns => 'SignatureGetObjectV2Response',
        };
}
# @return SignatureGetObjectV2Response
#
sub signature_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_signature_id' is set
    unless (exists $args{'pki_signature_id'}) {
      croak("Missing the required parameter 'pki_signature_id' when calling signature_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/signature/{pkiSignatureID}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_signature_id'}) {
        my $_base_variable = "{" . "pkiSignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_signature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SignatureGetObjectV2Response', $response);
    return $_response_object;
}

#
# signature_get_object_v3
#
# Retrieve an existing Signature
#
# @param int $pki_signature_id The unique ID of the Signature (required)
{
    my $params = {
    'pki_signature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Signature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_get_object_v3' } = {
        summary => 'Retrieve an existing Signature',
        params => $params,
        returns => 'SignatureGetObjectV3Response',
        };
}
# @return SignatureGetObjectV3Response
#
sub signature_get_object_v3 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_signature_id' is set
    unless (exists $args{'pki_signature_id'}) {
      croak("Missing the required parameter 'pki_signature_id' when calling signature_get_object_v3");
    }

    # parse inputs
    my $_resource_path = '/3/object/signature/{pkiSignatureID}';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_signature_id'}) {
        my $_base_variable = "{" . "pkiSignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_signature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('SignatureGetObjectV3Response', $response);
    return $_response_object;
}

#
# signature_get_svg_initials_v1
#
# Retrieve an existing Signature initial SVG
#
# @param int $pki_signature_id The unique ID of the Signature (required)
{
    my $params = {
    'pki_signature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Signature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_get_svg_initials_v1' } = {
        summary => 'Retrieve an existing Signature initial SVG',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub signature_get_svg_initials_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_signature_id' is set
    unless (exists $args{'pki_signature_id'}) {
      croak("Missing the required parameter 'pki_signature_id' when calling signature_get_svg_initials_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/signature/{pkiSignatureID}/getSVGInitials';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_signature_id'}) {
        my $_base_variable = "{" . "pkiSignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_signature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# signature_get_svg_signature_v1
#
# Retrieve an existing Signature SVG
#
# @param int $pki_signature_id The unique ID of the Signature (required)
{
    my $params = {
    'pki_signature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Signature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'signature_get_svg_signature_v1' } = {
        summary => 'Retrieve an existing Signature SVG',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub signature_get_svg_signature_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_signature_id' is set
    unless (exists $args{'pki_signature_id'}) {
      croak("Missing the required parameter 'pki_signature_id' when calling signature_get_svg_signature_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/signature/{pkiSignatureID}/getSVGSignature';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_signature_id'}) {
        my $_base_variable = "{" . "pkiSignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_signature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
