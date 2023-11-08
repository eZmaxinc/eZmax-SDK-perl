=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.0
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectRejectedoffertopurchaseApi;

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
# rejectedoffertopurchase_get_communication_list_v1
#
# Retrieve Communication list
#
# @param int $pki_rejectedoffertopurchase_id  (required)
{
    my $params = {
    'pki_rejectedoffertopurchase_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'rejectedoffertopurchase_get_communication_list_v1' } = {
        summary => 'Retrieve Communication list',
        params => $params,
        returns => 'RejectedoffertopurchaseGetCommunicationListV1Response',
        };
}
# @return RejectedoffertopurchaseGetCommunicationListV1Response
#
sub rejectedoffertopurchase_get_communication_list_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_rejectedoffertopurchase_id' is set
    unless (exists $args{'pki_rejectedoffertopurchase_id'}) {
      croak("Missing the required parameter 'pki_rejectedoffertopurchase_id' when calling rejectedoffertopurchase_get_communication_list_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/rejectedoffertopurchase/{pkiRejectedoffertopurchaseID}/getCommunicationList';

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
    if ( exists $args{'pki_rejectedoffertopurchase_id'}) {
        my $_base_variable = "{" . "pkiRejectedoffertopurchaseID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_rejectedoffertopurchase_id'});
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
    my $_response_object = $self->{api_client}->deserialize('RejectedoffertopurchaseGetCommunicationListV1Response', $response);
    return $_response_object;
}

1;
