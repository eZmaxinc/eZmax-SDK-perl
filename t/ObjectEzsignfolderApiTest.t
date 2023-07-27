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

use_ok('EzmaxApi::ObjectEzsignfolderApi');

my $api = EzmaxApi::ObjectEzsignfolderApi->new();
isa_ok($api, 'EzmaxApi::ObjectEzsignfolderApi');

#
# ezsignfolder_archive_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_archive_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_archive_v1_body = undef; # replace NULL with a proper value
#my $ezsignfolder_archive_v1_result = $api->ezsignfolder_archive_v1(pki_ezsignfolder_id => $ezsignfolder_archive_v1_pki_ezsignfolder_id, body => $ezsignfolder_archive_v1_body);

#
# ezsignfolder_batch_download_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_batch_download_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_batch_download_v1_ezsignfolder_batch_download_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_batch_download_v1_result = $api->ezsignfolder_batch_download_v1(pki_ezsignfolder_id => $ezsignfolder_batch_download_v1_pki_ezsignfolder_id, ezsignfolder_batch_download_v1_request => $ezsignfolder_batch_download_v1_ezsignfolder_batch_download_v1_request);

#
# ezsignfolder_create_object_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_create_object_v1_ezsignfolder_create_object_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_create_object_v1_result = $api->ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_ezsignfolder_create_object_v1_request);

#
# ezsignfolder_create_object_v2 test
#
# uncomment below and update the test
#my $ezsignfolder_create_object_v2_ezsignfolder_create_object_v2_request = undef; # replace NULL with a proper value
#my $ezsignfolder_create_object_v2_result = $api->ezsignfolder_create_object_v2(ezsignfolder_create_object_v2_request => $ezsignfolder_create_object_v2_ezsignfolder_create_object_v2_request);

#
# ezsignfolder_delete_object_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_delete_object_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_delete_object_v1_result = $api->ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $ezsignfolder_delete_object_v1_pki_ezsignfolder_id);

#
# ezsignfolder_dispose_ezsignfolders_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_dispose_ezsignfolders_v1_ezsignfolder_dispose_ezsignfolders_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_dispose_ezsignfolders_v1_result = $api->ezsignfolder_dispose_ezsignfolders_v1(ezsignfolder_dispose_ezsignfolders_v1_request => $ezsignfolder_dispose_ezsignfolders_v1_ezsignfolder_dispose_ezsignfolders_v1_request);

#
# ezsignfolder_dispose_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_dispose_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_dispose_v1_body = undef; # replace NULL with a proper value
#my $ezsignfolder_dispose_v1_result = $api->ezsignfolder_dispose_v1(pki_ezsignfolder_id => $ezsignfolder_dispose_v1_pki_ezsignfolder_id, body => $ezsignfolder_dispose_v1_body);

#
# ezsignfolder_edit_object_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_edit_object_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_edit_object_v1_ezsignfolder_edit_object_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_edit_object_v1_result = $api->ezsignfolder_edit_object_v1(pki_ezsignfolder_id => $ezsignfolder_edit_object_v1_pki_ezsignfolder_id, ezsignfolder_edit_object_v1_request => $ezsignfolder_edit_object_v1_ezsignfolder_edit_object_v1_request);

#
# ezsignfolder_get_actionable_elements_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_actionable_elements_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_actionable_elements_v1_result = $api->ezsignfolder_get_actionable_elements_v1(pki_ezsignfolder_id => $ezsignfolder_get_actionable_elements_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_communication_count_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_communication_count_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_communication_count_v1_result = $api->ezsignfolder_get_communication_count_v1(pki_ezsignfolder_id => $ezsignfolder_get_communication_count_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_communication_list_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_communication_list_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_communication_list_v1_result = $api->ezsignfolder_get_communication_list_v1(pki_ezsignfolder_id => $ezsignfolder_get_communication_list_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_ezsigndocuments_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_ezsigndocuments_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_ezsigndocuments_v1_result = $api->ezsignfolder_get_ezsigndocuments_v1(pki_ezsignfolder_id => $ezsignfolder_get_ezsigndocuments_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_ezsignfoldersignerassociations_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_ezsignfoldersignerassociations_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_ezsignfoldersignerassociations_v1_result = $api->ezsignfolder_get_ezsignfoldersignerassociations_v1(pki_ezsignfolder_id => $ezsignfolder_get_ezsignfoldersignerassociations_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_ezsignfoldersignerassociationsmine_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_ezsignfoldersignerassociationsmine_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_ezsignfoldersignerassociationsmine_v1_result = $api->ezsignfolder_get_ezsignfoldersignerassociationsmine_v1(pki_ezsignfolder_id => $ezsignfolder_get_ezsignfoldersignerassociationsmine_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_ezsignsignatures_automatic_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_ezsignsignatures_automatic_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_ezsignsignatures_automatic_v1_result = $api->ezsignfolder_get_ezsignsignatures_automatic_v1(pki_ezsignfolder_id => $ezsignfolder_get_ezsignsignatures_automatic_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_forms_data_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_forms_data_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_forms_data_v1_result = $api->ezsignfolder_get_forms_data_v1(pki_ezsignfolder_id => $ezsignfolder_get_forms_data_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_list_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $ezsignfolder_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $ezsignfolder_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $ezsignfolder_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $ezsignfolder_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $ezsignfolder_get_list_v1_result = $api->ezsignfolder_get_list_v1(e_order_by => $ezsignfolder_get_list_v1_e_order_by, i_row_max => $ezsignfolder_get_list_v1_i_row_max, i_row_offset => $ezsignfolder_get_list_v1_i_row_offset, accept_language => $ezsignfolder_get_list_v1_accept_language, s_filter => $ezsignfolder_get_list_v1_s_filter);

