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
package EzmaxApi::ObjectUsergroupexternalApi;

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
# usergroupexternal_create_object_v1
#
# Create a new Usergroupexternal
#
# @param UsergroupexternalCreateObjectV1Request $usergroupexternal_create_object_v1_request  (required)
{
    my $params = {
    'usergroupexternal_create_object_v1_request' => {
        data_type => 'UsergroupexternalCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupexternal_create_object_v1' } = {
        summary => 'Create a new Usergroupexternal',
        params => $params,
        returns => 'UsergroupexternalCreateObjectV1Response',
        };
}
# @return UsergroupexternalCreateObjectV1Response
#
sub usergroupexternal_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'usergroupexternal_create_object_v1_request' is set
    unless (exists $args{'usergroupexternal_create_object_v1_request'}) {
      croak("Missing the required parameter 'usergroupexternal_create_object_v1_request' when calling usergroupexternal_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupexternal';

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
    if ( exists $args{'usergroupexternal_create_object_v1_request'}) {
        $_body_data = $args{'usergroupexternal_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalCreateObjectV1Response', $response);
    return $_response_object;
}

#
# usergroupexternal_delete_object_v1
#
# Delete an existing Usergroupexternal
#
# @param int $pki_usergroupexternal_id The unique ID of the Usergroupexternal (required)
{
    my $params = {
    'pki_usergroupexternal_id' => {
        data_type => 'int',
        description => 'The unique ID of the Usergroupexternal',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupexternal_delete_object_v1' } = {
        summary => 'Delete an existing Usergroupexternal',
        params => $params,
        returns => 'UsergroupexternalDeleteObjectV1Response',
        };
}
# @return UsergroupexternalDeleteObjectV1Response
#
sub usergroupexternal_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupexternal_id' is set
    unless (exists $args{'pki_usergroupexternal_id'}) {
      croak("Missing the required parameter 'pki_usergroupexternal_id' when calling usergroupexternal_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupexternal/{pkiUsergroupexternalID}';

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
    if ( exists $args{'pki_usergroupexternal_id'}) {
        my $_base_variable = "{" . "pkiUsergroupexternalID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupexternal_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# usergroupexternal_edit_object_v1
#
# Edit an existing Usergroupexternal
#
# @param int $pki_usergroupexternal_id The unique ID of the Usergroupexternal (required)
# @param UsergroupexternalEditObjectV1Request $usergroupexternal_edit_object_v1_request  (required)
{
    my $params = {
    'pki_usergroupexternal_id' => {
        data_type => 'int',
        description => 'The unique ID of the Usergroupexternal',
        required => '1',
    },
    'usergroupexternal_edit_object_v1_request' => {
        data_type => 'UsergroupexternalEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupexternal_edit_object_v1' } = {
        summary => 'Edit an existing Usergroupexternal',
        params => $params,
        returns => 'UsergroupexternalEditObjectV1Response',
        };
}
# @return UsergroupexternalEditObjectV1Response
#
sub usergroupexternal_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupexternal_id' is set
    unless (exists $args{'pki_usergroupexternal_id'}) {
      croak("Missing the required parameter 'pki_usergroupexternal_id' when calling usergroupexternal_edit_object_v1");
    }

    # verify the required parameter 'usergroupexternal_edit_object_v1_request' is set
    unless (exists $args{'usergroupexternal_edit_object_v1_request'}) {
      croak("Missing the required parameter 'usergroupexternal_edit_object_v1_request' when calling usergroupexternal_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupexternal/{pkiUsergroupexternalID}';

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
    if ( exists $args{'pki_usergroupexternal_id'}) {
        my $_base_variable = "{" . "pkiUsergroupexternalID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupexternal_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'usergroupexternal_edit_object_v1_request'}) {
        $_body_data = $args{'usergroupexternal_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalEditObjectV1Response', $response);
    return $_response_object;
}

#
# usergroupexternal_get_autocomplete_v2
#
# Retrieve Usergroupexternals and IDs
#
# @param string $s_selector The type of Usergroupexternals to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Usergroupexternals to return',
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
    __PACKAGE__->method_documentation->{ 'usergroupexternal_get_autocomplete_v2' } = {
        summary => 'Retrieve Usergroupexternals and IDs',
        params => $params,
        returns => 'UsergroupexternalGetAutocompleteV2Response',
        };
}
# @return UsergroupexternalGetAutocompleteV2Response
#
sub usergroupexternal_get_autocomplete_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling usergroupexternal_get_autocomplete_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/usergroupexternal/getAutocomplete/{sSelector}';

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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalGetAutocompleteV2Response', $response);
    return $_response_object;
}

#
# usergroupexternal_get_list_v1
#
# Retrieve Usergroupexternal list
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
    __PACKAGE__->method_documentation->{ 'usergroupexternal_get_list_v1' } = {
        summary => 'Retrieve Usergroupexternal list',
        params => $params,
        returns => 'UsergroupexternalGetListV1Response',
        };
}
# @return UsergroupexternalGetListV1Response
#
sub usergroupexternal_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/usergroupexternal/getList';

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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalGetListV1Response', $response);
    return $_response_object;
}

#
# usergroupexternal_get_object_v2
#
# Retrieve an existing Usergroupexternal
#
# @param int $pki_usergroupexternal_id The unique ID of the Usergroupexternal (required)
{
    my $params = {
    'pki_usergroupexternal_id' => {
        data_type => 'int',
        description => 'The unique ID of the Usergroupexternal',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupexternal_get_object_v2' } = {
        summary => 'Retrieve an existing Usergroupexternal',
        params => $params,
        returns => 'UsergroupexternalGetObjectV2Response',
        };
}
# @return UsergroupexternalGetObjectV2Response
#
sub usergroupexternal_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupexternal_id' is set
    unless (exists $args{'pki_usergroupexternal_id'}) {
      croak("Missing the required parameter 'pki_usergroupexternal_id' when calling usergroupexternal_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/usergroupexternal/{pkiUsergroupexternalID}';

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
    if ( exists $args{'pki_usergroupexternal_id'}) {
        my $_base_variable = "{" . "pkiUsergroupexternalID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupexternal_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalGetObjectV2Response', $response);
    return $_response_object;
}

#
# usergroupexternal_get_usergroupexternalmemberships_v1
#
# Retrieve an existing Usergroupexternal's Usergroupexternalmemberships
#
# @param int $pki_usergroupexternal_id  (required)
{
    my $params = {
    'pki_usergroupexternal_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupexternal_get_usergroupexternalmemberships_v1' } = {
        summary => 'Retrieve an existing Usergroupexternal&#39;s Usergroupexternalmemberships',
        params => $params,
        returns => 'UsergroupexternalGetUsergroupexternalmembershipsV1Response',
        };
}
# @return UsergroupexternalGetUsergroupexternalmembershipsV1Response
#
sub usergroupexternal_get_usergroupexternalmemberships_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupexternal_id' is set
    unless (exists $args{'pki_usergroupexternal_id'}) {
      croak("Missing the required parameter 'pki_usergroupexternal_id' when calling usergroupexternal_get_usergroupexternalmemberships_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupexternal/{pkiUsergroupexternalID}/getUsergroupexternalmemberships';

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
    if ( exists $args{'pki_usergroupexternal_id'}) {
        my $_base_variable = "{" . "pkiUsergroupexternalID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupexternal_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalGetUsergroupexternalmembershipsV1Response', $response);
    return $_response_object;
}

#
# usergroupexternal_get_usergroups_v1
#
# Get Usergroupexternal's Usergroups
#
# @param int $pki_usergroupexternal_id  (required)
{
    my $params = {
    'pki_usergroupexternal_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupexternal_get_usergroups_v1' } = {
        summary => 'Get Usergroupexternal&#39;s Usergroups',
        params => $params,
        returns => 'UsergroupexternalGetUsergroupsV1Response',
        };
}
# @return UsergroupexternalGetUsergroupsV1Response
#
sub usergroupexternal_get_usergroups_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupexternal_id' is set
    unless (exists $args{'pki_usergroupexternal_id'}) {
      croak("Missing the required parameter 'pki_usergroupexternal_id' when calling usergroupexternal_get_usergroups_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupexternal/{pkiUsergroupexternalID}/getUsergroups';

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
    if ( exists $args{'pki_usergroupexternal_id'}) {
        my $_base_variable = "{" . "pkiUsergroupexternalID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupexternal_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupexternalGetUsergroupsV1Response', $response);
    return $_response_object;
}

1;
