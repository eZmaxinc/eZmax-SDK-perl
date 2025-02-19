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

use_ok('EzmaxApi::ObjectEzsigntemplatepackageApi');

my $api = EzmaxApi::ObjectEzsigntemplatepackageApi->new();
isa_ok($api, 'EzmaxApi::ObjectEzsigntemplatepackageApi');

#
# ezsigntemplatepackage_create_object_v1 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_create_object_v1_ezsigntemplatepackage_create_object_v1_request = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_create_object_v1_result = $api->ezsigntemplatepackage_create_object_v1(ezsigntemplatepackage_create_object_v1_request => $ezsigntemplatepackage_create_object_v1_ezsigntemplatepackage_create_object_v1_request);

#
# ezsigntemplatepackage_delete_object_v1 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_delete_object_v1_pki_ezsigntemplatepackage_id = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_delete_object_v1_result = $api->ezsigntemplatepackage_delete_object_v1(pki_ezsigntemplatepackage_id => $ezsigntemplatepackage_delete_object_v1_pki_ezsigntemplatepackage_id);

#
# ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_pki_ezsigntemplatepackage_id = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_result = $api->ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1(pki_ezsigntemplatepackage_id => $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_pki_ezsigntemplatepackage_id, ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request => $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request);

#
# ezsigntemplatepackage_edit_object_v1 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_edit_object_v1_pki_ezsigntemplatepackage_id = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_edit_object_v1_ezsigntemplatepackage_edit_object_v1_request = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_edit_object_v1_result = $api->ezsigntemplatepackage_edit_object_v1(pki_ezsigntemplatepackage_id => $ezsigntemplatepackage_edit_object_v1_pki_ezsigntemplatepackage_id, ezsigntemplatepackage_edit_object_v1_request => $ezsigntemplatepackage_edit_object_v1_ezsigntemplatepackage_edit_object_v1_request);

#
# ezsigntemplatepackage_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_autocomplete_v2_fki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_autocomplete_v2_result = $api->ezsigntemplatepackage_get_autocomplete_v2(s_selector => $ezsigntemplatepackage_get_autocomplete_v2_s_selector, e_filter_active => $ezsigntemplatepackage_get_autocomplete_v2_e_filter_active, s_query => $ezsigntemplatepackage_get_autocomplete_v2_s_query, accept_language => $ezsigntemplatepackage_get_autocomplete_v2_accept_language, fki_ezsignfoldertype_id => $ezsigntemplatepackage_get_autocomplete_v2_fki_ezsignfoldertype_id);

#
# ezsigntemplatepackage_get_list_v1 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_list_v1_result = $api->ezsigntemplatepackage_get_list_v1(e_order_by => $ezsigntemplatepackage_get_list_v1_e_order_by, i_row_max => $ezsigntemplatepackage_get_list_v1_i_row_max, i_row_offset => $ezsigntemplatepackage_get_list_v1_i_row_offset, accept_language => $ezsigntemplatepackage_get_list_v1_accept_language, s_filter => $ezsigntemplatepackage_get_list_v1_s_filter);

#
# ezsigntemplatepackage_get_object_v2 test
#
# uncomment below and update the test
#my $ezsigntemplatepackage_get_object_v2_pki_ezsigntemplatepackage_id = undef; # replace NULL with a proper value
#my $ezsigntemplatepackage_get_object_v2_result = $api->ezsigntemplatepackage_get_object_v2(pki_ezsigntemplatepackage_id => $ezsigntemplatepackage_get_object_v2_pki_ezsigntemplatepackage_id);


done_testing();
