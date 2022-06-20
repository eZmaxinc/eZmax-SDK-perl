=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.9
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsigntemplatesignerApi;

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
# ezsigntemplatesigner_create_object_v1
#
# Create a new Ezsigntemplatesigner
#
# @param EzsigntemplatesignerCreateObjectV1Request $ezsigntemplatesigner_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplatesigner_create_object_v1_request' => {
        data_type => 'EzsigntemplatesignerCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesigner_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplatesigner',
        params => $params,
        returns => 'EzsigntemplatesignerCreateObjectV1Response',
        };
}
# @return EzsigntemplatesignerCreateObjectV1Response
#
sub ezsigntemplatesigner_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplatesigner_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplatesigner_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatesigner_create_object_v1_request' when calling ezsigntemplatesigner_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesigner';

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
    if ( exists $args{'ezsigntemplatesigner_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatesigner_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignerCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatesigner_delete_object_v1
#
# Delete an existing Ezsigntemplatesigner
#
# @param int $pki_ezsigntemplatesigner_id  (required)
{
    my $params = {
    'pki_ezsigntemplatesigner_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesigner_delete_object_v1' } = {
        summary => 'Delete an existing Ezsigntemplatesigner',
        params => $params,
        returns => 'EzsigntemplatesignerDeleteObjectV1Response',
        };
}
# @return EzsigntemplatesignerDeleteObjectV1Response
#
sub ezsigntemplatesigner_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatesigner_id' is set
    unless (exists $args{'pki_ezsigntemplatesigner_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatesigner_id' when calling ezsigntemplatesigner_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID}';

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
    if ( exists $args{'pki_ezsigntemplatesigner_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatesignerID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatesigner_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignerDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatesigner_edit_object_v1
#
# Edit an existing Ezsigntemplatesigner
#
# @param int $pki_ezsigntemplatesigner_id  (required)
# @param EzsigntemplatesignerEditObjectV1Request $ezsigntemplatesigner_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatesigner_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatesigner_edit_object_v1_request' => {
        data_type => 'EzsigntemplatesignerEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesigner_edit_object_v1' } = {
        summary => 'Edit an existing Ezsigntemplatesigner',
        params => $params,
        returns => 'EzsigntemplatesignerEditObjectV1Response',
        };
}
# @return EzsigntemplatesignerEditObjectV1Response
#
sub ezsigntemplatesigner_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatesigner_id' is set
    unless (exists $args{'pki_ezsigntemplatesigner_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatesigner_id' when calling ezsigntemplatesigner_edit_object_v1");
    }

    # verify the required parameter 'ezsigntemplatesigner_edit_object_v1_request' is set
    unless (exists $args{'ezsigntemplatesigner_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatesigner_edit_object_v1_request' when calling ezsigntemplatesigner_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID}';

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
    if ( exists $args{'pki_ezsigntemplatesigner_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatesignerID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatesigner_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatesigner_edit_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatesigner_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignerEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatesigner_get_object_v1
#
# Retrieve an existing Ezsigntemplatesigner
#
# @param int $pki_ezsigntemplatesigner_id  (required)
{
    my $params = {
    'pki_ezsigntemplatesigner_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatesigner_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatesigner',
        params => $params,
        returns => 'EzsigntemplatesignerGetObjectV1Response',
        };
}
# @return EzsigntemplatesignerGetObjectV1Response
#
sub ezsigntemplatesigner_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatesigner_id' is set
    unless (exists $args{'pki_ezsigntemplatesigner_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatesigner_id' when calling ezsigntemplatesigner_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID}';

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
    if ( exists $args{'pki_ezsigntemplatesigner_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatesignerID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatesigner_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatesignerGetObjectV1Response', $response);
    return $_response_object;
}

1;
