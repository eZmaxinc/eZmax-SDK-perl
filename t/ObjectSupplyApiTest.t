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

use_ok('EzmaxApi::ObjectSupplyApi');

my $api = EzmaxApi::ObjectSupplyApi->new();
isa_ok($api, 'EzmaxApi::ObjectSupplyApi');

#
# supply_create_object_v1 test
#
# uncomment below and update the test
#my $supply_create_object_v1_supply_create_object_v1_request = undef; # replace NULL with a proper value
#my $supply_create_object_v1_result = $api->supply_create_object_v1(supply_create_object_v1_request => $supply_create_object_v1_supply_create_object_v1_request);

#
# supply_delete_object_v1 test
#
# uncomment below and update the test
#my $supply_delete_object_v1_pki_supply_id = undef; # replace NULL with a proper value
#my $supply_delete_object_v1_result = $api->supply_delete_object_v1(pki_supply_id => $supply_delete_object_v1_pki_supply_id);

#
# supply_edit_object_v1 test
#
# uncomment below and update the test
#my $supply_edit_object_v1_pki_supply_id = undef; # replace NULL with a proper value
#my $supply_edit_object_v1_supply_edit_object_v1_request = undef; # replace NULL with a proper value
#my $supply_edit_object_v1_result = $api->supply_edit_object_v1(pki_supply_id => $supply_edit_object_v1_pki_supply_id, supply_edit_object_v1_request => $supply_edit_object_v1_supply_edit_object_v1_request);

#
# supply_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $supply_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $supply_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $supply_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $supply_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $supply_get_autocomplete_v2_result = $api->supply_get_autocomplete_v2(s_selector => $supply_get_autocomplete_v2_s_selector, e_filter_active => $supply_get_autocomplete_v2_e_filter_active, s_query => $supply_get_autocomplete_v2_s_query, accept_language => $supply_get_autocomplete_v2_accept_language);

#
# supply_get_list_v1 test
#
# uncomment below and update the test
#my $supply_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $supply_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $supply_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $supply_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $supply_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $supply_get_list_v1_result = $api->supply_get_list_v1(e_order_by => $supply_get_list_v1_e_order_by, i_row_max => $supply_get_list_v1_i_row_max, i_row_offset => $supply_get_list_v1_i_row_offset, accept_language => $supply_get_list_v1_accept_language, s_filter => $supply_get_list_v1_s_filter);

#
# supply_get_object_v2 test
#
# uncomment below and update the test
#my $supply_get_object_v2_pki_supply_id = undef; # replace NULL with a proper value
#my $supply_get_object_v2_result = $api->supply_get_object_v2(pki_supply_id => $supply_get_object_v2_pki_supply_id);


done_testing();
