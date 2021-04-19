=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.40
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ModuleSsprApi;

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
# sspr_reset_password_request_v1
#
# Reset Password Request
# 
# @param SsprResetPasswordRequestV1Request $sspr_reset_password_request_v1_request  (required)
{
    my $params = {
    'sspr_reset_password_request_v1_request' => {
        data_type => 'SsprResetPasswordRequestV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sspr_reset_password_request_v1' } = { 
        summary => 'Reset Password Request',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sspr_reset_password_request_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'sspr_reset_password_request_v1_request' is set
    unless (exists $args{'sspr_reset_password_request_v1_request'}) {
      croak("Missing the required parameter 'sspr_reset_password_request_v1_request' when calling sspr_reset_password_request_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/sspr/resetPasswordRequest';

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
    if ( exists $args{'sspr_reset_password_request_v1_request'}) {
        $_body_data = $args{'sspr_reset_password_request_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# sspr_reset_password_v1
#
# Reset Password
# 
# @param SsprResetPasswordV1Request $sspr_reset_password_v1_request  (required)
{
    my $params = {
    'sspr_reset_password_v1_request' => {
        data_type => 'SsprResetPasswordV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sspr_reset_password_v1' } = { 
        summary => 'Reset Password',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sspr_reset_password_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'sspr_reset_password_v1_request' is set
    unless (exists $args{'sspr_reset_password_v1_request'}) {
      croak("Missing the required parameter 'sspr_reset_password_v1_request' when calling sspr_reset_password_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/sspr/resetPassword';

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
    if ( exists $args{'sspr_reset_password_v1_request'}) {
        $_body_data = $args{'sspr_reset_password_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# sspr_send_usernames_v1
#
# Send username(s)
# 
# @param SsprSendUsernamesV1Request $sspr_send_usernames_v1_request  (required)
{
    my $params = {
    'sspr_send_usernames_v1_request' => {
        data_type => 'SsprSendUsernamesV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sspr_send_usernames_v1' } = { 
        summary => 'Send username(s)',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sspr_send_usernames_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'sspr_send_usernames_v1_request' is set
    unless (exists $args{'sspr_send_usernames_v1_request'}) {
      croak("Missing the required parameter 'sspr_send_usernames_v1_request' when calling sspr_send_usernames_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/sspr/sendUsernames';

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
    if ( exists $args{'sspr_send_usernames_v1_request'}) {
        $_body_data = $args{'sspr_send_usernames_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# sspr_unlock_account_request_v1
#
# Unlock Account Request
# 
# @param SsprUnlockAccountRequestV1Request $sspr_unlock_account_request_v1_request  (required)
{
    my $params = {
    'sspr_unlock_account_request_v1_request' => {
        data_type => 'SsprUnlockAccountRequestV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sspr_unlock_account_request_v1' } = { 
        summary => 'Unlock Account Request',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sspr_unlock_account_request_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'sspr_unlock_account_request_v1_request' is set
    unless (exists $args{'sspr_unlock_account_request_v1_request'}) {
      croak("Missing the required parameter 'sspr_unlock_account_request_v1_request' when calling sspr_unlock_account_request_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/sspr/unlockAccountRequest';

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
    if ( exists $args{'sspr_unlock_account_request_v1_request'}) {
        $_body_data = $args{'sspr_unlock_account_request_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# sspr_unlock_account_v1
#
# Unlock Account
# 
# @param SsprUnlockAccountV1Request $sspr_unlock_account_v1_request  (required)
{
    my $params = {
    'sspr_unlock_account_v1_request' => {
        data_type => 'SsprUnlockAccountV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sspr_unlock_account_v1' } = { 
        summary => 'Unlock Account',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sspr_unlock_account_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'sspr_unlock_account_v1_request' is set
    unless (exists $args{'sspr_unlock_account_v1_request'}) {
      croak("Missing the required parameter 'sspr_unlock_account_v1_request' when calling sspr_unlock_account_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/sspr/unlockAccount';

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
    if ( exists $args{'sspr_unlock_account_v1_request'}) {
        $_body_data = $args{'sspr_unlock_account_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

#
# sspr_validate_token_v1
#
# Validate Token
# 
# @param SsprValidateTokenV1Request $sspr_validate_token_v1_request  (required)
{
    my $params = {
    'sspr_validate_token_v1_request' => {
        data_type => 'SsprValidateTokenV1Request',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'sspr_validate_token_v1' } = { 
        summary => 'Validate Token',
        params => $params,
        returns => undef,
        };
}
# @return void
#
sub sspr_validate_token_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'sspr_validate_token_v1_request' is set
    unless (exists $args{'sspr_validate_token_v1_request'}) {
      croak("Missing the required parameter 'sspr_validate_token_v1_request' when calling sspr_validate_token_v1");
    }

    # parse inputs
    my $_resource_path = '/1/module/sspr/validateToken';

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
    if ( exists $args{'sspr_validate_token_v1_request'}) {
        $_body_data = $args{'sspr_validate_token_v1_request'};
    }

    # authentication setting, if any
    my $auth_settings = [qw(Authorization )];

    # make the API Call
    $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    return;
}

1;
