=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.16
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsignformfieldgroupApi;

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
# ezsignformfieldgroup_create_object_v1
#
# Create a new Ezsignformfieldgroup
#
# @param EzsignformfieldgroupCreateObjectV1Request $ezsignformfieldgroup_create_object_v1_request  (required)
{
    my $params = {
    'ezsignformfieldgroup_create_object_v1_request' => {
        data_type => 'EzsignformfieldgroupCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignformfieldgroup_create_object_v1' } = {
        summary => 'Create a new Ezsignformfieldgroup',
        params => $params,
        returns => 'EzsignformfieldgroupCreateObjectV1Response',
        };
}
# @return EzsignformfieldgroupCreateObjectV1Response
#
sub ezsignformfieldgroup_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignformfieldgroup_create_object_v1_request' is set
    unless (exists $args{'ezsignformfieldgroup_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignformfieldgroup_create_object_v1_request' when calling ezsignformfieldgroup_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignformfieldgroup';

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
    if ( exists $args{'ezsignformfieldgroup_create_object_v1_request'}) {
        $_body_data = $args{'ezsignformfieldgroup_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignformfieldgroupCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignformfieldgroup_delete_object_v1
#
# Delete an existing Ezsignformfieldgroup
#
# @param int $pki_ezsignformfieldgroup_id  (required)
{
    my $params = {
    'pki_ezsignformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignformfieldgroup_delete_object_v1' } = {
        summary => 'Delete an existing Ezsignformfieldgroup',
        params => $params,
        returns => 'EzsignformfieldgroupDeleteObjectV1Response',
        };
}
# @return EzsignformfieldgroupDeleteObjectV1Response
#
sub ezsignformfieldgroup_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignformfieldgroup_id' is set
    unless (exists $args{'pki_ezsignformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignformfieldgroup_id' when calling ezsignformfieldgroup_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID}';

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
    if ( exists $args{'pki_ezsignformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignformfieldgroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignformfieldgroupDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignformfieldgroup_edit_object_v1
#
# Edit an existing Ezsignformfieldgroup
#
# @param int $pki_ezsignformfieldgroup_id  (required)
# @param EzsignformfieldgroupEditObjectV1Request $ezsignformfieldgroup_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsignformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsignformfieldgroup_edit_object_v1_request' => {
        data_type => 'EzsignformfieldgroupEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignformfieldgroup_edit_object_v1' } = {
        summary => 'Edit an existing Ezsignformfieldgroup',
        params => $params,
        returns => 'EzsignformfieldgroupEditObjectV1Response',
        };
}
# @return EzsignformfieldgroupEditObjectV1Response
#
sub ezsignformfieldgroup_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignformfieldgroup_id' is set
    unless (exists $args{'pki_ezsignformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignformfieldgroup_id' when calling ezsignformfieldgroup_edit_object_v1");
    }

    # verify the required parameter 'ezsignformfieldgroup_edit_object_v1_request' is set
    unless (exists $args{'ezsignformfieldgroup_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignformfieldgroup_edit_object_v1_request' when calling ezsignformfieldgroup_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID}';

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
    if ( exists $args{'pki_ezsignformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignformfieldgroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignformfieldgroup_edit_object_v1_request'}) {
        $_body_data = $args{'ezsignformfieldgroup_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignformfieldgroupEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignformfieldgroup_get_object_v1
#
# Retrieve an existing Ezsignformfieldgroup
#
# @param int $pki_ezsignformfieldgroup_id  (required)
{
    my $params = {
    'pki_ezsignformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignformfieldgroup_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsignformfieldgroup',
        params => $params,
        returns => 'EzsignformfieldgroupGetObjectV1Response',
        };
}
# @return EzsignformfieldgroupGetObjectV1Response
#
sub ezsignformfieldgroup_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignformfieldgroup_id' is set
    unless (exists $args{'pki_ezsignformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignformfieldgroup_id' when calling ezsignformfieldgroup_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID}';

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
    if ( exists $args{'pki_ezsignformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignformfieldgroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignformfieldgroupGetObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignformfieldgroup_get_object_v2
#
# Retrieve an existing Ezsignformfieldgroup
#
# @param int $pki_ezsignformfieldgroup_id  (required)
{
    my $params = {
    'pki_ezsignformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignformfieldgroup_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignformfieldgroup',
        params => $params,
        returns => 'EzsignformfieldgroupGetObjectV2Response',
        };
}
# @return EzsignformfieldgroupGetObjectV2Response
#
sub ezsignformfieldgroup_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignformfieldgroup_id' is set
    unless (exists $args{'pki_ezsignformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignformfieldgroup_id' when calling ezsignformfieldgroup_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignformfieldgroup/{pkiEzsignformfieldgroupID}';

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
    if ( exists $args{'pki_ezsignformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignformfieldgroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignformfieldgroupGetObjectV2Response', $response);
    return $_response_object;
}

1;
