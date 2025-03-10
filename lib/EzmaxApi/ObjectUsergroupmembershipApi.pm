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
package EzmaxApi::ObjectUsergroupmembershipApi;

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
# usergroupmembership_create_object_v1
#
# Create a new Usergroupmembership
#
# @param UsergroupmembershipCreateObjectV1Request $usergroupmembership_create_object_v1_request  (required)
{
    my $params = {
    'usergroupmembership_create_object_v1_request' => {
        data_type => 'UsergroupmembershipCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupmembership_create_object_v1' } = {
        summary => 'Create a new Usergroupmembership',
        params => $params,
        returns => 'UsergroupmembershipCreateObjectV1Response',
        };
}
# @return UsergroupmembershipCreateObjectV1Response
#
sub usergroupmembership_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'usergroupmembership_create_object_v1_request' is set
    unless (exists $args{'usergroupmembership_create_object_v1_request'}) {
      croak("Missing the required parameter 'usergroupmembership_create_object_v1_request' when calling usergroupmembership_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupmembership';

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
    if ( exists $args{'usergroupmembership_create_object_v1_request'}) {
        $_body_data = $args{'usergroupmembership_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupmembershipCreateObjectV1Response', $response);
    return $_response_object;
}

#
# usergroupmembership_delete_object_v1
#
# Delete an existing Usergroupmembership
#
# @param int $pki_usergroupmembership_id  (required)
{
    my $params = {
    'pki_usergroupmembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupmembership_delete_object_v1' } = {
        summary => 'Delete an existing Usergroupmembership',
        params => $params,
        returns => 'UsergroupmembershipDeleteObjectV1Response',
        };
}
# @return UsergroupmembershipDeleteObjectV1Response
#
sub usergroupmembership_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupmembership_id' is set
    unless (exists $args{'pki_usergroupmembership_id'}) {
      croak("Missing the required parameter 'pki_usergroupmembership_id' when calling usergroupmembership_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupmembership/{pkiUsergroupmembershipID}';

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
    if ( exists $args{'pki_usergroupmembership_id'}) {
        my $_base_variable = "{" . "pkiUsergroupmembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupmembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupmembershipDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# usergroupmembership_edit_object_v1
#
# Edit an existing Usergroupmembership
#
# @param int $pki_usergroupmembership_id  (required)
# @param UsergroupmembershipEditObjectV1Request $usergroupmembership_edit_object_v1_request  (required)
{
    my $params = {
    'pki_usergroupmembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'usergroupmembership_edit_object_v1_request' => {
        data_type => 'UsergroupmembershipEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupmembership_edit_object_v1' } = {
        summary => 'Edit an existing Usergroupmembership',
        params => $params,
        returns => 'UsergroupmembershipEditObjectV1Response',
        };
}
# @return UsergroupmembershipEditObjectV1Response
#
sub usergroupmembership_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupmembership_id' is set
    unless (exists $args{'pki_usergroupmembership_id'}) {
      croak("Missing the required parameter 'pki_usergroupmembership_id' when calling usergroupmembership_edit_object_v1");
    }

    # verify the required parameter 'usergroupmembership_edit_object_v1_request' is set
    unless (exists $args{'usergroupmembership_edit_object_v1_request'}) {
      croak("Missing the required parameter 'usergroupmembership_edit_object_v1_request' when calling usergroupmembership_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/usergroupmembership/{pkiUsergroupmembershipID}';

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
    if ( exists $args{'pki_usergroupmembership_id'}) {
        my $_base_variable = "{" . "pkiUsergroupmembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupmembership_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'usergroupmembership_edit_object_v1_request'}) {
        $_body_data = $args{'usergroupmembership_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupmembershipEditObjectV1Response', $response);
    return $_response_object;
}

#
# usergroupmembership_get_object_v2
#
# Retrieve an existing Usergroupmembership
#
# @param int $pki_usergroupmembership_id  (required)
{
    my $params = {
    'pki_usergroupmembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'usergroupmembership_get_object_v2' } = {
        summary => 'Retrieve an existing Usergroupmembership',
        params => $params,
        returns => 'UsergroupmembershipGetObjectV2Response',
        };
}
# @return UsergroupmembershipGetObjectV2Response
#
sub usergroupmembership_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_usergroupmembership_id' is set
    unless (exists $args{'pki_usergroupmembership_id'}) {
      croak("Missing the required parameter 'pki_usergroupmembership_id' when calling usergroupmembership_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/usergroupmembership/{pkiUsergroupmembershipID}';

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
    if ( exists $args{'pki_usergroupmembership_id'}) {
        my $_base_variable = "{" . "pkiUsergroupmembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_usergroupmembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('UsergroupmembershipGetObjectV2Response', $response);
    return $_response_object;
}

1;
