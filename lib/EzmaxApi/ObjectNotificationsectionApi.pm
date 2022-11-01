=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ObjectNotificationsectionApi;

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
# notificationsection_get_notificationtests_v1
#
# Retrieve an existing Notificationsection's Notificationtests
#
# @param int $pki_notificationsection_id  (required)
# @param boolean $b_show_hidden Whether or not to return the hidden Notificationtests (required)
{
    my $params = {
    'pki_notificationsection_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    'b_show_hidden' => {
        data_type => 'boolean',
        description => 'Whether or not to return the hidden Notificationtests',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'notificationsection_get_notificationtests_v1' } = {
        summary => 'Retrieve an existing Notificationsection&#39;s Notificationtests',
        params => $params,
        returns => 'NotificationsectionGetNotificationtestsV1Response',
        };
}
# @return NotificationsectionGetNotificationtestsV1Response
#
sub notificationsection_get_notificationtests_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_notificationsection_id' is set
    unless (exists $args{'pki_notificationsection_id'}) {
      croak("Missing the required parameter 'pki_notificationsection_id' when calling notificationsection_get_notificationtests_v1");
    }

    # verify the required parameter 'b_show_hidden' is set
    unless (exists $args{'b_show_hidden'}) {
      croak("Missing the required parameter 'b_show_hidden' when calling notificationsection_get_notificationtests_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/notificationsection/{pkiNotificationsectionID}/getNotificationtests';

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
    if ( exists $args{'b_show_hidden'}) {
        $query_params->{'bShowHidden'} = $self->{api_client}->to_query_value($args{'b_show_hidden'});
    }

    # path params
    if ( exists $args{'pki_notificationsection_id'}) {
        my $_base_variable = "{" . "pkiNotificationsectionID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_notificationsection_id'});
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
    my $_response_object = $self->{api_client}->deserialize('NotificationsectionGetNotificationtestsV1Response', $response);
    return $_response_object;
}

1;
