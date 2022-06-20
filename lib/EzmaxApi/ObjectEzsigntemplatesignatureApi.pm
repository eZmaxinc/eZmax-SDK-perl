=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.8
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsigntemplatesignatureApi;

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
# ezsigntemplatesignature_create_object_v1
#
# Create a new Ezsigntemplatesignature
#
# @param EzsigntemplatesignatureCreateObjectV1Request $ezsigntemplatesignature_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplatesignature_create_object_v1_request' => {
        data_type => 'EzsigntemplatesignatureCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesignature_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplatesignature',
        params => $params,
        returns => 'EzsigntemplatesignatureCreateObjectV1Response',
        };
}
# @return EzsigntemplatesignatureCreateObjectV1Response
#
sub ezsigntemplatesignature_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplatesignature_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplatesignature_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatesignature_create_object_v1_request' when calling ezsigntemplatesignature_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesignature';

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
    if ( exists $args{'ezsigntemplatesignature_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatesignature_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignatureCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatesignature_delete_object_v1
#
# Delete an existing Ezsigntemplatesignature
#
# @param int $pki_ezsigntemplatesignature_id  (required)
{
    my $params = {
    'pki_ezsigntemplatesignature_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesignature_delete_object_v1' } = {
        summary => 'Delete an existing Ezsigntemplatesignature',
        params => $params,
        returns => 'EzsigntemplatesignatureDeleteObjectV1Response',
        };
}
# @return EzsigntemplatesignatureDeleteObjectV1Response
#
sub ezsigntemplatesignature_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatesignature_id' is set
    unless (exists $args{'pki_ezsigntemplatesignature_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatesignature_id' when calling ezsigntemplatesignature_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID}';

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
    if ( exists $args{'pki_ezsigntemplatesignature_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatesignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatesignature_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignatureDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatesignature_edit_object_v1
#
# Edit an existing Ezsigntemplatesignature
#
# @param int $pki_ezsigntemplatesignature_id  (required)
# @param EzsigntemplatesignatureEditObjectV1Request $ezsigntemplatesignature_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatesignature_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatesignature_edit_object_v1_request' => {
        data_type => 'EzsigntemplatesignatureEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesignature_edit_object_v1' } = {
        summary => 'Edit an existing Ezsigntemplatesignature',
        params => $params,
        returns => 'EzsigntemplatesignatureEditObjectV1Response',
        };
}
# @return EzsigntemplatesignatureEditObjectV1Response
#
sub ezsigntemplatesignature_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatesignature_id' is set
    unless (exists $args{'pki_ezsigntemplatesignature_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatesignature_id' when calling ezsigntemplatesignature_edit_object_v1");
    }

    # verify the required parameter 'ezsigntemplatesignature_edit_object_v1_request' is set
    unless (exists $args{'ezsigntemplatesignature_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatesignature_edit_object_v1_request' when calling ezsigntemplatesignature_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID}';

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
    if ( exists $args{'pki_ezsigntemplatesignature_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatesignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatesignature_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatesignature_edit_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatesignature_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignatureEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatesignature_get_object_v1
#
# Retrieve an existing Ezsigntemplatesignature
#
# @param int $pki_ezsigntemplatesignature_id  (required)
{
    my $params = {
    'pki_ezsigntemplatesignature_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesignature_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatesignature',
        params => $params,
        returns => 'EzsigntemplatesignatureGetObjectV1Response',
        };
}
# @return EzsigntemplatesignatureGetObjectV1Response
#
sub ezsigntemplatesignature_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatesignature_id' is set
    unless (exists $args{'pki_ezsigntemplatesignature_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatesignature_id' when calling ezsigntemplatesignature_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID}';

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
    if ( exists $args{'pki_ezsigntemplatesignature_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatesignatureID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatesignature_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignatureGetObjectV1Response', $response);
    return $_response_object;
}

1;
