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
package EzmaxApi::ObjectDiscussionmessageApi;

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
# discussionmessage_create_object_v1
#
# Create a new Discussionmessage
#
# @param DiscussionmessageCreateObjectV1Request $discussionmessage_create_object_v1_request  (required)
{
    my $params = {
    'discussionmessage_create_object_v1_request' => {
        data_type => 'DiscussionmessageCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussionmessage_create_object_v1' } = {
        summary => 'Create a new Discussionmessage',
        params => $params,
        returns => 'DiscussionmessageCreateObjectV1Response',
        };
}
# @return DiscussionmessageCreateObjectV1Response
#
sub discussionmessage_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'discussionmessage_create_object_v1_request' is set
    unless (exists $args{'discussionmessage_create_object_v1_request'}) {
      croak("Missing the required parameter 'discussionmessage_create_object_v1_request' when calling discussionmessage_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussionmessage';

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
    if ( exists $args{'discussionmessage_create_object_v1_request'}) {
        $_body_data = $args{'discussionmessage_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionmessageCreateObjectV1Response', $response);
    return $_response_object;
}

#
# discussionmessage_delete_object_v1
#
# Delete an existing Discussionmessage
#
# @param int $pki_discussionmessage_id The unique ID of the Discussionmessage (required)
{
    my $params = {
    'pki_discussionmessage_id' => {
        data_type => 'int',
        description => 'The unique ID of the Discussionmessage',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussionmessage_delete_object_v1' } = {
        summary => 'Delete an existing Discussionmessage',
        params => $params,
        returns => 'DiscussionmessageDeleteObjectV1Response',
        };
}
# @return DiscussionmessageDeleteObjectV1Response
#
sub discussionmessage_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_discussionmessage_id' is set
    unless (exists $args{'pki_discussionmessage_id'}) {
      croak("Missing the required parameter 'pki_discussionmessage_id' when calling discussionmessage_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussionmessage/{pkiDiscussionmessageID}';

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
    if ( exists $args{'pki_discussionmessage_id'}) {
        my $_base_variable = "{" . "pkiDiscussionmessageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_discussionmessage_id'});
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionmessageDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# discussionmessage_patch_object_v1
#
# Patch an existing Discussionmessage
#
# @param int $pki_discussionmessage_id The unique ID of the Discussionmessage (required)
# @param DiscussionmessagePatchObjectV1Request $discussionmessage_patch_object_v1_request  (required)
{
    my $params = {
    'pki_discussionmessage_id' => {
        data_type => 'int',
        description => 'The unique ID of the Discussionmessage',
        required => '1',
    },
    'discussionmessage_patch_object_v1_request' => {
        data_type => 'DiscussionmessagePatchObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'discussionmessage_patch_object_v1' } = {
        summary => 'Patch an existing Discussionmessage',
        params => $params,
        returns => 'DiscussionmessagePatchObjectV1Response',
        };
}
# @return DiscussionmessagePatchObjectV1Response
#
sub discussionmessage_patch_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_discussionmessage_id' is set
    unless (exists $args{'pki_discussionmessage_id'}) {
      croak("Missing the required parameter 'pki_discussionmessage_id' when calling discussionmessage_patch_object_v1");
    }

    # verify the required parameter 'discussionmessage_patch_object_v1_request' is set
    unless (exists $args{'discussionmessage_patch_object_v1_request'}) {
      croak("Missing the required parameter 'discussionmessage_patch_object_v1_request' when calling discussionmessage_patch_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/discussionmessage/{pkiDiscussionmessageID}';

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
    if ( exists $args{'pki_discussionmessage_id'}) {
        my $_base_variable = "{" . "pkiDiscussionmessageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_discussionmessage_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'discussionmessage_patch_object_v1_request'}) {
        $_body_data = $args{'discussionmessage_patch_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('DiscussionmessagePatchObjectV1Response', $response);
    return $_response_object;
}

1;
