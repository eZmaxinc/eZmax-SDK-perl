=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.18
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectCorsApi;

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
# cors_create_object_v1
#
# Create a new Cors
#
# @param CorsCreateObjectV1Request $cors_create_object_v1_request  (required)
{
    my $params = {
    'cors_create_object_v1_request' => {
        data_type => 'CorsCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'cors_create_object_v1' } = {
        summary => 'Create a new Cors',
        params => $params,
        returns => 'CorsCreateObjectV1Response',
        };
}
# @return CorsCreateObjectV1Response
#
sub cors_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'cors_create_object_v1_request' is set
    unless (exists $args{'cors_create_object_v1_request'}) {
      croak("Missing the required parameter 'cors_create_object_v1_request' when calling cors_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/cors';

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
    if ( exists $args{'cors_create_object_v1_request'}) {
        $_body_data = $args{'cors_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('CorsCreateObjectV1Response', $response);
    return $_response_object;
}

#
# cors_delete_object_v1
#
# Delete an existing Cors
#
# @param int $pki_cors_id The unique ID of the Cors (required)
{
    my $params = {
    'pki_cors_id' => {
        data_type => 'int',
        description => 'The unique ID of the Cors',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'cors_delete_object_v1' } = {
        summary => 'Delete an existing Cors',
        params => $params,
        returns => 'CorsDeleteObjectV1Response',
        };
}
# @return CorsDeleteObjectV1Response
#
sub cors_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_cors_id' is set
    unless (exists $args{'pki_cors_id'}) {
      croak("Missing the required parameter 'pki_cors_id' when calling cors_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/cors/{pkiCorsID}';

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
    if ( exists $args{'pki_cors_id'}) {
        my $_base_variable = "{" . "pkiCorsID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_cors_id'});
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
    my $_response_object = $self->{api_client}->deserialize('CorsDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# cors_edit_object_v1
#
# Edit an existing Cors
#
# @param int $pki_cors_id The unique ID of the Cors (required)
# @param CorsEditObjectV1Request $cors_edit_object_v1_request  (required)
{
    my $params = {
    'pki_cors_id' => {
        data_type => 'int',
        description => 'The unique ID of the Cors',
        required => '1',
    },
    'cors_edit_object_v1_request' => {
        data_type => 'CorsEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'cors_edit_object_v1' } = {
        summary => 'Edit an existing Cors',
        params => $params,
        returns => 'CorsEditObjectV1Response',
        };
}
# @return CorsEditObjectV1Response
#
sub cors_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_cors_id' is set
    unless (exists $args{'pki_cors_id'}) {
      croak("Missing the required parameter 'pki_cors_id' when calling cors_edit_object_v1");
    }

    # verify the required parameter 'cors_edit_object_v1_request' is set
    unless (exists $args{'cors_edit_object_v1_request'}) {
      croak("Missing the required parameter 'cors_edit_object_v1_request' when calling cors_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/cors/{pkiCorsID}';

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
    if ( exists $args{'pki_cors_id'}) {
        my $_base_variable = "{" . "pkiCorsID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_cors_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'cors_edit_object_v1_request'}) {
        $_body_data = $args{'cors_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('CorsEditObjectV1Response', $response);
    return $_response_object;
}

#
# cors_get_object_v2
#
# Retrieve an existing Cors
#
# @param int $pki_cors_id The unique ID of the Cors (required)
{
    my $params = {
    'pki_cors_id' => {
        data_type => 'int',
        description => 'The unique ID of the Cors',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'cors_get_object_v2' } = {
        summary => 'Retrieve an existing Cors',
        params => $params,
        returns => 'CorsGetObjectV2Response',
        };
}
# @return CorsGetObjectV2Response
#
sub cors_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_cors_id' is set
    unless (exists $args{'pki_cors_id'}) {
      croak("Missing the required parameter 'pki_cors_id' when calling cors_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/cors/{pkiCorsID}';

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
    if ( exists $args{'pki_cors_id'}) {
        my $_base_variable = "{" . "pkiCorsID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_cors_id'});
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
    my $_response_object = $self->{api_client}->deserialize('CorsGetObjectV2Response', $response);
    return $_response_object;
}

1;
