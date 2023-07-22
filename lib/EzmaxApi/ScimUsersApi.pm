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
package EzmaxApi::ScimUsersApi;

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
# users_create_object_scim_v2
#
# Create a new User
#
# @param ScimUser $scim_user  (required)
{
    my $params = {
    'scim_user' => {
        data_type => 'ScimUser',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'users_create_object_scim_v2' } = {
        summary => 'Create a new User',
        params => $params,
        returns => 'ScimUser',
        };
}
# @return ScimUser
#
sub users_create_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'scim_user' is set
    unless (exists $args{'scim_user'}) {
      croak("Missing the required parameter 'scim_user' when calling users_create_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Users';

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
    if ( exists $args{'scim_user'}) {
        $_body_data = $args{'scim_user'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Bearer )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ScimUser', $response);
    return $_response_object;
}

#
# users_delete_object_scim_v2
#
# Delete an existing User
#
# @param string $user_id  (required)
{
    my $params = {
    'user_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'users_delete_object_scim_v2' } = {
        summary => 'Delete an existing User',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub users_delete_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling users_delete_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Users/{userId}';

    my $_method = 'DELETE';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept();
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Bearer )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# users_edit_object_scim_v2
#
# Edit an existing User
#
# @param string $user_id  (required)
# @param ScimUser $scim_user  (required)
{
    my $params = {
    'user_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'scim_user' => {
        data_type => 'ScimUser',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'users_edit_object_scim_v2' } = {
        summary => 'Edit an existing User',
        params => $params,
        returns => 'ScimUser',
        };
}
# @return ScimUser
#
sub users_edit_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling users_edit_object_scim_v2");
    }

    # verify the required parameter 'scim_user' is set
    unless (exists $args{'scim_user'}) {
      croak("Missing the required parameter 'scim_user' when calling users_edit_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Users/{userId}';

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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'scim_user'}) {
        $_body_data = $args{'scim_user'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Bearer )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ScimUser', $response);
    return $_response_object;
}

#
# users_get_list_scim_v2
#
# Retrieve User list
#
# @param string $filter Filter expression for searching users (optional)
{
    my $params = {
    'filter' => {
        data_type => 'string',
        description => 'Filter expression for searching users',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'users_get_list_scim_v2' } = {
        summary => 'Retrieve User list',
        params => $params,
        returns => 'ScimUserList',
        };
}
# @return ScimUserList
#
sub users_get_list_scim_v2 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/2/scim/Users';

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
    if ( exists $args{'filter'}) {
        $query_params->{'filter'} = $self->{api_client}->to_query_value($args{'filter'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Bearer )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ScimUserList', $response);
    return $_response_object;
}

#
# users_get_object_scim_v2
#
# Retrieve an existing User
#
# @param string $user_id  (required)
{
    my $params = {
    'user_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'users_get_object_scim_v2' } = {
        summary => 'Retrieve an existing User',
        params => $params,
        returns => 'ScimUser',
        };
}
# @return ScimUser
#
sub users_get_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_id' is set
    unless (exists $args{'user_id'}) {
      croak("Missing the required parameter 'user_id' when calling users_get_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Users/{userId}';

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
    if ( exists $args{'user_id'}) {
        my $_base_variable = "{" . "userId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'user_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Bearer )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ScimUser', $response);
    return $_response_object;
}

1;
