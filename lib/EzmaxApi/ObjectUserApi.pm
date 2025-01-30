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
package EzmaxApi::ObjectUserApi;

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
# user_create_object_v1
#
# Create a new User
#
# @param UserCreateObjectV1Request $user_create_object_v1_request  (required)
{
    my $params = {
    'user_create_object_v1_request' => {
        data_type => 'UserCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_create_object_v1' } = {
        summary => 'Create a new User',
        params => $params,
        returns => 'UserCreateObjectV1Response',
        };
}
# @return UserCreateObjectV1Response
#
sub user_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_create_object_v1_request' is set
    unless (exists $args{'user_create_object_v1_request'}) {
      croak("Missing the required parameter 'user_create_object_v1_request' when calling user_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user';

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
    if ( exists $args{'user_create_object_v1_request'}) {
        $_body_data = $args{'user_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserCreateObjectV1Response', $response);
    return $_response_object;
}

#
# user_create_object_v2
#
# Create a new User
#
# @param UserCreateObjectV2Request $user_create_object_v2_request  (required)
{
    my $params = {
    'user_create_object_v2_request' => {
        data_type => 'UserCreateObjectV2Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_create_object_v2' } = {
        summary => 'Create a new User',
        params => $params,
        returns => 'UserCreateObjectV2Response',
        };
}
# @return UserCreateObjectV2Response
#
sub user_create_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_create_object_v2_request' is set
    unless (exists $args{'user_create_object_v2_request'}) {
      croak("Missing the required parameter 'user_create_object_v2_request' when calling user_create_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/user';

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
    if ( exists $args{'user_create_object_v2_request'}) {
        $_body_data = $args{'user_create_object_v2_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserCreateObjectV2Response', $response);
    return $_response_object;
}

#
# user_edit_colleagues_v2
#
# Edit multiple Colleagues
#
# @param int $pki_user_id  (required)
# @param UserEditColleaguesV2Request $user_edit_colleagues_v2_request  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'user_edit_colleagues_v2_request' => {
        data_type => 'UserEditColleaguesV2Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_edit_colleagues_v2' } = {
        summary => 'Edit multiple Colleagues',
        params => $params,
        returns => 'UserEditColleaguesV2Response',
        };
}
# @return UserEditColleaguesV2Response
#
sub user_edit_colleagues_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_edit_colleagues_v2");
    }

    # verify the required parameter 'user_edit_colleagues_v2_request' is set
    unless (exists $args{'user_edit_colleagues_v2_request'}) {
      croak("Missing the required parameter 'user_edit_colleagues_v2_request' when calling user_edit_colleagues_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/user/{pkiUserID}/editColleagues';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'user_edit_colleagues_v2_request'}) {
        $_body_data = $args{'user_edit_colleagues_v2_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserEditColleaguesV2Response', $response);
    return $_response_object;
}

#
# user_edit_object_v1
#
# Edit an existing User
#
# @param int $pki_user_id The unique ID of the User (required)
# @param UserEditObjectV1Request $user_edit_object_v1_request  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => 'The unique ID of the User',
        required => '1',
    },
    'user_edit_object_v1_request' => {
        data_type => 'UserEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_edit_object_v1' } = {
        summary => 'Edit an existing User',
        params => $params,
        returns => 'UserEditObjectV1Response',
        };
}
# @return UserEditObjectV1Response
#
sub user_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_edit_object_v1");
    }

    # verify the required parameter 'user_edit_object_v1_request' is set
    unless (exists $args{'user_edit_object_v1_request'}) {
      croak("Missing the required parameter 'user_edit_object_v1_request' when calling user_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'user_edit_object_v1_request'}) {
        $_body_data = $args{'user_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserEditObjectV1Response', $response);
    return $_response_object;
}

#
# user_edit_permissions_v1
#
# Edit multiple Permissions
#
# @param int $pki_user_id  (required)
# @param UserEditPermissionsV1Request $user_edit_permissions_v1_request  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'user_edit_permissions_v1_request' => {
        data_type => 'UserEditPermissionsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_edit_permissions_v1' } = {
        summary => 'Edit multiple Permissions',
        params => $params,
        returns => 'UserEditPermissionsV1Response',
        };
}
# @return UserEditPermissionsV1Response
#
sub user_edit_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_edit_permissions_v1");
    }

    # verify the required parameter 'user_edit_permissions_v1_request' is set
    unless (exists $args{'user_edit_permissions_v1_request'}) {
      croak("Missing the required parameter 'user_edit_permissions_v1_request' when calling user_edit_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/editPermissions';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'user_edit_permissions_v1_request'}) {
        $_body_data = $args{'user_edit_permissions_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserEditPermissionsV1Response', $response);
    return $_response_object;
}

#
# user_get_apikeys_v1
#
# Retrieve an existing User's Apikeys
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_apikeys_v1' } = {
        summary => 'Retrieve an existing User&#39;s Apikeys',
        params => $params,
        returns => 'UserGetApikeysV1Response',
        };
}
# @return UserGetApikeysV1Response
#
sub user_get_apikeys_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_apikeys_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/getApikeys';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetApikeysV1Response', $response);
    return $_response_object;
}

