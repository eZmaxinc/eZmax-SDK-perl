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

use_ok('EzmaxApi::ObjectEzsignfoldertypeApi');

my $api = EzmaxApi::ObjectEzsignfoldertypeApi->new();
isa_ok($api, 'EzmaxApi::ObjectEzsignfoldertypeApi');

#
# ezsignfoldertype_create_object_v2 test
#
# uncomment below and update the test
#my $ezsignfoldertype_create_object_v2_ezsignfoldertype_create_object_v2_request = undef; # replace NULL with a proper value
#my $ezsignfoldertype_create_object_v2_result = $api->ezsignfoldertype_create_object_v2(ezsignfoldertype_create_object_v2_request => $ezsignfoldertype_create_object_v2_ezsignfoldertype_create_object_v2_request);

#
# ezsignfoldertype_edit_object_v1 test
#
# uncomment below and update the test
#my $ezsignfoldertype_edit_object_v1_pki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $ezsignfoldertype_edit_object_v1_ezsignfoldertype_edit_object_v1_request = undef; # replace NULL with a proper value
#my $ezsignfoldertype_edit_object_v1_result = $api->ezsignfoldertype_edit_object_v1(pki_ezsignfoldertype_id => $ezsignfoldertype_edit_object_v1_pki_ezsignfoldertype_id, ezsignfoldertype_edit_object_v1_request => $ezsignfoldertype_edit_object_v1_ezsignfoldertype_edit_object_v1_request);

#
# ezsignfoldertype_edit_object_v2 test
#
# uncomment below and update the test
#my $ezsignfoldertype_edit_object_v2_pki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $ezsignfoldertype_edit_object_v2_ezsignfoldertype_edit_object_v2_request = undef; # replace NULL with a proper value
#my $ezsignfoldertype_edit_object_v2_result = $api->ezsignfoldertype_edit_object_v2(pki_ezsignfoldertype_id => $ezsignfoldertype_edit_object_v2_pki_ezsignfoldertype_id, ezsignfoldertype_edit_object_v2_request => $ezsignfoldertype_edit_object_v2_ezsignfoldertype_edit_object_v2_request);

#
# ezsignfoldertype_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $ezsignfoldertype_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_autocomplete_v2_result = $api->ezsignfoldertype_get_autocomplete_v2(s_selector => $ezsignfoldertype_get_autocomplete_v2_s_selector, e_filter_active => $ezsignfoldertype_get_autocomplete_v2_e_filter_active, s_query => $ezsignfoldertype_get_autocomplete_v2_s_query, accept_language => $ezsignfoldertype_get_autocomplete_v2_accept_language);

#
# ezsignfoldertype_get_list_v1 test
#
# uncomment below and update the test
#my $ezsignfoldertype_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_list_v1_result = $api->ezsignfoldertype_get_list_v1(e_order_by => $ezsignfoldertype_get_list_v1_e_order_by, i_row_max => $ezsignfoldertype_get_list_v1_i_row_max, i_row_offset => $ezsignfoldertype_get_list_v1_i_row_offset, accept_language => $ezsignfoldertype_get_list_v1_accept_language, s_filter => $ezsignfoldertype_get_list_v1_s_filter);

#
# ezsignfoldertype_get_object_v2 test
#
# uncomment below and update the test
#my $ezsignfoldertype_get_object_v2_pki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_object_v2_result = $api->ezsignfoldertype_get_object_v2(pki_ezsignfoldertype_id => $ezsignfoldertype_get_object_v2_pki_ezsignfoldertype_id);

#
# ezsignfoldertype_get_object_v3 test
#
# uncomment below and update the test
#my $ezsignfoldertype_get_object_v3_pki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $ezsignfoldertype_get_object_v3_result = $api->ezsignfoldertype_get_object_v3(pki_ezsignfoldertype_id => $ezsignfoldertype_get_object_v3_pki_ezsignfoldertype_id);


done_testing();
