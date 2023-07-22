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
package EzmaxApi::ObjectEzsigntemplateformfieldgroupApi;

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
# ezsigntemplateformfieldgroup_create_object_v1
#
# Create a new Ezsigntemplateformfieldgroup
#
# @param EzsigntemplateformfieldgroupCreateObjectV1Request $ezsigntemplateformfieldgroup_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplateformfieldgroup_create_object_v1_request' => {
        data_type => 'EzsigntemplateformfieldgroupCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplateformfieldgroup_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplateformfieldgroup',
        params => $params,
        returns => 'EzsigntemplateformfieldgroupCreateObjectV1Response',
        };
}
# @return EzsigntemplateformfieldgroupCreateObjectV1Response
#
sub ezsigntemplateformfieldgroup_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplateformfieldgroup_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplateformfieldgroup_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplateformfieldgroup_create_object_v1_request' when calling ezsigntemplateformfieldgroup_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplateformfieldgroup';

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
    if ( exists $args{'ezsigntemplateformfieldgroup_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplateformfieldgroup_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplateformfieldgroupCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplateformfieldgroup_delete_object_v1
#
# Delete an existing Ezsigntemplateformfieldgroup
#
# @param int $pki_ezsigntemplateformfieldgroup_id  (required)
{
    my $params = {
    'pki_ezsigntemplateformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplateformfieldgroup_delete_object_v1' } = {
        summary => 'Delete an existing Ezsigntemplateformfieldgroup',
        params => $params,
        returns => 'EzsigntemplateformfieldgroupDeleteObjectV1Response',
        };
}
# @return EzsigntemplateformfieldgroupDeleteObjectV1Response
#
sub ezsigntemplateformfieldgroup_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplateformfieldgroup_id' is set
    unless (exists $args{'pki_ezsigntemplateformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplateformfieldgroup_id' when calling ezsigntemplateformfieldgroup_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID}';

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
    if ( exists $args{'pki_ezsigntemplateformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplateformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplateformfieldgroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplateformfieldgroupDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplateformfieldgroup_edit_object_v1
#
# Edit an existing Ezsigntemplateformfieldgroup
#
# @param int $pki_ezsigntemplateformfieldgroup_id  (required)
# @param EzsigntemplateformfieldgroupEditObjectV1Request $ezsigntemplateformfieldgroup_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplateformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplateformfieldgroup_edit_object_v1_request' => {
        data_type => 'EzsigntemplateformfieldgroupEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplateformfieldgroup_edit_object_v1' } = {
        summary => 'Edit an existing Ezsigntemplateformfieldgroup',
        params => $params,
        returns => 'EzsigntemplateformfieldgroupEditObjectV1Response',
        };
}
# @return EzsigntemplateformfieldgroupEditObjectV1Response
#
sub ezsigntemplateformfieldgroup_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplateformfieldgroup_id' is set
    unless (exists $args{'pki_ezsigntemplateformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplateformfieldgroup_id' when calling ezsigntemplateformfieldgroup_edit_object_v1");
    }

    # verify the required parameter 'ezsigntemplateformfieldgroup_edit_object_v1_request' is set
    unless (exists $args{'ezsigntemplateformfieldgroup_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplateformfieldgroup_edit_object_v1_request' when calling ezsigntemplateformfieldgroup_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID}';

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
    if ( exists $args{'pki_ezsigntemplateformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplateformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplateformfieldgroup_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplateformfieldgroup_edit_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplateformfieldgroup_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplateformfieldgroupEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplateformfieldgroup_get_object_v2
#
# Retrieve an existing Ezsigntemplateformfieldgroup
#
# @param int $pki_ezsigntemplateformfieldgroup_id  (required)
{
    my $params = {
    'pki_ezsigntemplateformfieldgroup_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplateformfieldgroup_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsigntemplateformfieldgroup',
        params => $params,
        returns => 'EzsigntemplateformfieldgroupGetObjectV2Response',
        };
}
# @return EzsigntemplateformfieldgroupGetObjectV2Response
#
sub ezsigntemplateformfieldgroup_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplateformfieldgroup_id' is set
    unless (exists $args{'pki_ezsigntemplateformfieldgroup_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplateformfieldgroup_id' when calling ezsigntemplateformfieldgroup_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsigntemplateformfieldgroup/{pkiEzsigntemplateformfieldgroupID}';

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
    if ( exists $args{'pki_ezsigntemplateformfieldgroup_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplateformfieldgroupID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplateformfieldgroup_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplateformfieldgroupGetObjectV2Response', $response);
    return $_response_object;
}

1;
