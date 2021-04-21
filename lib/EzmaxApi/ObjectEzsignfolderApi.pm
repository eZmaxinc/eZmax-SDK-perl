=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.42
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsignfolderApi;

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
# ezsignfolder_create_object_v1
#
# Create a new Ezsignfolder
# 
# @param ARRAY[EzsignfolderCreateObjectV1Request] $ezsignfolder_create_object_v1_request  (required)
{
    my $params = {
    'ezsignfolder_create_object_v1_request' => {
        data_type => 'ARRAY[EzsignfolderCreateObjectV1Request]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfolder_create_object_v1' } = { 
        summary => 'Create a new Ezsignfolder',
        params => $params,
        returns => 'EzsignfolderCreateObjectV1Response',
        };
}
# @return EzsignfolderCreateObjectV1Response
#
sub ezsignfolder_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignfolder_create_object_v1_request' is set
    unless (exists $args{'ezsignfolder_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignfolder_create_object_v1_request' when calling ezsignfolder_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfolder';

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
    if ( exists $args{'ezsignfolder_create_object_v1_request'}) {
        $_body_data = $args{'ezsignfolder_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfolderCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignfolder_delete_object_v1
#
# Delete an existing Ezsignfolder
# 
# @param int $pki_ezsignfolder_id The unique ID of the Ezsignfolder (required)
{
    my $params = {
    'pki_ezsignfolder_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfolder',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfolder_delete_object_v1' } = { 
        summary => 'Delete an existing Ezsignfolder',
        params => $params,
        returns => 'EzsignfolderDeleteObjectV1Response',
        };
}
# @return EzsignfolderDeleteObjectV1Response
#
sub ezsignfolder_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfolder_id' is set
    unless (exists $args{'pki_ezsignfolder_id'}) {
      croak("Missing the required parameter 'pki_ezsignfolder_id' when calling ezsignfolder_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}';

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
    if ( exists $args{'pki_ezsignfolder_id'}) {
        my $_base_variable = "{" . "pkiEzsignfolderID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfolder_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfolderDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignfolder_get_children_v1
#
# Retrieve an existing Ezsignfolder's children IDs
# 
# @param int $pki_ezsignfolder_id The unique ID of the Ezsignfolder (required)
{
    my $params = {
    'pki_ezsignfolder_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfolder',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfolder_get_children_v1' } = { 
        summary => 'Retrieve an existing Ezsignfolder&#39;s children IDs',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub ezsignfolder_get_children_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfolder_id' is set
    unless (exists $args{'pki_ezsignfolder_id'}) {
      croak("Missing the required parameter 'pki_ezsignfolder_id' when calling ezsignfolder_get_children_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}/getChildren';

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
    if ( exists $args{'pki_ezsignfolder_id'}) {
        my $_base_variable = "{" . "pkiEzsignfolderID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfolder_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# ezsignfolder_get_object_v1
#
# Retrieve an existing Ezsignfolder
# 
# @param int $pki_ezsignfolder_id The unique ID of the Ezsignfolder (required)
{
    my $params = {
    'pki_ezsignfolder_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfolder',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfolder_get_object_v1' } = { 
        summary => 'Retrieve an existing Ezsignfolder',
        params => $params,
        returns => 'EzsignfolderGetObjectV1Response',
        };
}
# @return EzsignfolderGetObjectV1Response
#
sub ezsignfolder_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfolder_id' is set
    unless (exists $args{'pki_ezsignfolder_id'}) {
      croak("Missing the required parameter 'pki_ezsignfolder_id' when calling ezsignfolder_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}';

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
    if ( exists $args{'pki_ezsignfolder_id'}) {
        my $_base_variable = "{" . "pkiEzsignfolderID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfolder_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfolderGetObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignfolder_send_v1
#
# Send the Ezsignfolder to the signatories for signature
# 
# @param int $pki_ezsignfolder_id The unique ID of the Ezsignfolder (required)
# @param EzsignfolderSendV1Request $ezsignfolder_send_v1_request  (required)
{
    my $params = {
    'pki_ezsignfolder_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignfolder',
        required => '1',
    },
    'ezsignfolder_send_v1_request' => {
        data_type => 'EzsignfolderSendV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfolder_send_v1' } = { 
        summary => 'Send the Ezsignfolder to the signatories for signature',
        params => $params,
        returns => 'EzsignfolderSendV1Response',
        };
}
# @return EzsignfolderSendV1Response
#
sub ezsignfolder_send_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfolder_id' is set
    unless (exists $args{'pki_ezsignfolder_id'}) {
      croak("Missing the required parameter 'pki_ezsignfolder_id' when calling ezsignfolder_send_v1");
    }

    # verify the required parameter 'ezsignfolder_send_v1_request' is set
    unless (exists $args{'ezsignfolder_send_v1_request'}) {
      croak("Missing the required parameter 'ezsignfolder_send_v1_request' when calling ezsignfolder_send_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignfolder/{pkiEzsignfolderID}/send';

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
    if ( exists $args{'pki_ezsignfolder_id'}) {
        my $_base_variable = "{" . "pkiEzsignfolderID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfolder_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignfolder_send_v1_request'}) {
        $_body_data = $args{'ezsignfolder_send_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfolderSendV1Response', $response);
    return $_response_object;
}

1;
