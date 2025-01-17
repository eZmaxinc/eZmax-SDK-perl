=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.1
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsignsignergroupmembershipApi;

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
# ezsignsignergroupmembership_create_object_v1
#
# Create a new Ezsignsignergroupmembership
#
# @param EzsignsignergroupmembershipCreateObjectV1Request $ezsignsignergroupmembership_create_object_v1_request  (required)
{
    my $params = {
    'ezsignsignergroupmembership_create_object_v1_request' => {
        data_type => 'EzsignsignergroupmembershipCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroupmembership_create_object_v1' } = {
        summary => 'Create a new Ezsignsignergroupmembership',
        params => $params,
        returns => 'EzsignsignergroupmembershipCreateObjectV1Response',
        };
}
# @return EzsignsignergroupmembershipCreateObjectV1Response
#
sub ezsignsignergroupmembership_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignsignergroupmembership_create_object_v1_request' is set
    unless (exists $args{'ezsignsignergroupmembership_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignsignergroupmembership_create_object_v1_request' when calling ezsignsignergroupmembership_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroupmembership';

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
    if ( exists $args{'ezsignsignergroupmembership_create_object_v1_request'}) {
        $_body_data = $args{'ezsignsignergroupmembership_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupmembershipCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroupmembership_delete_object_v1
#
# Delete an existing Ezsignsignergroupmembership
#
# @param int $pki_ezsignsignergroupmembership_id The unique ID of the Ezsignsignergroupmembership (required)
{
    my $params = {
    'pki_ezsignsignergroupmembership_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignergroupmembership',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroupmembership_delete_object_v1' } = {
        summary => 'Delete an existing Ezsignsignergroupmembership',
        params => $params,
        returns => 'EzsignsignergroupmembershipDeleteObjectV1Response',
        };
}
# @return EzsignsignergroupmembershipDeleteObjectV1Response
#
sub ezsignsignergroupmembership_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroupmembership_id' is set
    unless (exists $args{'pki_ezsignsignergroupmembership_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroupmembership_id' when calling ezsignsignergroupmembership_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignsignergroupmembership/{pkiEzsignsignergroupmembershipID}';

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
    if ( exists $args{'pki_ezsignsignergroupmembership_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupmembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroupmembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupmembershipDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignsignergroupmembership_get_object_v2
#
# Retrieve an existing Ezsignsignergroupmembership
#
# @param int $pki_ezsignsignergroupmembership_id The unique ID of the Ezsignsignergroupmembership (required)
{
    my $params = {
    'pki_ezsignsignergroupmembership_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignsignergroupmembership',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignsignergroupmembership_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignsignergroupmembership',
        params => $params,
        returns => 'EzsignsignergroupmembershipGetObjectV2Response',
        };
}
# @return EzsignsignergroupmembershipGetObjectV2Response
#
sub ezsignsignergroupmembership_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignsignergroupmembership_id' is set
    unless (exists $args{'pki_ezsignsignergroupmembership_id'}) {
      croak("Missing the required parameter 'pki_ezsignsignergroupmembership_id' when calling ezsignsignergroupmembership_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignsignergroupmembership/{pkiEzsignsignergroupmembershipID}';

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
    if ( exists $args{'pki_ezsignsignergroupmembership_id'}) {
        my $_base_variable = "{" . "pkiEzsignsignergroupmembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignsignergroupmembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignsignergroupmembershipGetObjectV2Response', $response);
    return $_response_object;
}

1;
