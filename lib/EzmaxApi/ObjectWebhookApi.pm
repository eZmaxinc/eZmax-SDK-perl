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
package EzmaxApi::ObjectWebhookApi;

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
# webhook_create_object_v1
#
# Create a new Webhook
#
# @param WebhookCreateObjectV1Request $webhook_create_object_v1_request  (required)
{
    my $params = {
    'webhook_create_object_v1_request' => {
        data_type => 'WebhookCreateObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_create_object_v1' } = {
        summary => 'Create a new Webhook',
        params => $params,
        returns => 'WebhookCreateObjectV1Response',
        };
}
# @return WebhookCreateObjectV1Response
#
sub webhook_create_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'webhook_create_object_v1_request' is set
    unless (exists $args{'webhook_create_object_v1_request'}) {
      croak("Missing the required parameter 'webhook_create_object_v1_request' when calling webhook_create_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/webhook';

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
    if ( exists $args{'webhook_create_object_v1_request'}) {
        $_body_data = $args{'webhook_create_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('WebhookCreateObjectV1Response', $response);
    return $_response_object;
}

#
# webhook_delete_object_v1
#
# Delete an existing Webhook
#
# @param int $pki_webhook_id  (required)
{
    my $params = {
    'pki_webhook_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_delete_object_v1' } = {
        summary => 'Delete an existing Webhook',
        params => $params,
        returns => 'WebhookDeleteObjectV1Response',
        };
}
# @return WebhookDeleteObjectV1Response
#
sub webhook_delete_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_webhook_id' is set
    unless (exists $args{'pki_webhook_id'}) {
      croak("Missing the required parameter 'pki_webhook_id' when calling webhook_delete_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/webhook/{pkiWebhookID}';

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
    if ( exists $args{'pki_webhook_id'}) {
        my $_base_variable = "{" . "pkiWebhookID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_webhook_id'});
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
    my $_response_object = $self->{api_client}->deserialize('WebhookDeleteObjectV1Response', $response);
    return $_response_object;
}

#
# webhook_edit_object_v1
#
# Edit an existing Webhook
#
# @param int $pki_webhook_id  (required)
# @param WebhookEditObjectV1Request $webhook_edit_object_v1_request  (required)
{
    my $params = {
    'pki_webhook_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'webhook_edit_object_v1_request' => {
        data_type => 'WebhookEditObjectV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_edit_object_v1' } = {
        summary => 'Edit an existing Webhook',
        params => $params,
        returns => 'WebhookEditObjectV1Response',
        };
}
# @return WebhookEditObjectV1Response
#
sub webhook_edit_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_webhook_id' is set
    unless (exists $args{'pki_webhook_id'}) {
      croak("Missing the required parameter 'pki_webhook_id' when calling webhook_edit_object_v1");
    }

    # verify the required parameter 'webhook_edit_object_v1_request' is set
    unless (exists $args{'webhook_edit_object_v1_request'}) {
      croak("Missing the required parameter 'webhook_edit_object_v1_request' when calling webhook_edit_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/webhook/{pkiWebhookID}';

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
    if ( exists $args{'pki_webhook_id'}) {
        my $_base_variable = "{" . "pkiWebhookID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_webhook_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'webhook_edit_object_v1_request'}) {
        $_body_data = $args{'webhook_edit_object_v1_request'};
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
    my $_response_object = $self->{api_client}->deserialize('WebhookEditObjectV1Response', $response);
    return $_response_object;
}

#
# webhook_get_history_v1
#
# Retrieve the logs for recent Webhook calls
#
# @param int $pki_webhook_id  (required)
# @param string $e_webhook_historyinterval The number of days to return (required)
{
    my $params = {
    'pki_webhook_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'e_webhook_historyinterval' => {
        data_type => 'string',
        description => 'The number of days to return',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_get_history_v1' } = {
        summary => 'Retrieve the logs for recent Webhook calls',
        params => $params,
        returns => 'WebhookGetHistoryV1Response',
        };
}
# @return WebhookGetHistoryV1Response
#
sub webhook_get_history_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_webhook_id' is set
    unless (exists $args{'pki_webhook_id'}) {
      croak("Missing the required parameter 'pki_webhook_id' when calling webhook_get_history_v1");
    }

    # verify the required parameter 'e_webhook_historyinterval' is set
    unless (exists $args{'e_webhook_historyinterval'}) {
      croak("Missing the required parameter 'e_webhook_historyinterval' when calling webhook_get_history_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/webhook/{pkiWebhookID}/getHistory';

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
    if ( exists $args{'e_webhook_historyinterval'}) {
        $query_params->{'eWebhookHistoryinterval'} = $self->{api_client}->to_query_value($args{'e_webhook_historyinterval'});
    }

    # path params
    if ( exists $args{'pki_webhook_id'}) {
        my $_base_variable = "{" . "pkiWebhookID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_webhook_id'});
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
    my $_response_object = $self->{api_client}->deserialize('WebhookGetHistoryV1Response', $response);
    return $_response_object;
}

#
# webhook_get_list_v1
#
# Retrieve Webhook list
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
    __PACKAGE__->method_documentation->{ 'webhook_get_list_v1' } = {
        summary => 'Retrieve Webhook list',
        params => $params,
        returns => 'WebhookGetListV1Response',
        };
}
# @return WebhookGetListV1Response
#
sub webhook_get_list_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/object/webhook/getList';

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
    my $_response_object = $self->{api_client}->deserialize('WebhookGetListV1Response', $response);
    return $_response_object;
}

#
# webhook_get_object_v1
#
# Retrieve an existing Webhook
#
# @param int $pki_webhook_id  (required)
{
    my $params = {
    'pki_webhook_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_get_object_v1' } = {
        summary => 'Retrieve an existing Webhook',
        params => $params,
        returns => 'WebhookGetObjectV1Response',
        };
}
# @return WebhookGetObjectV1Response
#
sub webhook_get_object_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_webhook_id' is set
    unless (exists $args{'pki_webhook_id'}) {
      croak("Missing the required parameter 'pki_webhook_id' when calling webhook_get_object_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/webhook/{pkiWebhookID}';

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
    if ( exists $args{'pki_webhook_id'}) {
        my $_base_variable = "{" . "pkiWebhookID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_webhook_id'});
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
    my $_response_object = $self->{api_client}->deserialize('WebhookGetObjectV1Response', $response);
    return $_response_object;
}

#
# webhook_get_object_v2
#
# Retrieve an existing Webhook
#
# @param int $pki_webhook_id  (required)
{
    my $params = {
    'pki_webhook_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_get_object_v2' } = {
        summary => 'Retrieve an existing Webhook',
        params => $params,
        returns => 'WebhookGetObjectV2Response',
        };
}
# @return WebhookGetObjectV2Response
#
sub webhook_get_object_v2 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_webhook_id' is set
    unless (exists $args{'pki_webhook_id'}) {
      croak("Missing the required parameter 'pki_webhook_id' when calling webhook_get_object_v2");
    }

    # parse inputs
    my $_resource_path = '/2/object/webhook/{pkiWebhookID}';

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
    if ( exists $args{'pki_webhook_id'}) {
        my $_base_variable = "{" . "pkiWebhookID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_webhook_id'});
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
    my $_response_object = $self->{api_client}->deserialize('WebhookGetObjectV2Response', $response);
    return $_response_object;
}

#
# webhook_test_v1
#
# Test the Webhook by calling the Url
#
# @param int $pki_webhook_id  (required)
# @param object $body  (required)
{
    my $params = {
    'pki_webhook_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'body' => {
        data_type => 'object',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'webhook_test_v1' } = {
        summary => 'Test the Webhook by calling the Url',
        params => $params,
        returns => 'WebhookTestV1Response',
        };
}
# @return WebhookTestV1Response
#
sub webhook_test_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_webhook_id' is set
    unless (exists $args{'pki_webhook_id'}) {
      croak("Missing the required parameter 'pki_webhook_id' when calling webhook_test_v1");
    }

    # verify the required parameter 'body' is set
    unless (exists $args{'body'}) {
      croak("Missing the required parameter 'body' when calling webhook_test_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/webhook/{pkiWebhookID}/test';

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
    if ( exists $args{'pki_webhook_id'}) {
        my $_base_variable = "{" . "pkiWebhookID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_webhook_id'});
        $_resource_path =~ s/$_base_variable/$_base_value/g;
    }

    my $_body_data;
    # body params
    if ( exists $args{'body'}) {
        $_body_data = $args{'body'};
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
    my $_response_object = $self->{api_client}->deserialize('WebhookTestV1Response', $response);
    return $_response_object;
}

1;
