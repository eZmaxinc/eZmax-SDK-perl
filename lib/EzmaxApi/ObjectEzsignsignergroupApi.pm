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
package EzmaxApi::ObjectEzsignsignergroupApi;

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
# ezsignsignergroup_create_object_v1
#
# Create a new Ezsignsignergroup
#
# @param EzsignsignergroupCreateObjectV1Request $ezsignsignergroup_create_object_v1_request  (required)
{
    my $params = {
    'ezsignsignergroup_create_object_v1_request' => {
        data_type => 'EzsignsignergroupCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroup_create_object_v1' } = {
        summary => 'Create a new Ezsignsignergroup',
        params => $params,
        returns => 'EzsignsignergroupCreateObjectV1Response',
        };
}
# @return EzsignsignergroupCreateObjectV1Response
#
sub ezsignsignergroup_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignsignergroup_create_object_v1_request' is set
    unless (exists $args{'ezsignsignergroup_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignsignergroup_create_object_v1_request' when calling ezsignsignergroup_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroup';

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
    if ( exists $args{'ezsignsignergroup_create_object_v1_request'}) {
        $_body_data = $args{'ezsignsignergroup_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroup_delete_object_v1
#
# Delete an existing Ezsignsignergroup
#
# @param int $pki_ezsignsignergroup_id The unique ID of the Ezsignsignergroup (required)
{
    my $params = {
    'pki_ezsignsignergroup_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignergroup',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroup_delete_object_v1' } = {
        summary => 'Delete an existing Ezsignsignergroup',
        params => $params,
        returns => 'EzsignsignergroupDeleteObjectV1Response',
        };
}
# @return EzsignsignergroupDeleteObjectV1Response
#
sub ezsignsignergroup_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroup_id' is set
    unless (exists $args{'pki_ezsignsignergroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroup_id' when calling ezsignsignergroup_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroup/{pkiEzsignsignergroupID}';

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
    if ( exists $args{'pki_ezsignsignergroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroup_edit_ezsignsignergroupmemberships_v1
#
# Edit multiple Ezsignsignergroupmemberships
#
# @param int $pki_ezsignsignergroup_id  (required)
# @param EzsignsignergroupEditEzsignsignergroupmembershipsV1Request $ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request  (required)
{
    my $params = {
    'pki_ezsignsignergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request' => {
        data_type => 'EzsignsignergroupEditEzsignsignergroupmembershipsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1' } = {
        summary => 'Edit multiple Ezsignsignergroupmemberships',
        params => $params,
        returns => 'EzsignsignergroupEditEzsignsignergroupmembershipsV1Response',
        };
}
# @return EzsignsignergroupEditEzsignsignergroupmembershipsV1Response
#
sub ezsignsignergroup_edit_ezsignsignergroupmemberships_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroup_id' is set
    unless (exists $args{'pki_ezsignsignergroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroup_id' when calling ezsignsignergroup_edit_ezsignsignergroupmemberships_v1");
    }

    # verify the required parameter 'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request' is set
    unless (exists $args{'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request'}) {
      croak("Missing the required parameter 'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request' when calling ezsignsignergroup_edit_ezsignsignergroupmemberships_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroup/{pkiEzsignsignergroupID}/editEzsignsignergroupmemberships';

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
    if ( exists $args{'pki_ezsignsignergroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request'}) {
        $_body_data = $args{'ezsignsignergroup_edit_ezsignsignergroupmemberships_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupEditEzsignsignergroupmembershipsV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroup_edit_object_v1
#
# Edit an existing Ezsignsignergroup
#
# @param int $pki_ezsignsignergroup_id The unique ID of the Ezsignsignergroup (required)
# @param EzsignsignergroupEditObjectV1Request $ezsignsignergroup_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsignsignergroup_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignergroup',
        required => '1',
    },
    'ezsignsignergroup_edit_object_v1_request' => {
        data_type => 'EzsignsignergroupEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroup_edit_object_v1' } = {
        summary => 'Edit an existing Ezsignsignergroup',
        params => $params,
        returns => 'EzsignsignergroupEditObjectV1Response',
        };
}
# @return EzsignsignergroupEditObjectV1Response
#
sub ezsignsignergroup_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroup_id' is set
    unless (exists $args{'pki_ezsignsignergroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroup_id' when calling ezsignsignergroup_edit_object_v1");
    }

    # verify the required parameter 'ezsignsignergroup_edit_object_v1_request' is set
    unless (exists $args{'ezsignsignergroup_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignsignergroup_edit_object_v1_request' when calling ezsignsignergroup_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroup/{pkiEzsignsignergroupID}';

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
    if ( exists $args{'pki_ezsignsignergroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignsignergroup_edit_object_v1_request'}) {
        $_body_data = $args{'ezsignsignergroup_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroup_get_ezsignsignergroupmemberships_v1
#
# Retrieve an existing Ezsignsignergroup's Ezsignsignergroupmemberships
#
# @param int $pki_ezsignsignergroup_id  (required)
{
    my $params = {
    'pki_ezsignsignergroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroup_get_ezsignsignergroupmemberships_v1' } = {
        summary => 'Retrieve an existing Ezsignsignergroup&#39;s Ezsignsignergroupmemberships',
        params => $params,
        returns => 'EzsignsignergroupGetEzsignsignergroupmembershipsV1Response',
        };
}
# @return EzsignsignergroupGetEzsignsignergroupmembershipsV1Response
#
sub ezsignsignergroup_get_ezsignsignergroupmemberships_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroup_id' is set
    unless (exists $args{'pki_ezsignsignergroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroup_id' when calling ezsignsignergroup_get_ezsignsignergroupmemberships_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroup/{pkiEzsignsignergroupID}/getEzsignsignergroupmemberships';

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
    if ( exists $args{'pki_ezsignsignergroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupGetEzsignsignergroupmembershipsV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroup_get_object_v2
#
# Retrieve an existing Ezsignsignergroup
#
# @param int $pki_ezsignsignergroup_id The unique ID of the Ezsignsignergroup (required)
{
    my $params = {
    'pki_ezsignsignergroup_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignergroup',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroup_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignsignergroup',
        params => $params,
        returns => 'EzsignsignergroupGetObjectV2Response',
        };
}
# @return EzsignsignergroupGetObjectV2Response
#
sub ezsignsignergroup_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroup_id' is set
    unless (exists $args{'pki_ezsignsignergroup_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroup_id' when calling ezsignsignergroup_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignsignergroup/{pkiEzsignsignergroupID}';

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
    if ( exists $args{'pki_ezsignsignergroup_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupGetObjectV2Response', $response);
    return $_response_object;
}

1;
