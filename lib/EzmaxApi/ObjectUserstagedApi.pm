=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.1
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectUserstagedApi;

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
# userstaged_create_user_v1
#
# Create a User from a Userstaged and then map it
#
# @param int $pki_userstaged_id  (required)
# @param object $body  (required)
{
    my $params = {
    'pki_userstaged_id' => {
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
    __PACKAGE__->method_documentation->{ 'userstaged_create_user_v1' } = {
        summary => 'Create a User from a Userstaged and then map it',
        params => $params,
        returns => 'UserstagedCreateUserV1Response',
        };
}
# @return UserstagedCreateUserV1Response
#
sub userstaged_create_user_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_userstaged_id' is set
    unless (exists $args{'pki_userstaged_id'}) {
      croak("Missing the required parameter 'pki_userstaged_id' when calling userstaged_create_user_v1");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling userstaged_create_user_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/userstaged/{pkiUserstagedID}/createUser';

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
    if ( exists $args{'pki_userstaged_id'}) {
        my $_base_variable = "{" . "pkiUserstagedID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_userstaged_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserstagedCreateUserV1Response', $response);
    return $_response_object;
}

#
# userstaged_delete_object_v1
#
# Delete an existing Userstaged
#
# @param int $pki_userstaged_id  (required)
{
    my $params = {
    'pki_userstaged_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'userstaged_delete_object_v1' } = {
        summary => 'Delete an existing Userstaged',
        params => $params,
        returns => 'UserstagedDeleteObjectV1Response',
        };
}
# @return UserstagedDeleteObjectV1Response
#
sub userstaged_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_userstaged_id' is set
    unless (exists $args{'pki_userstaged_id'}) {
      croak("Missing the required parameter 'pki_userstaged_id' when calling userstaged_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/userstaged/{pkiUserstagedID}';

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
    if ( exists $args{'pki_userstaged_id'}) {
        my $_base_variable = "{" . "pkiUserstagedID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_userstaged_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserstagedDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# userstaged_get_list_v1
#
# Retrieve Userstaged list
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
    __PACKAGE__->method_documentation->{ 'userstaged_get_list_v1' } = {
        summary => 'Retrieve Userstaged list',
        params => $params,
        returns => 'UserstagedGetListV1Response',
        };
}
# @return UserstagedGetListV1Response
#
sub userstaged_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/userstaged/getList';

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
    my $_response_object = $self->{api_client}->deserialize('UserstagedGetListV1Response', $response);
    return $_response_object;
}

#
# userstaged_get_object_v2
#
# Retrieve an existing Userstaged
#
# @param int $pki_userstaged_id  (required)
{
    my $params = {
    'pki_userstaged_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'userstaged_get_object_v2' } = {
        summary => 'Retrieve an existing Userstaged',
        params => $params,
        returns => 'UserstagedGetObjectV2Response',
        };
}
# @return UserstagedGetObjectV2Response
#
sub userstaged_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_userstaged_id' is set
    unless (exists $args{'pki_userstaged_id'}) {
      croak("Missing the required parameter 'pki_userstaged_id' when calling userstaged_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/userstaged/{pkiUserstagedID}';

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
    if ( exists $args{'pki_userstaged_id'}) {
        my $_base_variable = "{" . "pkiUserstagedID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_userstaged_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UserstagedGetObjectV2Response', $response);
    return $_response_object;
}

#
# userstaged_map_v1
#
# Map the Userstaged to an existing user
#
# @param int $pki_userstaged_id  (required)
# @param UserstagedMapV1Request $userstaged_map_v1_request  (required)
{
    my $params = {
    'pki_userstaged_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'userstaged_map_v1_request' => {
        data_type => 'UserstagedMapV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'userstaged_map_v1' } = {
        summary => 'Map the Userstaged to an existing user',
        params => $params,
        returns => 'UserstagedMapV1Response',
        };
}
# @return UserstagedMapV1Response
#
sub userstaged_map_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_userstaged_id' is set
    unless (exists $args{'pki_userstaged_id'}) {
      croak("Missing the required parameter 'pki_userstaged_id' when calling userstaged_map_v1");
    }

    # verify the required parameter 'userstaged_map_v1_request' is set
    unless (exists $args{'userstaged_map_v1_request'}) {
      croak("Missing the required parameter 'userstaged_map_v1_request' when calling userstaged_map_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/userstaged/{pkiUserstagedID}/map';

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
    if ( exists $args{'pki_userstaged_id'}) {
        my $_base_variable = "{" . "pkiUserstagedID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_userstaged_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'userstaged_map_v1_request'}) {
        $_body_data = $args{'userstaged_map_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserstagedMapV1Response', $response);
    return $_response_object;
}

1;
