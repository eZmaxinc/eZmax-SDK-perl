=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.1
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsignbulksendApi;

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
# ezsignbulksend_create_ezsignbulksendtransmission_v2
#
# Create a new Ezsignbulksendtransmission in the Ezsignbulksend
#
# @param int $pki_ezsignbulksend_id  (required)
# @param EzsignbulksendCreateEzsignbulksendtransmissionV2Request $ezsignbulksend_create_ezsignbulksendtransmission_v2_request  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsignbulksend_create_ezsignbulksendtransmission_v2_request' => {
        data_type => 'EzsignbulksendCreateEzsignbulksendtransmissionV2Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_create_ezsignbulksendtransmission_v2' } = {
        summary => 'Create a new Ezsignbulksendtransmission in the Ezsignbulksend',
        params => $params,
        returns => 'EzsignbulksendCreateEzsignbulksendtransmissionV2Response',
        };
}
# @return EzsignbulksendCreateEzsignbulksendtransmissionV2Response
#
sub ezsignbulksend_create_ezsignbulksendtransmission_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_create_ezsignbulksendtransmission_v2");
    }

    # verify the required parameter 'ezsignbulksend_create_ezsignbulksendtransmission_v2_request' is set
    unless (exists $args{'ezsignbulksend_create_ezsignbulksendtransmission_v2_request'}) {
      croak("Missing the required parameter 'ezsignbulksend_create_ezsignbulksendtransmission_v2_request' when calling ezsignbulksend_create_ezsignbulksendtransmission_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignbulksend/{pkiEzsignbulksendID}/createEzsignbulksendtransmission';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignbulksend_create_ezsignbulksendtransmission_v2_request'}) {
        $_body_data = $args{'ezsignbulksend_create_ezsignbulksendtransmission_v2_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendCreateEzsignbulksendtransmissionV2Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_create_object_v1
#
# Create a new Ezsignbulksend
#
# @param EzsignbulksendCreateObjectV1Request $ezsignbulksend_create_object_v1_request  (required)
{
    my $params = {
    'ezsignbulksend_create_object_v1_request' => {
        data_type => 'EzsignbulksendCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_create_object_v1' } = {
        summary => 'Create a new Ezsignbulksend',
        params => $params,
        returns => 'EzsignbulksendCreateObjectV1Response',
        };
}
# @return EzsignbulksendCreateObjectV1Response
#
sub ezsignbulksend_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsignbulksend_create_object_v1_request' is set
    unless (exists $args{'ezsignbulksend_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignbulksend_create_object_v1_request' when calling ezsignbulksend_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend';

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
    if ( exists $args{'ezsignbulksend_create_object_v1_request'}) {
        $_body_data = $args{'ezsignbulksend_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_delete_object_v1
#
# Delete an existing Ezsignbulksend
#
# @param int $pki_ezsignbulksend_id  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_delete_object_v1' } = {
        summary => 'Delete an existing Ezsignbulksend',
        params => $params,
        returns => 'CommonResponse',
        };
}
# @return CommonResponse
#
sub ezsignbulksend_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
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
    my $_response_object = $self->{api_client}->deserialize('CommonResponse', $response);
    return $_response_object;
}

#
# ezsignbulksend_edit_object_v1
#
# Edit an existing Ezsignbulksend
#
# @param int $pki_ezsignbulksend_id  (required)
# @param EzsignbulksendEditObjectV1Request $ezsignbulksend_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsignbulksend_edit_object_v1_request' => {
        data_type => 'EzsignbulksendEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_edit_object_v1' } = {
        summary => 'Edit an existing Ezsignbulksend',
        params => $params,
        returns => 'CommonResponse',
        };
}
# @return CommonResponse
#
sub ezsignbulksend_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_edit_object_v1");
    }

    # verify the required parameter 'ezsignbulksend_edit_object_v1_request' is set
    unless (exists $args{'ezsignbulksend_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsignbulksend_edit_object_v1_request' when calling ezsignbulksend_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignbulksend_edit_object_v1_request'}) {
        $_body_data = $args{'ezsignbulksend_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('CommonResponse', $response);
    return $_response_object;
}

#
# ezsignbulksend_get_csv_template_v1
#
# Retrieve an existing Ezsignbulksend's empty Csv template
#
# @param int $pki_ezsignbulksend_id  (required)
# @param string $e_csv_separator Separator that will be used to separate fields (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'e_csv_separator' => {
        data_type => 'string',
        description => 'Separator that will be used to separate fields',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_get_csv_template_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksend&#39;s empty Csv template',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub ezsignbulksend_get_csv_template_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_get_csv_template_v1");
    }

    # verify the required parameter 'e_csv_separator' is set
    unless (exists $args{'e_csv_separator'}) {
      croak("Missing the required parameter 'e_csv_separator' when calling ezsignbulksend_get_csv_template_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}/getCsvTemplate';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('text/csv', 'application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'e_csv_separator'}) {
        $query_params->{'eCsvSeparator'} = $self->{api_client}->to_query_value($args{'e_csv_separator'});
    }

    # path params
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
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
    my $_response_object = $self->{api_client}->deserialize('string', $response);
    return $_response_object;
}

#
# ezsignbulksend_get_ezsignbulksendtransmissions_v1
#
# Retrieve an existing Ezsignbulksend's Ezsignbulksendtransmissions
#
# @param int $pki_ezsignbulksend_id  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_get_ezsignbulksendtransmissions_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksend&#39;s Ezsignbulksendtransmissions',
        params => $params,
        returns => 'EzsignbulksendGetEzsignbulksendtransmissionsV1Response',
        };
}
# @return EzsignbulksendGetEzsignbulksendtransmissionsV1Response
#
sub ezsignbulksend_get_ezsignbulksendtransmissions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_get_ezsignbulksendtransmissions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}/getEzsignbulksendtransmissions';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendGetEzsignbulksendtransmissionsV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_get_ezsignsignatures_automatic_v1
#
# Retrieve an existing Ezsignbulksend's automatic Ezsignsignatures
#
# @param int $pki_ezsignbulksend_id  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_get_ezsignsignatures_automatic_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksend&#39;s automatic Ezsignsignatures',
        params => $params,
        returns => 'EzsignbulksendGetEzsignsignaturesAutomaticV1Response',
        };
}
# @return EzsignbulksendGetEzsignsignaturesAutomaticV1Response
#
sub ezsignbulksend_get_ezsignsignatures_automatic_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_get_ezsignsignatures_automatic_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}/getEzsignsignaturesAutomatic';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendGetEzsignsignaturesAutomaticV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_get_forms_data_v1
#
# Retrieve an existing Ezsignbulksend's forms data
#
# @param int $pki_ezsignbulksend_id  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_get_forms_data_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksend&#39;s forms data',
        params => $params,
        returns => 'EzsignbulksendGetFormsDataV1Response',
        };
}
# @return EzsignbulksendGetFormsDataV1Response
#
sub ezsignbulksend_get_forms_data_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_get_forms_data_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}/getFormsData';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json', 'application/zip');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # path params
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendGetFormsDataV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_get_list_v1
#
# Retrieve Ezsignbulksend list
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
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_get_list_v1' } = {
        summary => 'Retrieve Ezsignbulksend list',
        params => $params,
        returns => 'EzsignbulksendGetListV1Response',
        };
}
# @return EzsignbulksendGetListV1Response
#
sub ezsignbulksend_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/getList';

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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendGetListV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_get_object_v2
#
# Retrieve an existing Ezsignbulksend
#
# @param int $pki_ezsignbulksend_id  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignbulksend',
        params => $params,
        returns => 'EzsignbulksendGetObjectV2Response',
        };
}
# @return EzsignbulksendGetObjectV2Response
#
sub ezsignbulksend_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignbulksend/{pkiEzsignbulksendID}';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendGetObjectV2Response', $response);
    return $_response_object;
}

