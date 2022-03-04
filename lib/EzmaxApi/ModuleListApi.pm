=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.6
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ModuleListApi;

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
# list_get_listpresentation_v1
#
# Get all Listpresentation for a specific list
#
# @param string $s_list_name The list Name (required)
{
    my $params = {
    's_list_name' => {
        data_type => 'string',
        description => 'The list Name',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_get_listpresentation_v1' } = {
        summary => 'Get all Listpresentation for a specific list',
        params => $params,
        returns => 'ListGetListpresentationV1Response',
        };
}
# @return ListGetListpresentationV1Response
#
sub list_get_listpresentation_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 's_list_name' is set
    unless (exists $args{'s_list_name'}) {
      croak("Missing the required parameter 's_list_name' when calling list_get_listpresentation_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/list/listpresentation/{sListName}';

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
    if ( exists $args{'s_list_name'}) {
        my $_base_variable = "{" . "sListName" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'s_list_name'});
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
    my $_response_object = $self->{api_client}->deserialize('ListGetListpresentationV1Response', $response);
    return $_response_object;
}

#
# list_save_listpresentation_v1
#
# Save all Listpresentation for a specific list
#
# @param string $s_list_name The list Name (required)
# @param ListSaveListpresentationV1Request $list_save_listpresentation_v1_request  (required)
{
    my $params = {
    's_list_name' => {
        data_type => 'string',
        description => 'The list Name',
        required => '1',
    },
    'list_save_listpresentation_v1_request' => {
        data_type => 'ListSaveListpresentationV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'list_save_listpresentation_v1' } = {
        summary => 'Save all Listpresentation for a specific list',
        params => $params,
        returns => 'ListSaveListpresentationV1Response',
        };
}
# @return ListSaveListpresentationV1Response
#
sub list_save_listpresentation_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 's_list_name' is set
    unless (exists $args{'s_list_name'}) {
      croak("Missing the required parameter 's_list_name' when calling list_save_listpresentation_v1");
    }

    # verify the required parameter 'list_save_listpresentation_v1_request' is set
    unless (exists $args{'list_save_listpresentation_v1_request'}) {
      croak("Missing the required parameter 'list_save_listpresentation_v1_request' when calling list_save_listpresentation_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/list/listpresentation/{sListName}';

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
    if ( exists $args{'s_list_name'}) {
        my $_base_variable = "{" . "sListName" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'s_list_name'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'list_save_listpresentation_v1_request'}) {
        $_body_data = $args{'list_save_listpresentation_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('ListSaveListpresentationV1Response', $response);
    return $_response_object;
}

1;
