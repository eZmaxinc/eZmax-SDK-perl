=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.48
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsignsignatureApi;

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
# ezsignsignature_create_object_v1
#
# Create a new Ezsignsignature
#
# @param ARRAY[EzsignsignatureCreateObjectV1Request] $ezsignsignature_create_object_v1_request  (required)
{
    my $params = {
    'ezsignsignature_create_object_v1_request' => {
        data_type => 'ARRAY[EzsignsignatureCreateObjectV1Request]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignature_create_object_v1' } = {
        summary => 'Create a new Ezsignsignature',
        params => $params,
        returns => 'EzsignsignatureCreateObjectV1Response',
        };
}
# @return EzsignsignatureCreateObjectV1Response
#
sub ezsignsignature_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignsignature_create_object_v1_request' is set
    unless (exists $args{'ezsignsignature_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignsignature_create_object_v1_request' when calling ezsignsignature_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignature';

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
    if ( exists $args{'ezsignsignature_create_object_v1_request'}) {
        $_body_data = $args{'ezsignsignature_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignatureCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignature_delete_object_v1
#
# Delete an existing Ezsignsignature
#
# @param int $pki_ezsignsignature_id The unique ID of the Ezsignsignature (required)
{
    my $params = {
    'pki_ezsignsignature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignature_delete_object_v1' } = {
        summary => 'Delete an existing Ezsignsignature',
        params => $params,
        returns => 'EzsignsignatureDeleteObjectV1Response',
        };
}
# @return EzsignsignatureDeleteObjectV1Response
#
sub ezsignsignature_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignature_id' is set
    unless (exists $args{'pki_ezsignsignature_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignature_id' when calling ezsignsignature_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignature/{pkiEzsignsignatureID}';

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
    if ( exists $args{'pki_ezsignsignature_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignature_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignatureDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignature_get_children_v1
#
# Retrieve an existing Ezsignsignature's children IDs
#
# @param int $pki_ezsignsignature_id The unique ID of the Ezsignsignature (required)
{
    my $params = {
    'pki_ezsignsignature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignature_get_children_v1' } = {
        summary => 'Retrieve an existing Ezsignsignature&#39;s children IDs',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub ezsignsignature_get_children_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignature_id' is set
    unless (exists $args{'pki_ezsignsignature_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignature_id' when calling ezsignsignature_get_children_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignature/{pkiEzsignsignatureID}/getChildren';

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
    if ( exists $args{'pki_ezsignsignature_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignature_id'});
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
# ezsignsignature_get_object_v1
#
# Retrieve an existing Ezsignsignature
#
# @param int $pki_ezsignsignature_id The unique ID of the Ezsignsignature (required)
{
    my $params = {
    'pki_ezsignsignature_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignature',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignature_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsignsignature',
        params => $params,
        returns => 'EzsignsignatureGetObjectV1Response',
        };
}
# @return EzsignsignatureGetObjectV1Response
#
sub ezsignsignature_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignature_id' is set
    unless (exists $args{'pki_ezsignsignature_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignature_id' when calling ezsignsignature_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignature/{pkiEzsignsignatureID}';

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
    if ( exists $args{'pki_ezsignsignature_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignature_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignatureGetObjectV1Response', $response);
    return $_response_object;
}

1;
