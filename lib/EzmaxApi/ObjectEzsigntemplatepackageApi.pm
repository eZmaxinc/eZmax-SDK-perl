=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.17
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsigntemplatepackageApi;

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
# ezsigntemplatepackage_create_object_v1
#
# Create a new Ezsigntemplatepackage
#
# @param EzsigntemplatepackageCreateObjectV1Request $ezsigntemplatepackage_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplatepackage_create_object_v1_request' => {
        data_type => 'EzsigntemplatepackageCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplatepackage',
        params => $params,
        returns => 'EzsigntemplatepackageCreateObjectV1Response',
        };
}
# @return EzsigntemplatepackageCreateObjectV1Response
#
sub ezsigntemplatepackage_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplatepackage_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplatepackage_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatepackage_create_object_v1_request' when calling ezsigntemplatepackage_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage';

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
    if ( exists $args{'ezsigntemplatepackage_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatepackage_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_delete_object_v1
#
# Delete an existing Ezsigntemplatepackage
#
# @param int $pki_ezsigntemplatepackage_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackage_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_delete_object_v1' } = {
        summary => 'Delete an existing Ezsigntemplatepackage',
        params => $params,
        returns => 'EzsigntemplatepackageDeleteObjectV1Response',
        };
}
# @return EzsigntemplatepackageDeleteObjectV1Response
#
sub ezsigntemplatepackage_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackage_id' is set
    unless (exists $args{'pki_ezsigntemplatepackage_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackage_id' when calling ezsigntemplatepackage_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID}';

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
    if ( exists $args{'pki_ezsigntemplatepackage_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackage_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1
#
# Edit multiple Ezsigntemplatepackagesigners
#
# @param int $pki_ezsigntemplatepackage_id  (required)
# @param EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Request $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatepackage_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request' => {
        data_type => 'EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1' } = {
        summary => 'Edit multiple Ezsigntemplatepackagesigners',
        params => $params,
        returns => 'EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Response',
        };
}
# @return EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Response
#
sub ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackage_id' is set
    unless (exists $args{'pki_ezsigntemplatepackage_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackage_id' when calling ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1");
    }

    # verify the required parameter 'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request' is set
    unless (exists $args{'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request' when calling ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID}/editEzsigntemplatepackagesigners';

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
    if ( exists $args{'pki_ezsigntemplatepackage_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackage_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request'}) {
        $_body_data = $args{'ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_edit_object_v1
#
# Edit an existing Ezsigntemplatepackage
#
# @param int $pki_ezsigntemplatepackage_id  (required)
# @param EzsigntemplatepackageEditObjectV1Request $ezsigntemplatepackage_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatepackage_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatepackage_edit_object_v1_request' => {
        data_type => 'EzsigntemplatepackageEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_edit_object_v1' } = {
        summary => 'Edit an existing Ezsigntemplatepackage',
        params => $params,
        returns => 'EzsigntemplatepackageEditObjectV1Response',
        };
}
# @return EzsigntemplatepackageEditObjectV1Response
#
sub ezsigntemplatepackage_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackage_id' is set
    unless (exists $args{'pki_ezsigntemplatepackage_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackage_id' when calling ezsigntemplatepackage_edit_object_v1");
    }

    # verify the required parameter 'ezsigntemplatepackage_edit_object_v1_request' is set
    unless (exists $args{'ezsigntemplatepackage_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatepackage_edit_object_v1_request' when calling ezsigntemplatepackage_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID}';

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
    if ( exists $args{'pki_ezsigntemplatepackage_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackage_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatepackage_edit_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatepackage_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_get_autocomplete_v1
#
# Retrieve Ezsigntemplatepackages and IDs
#
# @param string $s_selector The type of Ezsigntemplatepackages to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Ezsigntemplatepackages to return',
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
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_get_autocomplete_v1' } = {
        summary => 'Retrieve Ezsigntemplatepackages and IDs',
        params => $params,
        returns => 'CommonGetAutocompleteDisabledV1Response',
        };
}
# @return CommonGetAutocompleteDisabledV1Response
#
sub ezsigntemplatepackage_get_autocomplete_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling ezsigntemplatepackage_get_autocomplete_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage/getAutocomplete/{sSelector}';

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
    my $_response_object = $self->{api_client}->deserialize('CommonGetAutocompleteDisabledV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_get_autocomplete_v2
#
# Retrieve Ezsigntemplatepackages and IDs
#
# @param string $s_selector The type of Ezsigntemplatepackages to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Ezsigntemplatepackages to return',
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
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_get_autocomplete_v2' } = {
        summary => 'Retrieve Ezsigntemplatepackages and IDs',
        params => $params,
        returns => 'EzsigntemplatepackageGetAutocompleteV2Response',
        };
}
# @return EzsigntemplatepackageGetAutocompleteV2Response
#
sub ezsigntemplatepackage_get_autocomplete_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling ezsigntemplatepackage_get_autocomplete_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsigntemplatepackage/getAutocomplete/{sSelector}';

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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageGetAutocompleteV2Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_get_list_v1
#
# Retrieve Ezsigntemplatepackage list
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
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_get_list_v1' } = {
        summary => 'Retrieve Ezsigntemplatepackage list',
        params => $params,
        returns => 'EzsigntemplatepackageGetListV1Response',
        };
}
# @return EzsigntemplatepackageGetListV1Response
#
sub ezsigntemplatepackage_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage/getList';

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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageGetListV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_get_object_v1
#
# Retrieve an existing Ezsigntemplatepackage
#
# @param int $pki_ezsigntemplatepackage_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackage_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatepackage',
        params => $params,
        returns => 'EzsigntemplatepackageGetObjectV1Response',
        };
}
# @return EzsigntemplatepackageGetObjectV1Response
#
sub ezsigntemplatepackage_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackage_id' is set
    unless (exists $args{'pki_ezsigntemplatepackage_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackage_id' when calling ezsigntemplatepackage_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID}';

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
    if ( exists $args{'pki_ezsigntemplatepackage_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackage_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageGetObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatepackage_get_object_v2
#
# Retrieve an existing Ezsigntemplatepackage
#
# @param int $pki_ezsigntemplatepackage_id  (required)
{
    my $params = {
    'pki_ezsigntemplatepackage_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatepackage_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsigntemplatepackage',
        params => $params,
        returns => 'EzsigntemplatepackageGetObjectV2Response',
        };
}
# @return EzsigntemplatepackageGetObjectV2Response
#
sub ezsigntemplatepackage_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatepackage_id' is set
    unless (exists $args{'pki_ezsigntemplatepackage_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatepackage_id' when calling ezsigntemplatepackage_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID}';

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
    if ( exists $args{'pki_ezsigntemplatepackage_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatepackageID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatepackage_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatepackageGetObjectV2Response', $response);
    return $_response_object;
}

1;
