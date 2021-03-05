=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.32
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectPeriodApi;

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
# period_get_autocomplete_v1
#
# Retrieve Periods and IDs
# 
# @param string $s_selector The types of Periods to return (required)
# @param string $s_query Allow to filter on the option value (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The types of Periods to return',
        required => '1',
    },
    's_query' => {
        data_type => 'string',
        description => 'Allow to filter on the option value',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'period_get_autocomplete_v1' } = { 
        summary => 'Retrieve Periods and IDs',
        params => $params,
        returns => 'CommonGetAutocompleteV1Response',
        };
}
# @return CommonGetAutocompleteV1Response
#
sub period_get_autocomplete_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling period_get_autocomplete_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/period/getAutocomplete/{sSelector}';

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
    if ( exists $args{'s_query'}) {
        $query_params->{'sQuery'} = $self->{api_client}->to_query_value($args{'s_query'});
    }

    # path params
    if ( exists $args{'s_selector'}) {
        my $_base_variable = "{" . "sSelector" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'s_selector'});
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
    my $_response_object = $self->{api_client}->deserialize('CommonGetAutocompleteV1Response', $response);
    return $_response_object;
}

1;
