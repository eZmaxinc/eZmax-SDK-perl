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
package EzmaxApi::ObjectInvoiceApi;

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
# invoice_get_attachments_v1
#
# Retrieve Invoice's Attachments
#
# @param int $pki_invoice_id  (required)
{
    my $params = {
    'pki_invoice_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'invoice_get_attachments_v1' } = {
        summary => 'Retrieve Invoice&#39;s Attachments',
        params => $params,
        returns => 'InvoiceGetAttachmentsV1Response',
        };
}
# @return InvoiceGetAttachmentsV1Response
#
sub invoice_get_attachments_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_invoice_id' is set
    unless (exists $args{'pki_invoice_id'}) {
      croak("Missing the required parameter 'pki_invoice_id' when calling invoice_get_attachments_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/invoice/{pkiInvoiceID}/getAttachments';

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
    if ( exists $args{'pki_invoice_id'}) {
        my $_base_variable = "{" . "pkiInvoiceID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_invoice_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InvoiceGetAttachmentsV1Response', $response);
    return $_response_object;
}

#
# invoice_get_communication_count_v1
#
# Retrieve Communication count
#
# @param int $pki_invoice_id  (required)
{
    my $params = {
    'pki_invoice_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'invoice_get_communication_count_v1' } = {
        summary => 'Retrieve Communication count',
        params => $params,
        returns => 'InvoiceGetCommunicationCountV1Response',
        };
}
# @return InvoiceGetCommunicationCountV1Response
#
sub invoice_get_communication_count_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_invoice_id' is set
    unless (exists $args{'pki_invoice_id'}) {
      croak("Missing the required parameter 'pki_invoice_id' when calling invoice_get_communication_count_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/invoice/{pkiInvoiceID}/getCommunicationCount';

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
    if ( exists $args{'pki_invoice_id'}) {
        my $_base_variable = "{" . "pkiInvoiceID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_invoice_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InvoiceGetCommunicationCountV1Response', $response);
    return $_response_object;
}

#
# invoice_get_communication_list_v1
#
# Retrieve Communication list
#
# @param int $pki_invoice_id  (required)
{
    my $params = {
    'pki_invoice_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'invoice_get_communication_list_v1' } = {
        summary => 'Retrieve Communication list',
        params => $params,
        returns => 'InvoiceGetCommunicationListV1Response',
        };
}
# @return InvoiceGetCommunicationListV1Response
#
sub invoice_get_communication_list_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_invoice_id' is set
    unless (exists $args{'pki_invoice_id'}) {
      croak("Missing the required parameter 'pki_invoice_id' when calling invoice_get_communication_list_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/invoice/{pkiInvoiceID}/getCommunicationList';

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
    if ( exists $args{'pki_invoice_id'}) {
        my $_base_variable = "{" . "pkiInvoiceID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_invoice_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InvoiceGetCommunicationListV1Response', $response);
    return $_response_object;
}

#
# invoice_get_communicationrecipients_v1
#
# Retrieve Invoice's Communicationrecipient
#
# @param int $pki_invoice_id  (required)
{
    my $params = {
    'pki_invoice_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'invoice_get_communicationrecipients_v1' } = {
        summary => 'Retrieve Invoice&#39;s Communicationrecipient',
        params => $params,
        returns => 'InvoiceGetCommunicationrecipientsV1Response',
        };
}
# @return InvoiceGetCommunicationrecipientsV1Response
#
sub invoice_get_communicationrecipients_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_invoice_id' is set
    unless (exists $args{'pki_invoice_id'}) {
      croak("Missing the required parameter 'pki_invoice_id' when calling invoice_get_communicationrecipients_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/invoice/{pkiInvoiceID}/getCommunicationrecipients';

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
    if ( exists $args{'pki_invoice_id'}) {
        my $_base_variable = "{" . "pkiInvoiceID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_invoice_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InvoiceGetCommunicationrecipientsV1Response', $response);
    return $_response_object;
}

#
# invoice_get_communicationsenders_v1
#
# Retrieve Invoice's Communicationsender
#
# @param int $pki_invoice_id  (required)
{
    my $params = {
    'pki_invoice_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'invoice_get_communicationsenders_v1' } = {
        summary => 'Retrieve Invoice&#39;s Communicationsender',
        params => $params,
        returns => 'InvoiceGetCommunicationsendersV1Response',
        };
}
# @return InvoiceGetCommunicationsendersV1Response
#
sub invoice_get_communicationsenders_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_invoice_id' is set
    unless (exists $args{'pki_invoice_id'}) {
      croak("Missing the required parameter 'pki_invoice_id' when calling invoice_get_communicationsenders_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/invoice/{pkiInvoiceID}/getCommunicationsenders';

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
    if ( exists $args{'pki_invoice_id'}) {
        my $_base_variable = "{" . "pkiInvoiceID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_invoice_id'});
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
    my $_response_object = $self->{api_client}->deserialize('InvoiceGetCommunicationsendersV1Response', $response);
    return $_response_object;
}

1;
