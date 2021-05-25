=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.43
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ModuleAuthenticateApi;

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
# authenticate_authenticate_v2
#
# Authenticate a user
# 
# @param string $e_session_type  (required)
# @param AuthenticateAuthenticateV2Request $authenticate_authenticate_v2_request  (required)
{
    my $params = {
    'e_session_type' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    'authenticate_authenticate_v2_request' => {
        data_type => 'AuthenticateAuthenticateV2Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'authenticate_authenticate_v2' } = { 
        summary => 'Authenticate a user',
        params => $params,
        returns => 'AuthenticateAuthenticateV2Response',
        };
}
# @return AuthenticateAuthenticateV2Response
#
sub authenticate_authenticate_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'e_session_type' is set
    unless (exists $args{'e_session_type'}) {
      croak("Missing the required parameter 'e_session_type' when calling authenticate_authenticate_v2");
    }

    # verify the required parameter 'authenticate_authenticate_v2_request' is set
    unless (exists $args{'authenticate_authenticate_v2_request'}) {
      croak("Missing the required parameter 'authenticate_authenticate_v2_request' when calling authenticate_authenticate_v2");
    }

    # parse inputs
    my $_resource_path = '/2/module/authenticate/authenticate/ezsignuser/{eSessionType}';

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

    # path params
    if ( exists $args{'e_session_type'}) {
        my $_base_variable = "{" . "eSessionType" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'e_session_type'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'authenticate_authenticate_v2_request'}) {
        $_body_data = $args{'authenticate_authenticate_v2_request'};
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
    my $_response_object = $self->{api_client}->deserialize('AuthenticateAuthenticateV2Response', $response);
    return $_response_object;
}

1;
