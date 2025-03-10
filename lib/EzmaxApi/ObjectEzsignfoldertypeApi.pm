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
package EzmaxApi::ObjectEzsignfoldertypeApi;

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
# ezsignfoldertype_create_object_v3
#
# Create a new Ezsignfoldertype
#
# @param EzsignfoldertypeCreateObjectV3Request $ezsignfoldertype_create_object_v3_request  (required)
{
    my $params = {
    'ezsignfoldertype_create_object_v3_request' => {
        data_type => 'EzsignfoldertypeCreateObjectV3Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldertype_create_object_v3' } = {
        summary => 'Create a new Ezsignfoldertype',
        params => $params,
        returns => 'EzsignfoldertypeCreateObjectV3Response',
        };
}
# @return EzsignfoldertypeCreateObjectV3Response
#
sub ezsignfoldertype_create_object_v3 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignfoldertype_create_object_v3_request' is set
    unless (exists $args{'ezsignfoldertype_create_object_v3_request'}) {
      croak("Missing the required parameter 'ezsignfoldertype_create_object_v3_request' when calling ezsignfoldertype_create_object_v3");
    }

    # parse inputs
    my $_resource_path = '/3/object/ezsignfoldertype';

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
    if ( exists $args{'ezsignfoldertype_create_object_v3_request'}) {
        $_body_data = $args{'ezsignfoldertype_create_object_v3_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldertypeCreateObjectV3Response', $response);
    return $_response_object;
}

#
# ezsignfoldertype_edit_object_v3
#
# Edit an existing Ezsignfoldertype
#
# @param int $pki_ezsignfoldertype_id  (required)
# @param EzsignfoldertypeEditObjectV3Request $ezsignfoldertype_edit_object_v3_request  (required)
{
    my $params = {
    'pki_ezsignfoldertype_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsignfoldertype_edit_object_v3_request' => {
        data_type => 'EzsignfoldertypeEditObjectV3Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldertype_edit_object_v3' } = {
        summary => 'Edit an existing Ezsignfoldertype',
        params => $params,
        returns => 'EzsignfoldertypeEditObjectV3Response',
        };
}
# @return EzsignfoldertypeEditObjectV3Response
#
sub ezsignfoldertype_edit_object_v3 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldertype_id' is set
    unless (exists $args{'pki_ezsignfoldertype_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldertype_id' when calling ezsignfoldertype_edit_object_v3");
    }

    # verify the required parameter 'ezsignfoldertype_edit_object_v3_request' is set
    unless (exists $args{'ezsignfoldertype_edit_object_v3_request'}) {
      croak("Missing the required parameter 'ezsignfoldertype_edit_object_v3_request' when calling ezsignfoldertype_edit_object_v3");
    }

    # parse inputs
    my $_resource_path = '/3/object/ezsignfoldertype/{pkiEzsignfoldertypeID}';

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
    if ( exists $args{'pki_ezsignfoldertype_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldertypeID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldertype_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignfoldertype_edit_object_v3_request'}) {
        $_body_data = $args{'ezsignfoldertype_edit_object_v3_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldertypeEditObjectV3Response', $response);
    return $_response_object;
}

#
# ezsignfoldertype_get_autocomplete_v2
#
# Retrieve Ezsignfoldertypes and IDs
#
# @param string $s_selector The type of Ezsignfoldertypes to return (required)
# @param string $e_filter_active Specify which results we want to display. (optional, default to 'Active')
# @param string $s_query Allow to filter the returned results (optional)
# @param HeaderAcceptLanguage $accept_language  (optional)
{
    my $params = {
    's_selector' => {
        data_type => 'string',
        description => 'The type of Ezsignfoldertypes to return',
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
    __PACKAGE__->method_documentation->{ 'ezsignfoldertype_get_autocomplete_v2' } = {
        summary => 'Retrieve Ezsignfoldertypes and IDs',
        params => $params,
        returns => 'EzsignfoldertypeGetAutocompleteV2Response',
        };
}
# @return EzsignfoldertypeGetAutocompleteV2Response
#
sub ezsignfoldertype_get_autocomplete_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 's_selector' is set
    unless (exists $args{'s_selector'}) {
      croak("Missing the required parameter 's_selector' when calling ezsignfoldertype_get_autocomplete_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignfoldertype/getAutocomplete/{sSelector}';

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
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldertypeGetAutocompleteV2Response', $response);
    return $_response_object;
}

#
# ezsignfoldertype_get_list_v1
#
# Retrieve Ezsignfoldertype list
#
# @param string $e_order_by Specify how you want the results to be sorted (optional)
# @param int $i_row_max  (optional)
# @param int $i_row_offset  (optional, default to 0)
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
    __PACKAGE__->method_documentation->{ 'ezsignfoldertype_get_list_v1' } = {
        summary => 'Retrieve Ezsignfoldertype list',
        params => $params,
        returns => 'EzsignfoldertypeGetListV1Response',
        };
}
# @return EzsignfoldertypeGetListV1Response
#
sub ezsignfoldertype_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/ezsignfoldertype/getList';

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
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldertypeGetListV1Response', $response);
    return $_response_object;
}

#
# ezsignfoldertype_get_object_v2
#
# Retrieve an existing Ezsignfoldertype
#
# @param int $pki_ezsignfoldertype_id  (required)
{
    my $params = {
    'pki_ezsignfoldertype_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldertype_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignfoldertype',
        params => $params,
        returns => 'EzsignfoldertypeGetObjectV2Response',
        };
}
# @return EzsignfoldertypeGetObjectV2Response
#
sub ezsignfoldertype_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldertype_id' is set
    unless (exists $args{'pki_ezsignfoldertype_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldertype_id' when calling ezsignfoldertype_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignfoldertype/{pkiEzsignfoldertypeID}';

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
    if ( exists $args{'pki_ezsignfoldertype_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldertypeID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldertype_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldertypeGetObjectV2Response', $response);
    return $_response_object;
}

#
# ezsignfoldertype_get_object_v4
#
# Retrieve an existing Ezsignfoldertype
#
# @param int $pki_ezsignfoldertype_id  (required)
{
    my $params = {
    'pki_ezsignfoldertype_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignfoldertype_get_object_v4' } = {
        summary => 'Retrieve an existing Ezsignfoldertype',
        params => $params,
        returns => 'EzsignfoldertypeGetObjectV4Response',
        };
}
# @return EzsignfoldertypeGetObjectV4Response
#
sub ezsignfoldertype_get_object_v4 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignfoldertype_id' is set
    unless (exists $args{'pki_ezsignfoldertype_id'}) {
      croak("Missing the required parameter 'pki_ezsignfoldertype_id' when calling ezsignfoldertype_get_object_v4");
    }

    # parse inputs
    my $_resource_path = '/4/object/ezsignfoldertype/{pkiEzsignfoldertypeID}';

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
    if ( exists $args{'pki_ezsignfoldertype_id'}) {
        my $_base_variable = "{" . "pkiEzsignfoldertypeID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignfoldertype_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignfoldertypeGetObjectV4Response', $response);
    return $_response_object;
}

1;
