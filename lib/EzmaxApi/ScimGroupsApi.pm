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
package EzmaxApi::ScimGroupsApi;

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
# groups_create_object_scim_v2
#
# Create a new Usergroup
#
# @param ScimGroup $scim_group  (required)
{
    my $params = {
    'scim_group' => {
        data_type => 'ScimGroup',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'groups_create_object_scim_v2' } = {
        summary => 'Create a new Usergroup',
        params => $params,
        returns => 'ScimGroup',
        };
}
# @return ScimGroup
#
sub groups_create_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'scim_group' is set
    unless (exists $args{'scim_group'}) {
      croak("Missing the required parameter 'scim_group' when calling groups_create_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Groups';

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
    if ( exists $args{'scim_group'}) {
        $_body_data = $args{'scim_group'};
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
    my $_response_object = $self->{api_client}->deserialize('ScimGroup', $response);
    return $_response_object;
}

#
# groups_delete_object_scim_v2
#
# Delete an existing Usergroup
#
# @param string $group_id  (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'groups_delete_object_scim_v2' } = {
        summary => 'Delete an existing Usergroup',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub groups_delete_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling groups_delete_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Groups/{groupId}';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
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
# groups_edit_object_scim_v2
#
# Edit an existing Usergroup
#
# @param string $group_id  (required)
# @param ScimGroup $scim_group  (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'scim_group' => {
        data_type => 'ScimGroup',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'groups_edit_object_scim_v2' } = {
        summary => 'Edit an existing Usergroup',
        params => $params,
        returns => 'ScimGroup',
        };
}
# @return ScimGroup
#
sub groups_edit_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling groups_edit_object_scim_v2");
    }

    # verify the required parameter 'scim_group' is set
    unless (exists $args{'scim_group'}) {
      croak("Missing the required parameter 'scim_group' when calling groups_edit_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Groups/{groupId}';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'scim_group'}) {
        $_body_data = $args{'scim_group'};
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
    my $_response_object = $self->{api_client}->deserialize('ScimGroup', $response);
    return $_response_object;
}

#
# groups_get_list_scim_v2
#
# Retrieve Usergroup list
#
# @param string $filter Filter expression for searching groups (optional)
{
    my $params = {
    'filter' => {
        data_type => 'string',
        description => 'Filter expression for searching groups',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'groups_get_list_scim_v2' } = {
        summary => 'Retrieve Usergroup list',
        params => $params,
        returns => 'ScimGroup',
        };
}
# @return ScimGroup
#
sub groups_get_list_scim_v2 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/2/scim/Groups';

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
    my $_response_object = $self->{api_client}->deserialize('ScimGroup', $response);
    return $_response_object;
}

#
# groups_get_object_scim_v2
#
# Retrieve an existing Usergroup
#
# @param string $group_id  (required)
{
    my $params = {
    'group_id' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'groups_get_object_scim_v2' } = {
        summary => 'Retrieve an existing Usergroup',
        params => $params,
        returns => 'ScimGroup',
        };
}
# @return ScimGroup
#
sub groups_get_object_scim_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'group_id' is set
    unless (exists $args{'group_id'}) {
      croak("Missing the required parameter 'group_id' when calling groups_get_object_scim_v2");
    }

    # parse inputs
    my $_resource_path = '/2/scim/Groups/{groupId}';

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
    if ( exists $args{'group_id'}) {
        my $_base_variable = "{" . "groupId" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'group_id'});
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
    my $_response_object = $self->{api_client}->deserialize('ScimGroup', $response);
    return $_response_object;
}

1;
