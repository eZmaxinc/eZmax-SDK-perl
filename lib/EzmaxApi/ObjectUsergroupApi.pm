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
package EzmaxApi::ObjectUsergroupApi;

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
# usergroup_create_object_v1
#
# Create a new Usergroup
#
# @param UsergroupCreateObjectV1Request $usergroup_create_object_v1_request  (required)
{
    my $params = {
    'usergroup_create_object_v1_request' => {
        data_type => 'UsergroupCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_create_object_v1' } = {
        summary => 'Create a new Usergroup',
        params => $params,
        returns => 'UsergroupCreateObjectV1Response',
        };
}
# @return UsergroupCreateObjectV1Response
#
sub usergroup_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'usergroup_create_object_v1_request' is set
    unless (exists $args{'usergroup_create_object_v1_request'}) {
      croak("Missing the required parameter 'usergroup_create_object_v1_request' when calling usergroup_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup';

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
    if ( exists $args{'usergroup_create_object_v1_request'}) {
        $_body_data = $args{'usergroup_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupCreateObjectV1Response', $response);
    return $_response_object;
}

#
# usergroup_edit_object_v1
#
# Edit an existing Usergroup
#
# @param int $pki_usergroup_id  (required)
# @param UsergroupEditObjectV1Request $usergroup_edit_object_v1_request  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'usergroup_edit_object_v1_request' => {
        data_type => 'UsergroupEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_edit_object_v1' } = {
        summary => 'Edit an existing Usergroup',
        params => $params,
        returns => 'UsergroupEditObjectV1Response',
        };
}
# @return UsergroupEditObjectV1Response
#
sub usergroup_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_edit_object_v1");
    }

    # verify the required parameter 'usergroup_edit_object_v1_request' is set
    unless (exists $args{'usergroup_edit_object_v1_request'}) {
      croak("Missing the required parameter 'usergroup_edit_object_v1_request' when calling usergroup_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'usergroup_edit_object_v1_request'}) {
        $_body_data = $args{'usergroup_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupEditObjectV1Response', $response);
    return $_response_object;
}

#
# usergroup_edit_permissions_v1
#
# Edit multiple Permissions
#
# @param int $pki_usergroup_id  (required)
# @param UsergroupEditPermissionsV1Request $usergroup_edit_permissions_v1_request  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'usergroup_edit_permissions_v1_request' => {
        data_type => 'UsergroupEditPermissionsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_edit_permissions_v1' } = {
        summary => 'Edit multiple Permissions',
        params => $params,
        returns => 'UsergroupEditPermissionsV1Response',
        };
}
# @return UsergroupEditPermissionsV1Response
#
sub usergroup_edit_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_edit_permissions_v1");
    }

    # verify the required parameter 'usergroup_edit_permissions_v1_request' is set
    unless (exists $args{'usergroup_edit_permissions_v1_request'}) {
      croak("Missing the required parameter 'usergroup_edit_permissions_v1_request' when calling usergroup_edit_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}/editPermissions';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'usergroup_edit_permissions_v1_request'}) {
        $_body_data = $args{'usergroup_edit_permissions_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupEditPermissionsV1Response', $response);
    return $_response_object;
}

#
# usergroup_edit_usergroupdelegations_v1
#
# Edit multiple Usergroupdelegations
#
# @param int $pki_usergroup_id  (required)
# @param UsergroupEditUsergroupdelegationsV1Request $usergroup_edit_usergroupdelegations_v1_request  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'usergroup_edit_usergroupdelegations_v1_request' => {
        data_type => 'UsergroupEditUsergroupdelegationsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_edit_usergroupdelegations_v1' } = {
        summary => 'Edit multiple Usergroupdelegations',
        params => $params,
        returns => 'UsergroupEditUsergroupdelegationsV1Response',
        };
}
# @return UsergroupEditUsergroupdelegationsV1Response
#
sub usergroup_edit_usergroupdelegations_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_edit_usergroupdelegations_v1");
    }

    # verify the required parameter 'usergroup_edit_usergroupdelegations_v1_request' is set
    unless (exists $args{'usergroup_edit_usergroupdelegations_v1_request'}) {
      croak("Missing the required parameter 'usergroup_edit_usergroupdelegations_v1_request' when calling usergroup_edit_usergroupdelegations_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}/editUsergroupdelegations';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'usergroup_edit_usergroupdelegations_v1_request'}) {
        $_body_data = $args{'usergroup_edit_usergroupdelegations_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupEditUsergroupdelegationsV1Response', $response);
    return $_response_object;
}

#
# usergroup_edit_usergroupmemberships_v1
#
# Edit multiple Usergroupmemberships
#
# @param int $pki_usergroup_id  (required)
# @param UsergroupEditUsergroupmembershipsV1Request $usergroup_edit_usergroupmemberships_v1_request  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'usergroup_edit_usergroupmemberships_v1_request' => {
        data_type => 'UsergroupEditUsergroupmembershipsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_edit_usergroupmemberships_v1' } = {
        summary => 'Edit multiple Usergroupmemberships',
        params => $params,
        returns => 'UsergroupEditUsergroupmembershipsV1Response',
        };
}
# @return UsergroupEditUsergroupmembershipsV1Response
#
sub usergroup_edit_usergroupmemberships_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_edit_usergroupmemberships_v1");
    }

    # verify the required parameter 'usergroup_edit_usergroupmemberships_v1_request' is set
    unless (exists $args{'usergroup_edit_usergroupmemberships_v1_request'}) {
      croak("Missing the required parameter 'usergroup_edit_usergroupmemberships_v1_request' when calling usergroup_edit_usergroupmemberships_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}/editUsergroupmemberships';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'usergroup_edit_usergroupmemberships_v1_request'}) {
        $_body_data = $args{'usergroup_edit_usergroupmemberships_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupEditUsergroupmembershipsV1Response', $response);
    return $_response_object;
}

#
# usergroup_get_autocomplete_v2
#
# Retrieve Usergroups and IDs
#
# @param string $s_selector The type of Usergroups to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Usergroups to return',
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
    __PACKAGE__->method_documentation->{ 'usergroup_get_autocomplete_v2' } = {
        summary => 'Retrieve Usergroups and IDs',
        params => $params,
        returns => 'UsergroupGetAutocompleteV2Response',
        };
}
# @return UsergroupGetAutocompleteV2Response
#
sub usergroup_get_autocomplete_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling usergroup_get_autocomplete_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/usergroup/getAutocomplete/{sSelector}';

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
    my $_response_object = $self->{api_client}->deserialize('UsergroupGetAutocompleteV2Response', $response);
    return $_response_object;
}

