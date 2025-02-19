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

use_ok('EzmaxApi::ObjectBillingentityinternalApi');

my $api = EzmaxApi::ObjectBillingentityinternalApi->new();
isa_ok($api, 'EzmaxApi::ObjectBillingentityinternalApi');

#
# billingentityinternal_create_object_v1 test
#
# uncomment below and update the test
#my $billingentityinternal_create_object_v1_billingentityinternal_create_object_v1_request = undef; # replace NULL with a proper value
#my $billingentityinternal_create_object_v1_result = $api->billingentityinternal_create_object_v1(billingentityinternal_create_object_v1_request => $billingentityinternal_create_object_v1_billingentityinternal_create_object_v1_request);

#
# billingentityinternal_edit_object_v1 test
#
# uncomment below and update the test
#my $billingentityinternal_edit_object_v1_pki_billingentityinternal_id = undef; # replace NULL with a proper value
#my $billingentityinternal_edit_object_v1_billingentityinternal_edit_object_v1_request = undef; # replace NULL with a proper value
#my $billingentityinternal_edit_object_v1_result = $api->billingentityinternal_edit_object_v1(pki_billingentityinternal_id => $billingentityinternal_edit_object_v1_pki_billingentityinternal_id, billingentityinternal_edit_object_v1_request => $billingentityinternal_edit_object_v1_billingentityinternal_edit_object_v1_request);

#
# billingentityinternal_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $billingentityinternal_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $billingentityinternal_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $billingentityinternal_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $billingentityinternal_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $billingentityinternal_get_autocomplete_v2_result = $api->billingentityinternal_get_autocomplete_v2(s_selector => $billingentityinternal_get_autocomplete_v2_s_selector, e_filter_active => $billingentityinternal_get_autocomplete_v2_e_filter_active, s_query => $billingentityinternal_get_autocomplete_v2_s_query, accept_language => $billingentityinternal_get_autocomplete_v2_accept_language);

#
# billingentityinternal_get_list_v1 test
#
# uncomment below and update the test
#my $billingentityinternal_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $billingentityinternal_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $billingentityinternal_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $billingentityinternal_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $billingentityinternal_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $billingentityinternal_get_list_v1_result = $api->billingentityinternal_get_list_v1(e_order_by => $billingentityinternal_get_list_v1_e_order_by, i_row_max => $billingentityinternal_get_list_v1_i_row_max, i_row_offset => $billingentityinternal_get_list_v1_i_row_offset, accept_language => $billingentityinternal_get_list_v1_accept_language, s_filter => $billingentityinternal_get_list_v1_s_filter);

#
# billingentityinternal_get_object_v2 test
#
# uncomment below and update the test
#my $billingentityinternal_get_object_v2_pki_billingentityinternal_id = undef; # replace NULL with a proper value
#my $billingentityinternal_get_object_v2_result = $api->billingentityinternal_get_object_v2(pki_billingentityinternal_id => $billingentityinternal_get_object_v2_pki_billingentityinternal_id);


done_testing();
