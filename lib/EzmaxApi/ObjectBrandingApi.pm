=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.11
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectBrandingApi;

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
# branding_create_object_v1
#
# Create a new Branding
#
# @param BrandingCreateObjectV1Request $branding_create_object_v1_request  (required)
{
    my $params = {
    'branding_create_object_v1_request' => {
        data_type => 'BrandingCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'branding_create_object_v1' } = {
        summary => 'Create a new Branding',
        params => $params,
        returns => 'BrandingCreateObjectV1Response',
        };
}
# @return BrandingCreateObjectV1Response
#
sub branding_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'branding_create_object_v1_request' is set
    unless (exists $args{'branding_create_object_v1_request'}) {
      croak("Missing the required parameter 'branding_create_object_v1_request' when calling branding_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/branding';

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
    if ( exists $args{'branding_create_object_v1_request'}) {
        $_body_data = $args{'branding_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('BrandingCreateObjectV1Response', $response);
    return $_response_object;
}

#
# branding_edit_object_v1
#
# Edit an existing Branding
#
# @param int $pki_branding_id  (required)
# @param BrandingEditObjectV1Request $branding_edit_object_v1_request  (required)
{
    my $params = {
    'pki_branding_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'branding_edit_object_v1_request' => {
        data_type => 'BrandingEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'branding_edit_object_v1' } = {
        summary => 'Edit an existing Branding',
        params => $params,
        returns => 'BrandingEditObjectV1Response',
        };
}
# @return BrandingEditObjectV1Response
#
sub branding_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_branding_id' is set
    unless (exists $args{'pki_branding_id'}) {
      croak("Missing the required parameter 'pki_branding_id' when calling branding_edit_object_v1");
    }

    # verify the required parameter 'branding_edit_object_v1_request' is set
    unless (exists $args{'branding_edit_object_v1_request'}) {
      croak("Missing the required parameter 'branding_edit_object_v1_request' when calling branding_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/branding/{pkiBrandingID}';

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
    if ( exists $args{'pki_branding_id'}) {
        my $_base_variable = "{" . "pkiBrandingID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_branding_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'branding_edit_object_v1_request'}) {
        $_body_data = $args{'branding_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('BrandingEditObjectV1Response', $response);
    return $_response_object;
}

#
# branding_get_autocomplete_v1
#
# Retrieve Brandings and IDs
#
# @param string $s_selector The type of Brandings to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Brandings to return',
        required => '1',
    },
    'e_filter_active' => {
        data_type => 'string',
        description => 'Specify which results we want to display.',
        required => '0',
    },
    's_query' => {
        data_type => 'string',
        description => 'Allow to filter the returned results',
        required => '0',
    },
    'accept_language' => {
        data_type => 'HeaderAcceptLanguage',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'branding_get_autocomplete_v1' } = {
        summary => 'Retrieve Brandings and IDs',
        params => $params,
        returns => 'CommonGetAutocompleteV1Response',
        };
}
# @return CommonGetAutocompleteV1Response
#
sub branding_get_autocomplete_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling branding_get_autocomplete_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/branding/getAutocomplete/{sSelector}';

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
    if ( exists $args{'e_filter_active'}) {
        $query_params->{'eFilterActive'} = $self->{api_client}->to_query_value($args{'e_filter_active'});
    }

    # query params
    if ( exists $args{'s_query'}) {
        $query_params->{'sQuery'} = $self->{api_client}->to_query_value($args{'s_query'});
    }

    # header params
    if ( exists $args{'accept_language'}) {
        $header_params->{'Accept-Language'} = $self->{api_client}->to_header_value($args{'accept_language'});
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

#
# branding_get_autocomplete_v2
#
# Retrieve Brandings and IDs
#
# @param string $s_selector The type of Brandings to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Brandings to return',
        required => '1',
    },
    'e_filter_active' => {
        data_type => 'string',
        description => 'Specify which results we want to display.',
        required => '0',
    },
    's_query' => {
        data_type => 'string',
        description => 'Allow to filter the returned results',
        required => '0',
    },
    'accept_language' => {
        data_type => 'HeaderAcceptLanguage',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'branding_get_autocomplete_v2' } = {
        summary => 'Retrieve Brandings and IDs',
        params => $params,
        returns => 'BrandingGetAutocompleteV2Response',
        };
}
# @return BrandingGetAutocompleteV2Response
#
sub branding_get_autocomplete_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling branding_get_autocomplete_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/branding/getAutocomplete/{sSelector}';

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
    if ( exists $args{'e_filter_active'}) {
        $query_params->{'eFilterActive'} = $self->{api_client}->to_query_value($args{'e_filter_active'});
    }

    # query params
    if ( exists $args{'s_query'}) {
        $query_params->{'sQuery'} = $self->{api_client}->to_query_value($args{'s_query'});
    }

    # header params
    if ( exists $args{'accept_language'}) {
        $header_params->{'Accept-Language'} = $self->{api_client}->to_header_value($args{'accept_language'});
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
    my $_response_object = $self->{api_client}->deserialize('BrandingGetAutocompleteV2Response', $response);
    return $_response_object;
}

#
# branding_get_list_v1
#
# Retrieve Branding list
#
# @param string $e_order_by Specify how you want the results to be sorted (optional)
# @param int $i_row_max  (optional)
# @param int $i_row_offset  (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
# @param string $s_filter  (optional)
{
    my $params = {
    'e_order_by' => {
        data_type => 'string',
        description => 'Specify how you want the results to be sorted',
        required => '0',
    },
    'i_row_max' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'i_row_offset' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    'accept_language' => {
        data_type => 'HeaderAcceptLanguage',
        description => '',
        required => '0',
    },
    's_filter' => {
        data_type => 'string',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'branding_get_list_v1' } = {
        summary => 'Retrieve Branding list',
        params => $params,
        returns => 'BrandingGetListV1Response',
        };
}
# @return BrandingGetListV1Response
#
sub branding_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/branding/getList';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'e_order_by'}) {
        $query_params->{'eOrderBy'} = $self->{api_client}->to_query_value($args{'e_order_by'});
    }

    # query params
    if ( exists $args{'i_row_max'}) {
        $query_params->{'iRowMax'} = $self->{api_client}->to_query_value($args{'i_row_max'});
    }

    # query params
    if ( exists $args{'i_row_offset'}) {
        $query_params->{'iRowOffset'} = $self->{api_client}->to_query_value($args{'i_row_offset'});
    }

    # query params
    if ( exists $args{'s_filter'}) {
        $query_params->{'sFilter'} = $self->{api_client}->to_query_value($args{'s_filter'});
    }

    # header params
    if ( exists $args{'accept_language'}) {
        $header_params->{'Accept-Language'} = $self->{api_client}->to_header_value($args{'accept_language'});
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
    my $_response_object = $self->{api_client}->deserialize('BrandingGetListV1Response', $response);
    return $_response_object;
}

#
# branding_get_object_v1
#
# Retrieve an existing Branding
#
# @param int $pki_branding_id  (required)
{
    my $params = {
    'pki_branding_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'branding_get_object_v1' } = {
        summary => 'Retrieve an existing Branding',
        params => $params,
        returns => 'BrandingGetObjectV1Response',
        };
}
# @return BrandingGetObjectV1Response
#
sub branding_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_branding_id' is set
    unless (exists $args{'pki_branding_id'}) {
      croak("Missing the required parameter 'pki_branding_id' when calling branding_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/branding/{pkiBrandingID}';

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
    if ( exists $args{'pki_branding_id'}) {
        my $_base_variable = "{" . "pkiBrandingID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_branding_id'});
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
    my $_response_object = $self->{api_client}->deserialize('BrandingGetObjectV1Response', $response);
    return $_response_object;
}

1;
