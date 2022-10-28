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
package EzmaxApi::GlobalCustomerApi;

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
# global_customer_get_endpoint_v1
#
# Get customer endpoint
#
# @param string $pks_customer_code  (required)
# @param string $s_infrastructureproduct_code The infrastructure product Code  If undefined, \&quot;appcluster01\&quot; is assumed (optional)
{
    my $params = {
    'pks_customer_code' => {
        data_type => 'string',
        description => '',
        required => '1',
    },
    's_infrastructureproduct_code' => {
        data_type => 'string',
        description => 'The infrastructure product Code  If undefined, \&quot;appcluster01\&quot; is assumed',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'global_customer_get_endpoint_v1' } = {
        summary => 'Get customer endpoint',
        params => $params,
        returns => 'GlobalCustomerGetEndpointV1Response',
        };
}
# @return GlobalCustomerGetEndpointV1Response
#
sub global_customer_get_endpoint_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pks_customer_code' is set
    unless (exists $args{'pks_customer_code'}) {
      croak("Missing the required parameter 'pks_customer_code' when calling global_customer_get_endpoint_v1");
    }

    # parse inputs
    my $_resource_path = '/1/customer/{pksCustomerCode}/endpoint';

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

    # query params
    if ( exists $args{'s_infrastructureproduct_code'}) {
        $query_params->{'sInfrastructureproductCode'} = $self->{api_client}->to_query_value($args{'s_infrastructureproduct_code'});
    }

    # path params
    if ( exists $args{'pks_customer_code'}) {
        my $_base_variable = "{" . "pksCustomerCode" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pks_customer_code'});
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
    my $_response_object = $self->{api_client}->deserialize('GlobalCustomerGetEndpointV1Response', $response);
    return $_response_object;
}

1;
