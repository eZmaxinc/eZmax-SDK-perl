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
package EzmaxApi::ObjectApikeyApi;

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
# apikey_create_object_v2
#
# Create a new Apikey
#
# @param ApikeyCreateObjectV2Request $apikey_create_object_v2_request  (required)
{
    my $params = {
    'apikey_create_object_v2_request' => {
        data_type => 'ApikeyCreateObjectV2Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_create_object_v2' } = {
        summary => 'Create a new Apikey',
        params => $params,
        returns => 'ApikeyCreateObjectV2Response',
        };
}
# @return ApikeyCreateObjectV2Response
#
sub apikey_create_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'apikey_create_object_v2_request' is set
    unless (exists $args{'apikey_create_object_v2_request'}) {
      croak("Missing the required parameter 'apikey_create_object_v2_request' when calling apikey_create_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/apikey';

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
    if ( exists $args{'apikey_create_object_v2_request'}) {
        $_body_data = $args{'apikey_create_object_v2_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyCreateObjectV2Response', $response);
    return $_response_object;
}

#
# apikey_edit_object_v1
#
# Edit an existing Apikey
#
# @param int $pki_apikey_id The unique ID of the Apikey (required)
# @param ApikeyEditObjectV1Request $apikey_edit_object_v1_request  (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => 'The unique ID of the Apikey',
        required => '1',
    },
    'apikey_edit_object_v1_request' => {
        data_type => 'ApikeyEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_edit_object_v1' } = {
        summary => 'Edit an existing Apikey',
        params => $params,
        returns => 'ApikeyEditObjectV1Response',
        };
}
# @return ApikeyEditObjectV1Response
#
sub apikey_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_edit_object_v1");
    }

    # verify the required parameter 'apikey_edit_object_v1_request' is set
    unless (exists $args{'apikey_edit_object_v1_request'}) {
      croak("Missing the required parameter 'apikey_edit_object_v1_request' when calling apikey_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/{pkiApikeyID}';

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
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'apikey_edit_object_v1_request'}) {
        $_body_data = $args{'apikey_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyEditObjectV1Response', $response);
    return $_response_object;
}

#
# apikey_edit_permissions_v1
#
# Edit multiple Permissions
#
# @param int $pki_apikey_id  (required)
# @param ApikeyEditPermissionsV1Request $apikey_edit_permissions_v1_request  (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'apikey_edit_permissions_v1_request' => {
        data_type => 'ApikeyEditPermissionsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_edit_permissions_v1' } = {
        summary => 'Edit multiple Permissions',
        params => $params,
        returns => 'ApikeyEditPermissionsV1Response',
        };
}
# @return ApikeyEditPermissionsV1Response
#
sub apikey_edit_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_edit_permissions_v1");
    }

    # verify the required parameter 'apikey_edit_permissions_v1_request' is set
    unless (exists $args{'apikey_edit_permissions_v1_request'}) {
      croak("Missing the required parameter 'apikey_edit_permissions_v1_request' when calling apikey_edit_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/{pkiApikeyID}/editPermissions';

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
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'apikey_edit_permissions_v1_request'}) {
        $_body_data = $args{'apikey_edit_permissions_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyEditPermissionsV1Response', $response);
    return $_response_object;
}

#
# apikey_generate_delegated_credentials_v1
#
# Generate a delegated credentials
#
# @param ApikeyGenerateDelegatedCredentialsV1Request $apikey_generate_delegated_credentials_v1_request  (required)
{
    my $params = {
    'apikey_generate_delegated_credentials_v1_request' => {
        data_type => 'ApikeyGenerateDelegatedCredentialsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_generate_delegated_credentials_v1' } = {
        summary => 'Generate a delegated credentials',
        params => $params,
        returns => 'ApikeyGenerateDelegatedCredentialsV1Response',
        };
}
# @return ApikeyGenerateDelegatedCredentialsV1Response
#
sub apikey_generate_delegated_credentials_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'apikey_generate_delegated_credentials_v1_request' is set
    unless (exists $args{'apikey_generate_delegated_credentials_v1_request'}) {
      croak("Missing the required parameter 'apikey_generate_delegated_credentials_v1_request' when calling apikey_generate_delegated_credentials_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/generateDelegatedCredentials';

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
    if ( exists $args{'apikey_generate_delegated_credentials_v1_request'}) {
        $_body_data = $args{'apikey_generate_delegated_credentials_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyGenerateDelegatedCredentialsV1Response', $response);
    return $_response_object;
}

#
# apikey_get_cors_v1
#
# Retrieve an existing Apikey's cors
#
# @param int $pki_apikey_id  (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_get_cors_v1' } = {
        summary => 'Retrieve an existing Apikey&#39;s cors',
        params => $params,
        returns => 'ApikeyGetCorsV1Response',
        };
}
# @return ApikeyGetCorsV1Response
#
sub apikey_get_cors_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_get_cors_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/{pkiApikeyID}/getCors';

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
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyGetCorsV1Response', $response);
    return $_response_object;
}

