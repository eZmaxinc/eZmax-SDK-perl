=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.10
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsigntemplatepackagesignermembershipApi;

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
# ezsigntemplatepackagesignermembership_create_object_v1
#
# Create a new Ezsigntemplatepackagesignermembership
#
# @param EzsigntemplatepackagesignermembershipCreateObjectV1Request $ezsigntemplatepackagesignermembership_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplatepackagesignermembership_create_object_v1_request' => {
        data_type => 'EzsigntemplatepackagesignermembershipCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagesignermembership_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplatepackagesignermembership',
        params => $params,
        returns => 'EzsigntemplatepackagesignermembershipCreateObjectV1Response',
        };
}
# @return EzsigntemplatepackagesignermembershipCreateObjectV1Response
#
sub ezsigntemplatepackagesignermembership_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplatepackagesignermembership_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplatepackagesignermembership_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatepackagesignermembership_create_object_v1_request' when calling ezsigntemplatepackagesignermembership_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackagesignermembership';

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
    if ( exists $args{'ezsigntemplatepackagesignermembership_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatepackagesignermembership_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagesignermembershipCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackagesignermembership_delete_object_v1
#
# Delete an existing Ezsigntemplatepackagesignermembership
#
# @param int $pki_ezsigntemplatepackagesignermembership_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackagesignermembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagesignermembership_delete_object_v1' } = {
        summary => 'Delete an existing Ezsigntemplatepackagesignermembership',
        params => $params,
        returns => 'EzsigntemplatepackagesignermembershipDeleteObjectV1Response',
        };
}
# @return EzsigntemplatepackagesignermembershipDeleteObjectV1Response
#
sub ezsigntemplatepackagesignermembership_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackagesignermembership_id' is set
    unless (exists $args{'pki_ezsigntemplatepackagesignermembership_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackagesignermembership_id' when calling ezsigntemplatepackagesignermembership_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackagesignermembership/{pkiEzsigntemplatepackagesignermembershipID}';

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
    if ( exists $args{'pki_ezsigntemplatepackagesignermembership_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackagesignermembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackagesignermembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagesignermembershipDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackagesignermembership_get_object_v1
#
# Retrieve an existing Ezsigntemplatepackagesignermembership
#
# @param int $pki_ezsigntemplatepackagesignermembership_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackagesignermembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagesignermembership_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatepackagesignermembership',
        params => $params,
        returns => 'EzsigntemplatepackagesignermembershipGetObjectV1Response',
        };
}
# @return EzsigntemplatepackagesignermembershipGetObjectV1Response
#
sub ezsigntemplatepackagesignermembership_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackagesignermembership_id' is set
    unless (exists $args{'pki_ezsigntemplatepackagesignermembership_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackagesignermembership_id' when calling ezsigntemplatepackagesignermembership_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackagesignermembership/{pkiEzsigntemplatepackagesignermembershipID}';

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
    if ( exists $args{'pki_ezsigntemplatepackagesignermembership_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackagesignermembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackagesignermembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagesignermembershipGetObjectV1Response', $response);
    return $_response_object;
}

1;