#
# user_get_autocomplete_v2
#
# Retrieve Users and IDs
#
# @param string $s_selector The type of Users to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Users to return',
        required => '1',
    },
    'e_filter_active' => {
        data_type => 'string',
        description => 'Specify which results we want to display.',
        required => '0',
    },
    's_query' => {
        data_type => 'string',
        description => 'Allow to filter the returned results',
        required => '0',
    },
    'accept_language' => {
        data_type => 'HeaderAcceptLanguage',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_autocomplete_v2' } = {
        summary => 'Retrieve Users and IDs',
        params => $params,
        returns => 'UserGetAutocompleteV2Response',
        };
}
# @return UserGetAutocompleteV2Response
#
sub user_get_autocomplete_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling user_get_autocomplete_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/user/getAutocomplete/{sSelector}';

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

    # query params
    if ( exists $args{'e_filter_active'}) {
        $query_params->{'eFilterActive'} = $self->{api_client}->to_query_value($args{'e_filter_active'});
    }

    # query params
    if ( exists $args{'s_query'}) {
        $query_params->{'sQuery'} = $self->{api_client}->to_query_value($args{'s_query'});
    }

    # header params
    if ( exists $args{'accept_language'}) {
        $header_params->{'Accept-Language'} = $self->{api_client}->to_header_value($args{'accept_language'});
    }

    # path params
    if ( exists $args{'s_selector'}) {
        my $_base_variable = "{" . "sSelector" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'s_selector'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetAutocompleteV2Response', $response);
    return $_response_object;
}

#
# user_get_colleagues_v2
#
# Retrieve an existing User's Colleagues
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_colleagues_v2' } = {
        summary => 'Retrieve an existing User&#39;s Colleagues',
        params => $params,
        returns => 'UserGetColleaguesV2Response',
        };
}
# @return UserGetColleaguesV2Response
#
sub user_get_colleagues_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_colleagues_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/user/{pkiUserID}/getColleagues';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetColleaguesV2Response', $response);
    return $_response_object;
}

#
# user_get_effective_permissions_v1
#
# Retrieve an existing User's Effective Permissions
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_effective_permissions_v1' } = {
        summary => 'Retrieve an existing User&#39;s Effective Permissions',
        params => $params,
        returns => 'UserGetEffectivePermissionsV1Response',
        };
}
# @return UserGetEffectivePermissionsV1Response
#
sub user_get_effective_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_effective_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/getEffectivePermissions';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetEffectivePermissionsV1Response', $response);
    return $_response_object;
}

#
# user_get_list_v1
#
# Retrieve User list
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
    __PACKAGE__->method_documentation->{ 'user_get_list_v1' } = {
        summary => 'Retrieve User list',
        params => $params,
        returns => 'UserGetListV1Response',
        };
}
# @return UserGetListV1Response
#
sub user_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/user/getList';

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
    my $_response_object = $self->{api_client}->deserialize('UserGetListV1Response', $response);
    return $_response_object;
}

#
# user_get_object_v2
#
# Retrieve an existing User
#
# @param int $pki_user_id The unique ID of the User (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => 'The unique ID of the User',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_object_v2' } = {
        summary => 'Retrieve an existing User',
        params => $params,
        returns => 'UserGetObjectV2Response',
        };
}
# @return UserGetObjectV2Response
#
sub user_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/user/{pkiUserID}';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetObjectV2Response', $response);
    return $_response_object;
}

#
# user_get_permissions_v1
#
# Retrieve an existing User's Permissions
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_permissions_v1' } = {
        summary => 'Retrieve an existing User&#39;s Permissions',
        params => $params,
        returns => 'UserGetPermissionsV1Response',
        };
}
# @return UserGetPermissionsV1Response
#
sub user_get_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/getPermissions';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetPermissionsV1Response', $response);
    return $_response_object;
}

#
# user_get_subnets_v1
#
# Retrieve an existing User's Subnets
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_subnets_v1' } = {
        summary => 'Retrieve an existing User&#39;s Subnets',
        params => $params,
        returns => 'UserGetSubnetsV1Response',
        };
}
# @return UserGetSubnetsV1Response
#
sub user_get_subnets_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_subnets_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/getSubnets';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetSubnetsV1Response', $response);
    return $_response_object;
}

#
# user_get_usergroupexternals_v1
#
# Get User's Usergroupexternals
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_usergroupexternals_v1' } = {
        summary => 'Get User&#39;s Usergroupexternals',
        params => $params,
        returns => 'UserGetUsergroupexternalsV1Response',
        };
}
# @return UserGetUsergroupexternalsV1Response
#
sub user_get_usergroupexternals_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_usergroupexternals_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/getUsergroupexternals';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetUsergroupexternalsV1Response', $response);
    return $_response_object;
}

#
# user_get_usergroups_v1
#
# Get User's Usergroups
#
# @param int $pki_user_id  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_get_usergroups_v1' } = {
        summary => 'Get User&#39;s Usergroups',
        params => $params,
        returns => 'UserGetUsergroupsV1Response',
        };
}
# @return UserGetUsergroupsV1Response
#
sub user_get_usergroups_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_get_usergroups_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/getUsergroups';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserGetUsergroupsV1Response', $response);
    return $_response_object;
}

#
# user_send_password_reset_v1
#
# Send password reset
#
# @param int $pki_user_id  (required)
# @param object $body  (required)
{
    my $params = {
    'pki_user_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'body' => {
        data_type => 'object',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_send_password_reset_v1' } = {
        summary => 'Send password reset',
        params => $params,
        returns => 'UserSendPasswordResetV1Response',
        };
}
# @return UserSendPasswordResetV1Response
#
sub user_send_password_reset_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_user_id' is set
    unless (exists $args{'pki_user_id'}) {
      croak("Missing the required parameter 'pki_user_id' when calling user_send_password_reset_v1");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling user_send_password_reset_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/user/{pkiUserID}/sendPasswordReset';

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
    if ( exists $args{'pki_user_id'}) {
        my $_base_variable = "{" . "pkiUserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
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
    my $_response_object = $self->{api_client}->deserialize('UserSendPasswordResetV1Response', $response);
    return $_response_object;
}

1;
