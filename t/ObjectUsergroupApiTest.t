=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.18
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('EzmaxApi::ObjectUsergroupApi');

my $api = EzmaxApi::ObjectUsergroupApi->new();
isa_ok($api, 'EzmaxApi::ObjectUsergroupApi');

#
# usergroup_create_object_v1 test
#
# uncomment below and update the test
#my $usergroup_create_object_v1_usergroup_create_object_v1_request = undef; # replace NULL with a proper value
#my $usergroup_create_object_v1_result = $api->usergroup_create_object_v1(usergroup_create_object_v1_request => $usergroup_create_object_v1_usergroup_create_object_v1_request);

#
# usergroup_edit_object_v1 test
#
# uncomment below and update the test
#my $usergroup_edit_object_v1_pki_usergroup_id = undef; # replace NULL with a proper value
#my $usergroup_edit_object_v1_usergroup_edit_object_v1_request = undef; # replace NULL with a proper value
#my $usergroup_edit_object_v1_result = $api->usergroup_edit_object_v1(pki_usergroup_id => $usergroup_edit_object_v1_pki_usergroup_id, usergroup_edit_object_v1_request => $usergroup_edit_object_v1_usergroup_edit_object_v1_request);

#
# usergroup_edit_permissions_v1 test
#
# uncomment below and update the test
#my $usergroup_edit_permissions_v1_pki_usergroup_id = undef; # replace NULL with a proper value
#my $usergroup_edit_permissions_v1_usergroup_edit_permissions_v1_request = undef; # replace NULL with a proper value
#my $usergroup_edit_permissions_v1_result = $api->usergroup_edit_permissions_v1(pki_usergroup_id => $usergroup_edit_permissions_v1_pki_usergroup_id, usergroup_edit_permissions_v1_request => $usergroup_edit_permissions_v1_usergroup_edit_permissions_v1_request);

#
# usergroup_edit_usergroupmemberships_v1 test
#
# uncomment below and update the test
#my $usergroup_edit_usergroupmemberships_v1_pki_usergroup_id = undef; # replace NULL with a proper value
#my $usergroup_edit_usergroupmemberships_v1_usergroup_edit_usergroupmemberships_v1_request = undef; # replace NULL with a proper value
#my $usergroup_edit_usergroupmemberships_v1_result = $api->usergroup_edit_usergroupmemberships_v1(pki_usergroup_id => $usergroup_edit_usergroupmemberships_v1_pki_usergroup_id, usergroup_edit_usergroupmemberships_v1_request => $usergroup_edit_usergroupmemberships_v1_usergroup_edit_usergroupmemberships_v1_request);

#
# usergroup_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $usergroup_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v2_result = $api->usergroup_get_autocomplete_v2(s_selector => $usergroup_get_autocomplete_v2_s_selector, e_filter_active => $usergroup_get_autocomplete_v2_e_filter_active, s_query => $usergroup_get_autocomplete_v2_s_query, accept_language => $usergroup_get_autocomplete_v2_accept_language);

#
# usergroup_get_list_v1 test
#
# uncomment below and update the test
#my $usergroup_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $usergroup_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $usergroup_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $usergroup_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $usergroup_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $usergroup_get_list_v1_result = $api->usergroup_get_list_v1(e_order_by => $usergroup_get_list_v1_e_order_by, i_row_max => $usergroup_get_list_v1_i_row_max, i_row_offset => $usergroup_get_list_v1_i_row_offset, accept_language => $usergroup_get_list_v1_accept_language, s_filter => $usergroup_get_list_v1_s_filter);

#
# usergroup_get_object_v2 test
#
# uncomment below and update the test
#my $usergroup_get_object_v2_pki_usergroup_id = undef; # replace NULL with a proper value
#my $usergroup_get_object_v2_result = $api->usergroup_get_object_v2(pki_usergroup_id => $usergroup_get_object_v2_pki_usergroup_id);

#
# usergroup_get_permissions_v1 test
#
# uncomment below and update the test
#my $usergroup_get_permissions_v1_pki_usergroup_id = undef; # replace NULL with a proper value
#my $usergroup_get_permissions_v1_result = $api->usergroup_get_permissions_v1(pki_usergroup_id => $usergroup_get_permissions_v1_pki_usergroup_id);

#
# usergroup_get_usergroupmemberships_v1 test
#
# uncomment below and update the test
#my $usergroup_get_usergroupmemberships_v1_pki_usergroup_id = undef; # replace NULL with a proper value
#my $usergroup_get_usergroupmemberships_v1_result = $api->usergroup_get_usergroupmemberships_v1(pki_usergroup_id => $usergroup_get_usergroupmemberships_v1_pki_usergroup_id);

