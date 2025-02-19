=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.1
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('EzmaxApi::ObjectAuthenticationexternalApi');

my $api = EzmaxApi::ObjectAuthenticationexternalApi->new();
isa_ok($api, 'EzmaxApi::ObjectAuthenticationexternalApi');

#
# authenticationexternal_create_object_v1 test
#
# uncomment below and update the test
#my $authenticationexternal_create_object_v1_authenticationexternal_create_object_v1_request = undef; # replace NULL with a proper value
#my $authenticationexternal_create_object_v1_result = $api->authenticationexternal_create_object_v1(authenticationexternal_create_object_v1_request => $authenticationexternal_create_object_v1_authenticationexternal_create_object_v1_request);

#
# authenticationexternal_delete_object_v1 test
#
# uncomment below and update the test
#my $authenticationexternal_delete_object_v1_pki_authenticationexternal_id = undef; # replace NULL with a proper value
#my $authenticationexternal_delete_object_v1_result = $api->authenticationexternal_delete_object_v1(pki_authenticationexternal_id => $authenticationexternal_delete_object_v1_pki_authenticationexternal_id);

#
# authenticationexternal_edit_object_v1 test
#
# uncomment below and update the test
#my $authenticationexternal_edit_object_v1_pki_authenticationexternal_id = undef; # replace NULL with a proper value
#my $authenticationexternal_edit_object_v1_authenticationexternal_edit_object_v1_request = undef; # replace NULL with a proper value
#my $authenticationexternal_edit_object_v1_result = $api->authenticationexternal_edit_object_v1(pki_authenticationexternal_id => $authenticationexternal_edit_object_v1_pki_authenticationexternal_id, authenticationexternal_edit_object_v1_request => $authenticationexternal_edit_object_v1_authenticationexternal_edit_object_v1_request);

#
# authenticationexternal_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $authenticationexternal_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $authenticationexternal_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $authenticationexternal_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $authenticationexternal_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $authenticationexternal_get_autocomplete_v2_result = $api->authenticationexternal_get_autocomplete_v2(s_selector => $authenticationexternal_get_autocomplete_v2_s_selector, e_filter_active => $authenticationexternal_get_autocomplete_v2_e_filter_active, s_query => $authenticationexternal_get_autocomplete_v2_s_query, accept_language => $authenticationexternal_get_autocomplete_v2_accept_language);

#
# authenticationexternal_get_list_v1 test
#
# uncomment below and update the test
#my $authenticationexternal_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $authenticationexternal_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $authenticationexternal_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $authenticationexternal_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $authenticationexternal_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $authenticationexternal_get_list_v1_result = $api->authenticationexternal_get_list_v1(e_order_by => $authenticationexternal_get_list_v1_e_order_by, i_row_max => $authenticationexternal_get_list_v1_i_row_max, i_row_offset => $authenticationexternal_get_list_v1_i_row_offset, accept_language => $authenticationexternal_get_list_v1_accept_language, s_filter => $authenticationexternal_get_list_v1_s_filter);

#
# authenticationexternal_get_object_v2 test
#
# uncomment below and update the test
#my $authenticationexternal_get_object_v2_pki_authenticationexternal_id = undef; # replace NULL with a proper value
#my $authenticationexternal_get_object_v2_result = $api->authenticationexternal_get_object_v2(pki_authenticationexternal_id => $authenticationexternal_get_object_v2_pki_authenticationexternal_id);

#
# authenticationexternal_reset_authorization_v1 test
#
# uncomment below and update the test
#my $authenticationexternal_reset_authorization_v1_pki_authenticationexternal_id = undef; # replace NULL with a proper value
#my $authenticationexternal_reset_authorization_v1_body = undef; # replace NULL with a proper value
#my $authenticationexternal_reset_authorization_v1_result = $api->authenticationexternal_reset_authorization_v1(pki_authenticationexternal_id => $authenticationexternal_reset_authorization_v1_pki_authenticationexternal_id, body => $authenticationexternal_reset_authorization_v1_body);


done_testing();
