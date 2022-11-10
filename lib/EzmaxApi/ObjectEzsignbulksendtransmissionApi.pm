=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.16
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectEzsignbulksendtransmissionApi;

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
# ezsignbulksendtransmission_get_csv_errors_v1
#
# Retrieve an existing Ezsignbulksendtransmission's Csv containing errors
#
# @param int $pki_ezsignbulksendtransmission_id  (required)
{
    my $params = {
    'pki_ezsignbulksendtransmission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksendtransmission_get_csv_errors_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksendtransmission&#39;s Csv containing errors',
        params => $params,
        returns => 'string',
        };
}
# @return string
#
sub ezsignbulksendtransmission_get_csv_errors_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksendtransmission_id' is set
    unless (exists $args{'pki_ezsignbulksendtransmission_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksendtransmission_id' when calling ezsignbulksendtransmission_get_csv_errors_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}/getCsvErrors';

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

    # path params
    if ( exists $args{'pki_ezsignbulksendtransmission_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendtransmissionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksendtransmission_id'});
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
# ezsignbulksendtransmission_get_forms_data_v1
#
# Retrieve an existing Ezsignbulksendtransmission's forms data
#
# @param int $pki_ezsignbulksendtransmission_id  (required)
{
    my $params = {
    'pki_ezsignbulksendtransmission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksendtransmission_get_forms_data_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksendtransmission&#39;s forms data',
        params => $params,
        returns => 'EzsignbulksendtransmissionGetFormsDataV1Response',
        };
}
# @return EzsignbulksendtransmissionGetFormsDataV1Response
#
sub ezsignbulksendtransmission_get_forms_data_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksendtransmission_id' is set
    unless (exists $args{'pki_ezsignbulksendtransmission_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksendtransmission_id' when calling ezsignbulksendtransmission_get_forms_data_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}/getFormsData';

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
    if ( exists $args{'pki_ezsignbulksendtransmission_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendtransmissionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksendtransmission_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendtransmissionGetFormsDataV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksendtransmission_get_object_v1
#
# Retrieve an existing Ezsignbulksendtransmission
#
# @param int $pki_ezsignbulksendtransmission_id  (required)
{
    my $params = {
    'pki_ezsignbulksendtransmission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksendtransmission_get_object_v1' } = {
        summary => 'Retrieve an existing Ezsignbulksendtransmission',
        params => $params,
        returns => 'EzsignbulksendtransmissionGetObjectV1Response',
        };
}
# @return EzsignbulksendtransmissionGetObjectV1Response
#
sub ezsignbulksendtransmission_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksendtransmission_id' is set
    unless (exists $args{'pki_ezsignbulksendtransmission_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksendtransmission_id' when calling ezsignbulksendtransmission_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}';

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
    if ( exists $args{'pki_ezsignbulksendtransmission_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendtransmissionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksendtransmission_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendtransmissionGetObjectV1Response', $response);
    return $_response_object;
}

#
# ezsignbulksendtransmission_get_object_v2
#
# Retrieve an existing Ezsignbulksendtransmission
#
# @param int $pki_ezsignbulksendtransmission_id  (required)
{
    my $params = {
    'pki_ezsignbulksendtransmission_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignbulksendtransmission_get_object_v2' } = {
        summary => 'Retrieve an existing Ezsignbulksendtransmission',
        params => $params,
        returns => 'EzsignbulksendtransmissionGetObjectV2Response',
        };
}
# @return EzsignbulksendtransmissionGetObjectV2Response
#
sub ezsignbulksendtransmission_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignbulksendtransmission_id' is set
    unless (exists $args{'pki_ezsignbulksendtransmission_id'}) {
      croak("Missing the required parameter 'pki_ezsignbulksendtransmission_id' when calling ezsignbulksendtransmission_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}';

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
    if ( exists $args{'pki_ezsignbulksendtransmission_id'}) {
        my $_base_variable = "{" . "pkiEzsignbulksendtransmissionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignbulksendtransmission_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignbulksendtransmissionGetObjectV2Response', $response);
    return $_response_object;
}

1;
