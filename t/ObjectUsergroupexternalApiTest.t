=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.0
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

use_ok('EzmaxApi::ObjectUsergroupexternalApi');

my $api = EzmaxApi::ObjectUsergroupexternalApi->new();
isa_ok($api, 'EzmaxApi::ObjectUsergroupexternalApi');

#
# usergroupexternal_create_object_v1 test
#
# uncomment below and update the test
#my $usergroupexternal_create_object_v1_usergroupexternal_create_object_v1_request = undef; # replace NULL with a proper value
#my $usergroupexternal_create_object_v1_result = $api->usergroupexternal_create_object_v1(usergroupexternal_create_object_v1_request => $usergroupexternal_create_object_v1_usergroupexternal_create_object_v1_request);

#
# usergroupexternal_delete_object_v1 test
#
# uncomment below and update the test
#my $usergroupexternal_delete_object_v1_pki_usergroupexternal_id = undef; # replace NULL with a proper value
#my $usergroupexternal_delete_object_v1_result = $api->usergroupexternal_delete_object_v1(pki_usergroupexternal_id => $usergroupexternal_delete_object_v1_pki_usergroupexternal_id);

#
# usergroupexternal_edit_object_v1 test
#
# uncomment below and update the test
#my $usergroupexternal_edit_object_v1_pki_usergroupexternal_id = undef; # replace NULL with a proper value
#my $usergroupexternal_edit_object_v1_usergroupexternal_edit_object_v1_request = undef; # replace NULL with a proper value
#my $usergroupexternal_edit_object_v1_result = $api->usergroupexternal_edit_object_v1(pki_usergroupexternal_id => $usergroupexternal_edit_object_v1_pki_usergroupexternal_id, usergroupexternal_edit_object_v1_request => $usergroupexternal_edit_object_v1_usergroupexternal_edit_object_v1_request);

#
# usergroupexternal_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $usergroupexternal_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $usergroupexternal_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $usergroupexternal_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $usergroupexternal_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $usergroupexternal_get_autocomplete_v2_result = $api->usergroupexternal_get_autocomplete_v2(s_selector => $usergroupexternal_get_autocomplete_v2_s_selector, e_filter_active => $usergroupexternal_get_autocomplete_v2_e_filter_active, s_query => $usergroupexternal_get_autocomplete_v2_s_query, accept_language => $usergroupexternal_get_autocomplete_v2_accept_language);

#
# usergroupexternal_get_list_v1 test
#
# uncomment below and update the test
#my $usergroupexternal_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $usergroupexternal_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $usergroupexternal_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $usergroupexternal_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $usergroupexternal_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $usergroupexternal_get_list_v1_result = $api->usergroupexternal_get_list_v1(e_order_by => $usergroupexternal_get_list_v1_e_order_by, i_row_max => $usergroupexternal_get_list_v1_i_row_max, i_row_offset => $usergroupexternal_get_list_v1_i_row_offset, accept_language => $usergroupexternal_get_list_v1_accept_language, s_filter => $usergroupexternal_get_list_v1_s_filter);

#
# usergroupexternal_get_object_v2 test
#
# uncomment below and update the test
#my $usergroupexternal_get_object_v2_pki_usergroupexternal_id = undef; # replace NULL with a proper value
#my $usergroupexternal_get_object_v2_result = $api->usergroupexternal_get_object_v2(pki_usergroupexternal_id => $usergroupexternal_get_object_v2_pki_usergroupexternal_id);

#
# usergroupexternal_get_usergroupexternalmemberships_v1 test
#
# uncomment below and update the test
#my $usergroupexternal_get_usergroupexternalmemberships_v1_pki_usergroupexternal_id = undef; # replace NULL with a proper value
#my $usergroupexternal_get_usergroupexternalmemberships_v1_result = $api->usergroupexternal_get_usergroupexternalmemberships_v1(pki_usergroupexternal_id => $usergroupexternal_get_usergroupexternalmemberships_v1_pki_usergroupexternal_id);

#
# usergroupexternal_get_usergroups_v1 test
#
# uncomment below and update the test
#my $usergroupexternal_get_usergroups_v1_pki_usergroupexternal_id = undef; # replace NULL with a proper value
#my $usergroupexternal_get_usergroups_v1_result = $api->usergroupexternal_get_usergroups_v1(pki_usergroupexternal_id => $usergroupexternal_get_usergroups_v1_pki_usergroupexternal_id);


done_testing();
