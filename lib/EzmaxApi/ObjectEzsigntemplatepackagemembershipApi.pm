=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.13
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsigntemplatepackagemembershipApi;

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
# ezsigntemplatepackagemembership_create_object_v1
#
# Create a new Ezsigntemplatepackagemembership
#
# @param EzsigntemplatepackagemembershipCreateObjectV1Request $ezsigntemplatepackagemembership_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplatepackagemembership_create_object_v1_request' => {
        data_type => 'EzsigntemplatepackagemembershipCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagemembership_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplatepackagemembership',
        params => $params,
        returns => 'EzsigntemplatepackagemembershipCreateObjectV1Response',
        };
}
# @return EzsigntemplatepackagemembershipCreateObjectV1Response
#
sub ezsigntemplatepackagemembership_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplatepackagemembership_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplatepackagemembership_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatepackagemembership_create_object_v1_request' when calling ezsigntemplatepackagemembership_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackagemembership';

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
    if ( exists $args{'ezsigntemplatepackagemembership_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatepackagemembership_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagemembershipCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackagemembership_delete_object_v1
#
# Delete an existing Ezsigntemplatepackagemembership
#
# @param int $pki_ezsigntemplatepackagemembership_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackagemembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagemembership_delete_object_v1' } = {
        summary => 'Delete an existing Ezsigntemplatepackagemembership',
        params => $params,
        returns => 'EzsigntemplatepackagemembershipDeleteObjectV1Response',
        };
}
# @return EzsigntemplatepackagemembershipDeleteObjectV1Response
#
sub ezsigntemplatepackagemembership_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackagemembership_id' is set
    unless (exists $args{'pki_ezsigntemplatepackagemembership_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackagemembership_id' when calling ezsigntemplatepackagemembership_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackagemembership/{pkiEzsigntemplatepackagemembershipID}';

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
    if ( exists $args{'pki_ezsigntemplatepackagemembership_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackagemembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackagemembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagemembershipDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackagemembership_get_object_v1
#
# Retrieve an existing Ezsigntemplatepackagemembership
#
# @param int $pki_ezsigntemplatepackagemembership_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackagemembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagemembership_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatepackagemembership',
        params => $params,
        returns => 'EzsigntemplatepackagemembershipGetObjectV1Response',
        };
}
# @return EzsigntemplatepackagemembershipGetObjectV1Response
#
sub ezsigntemplatepackagemembership_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackagemembership_id' is set
    unless (exists $args{'pki_ezsigntemplatepackagemembership_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackagemembership_id' when calling ezsigntemplatepackagemembership_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackagemembership/{pkiEzsigntemplatepackagemembershipID}';

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
    if ( exists $args{'pki_ezsigntemplatepackagemembership_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackagemembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackagemembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagemembershipGetObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackagemembership_get_object_v2
#
# Retrieve an existing Ezsigntemplatepackagemembership
#
# @param int $pki_ezsigntemplatepackagemembership_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackagemembership_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackagemembership_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsigntemplatepackagemembership',
        params => $params,
        returns => 'EzsigntemplatepackagemembershipGetObjectV2Response',
        };
}
# @return EzsigntemplatepackagemembershipGetObjectV2Response
#
sub ezsigntemplatepackagemembership_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackagemembership_id' is set
    unless (exists $args{'pki_ezsigntemplatepackagemembership_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackagemembership_id' when calling ezsigntemplatepackagemembership_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsigntemplatepackagemembership/{pkiEzsigntemplatepackagemembershipID}';

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
    if ( exists $args{'pki_ezsigntemplatepackagemembership_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackagemembershipID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackagemembership_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackagemembershipGetObjectV2Response', $response);
    return $_response_object;
}

1;
