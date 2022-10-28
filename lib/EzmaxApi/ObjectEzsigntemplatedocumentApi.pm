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
package EzmaxApi::ObjectEzsigntemplatedocumentApi;

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
# ezsigntemplatedocument_create_object_v1
#
# Create a new Ezsigntemplatedocument
#
# @param EzsigntemplatedocumentCreateObjectV1Request $ezsigntemplatedocument_create_object_v1_request  (required)
{
    my $params = {
    'ezsigntemplatedocument_create_object_v1_request' => {
        data_type => 'EzsigntemplatedocumentCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_create_object_v1' } = {
        summary => 'Create a new Ezsigntemplatedocument',
        params => $params,
        returns => 'EzsigntemplatedocumentCreateObjectV1Response',
        };
}
# @return EzsigntemplatedocumentCreateObjectV1Response
#
sub ezsigntemplatedocument_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'ezsigntemplatedocument_create_object_v1_request' is set
    unless (exists $args{'ezsigntemplatedocument_create_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatedocument_create_object_v1_request' when calling ezsigntemplatedocument_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument';

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
    if ( exists $args{'ezsigntemplatedocument_create_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatedocument_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentCreateObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1
#
# Edit multiple Ezsigntemplateformfieldgroups
#
# @param int $pki_ezsigntemplatedocument_id  (required)
# @param EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Request $ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request' => {
        data_type => 'EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1' } = {
        summary => 'Edit multiple Ezsigntemplateformfieldgroups',
        params => $params,
        returns => 'EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Response',
        };
}
# @return EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Response
#
sub ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1");
    }

    # verify the required parameter 'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request' is set
    unless (exists $args{'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request' when calling ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/editEzsigntemplateformfieldgroups';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request'}) {
        $_body_data = $args{'ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1
#
# Edit multiple Ezsigntemplatesignatures
#
# @param int $pki_ezsigntemplatedocument_id  (required)
# @param EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Request $ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request' => {
        data_type => 'EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1' } = {
        summary => 'Edit multiple Ezsigntemplatesignatures',
        params => $params,
        returns => 'EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Response',
        };
}
# @return EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Response
#
sub ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1");
    }

    # verify the required parameter 'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request' is set
    unless (exists $args{'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request' when calling ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/editEzsigntemplatesignatures';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request'}) {
        $_body_data = $args{'ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_edit_object_v1
#
# Edit an existing Ezsigntemplatedocument
#
# @param int $pki_ezsigntemplatedocument_id  (required)
# @param EzsigntemplatedocumentEditObjectV1Request $ezsigntemplatedocument_edit_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatedocument_edit_object_v1_request' => {
        data_type => 'EzsigntemplatedocumentEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_edit_object_v1' } = {
        summary => 'Edit an existing Ezsigntemplatedocument',
        params => $params,
        returns => 'EzsigntemplatedocumentEditObjectV1Response',
        };
}
# @return EzsigntemplatedocumentEditObjectV1Response
#
sub ezsigntemplatedocument_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_edit_object_v1");
    }

    # verify the required parameter 'ezsigntemplatedocument_edit_object_v1_request' is set
    unless (exists $args{'ezsigntemplatedocument_edit_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatedocument_edit_object_v1_request' when calling ezsigntemplatedocument_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatedocument_edit_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatedocument_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentEditObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1
#
# Retrieve an existing Ezsigntemplatedocument's Ezsigntemplatedocumentpages
#
# @param int $pki_ezsigntemplatedocument_id  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplatedocumentpages',
        params => $params,
        returns => 'EzsigntemplatedocumentGetEzsigntemplatedocumentpagesV1Response',
        };
}
# @return EzsigntemplatedocumentGetEzsigntemplatedocumentpagesV1Response
#
sub ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplatedocumentpages';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentGetEzsigntemplatedocumentpagesV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1
#
# Retrieve an existing Ezsigntemplatedocument's Ezsigntemplateformfieldgroups
#
# @param int $pki_ezsigntemplatedocument_id  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplateformfieldgroups',
        params => $params,
        returns => 'EzsigntemplatedocumentGetEzsigntemplateformfieldgroupsV1Response',
        };
}
# @return EzsigntemplatedocumentGetEzsigntemplateformfieldgroupsV1Response
#
sub ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplateformfieldgroups';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentGetEzsigntemplateformfieldgroupsV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_get_ezsigntemplatesignatures_v1
#
# Retrieve an existing Ezsigntemplatedocument's Ezsigntemplatesignatures
#
# @param int $pki_ezsigntemplatedocument_id  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_get_ezsigntemplatesignatures_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplatesignatures',
        params => $params,
        returns => 'EzsigntemplatedocumentGetEzsigntemplatesignaturesV1Response',
        };
}
# @return EzsigntemplatedocumentGetEzsigntemplatesignaturesV1Response
#
sub ezsigntemplatedocument_get_ezsigntemplatesignatures_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_get_ezsigntemplatesignatures_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplatesignatures';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentGetEzsigntemplatesignaturesV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_get_object_v1
#
# Retrieve an existing Ezsigntemplatedocument
#
# @param int $pki_ezsigntemplatedocument_id  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsigntemplatedocument',
        params => $params,
        returns => 'EzsigntemplatedocumentGetObjectV1Response',
        };
}
# @return EzsigntemplatedocumentGetObjectV1Response
#
sub ezsigntemplatedocument_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentGetObjectV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_get_object_v2
#
# Retrieve an existing Ezsigntemplatedocument
#
# @param int $pki_ezsigntemplatedocument_id  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsigntemplatedocument',
        params => $params,
        returns => 'EzsigntemplatedocumentGetObjectV2Response',
        };
}
# @return EzsigntemplatedocumentGetObjectV2Response
#
sub ezsigntemplatedocument_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentGetObjectV2Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_get_words_positions_v1
#
# Retrieve positions X,Y of given words from a Ezsigntemplatedocument
#
# @param int $pki_ezsigntemplatedocument_id  (required)
# @param EzsigntemplatedocumentGetWordsPositionsV1Request $ezsigntemplatedocument_get_words_positions_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatedocument_get_words_positions_v1_request' => {
        data_type => 'EzsigntemplatedocumentGetWordsPositionsV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_get_words_positions_v1' } = {
        summary => 'Retrieve positions X,Y of given words from a Ezsigntemplatedocument',
        params => $params,
        returns => 'EzsigntemplatedocumentGetWordsPositionsV1Response',
        };
}
# @return EzsigntemplatedocumentGetWordsPositionsV1Response
#
sub ezsigntemplatedocument_get_words_positions_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_get_words_positions_v1");
    }

    # verify the required parameter 'ezsigntemplatedocument_get_words_positions_v1_request' is set
    unless (exists $args{'ezsigntemplatedocument_get_words_positions_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatedocument_get_words_positions_v1_request' when calling ezsigntemplatedocument_get_words_positions_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getWordsPositions';

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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatedocument_get_words_positions_v1_request'}) {
        $_body_data = $args{'ezsigntemplatedocument_get_words_positions_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentGetWordsPositionsV1Response', $response);
    return $_response_object;
}

#
# ezsigntemplatedocument_patch_object_v1
#
# Patch an existing Ezsigntemplatedocument
#
# @param int $pki_ezsigntemplatedocument_id  (required)
# @param EzsigntemplatedocumentPatchObjectV1Request $ezsigntemplatedocument_patch_object_v1_request  (required)
{
    my $params = {
    'pki_ezsigntemplatedocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'ezsigntemplatedocument_patch_object_v1_request' => {
        data_type => 'EzsigntemplatedocumentPatchObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsigntemplatedocument_patch_object_v1' } = {
        summary => 'Patch an existing Ezsigntemplatedocument',
        params => $params,
        returns => 'EzsigntemplatedocumentPatchObjectV1Response',
        };
}
# @return EzsigntemplatedocumentPatchObjectV1Response
#
sub ezsigntemplatedocument_patch_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsigntemplatedocument_id' is set
    unless (exists $args{'pki_ezsigntemplatedocument_id'}) {
      croak("Missing the required parameter 'pki_ezsigntemplatedocument_id' when calling ezsigntemplatedocument_patch_object_v1");
    }

    # verify the required parameter 'ezsigntemplatedocument_patch_object_v1_request' is set
    unless (exists $args{'ezsigntemplatedocument_patch_object_v1_request'}) {
      croak("Missing the required parameter 'ezsigntemplatedocument_patch_object_v1_request' when calling ezsigntemplatedocument_patch_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}';

    my $_method = 'PATCH';
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
    if ( exists $args{'pki_ezsigntemplatedocument_id'}) {
        my $_base_variable = "{" . "pkiEzsigntemplatedocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsigntemplatedocument_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'ezsigntemplatedocument_patch_object_v1_request'}) {
        $_body_data = $args{'ezsigntemplatedocument_patch_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('EzsigntemplatedocumentPatchObjectV1Response', $response);
    return $_response_object;
}

1;
