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
package EzmaxApi::ObjectEzsignimportdocumentApi;

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
# ezsignimportdocument_download_v1
#
# Retrieve the content
#
# @param int $pki_ezsignimportdocument_id  (required)
{
    my $params = {
    'pki_ezsignimportdocument_id' => {
        data_type => 'int',
        description => '',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'ezsignimportdocument_download_v1' } = {
        summary => 'Retrieve the content',
        params => $params,
        returns => 'EzsignimportdocumentDownloadV1Response',
        };
}
# @return EzsignimportdocumentDownloadV1Response
#
sub ezsignimportdocument_download_v1 {
    my ($self, %args) = @_;

    # verify the required parameter 'pki_ezsignimportdocument_id' is set
    unless (exists $args{'pki_ezsignimportdocument_id'}) {
      croak("Missing the required parameter 'pki_ezsignimportdocument_id' when calling ezsignimportdocument_download_v1");
    }

    # parse inputs
    my $_resource_path = '/1/object/ezsignimportdocument/{pkiEzsignimportdocumentID}/download';

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
    if ( exists $args{'pki_ezsignimportdocument_id'}) {
        my $_base_variable = "{" . "pkiEzsignimportdocumentID" . "}";
        my $_base_value = $self->{api_client}->to_path_value($args{'pki_ezsignimportdocument_id'});
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
    my $_response_object = $self->{api_client}->deserialize('EzsignimportdocumentDownloadV1Response', $response);
    return $_response_object;
}

1;