#
# ezsignfolder_get_object_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_get_object_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_object_v1_result = $api->ezsignfolder_get_object_v1(pki_ezsignfolder_id => $ezsignfolder_get_object_v1_pki_ezsignfolder_id);

#
# ezsignfolder_get_object_v2 test
#
# uncomment below and update the test
#my $ezsignfolder_get_object_v2_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_get_object_v2_result = $api->ezsignfolder_get_object_v2(pki_ezsignfolder_id => $ezsignfolder_get_object_v2_pki_ezsignfolder_id);

#
# ezsignfolder_import_ezsignfoldersignerassociations_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_import_ezsignfoldersignerassociations_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_import_ezsignfoldersignerassociations_v1_ezsignfolder_import_ezsignfoldersignerassociations_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_import_ezsignfoldersignerassociations_v1_result = $api->ezsignfolder_import_ezsignfoldersignerassociations_v1(pki_ezsignfolder_id => $ezsignfolder_import_ezsignfoldersignerassociations_v1_pki_ezsignfolder_id, ezsignfolder_import_ezsignfoldersignerassociations_v1_request => $ezsignfolder_import_ezsignfoldersignerassociations_v1_ezsignfolder_import_ezsignfoldersignerassociations_v1_request);

#
# ezsignfolder_import_ezsigntemplatepackage_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_import_ezsigntemplatepackage_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_import_ezsigntemplatepackage_v1_ezsignfolder_import_ezsigntemplatepackage_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_import_ezsigntemplatepackage_v1_result = $api->ezsignfolder_import_ezsigntemplatepackage_v1(pki_ezsignfolder_id => $ezsignfolder_import_ezsigntemplatepackage_v1_pki_ezsignfolder_id, ezsignfolder_import_ezsigntemplatepackage_v1_request => $ezsignfolder_import_ezsigntemplatepackage_v1_ezsignfolder_import_ezsigntemplatepackage_v1_request);

#
# ezsignfolder_reorder_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_reorder_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_reorder_v1_ezsignfolder_reorder_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_reorder_v1_result = $api->ezsignfolder_reorder_v1(pki_ezsignfolder_id => $ezsignfolder_reorder_v1_pki_ezsignfolder_id, ezsignfolder_reorder_v1_request => $ezsignfolder_reorder_v1_ezsignfolder_reorder_v1_request);

#
# ezsignfolder_send_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_send_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_send_v1_ezsignfolder_send_v1_request = undef; # replace NULL with a proper value
#my $ezsignfolder_send_v1_result = $api->ezsignfolder_send_v1(pki_ezsignfolder_id => $ezsignfolder_send_v1_pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_ezsignfolder_send_v1_request);

#
# ezsignfolder_send_v2 test
#
# uncomment below and update the test
#my $ezsignfolder_send_v2_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_send_v2_ezsignfolder_send_v2_request = undef; # replace NULL with a proper value
#my $ezsignfolder_send_v2_result = $api->ezsignfolder_send_v2(pki_ezsignfolder_id => $ezsignfolder_send_v2_pki_ezsignfolder_id, ezsignfolder_send_v2_request => $ezsignfolder_send_v2_ezsignfolder_send_v2_request);

#
# ezsignfolder_send_v3 test
#
# uncomment below and update the test
#my $ezsignfolder_send_v3_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_send_v3_ezsignfolder_send_v3_request = undef; # replace NULL with a proper value
#my $ezsignfolder_send_v3_result = $api->ezsignfolder_send_v3(pki_ezsignfolder_id => $ezsignfolder_send_v3_pki_ezsignfolder_id, ezsignfolder_send_v3_request => $ezsignfolder_send_v3_ezsignfolder_send_v3_request);

#
# ezsignfolder_unsend_v1 test
#
# uncomment below and update the test
#my $ezsignfolder_unsend_v1_pki_ezsignfolder_id = undef; # replace NULL with a proper value
#my $ezsignfolder_unsend_v1_body = undef; # replace NULL with a proper value
#my $ezsignfolder_unsend_v1_result = $api->ezsignfolder_unsend_v1(pki_ezsignfolder_id => $ezsignfolder_unsend_v1_pki_ezsignfolder_id, body => $ezsignfolder_unsend_v1_body);

