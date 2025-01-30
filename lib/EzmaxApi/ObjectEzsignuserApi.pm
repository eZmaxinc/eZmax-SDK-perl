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
package EzmaxApi::ObjectEzsignuserApi;

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
# ezsignuser_edit_object_v1
#
# Edit an existing Ezsignuser
#
# @param int $pki_ezsignuser_id The unique ID of the Ezsignuser (required)
# @param EzsignuserEditObjectV1Request $ezsignuser_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsignuser_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignuser',
        required => '1',
    },
    'ezsignuser_edit_object_v1_request' => {
        data_type => 'EzsignuserEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignuser_edit_object_v1' } = {
        summary => 'Edit an existing Ezsignuser',
        params => $params,
        returns => 'EzsignuserEditObjectV1Response',
        };
}
# @return EzsignuserEditObjectV1Response
#
sub ezsignuser_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignuser_id' is set
    unless (exists $args{'pki_ezsignuser_id'}) {
      croak("Missing the required parameter 'pki_ezsignuser_id' when calling ezsignuser_edit_object_v1");
    }

    # verify the required parameter 'ezsignuser_edit_object_v1_request' is set
    unless (exists $args{'ezsignuser_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignuser_edit_object_v1_request' when calling ezsignuser_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignuser/{pkiEzsignuserID}';

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
    if ( exists $args{'pki_ezsignuser_id'}) {
        my $_base_variable = "{" . "pkiEzsignuserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignuser_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignuser_edit_object_v1_request'}) {
        $_body_data = $args{'ezsignuser_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignuserEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignuser_get_object_v2
#
# Retrieve an existing Ezsignuser
#
# @param int $pki_ezsignuser_id The unique ID of the Ezsignuser (required)
{
    my $params = {
    'pki_ezsignuser_id' => {
        data_type => 'int',
        description => 'The unique ID of the Ezsignuser',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignuser_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignuser',
        params => $params,
        returns => 'EzsignuserGetObjectV2Response',
        };
}
# @return EzsignuserGetObjectV2Response
#
sub ezsignuser_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignuser_id' is set
    unless (exists $args{'pki_ezsignuser_id'}) {
      croak("Missing the required parameter 'pki_ezsignuser_id' when calling ezsignuser_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignuser/{pkiEzsignuserID}';

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
    if ( exists $args{'pki_ezsignuser_id'}) {
        my $_base_variable = "{" . "pkiEzsignuserID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignuser_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignuserGetObjectV2Response', $response);
    return $_response_object;
}

1;
