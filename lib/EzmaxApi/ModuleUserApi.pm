=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.7
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ModuleUserApi;

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
# user_create_ezsignuser_v1
#
# Create a new User of type Ezsignuser
#
# @param ARRAY[UserCreateEzsignuserV1Request] $user_create_ezsignuser_v1_request  (required)
{
    my $params = {
    'user_create_ezsignuser_v1_request' => {
        data_type => 'ARRAY[UserCreateEzsignuserV1Request]',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'user_create_ezsignuser_v1' } = {
        summary => 'Create a new User of type Ezsignuser',
        params => $params,
        returns => 'UserCreateEzsignuserV1Response',
        };
}
# @return UserCreateEzsignuserV1Response
#
sub user_create_ezsignuser_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'user_create_ezsignuser_v1_request' is set
    unless (exists $args{'user_create_ezsignuser_v1_request'}) {
      croak("Missing the required parameter 'user_create_ezsignuser_v1_request' when calling user_create_ezsignuser_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/user/createezsignuser';

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
    if ( exists $args{'user_create_ezsignuser_v1_request'}) {
        $_body_data = $args{'user_create_ezsignuser_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('UserCreateEzsignuserV1Response', $response);
    return $_response_object;
}

1;
