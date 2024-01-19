=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.0
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectDiscussionApi;

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
# discussion_create_object_v1
#
# Create a new Discussion
#
# @param DiscussionCreateObjectV1Request $discussion_create_object_v1_request  (required)
{
    my $params = {
    'discussion_create_object_v1_request' => {
        data_type => 'DiscussionCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussion_create_object_v1' } = {
        summary => 'Create a new Discussion',
        params => $params,
        returns => 'DiscussionCreateObjectV1Response',
        };
}
# @return DiscussionCreateObjectV1Response
#
sub discussion_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'discussion_create_object_v1_request' is set
    unless (exists $args{'discussion_create_object_v1_request'}) {
      croak("Missing the required parameter 'discussion_create_object_v1_request' when calling discussion_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussion';

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
    if ( exists $args{'discussion_create_object_v1_request'}) {
        $_body_data = $args{'discussion_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionCreateObjectV1Response', $response);
    return $_response_object;
}

#
# discussion_delete_object_v1
#
# Delete an existing Discussion
#
# @param int $pki_discussion_id The unique ID of the Discussion (required)
{
    my $params = {
    'pki_discussion_id' => {
        data_type => 'int',
        description => 'The unique ID of the Discussion',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussion_delete_object_v1' } = {
        summary => 'Delete an existing Discussion',
        params => $params,
        returns => 'DiscussionDeleteObjectV1Response',
        };
}
# @return DiscussionDeleteObjectV1Response
#
sub discussion_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_discussion_id' is set
    unless (exists $args{'pki_discussion_id'}) {
      croak("Missing the required parameter 'pki_discussion_id' when calling discussion_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussion/{pkiDiscussionID}';

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
    if ( exists $args{'pki_discussion_id'}) {
        my $_base_variable = "{" . "pkiDiscussionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_discussion_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# discussion_get_object_v2
#
# Retrieve an existing Discussion
#
# @param int $pki_discussion_id The unique ID of the Discussion (required)
{
    my $params = {
    'pki_discussion_id' => {
        data_type => 'int',
        description => 'The unique ID of the Discussion',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussion_get_object_v2' } = {
        summary => 'Retrieve an existing Discussion',
        params => $params,
        returns => 'DiscussionGetObjectV2Response',
        };
}
# @return DiscussionGetObjectV2Response
#
sub discussion_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_discussion_id' is set
    unless (exists $args{'pki_discussion_id'}) {
      croak("Missing the required parameter 'pki_discussion_id' when calling discussion_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/discussion/{pkiDiscussionID}';

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
    if ( exists $args{'pki_discussion_id'}) {
        my $_base_variable = "{" . "pkiDiscussionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_discussion_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionGetObjectV2Response', $response);
    return $_response_object;
}

#
# discussion_patch_object_v1
#
# Patch an existing Discussion
#
# @param int $pki_discussion_id The unique ID of the Discussion (required)
# @param DiscussionPatchObjectV1Request $discussion_patch_object_v1_request  (required)
{
    my $params = {
    'pki_discussion_id' => {
        data_type => 'int',
        description => 'The unique ID of the Discussion',
        required => '1',
    },
    'discussion_patch_object_v1_request' => {
        data_type => 'DiscussionPatchObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussion_patch_object_v1' } = {
        summary => 'Patch an existing Discussion',
        params => $params,
        returns => 'DiscussionPatchObjectV1Response',
        };
}
# @return DiscussionPatchObjectV1Response
#
sub discussion_patch_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_discussion_id' is set
    unless (exists $args{'pki_discussion_id'}) {
      croak("Missing the required parameter 'pki_discussion_id' when calling discussion_patch_object_v1");
    }

    # verify the required parameter 'discussion_patch_object_v1_request' is set
    unless (exists $args{'discussion_patch_object_v1_request'}) {
      croak("Missing the required parameter 'discussion_patch_object_v1_request' when calling discussion_patch_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussion/{pkiDiscussionID}';

    my $_method = 'PATCH';
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
    if ( exists $args{'pki_discussion_id'}) {
        my $_base_variable = "{" . "pkiDiscussionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_discussion_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'discussion_patch_object_v1_request'}) {
        $_body_data = $args{'discussion_patch_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionPatchObjectV1Response', $response);
    return $_response_object;
}

#
# discussion_update_discussionreadstatus_v1
#
# Update the read status of the discussion
#
# @param int $pki_discussion_id  (required)
# @param DiscussionUpdateDiscussionreadstatusV1Request $discussion_update_discussionreadstatus_v1_request  (required)
{
    my $params = {
    'pki_discussion_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'discussion_update_discussionreadstatus_v1_request' => {
        data_type => 'DiscussionUpdateDiscussionreadstatusV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussion_update_discussionreadstatus_v1' } = {
        summary => 'Update the read status of the discussion',
        params => $params,
        returns => 'DiscussionUpdateDiscussionreadstatusV1Response',
        };
}
# @return DiscussionUpdateDiscussionreadstatusV1Response
#
sub discussion_update_discussionreadstatus_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_discussion_id' is set
    unless (exists $args{'pki_discussion_id'}) {
      croak("Missing the required parameter 'pki_discussion_id' when calling discussion_update_discussionreadstatus_v1");
    }

    # verify the required parameter 'discussion_update_discussionreadstatus_v1_request' is set
    unless (exists $args{'discussion_update_discussionreadstatus_v1_request'}) {
      croak("Missing the required parameter 'discussion_update_discussionreadstatus_v1_request' when calling discussion_update_discussionreadstatus_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussion/{pkiDiscussionID}/updateDiscussionreadstatus';

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
    if ( exists $args{'pki_discussion_id'}) {
        my $_base_variable = "{" . "pkiDiscussionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_discussion_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'discussion_update_discussionreadstatus_v1_request'}) {
        $_body_data = $args{'discussion_update_discussionreadstatus_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionUpdateDiscussionreadstatusV1Response', $response);
    return $_response_object;
}

1;