#
# ezsignbulksend_reorder_v1
#
# Reorder Ezsignbulksenddocumentmappings in the Ezsignbulksend
#
# @param int $pki_ezsignbulksend_id  (required)
# @param EzsignbulksendReorderV1Request $ezsignbulksend_reorder_v1_request  (required)
{
    my $params = {
    'pki_ezsignbulksend_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsignbulksend_reorder_v1_request' => {
        data_type => 'EzsignbulksendReorderV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksend_reorder_v1' } = {
        summary => 'Reorder Ezsignbulksenddocumentmappings in the Ezsignbulksend',
        params => $params,
        returns => 'CommonResponse',
        };
}
# @return CommonResponse
#
sub ezsignbulksend_reorder_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksend_id' is set
    unless (exists $args{'pki_ezsignbulksend_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksend_id' when calling ezsignbulksend_reorder_v1");
    }

    # verify the required parameter 'ezsignbulksend_reorder_v1_request' is set
    unless (exists $args{'ezsignbulksend_reorder_v1_request'}) {
      croak("Missing the required parameter 'ezsignbulksend_reorder_v1_request' when calling ezsignbulksend_reorder_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksend/{pkiEzsignbulksendID}/reorder';

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
    if ( exists $args{'pki_ezsignbulksend_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksend_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsignbulksend_reorder_v1_request'}) {
        $_body_data = $args{'ezsignbulksend_reorder_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('CommonResponse', $response);
    return $_response_object;
}

1;
