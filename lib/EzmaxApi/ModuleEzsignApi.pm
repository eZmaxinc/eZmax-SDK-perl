=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.10
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::ModuleEzsignApi;

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
# ezsign_suggest_signers_v1
#
# Suggest signers
#
{
    my $params = {
    };
    __PACKAGE__->method_documentation->{ 'ezsign_suggest_signers_v1' } = {
        summary => 'Suggest signers',
        params => $params,
        returns => 'EzsignSuggestSignersV1Response',
        };
}
# @return EzsignSuggestSignersV1Response
#
sub ezsign_suggest_signers_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/module/ezsign/suggestSigners';

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
    my $_response_object = $self->{api_client}->deserialize('EzsignSuggestSignersV1Response', $response);
    return $_response_object;
}

#
# ezsign_suggest_templates_v1
#
# Suggest templates
#
# @param int $fki_ezsignfoldertype_id  (optional)
{
    my $params = {
    'fki_ezsignfoldertype_id' => {
        data_type => 'int',
        description => '',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsign_suggest_templates_v1' } = {
        summary => 'Suggest templates',
        params => $params,
        returns => 'EzsignSuggestTemplatesV1Response',
        };
}
# @return EzsignSuggestTemplatesV1Response
#
sub ezsign_suggest_templates_v1 {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/1/module/ezsign/suggestTemplates';

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
    if ( exists $args{'fki_ezsignfoldertype_id'}) {
        $query_params->{'fkiEzsignfoldertypeID'} = $self->{api_client}->to_query_value($args{'fki_ezsignfoldertype_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignSuggestTemplatesV1Response', $response);
    return $_response_object;
}

1;