#
# apikey_get_list_v1
#
# Retrieve Apikey list
#
# @param string $e_order_by Specify how you want the results to be sorted (optional)
# @param int $i_row_max  (optional)
# @param int $i_row_offset  (optional, default to 0)
# @param HeaderAcceptLanguage $accept_language  (optional)
# @param string $s_filter  (optional)
{
    my $params = {
    'e_order_by' => {
        data_type => 'string',
        description => 'Specify how you want the results to be sorted',
        required => '0',
    },
    'i_row_max' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'i_row_offset' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'accept_language' => {
        data_type => 'HeaderAcceptLanguage',
        description => '',
        required => '0',
    },
    's_filter' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_get_list_v1' } = {
        summary => 'Retrieve Apikey list',
        params => $params,
        returns => 'ApikeyGetListV1Response',
        };
}
# @return ApikeyGetListV1Response
#
sub apikey_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/apikey/getList';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'e_order_by'}) {
        $query_params->{'eOrderBy'} = $self->{api_client}->to_query_value($args{'e_order_by'});
    }

    # query params
    if ( exists $args{'i_row_max'}) {
        $query_params->{'iRowMax'} = $self->{api_client}->to_query_value($args{'i_row_max'});
    }

    # query params
    if ( exists $args{'i_row_offset'}) {
        $query_params->{'iRowOffset'} = $self->{api_client}->to_query_value($args{'i_row_offset'});
    }

    # query params
    if ( exists $args{'s_filter'}) {
        $query_params->{'sFilter'} = $self->{api_client}->to_query_value($args{'s_filter'});
    }

    # header params
    if ( exists $args{'accept_language'}) {
        $header_params->{'Accept-Language'} = $self->{api_client}->to_header_value($args{'accept_language'});
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyGetListV1Response', $response);
    return $_response_object;
}

#
# apikey_get_object_v2
#
# Retrieve an existing Apikey
#
# @param int $pki_apikey_id The unique ID of the Apikey (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => 'The unique ID of the Apikey',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_get_object_v2' } = {
        summary => 'Retrieve an existing Apikey',
        params => $params,
        returns => 'ApikeyGetObjectV2Response',
        };
}
# @return ApikeyGetObjectV2Response
#
sub apikey_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/apikey/{pkiApikeyID}';

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
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyGetObjectV2Response', $response);
    return $_response_object;
}

#
# apikey_get_permissions_v1
#
# Retrieve an existing Apikey's Permissions
#
# @param int $pki_apikey_id  (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_get_permissions_v1' } = {
        summary => 'Retrieve an existing Apikey&#39;s Permissions',
        params => $params,
        returns => 'ApikeyGetPermissionsV1Response',
        };
}
# @return ApikeyGetPermissionsV1Response
#
sub apikey_get_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_get_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/{pkiApikeyID}/getPermissions';

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
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyGetPermissionsV1Response', $response);
    return $_response_object;
}

#
# apikey_get_subnets_v1
#
# Retrieve an existing Apikey's subnets
#
# @param int $pki_apikey_id  (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_get_subnets_v1' } = {
        summary => 'Retrieve an existing Apikey&#39;s subnets',
        params => $params,
        returns => 'ApikeyGetSubnetsV1Response',
        };
}
# @return ApikeyGetSubnetsV1Response
#
sub apikey_get_subnets_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_get_subnets_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/{pkiApikeyID}/getSubnets';

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
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyGetSubnetsV1Response', $response);
    return $_response_object;
}

#
# apikey_regenerate_v1
#
# Regenerate the Apikey
#
# @param int $pki_apikey_id  (required)
# @param ApikeyRegenerateV1Request $apikey_regenerate_v1_request  (required)
{
    my $params = {
    'pki_apikey_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'apikey_regenerate_v1_request' => {
        data_type => 'ApikeyRegenerateV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'apikey_regenerate_v1' } = {
        summary => 'Regenerate the Apikey',
        params => $params,
        returns => 'ApikeyRegenerateV1Response',
        };
}
# @return ApikeyRegenerateV1Response
#
sub apikey_regenerate_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_apikey_id' is set
    unless (exists $args{'pki_apikey_id'}) {
      croak("Missing the required parameter 'pki_apikey_id' when calling apikey_regenerate_v1");
    }

    # verify the required parameter 'apikey_regenerate_v1_request' is set
    unless (exists $args{'apikey_regenerate_v1_request'}) {
      croak("Missing the required parameter 'apikey_regenerate_v1_request' when calling apikey_regenerate_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/apikey/{pkiApikeyID}/regenerate';

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

    # path params
    if ( exists $args{'pki_apikey_id'}) {
        my $_base_variable = "{" . "pkiApikeyID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_apikey_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'apikey_regenerate_v1_request'}) {
        $_body_data = $args{'apikey_regenerate_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ApikeyRegenerateV1Response', $response);
    return $_response_object;
}

1;