#
# usergroup_get_list_v1
#
# Retrieve Usergroup list
#
# @param string $e_order_by Specify how you want the results to be sorted (optional)
# @param int $i_row_max  (optional, default to 10000)
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
    __PACKAGE__->method_documentation->{ 'usergroup_get_list_v1' } = {
        summary => 'Retrieve Usergroup list',
        params => $params,
        returns => 'UsergroupGetListV1Response',
        };
}
# @return UsergroupGetListV1Response
#
sub usergroup_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/usergroup/getList';

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
    my $_response_object = $self->{api_client}->deserialize('UsergroupGetListV1Response', $response);
    return $_response_object;
}

#
# usergroup_get_object_v2
#
# Retrieve an existing Usergroup
#
# @param int $pki_usergroup_id  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_get_object_v2' } = {
        summary => 'Retrieve an existing Usergroup',
        params => $params,
        returns => 'UsergroupGetObjectV2Response',
        };
}
# @return UsergroupGetObjectV2Response
#
sub usergroup_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/usergroup/{pkiUsergroupID}';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupGetObjectV2Response', $response);
    return $_response_object;
}

#
# usergroup_get_permissions_v1
#
# Retrieve an existing Usergroup's Permissions
#
# @param int $pki_usergroup_id  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_get_permissions_v1' } = {
        summary => 'Retrieve an existing Usergroup&#39;s Permissions',
        params => $params,
        returns => 'UsergroupGetPermissionsV1Response',
        };
}
# @return UsergroupGetPermissionsV1Response
#
sub usergroup_get_permissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_get_permissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}/getPermissions';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupGetPermissionsV1Response', $response);
    return $_response_object;
}

#
# usergroup_get_usergroupdelegations_v1
#
# Retrieve an existing Usergroup's Usergroupdelegations
#
# @param int $pki_usergroup_id  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_get_usergroupdelegations_v1' } = {
        summary => 'Retrieve an existing Usergroup&#39;s Usergroupdelegations',
        params => $params,
        returns => 'UsergroupGetUsergroupdelegationsV1Response',
        };
}
# @return UsergroupGetUsergroupdelegationsV1Response
#
sub usergroup_get_usergroupdelegations_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_get_usergroupdelegations_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}/getUsergroupdelegations';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupGetUsergroupdelegationsV1Response', $response);
    return $_response_object;
}

#
# usergroup_get_usergroupmemberships_v1
#
# Retrieve an existing Usergroup's Usergroupmemberships
#
# @param int $pki_usergroup_id  (required)
{
    my $params = {
    'pki_usergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroup_get_usergroupmemberships_v1' } = {
        summary => 'Retrieve an existing Usergroup&#39;s Usergroupmemberships',
        params => $params,
        returns => 'UsergroupGetUsergroupmembershipsV1Response',
        };
}
# @return UsergroupGetUsergroupmembershipsV1Response
#
sub usergroup_get_usergroupmemberships_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroup_id' is set
    unless (exists $args{'pki_usergroup_id'}) {
      croak("Missing the required parameter 'pki_usergroup_id' when calling usergroup_get_usergroupmemberships_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroup/{pkiUsergroupID}/getUsergroupmemberships';

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
    if ( exists $args{'pki_usergroup_id'}) {
        my $_base_variable = "{" . "pkiUsergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupGetUsergroupmembershipsV1Response', $response);
    return $_response_object;
}

1;
