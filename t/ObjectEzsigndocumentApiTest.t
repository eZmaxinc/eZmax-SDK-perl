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

use_ok('EzmaxApi::ObjectEzsigndocumentApi');

my $api = EzmaxApi::ObjectEzsigndocumentApi->new();
isa_ok($api, 'EzmaxApi::ObjectEzsigndocumentApi');

#
# ezsigndocument_apply_ezsigntemplate_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_apply_ezsigntemplate_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_apply_ezsigntemplate_v1_ezsigndocument_apply_ezsigntemplate_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_apply_ezsigntemplate_v1_result = $api->ezsigndocument_apply_ezsigntemplate_v1(pki_ezsigndocument_id => $ezsigndocument_apply_ezsigntemplate_v1_pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v1_request => $ezsigndocument_apply_ezsigntemplate_v1_ezsigndocument_apply_ezsigntemplate_v1_request);

#
# ezsigndocument_apply_ezsigntemplate_v2 test
#
# uncomment below and update the test
#my $ezsigndocument_apply_ezsigntemplate_v2_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_apply_ezsigntemplate_v2_ezsigndocument_apply_ezsigntemplate_v2_request = undef; # replace NULL with a proper value
#my $ezsigndocument_apply_ezsigntemplate_v2_result = $api->ezsigndocument_apply_ezsigntemplate_v2(pki_ezsigndocument_id => $ezsigndocument_apply_ezsigntemplate_v2_pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplate_v2_request => $ezsigndocument_apply_ezsigntemplate_v2_ezsigndocument_apply_ezsigntemplate_v2_request);

#
# ezsigndocument_apply_ezsigntemplateglobal_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_apply_ezsigntemplateglobal_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_apply_ezsigntemplateglobal_v1_ezsigndocument_apply_ezsigntemplateglobal_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_apply_ezsigntemplateglobal_v1_result = $api->ezsigndocument_apply_ezsigntemplateglobal_v1(pki_ezsigndocument_id => $ezsigndocument_apply_ezsigntemplateglobal_v1_pki_ezsigndocument_id, ezsigndocument_apply_ezsigntemplateglobal_v1_request => $ezsigndocument_apply_ezsigntemplateglobal_v1_ezsigndocument_apply_ezsigntemplateglobal_v1_request);

#
# ezsigndocument_create_ezsignelements_positioned_by_word_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_create_ezsignelements_positioned_by_word_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_create_ezsignelements_positioned_by_word_v1_ezsigndocument_create_ezsignelements_positioned_by_word_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_create_ezsignelements_positioned_by_word_v1_result = $api->ezsigndocument_create_ezsignelements_positioned_by_word_v1(pki_ezsigndocument_id => $ezsigndocument_create_ezsignelements_positioned_by_word_v1_pki_ezsigndocument_id, ezsigndocument_create_ezsignelements_positioned_by_word_v1_request => $ezsigndocument_create_ezsignelements_positioned_by_word_v1_ezsigndocument_create_ezsignelements_positioned_by_word_v1_request);

#
# ezsigndocument_create_object_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_create_object_v1_ezsigndocument_create_object_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_create_object_v1_result = $api->ezsigndocument_create_object_v1(ezsigndocument_create_object_v1_request => $ezsigndocument_create_object_v1_ezsigndocument_create_object_v1_request);

#
# ezsigndocument_create_object_v2 test
#
# uncomment below and update the test
#my $ezsigndocument_create_object_v2_ezsigndocument_create_object_v2_request = undef; # replace NULL with a proper value
#my $ezsigndocument_create_object_v2_result = $api->ezsigndocument_create_object_v2(ezsigndocument_create_object_v2_request => $ezsigndocument_create_object_v2_ezsigndocument_create_object_v2_request);

#
# ezsigndocument_create_object_v3 test
#
# uncomment below and update the test
#my $ezsigndocument_create_object_v3_ezsigndocument_create_object_v3_request = undef; # replace NULL with a proper value
#my $ezsigndocument_create_object_v3_result = $api->ezsigndocument_create_object_v3(ezsigndocument_create_object_v3_request => $ezsigndocument_create_object_v3_ezsigndocument_create_object_v3_request);

#
# ezsigndocument_decline_to_sign_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_decline_to_sign_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_decline_to_sign_v1_ezsigndocument_decline_to_sign_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_decline_to_sign_v1_result = $api->ezsigndocument_decline_to_sign_v1(pki_ezsigndocument_id => $ezsigndocument_decline_to_sign_v1_pki_ezsigndocument_id, ezsigndocument_decline_to_sign_v1_request => $ezsigndocument_decline_to_sign_v1_ezsigndocument_decline_to_sign_v1_request);

#
# ezsigndocument_delete_object_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_delete_object_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_delete_object_v1_result = $api->ezsigndocument_delete_object_v1(pki_ezsigndocument_id => $ezsigndocument_delete_object_v1_pki_ezsigndocument_id);

#
# ezsigndocument_edit_ezsignannotations_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_edit_ezsignannotations_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_ezsignannotations_v1_ezsigndocument_edit_ezsignannotations_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_ezsignannotations_v1_result = $api->ezsigndocument_edit_ezsignannotations_v1(pki_ezsigndocument_id => $ezsigndocument_edit_ezsignannotations_v1_pki_ezsigndocument_id, ezsigndocument_edit_ezsignannotations_v1_request => $ezsigndocument_edit_ezsignannotations_v1_ezsigndocument_edit_ezsignannotations_v1_request);

#
# ezsigndocument_edit_ezsignformfieldgroups_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_edit_ezsignformfieldgroups_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_ezsignformfieldgroups_v1_ezsigndocument_edit_ezsignformfieldgroups_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_ezsignformfieldgroups_v1_result = $api->ezsigndocument_edit_ezsignformfieldgroups_v1(pki_ezsigndocument_id => $ezsigndocument_edit_ezsignformfieldgroups_v1_pki_ezsigndocument_id, ezsigndocument_edit_ezsignformfieldgroups_v1_request => $ezsigndocument_edit_ezsignformfieldgroups_v1_ezsigndocument_edit_ezsignformfieldgroups_v1_request);

#
# ezsigndocument_edit_ezsignsignatures_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_edit_ezsignsignatures_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_ezsignsignatures_v1_ezsigndocument_edit_ezsignsignatures_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_ezsignsignatures_v1_result = $api->ezsigndocument_edit_ezsignsignatures_v1(pki_ezsigndocument_id => $ezsigndocument_edit_ezsignsignatures_v1_pki_ezsigndocument_id, ezsigndocument_edit_ezsignsignatures_v1_request => $ezsigndocument_edit_ezsignsignatures_v1_ezsigndocument_edit_ezsignsignatures_v1_request);

#
# ezsigndocument_edit_object_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_edit_object_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_object_v1_ezsigndocument_edit_object_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_edit_object_v1_result = $api->ezsigndocument_edit_object_v1(pki_ezsigndocument_id => $ezsigndocument_edit_object_v1_pki_ezsigndocument_id, ezsigndocument_edit_object_v1_request => $ezsigndocument_edit_object_v1_ezsigndocument_edit_object_v1_request);

#
# ezsigndocument_end_prematurely_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_end_prematurely_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_end_prematurely_v1_body = undef; # replace NULL with a proper value
#my $ezsigndocument_end_prematurely_v1_result = $api->ezsigndocument_end_prematurely_v1(pki_ezsigndocument_id => $ezsigndocument_end_prematurely_v1_pki_ezsigndocument_id, body => $ezsigndocument_end_prematurely_v1_body);

#
# ezsigndocument_extract_text_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_extract_text_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_extract_text_v1_ezsigndocument_extract_text_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_extract_text_v1_result = $api->ezsigndocument_extract_text_v1(pki_ezsigndocument_id => $ezsigndocument_extract_text_v1_pki_ezsigndocument_id, ezsigndocument_extract_text_v1_request => $ezsigndocument_extract_text_v1_ezsigndocument_extract_text_v1_request);

#
# ezsigndocument_flatten_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_flatten_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_flatten_v1_body = undef; # replace NULL with a proper value
#my $ezsigndocument_flatten_v1_result = $api->ezsigndocument_flatten_v1(pki_ezsigndocument_id => $ezsigndocument_flatten_v1_pki_ezsigndocument_id, body => $ezsigndocument_flatten_v1_body);

#
# ezsigndocument_get_actionable_elements_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_actionable_elements_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_actionable_elements_v1_result = $api->ezsigndocument_get_actionable_elements_v1(pki_ezsigndocument_id => $ezsigndocument_get_actionable_elements_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_attachments_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_attachments_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_attachments_v1_result = $api->ezsigndocument_get_attachments_v1(pki_ezsigndocument_id => $ezsigndocument_get_attachments_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_completed_elements_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_completed_elements_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_completed_elements_v1_result = $api->ezsigndocument_get_completed_elements_v1(pki_ezsigndocument_id => $ezsigndocument_get_completed_elements_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_download_url_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_download_url_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_download_url_v1_e_document_type = undef; # replace NULL with a proper value
#my $ezsigndocument_get_download_url_v1_result = $api->ezsigndocument_get_download_url_v1(pki_ezsigndocument_id => $ezsigndocument_get_download_url_v1_pki_ezsigndocument_id, e_document_type => $ezsigndocument_get_download_url_v1_e_document_type);

#
# ezsigndocument_get_ezsignannotations_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_ezsignannotations_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_ezsignannotations_v1_result = $api->ezsigndocument_get_ezsignannotations_v1(pki_ezsigndocument_id => $ezsigndocument_get_ezsignannotations_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_ezsigndiscussions_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_ezsigndiscussions_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_ezsigndiscussions_v1_result = $api->ezsigndocument_get_ezsigndiscussions_v1(pki_ezsigndocument_id => $ezsigndocument_get_ezsigndiscussions_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_ezsignformfieldgroups_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_ezsignformfieldgroups_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_ezsignformfieldgroups_v1_result = $api->ezsigndocument_get_ezsignformfieldgroups_v1(pki_ezsigndocument_id => $ezsigndocument_get_ezsignformfieldgroups_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_ezsignpages_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_ezsignpages_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_ezsignpages_v1_result = $api->ezsigndocument_get_ezsignpages_v1(pki_ezsigndocument_id => $ezsigndocument_get_ezsignpages_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_ezsignsignatures_automatic_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_ezsignsignatures_automatic_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_ezsignsignatures_automatic_v1_result = $api->ezsigndocument_get_ezsignsignatures_automatic_v1(pki_ezsigndocument_id => $ezsigndocument_get_ezsignsignatures_automatic_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_ezsignsignatures_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_ezsignsignatures_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_ezsignsignatures_v1_result = $api->ezsigndocument_get_ezsignsignatures_v1(pki_ezsigndocument_id => $ezsigndocument_get_ezsignsignatures_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_form_data_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_form_data_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_form_data_v1_result = $api->ezsigndocument_get_form_data_v1(pki_ezsigndocument_id => $ezsigndocument_get_form_data_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_object_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_object_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_object_v1_result = $api->ezsigndocument_get_object_v1(pki_ezsigndocument_id => $ezsigndocument_get_object_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_object_v2 test
#
# uncomment below and update the test
#my $ezsigndocument_get_object_v2_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_object_v2_result = $api->ezsigndocument_get_object_v2(pki_ezsigndocument_id => $ezsigndocument_get_object_v2_pki_ezsigndocument_id);

#
# ezsigndocument_get_temporary_proof_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_temporary_proof_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_temporary_proof_v1_result = $api->ezsigndocument_get_temporary_proof_v1(pki_ezsigndocument_id => $ezsigndocument_get_temporary_proof_v1_pki_ezsigndocument_id);

#
# ezsigndocument_get_words_positions_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_get_words_positions_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_get_words_positions_v1_ezsigndocument_get_words_positions_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_get_words_positions_v1_result = $api->ezsigndocument_get_words_positions_v1(pki_ezsigndocument_id => $ezsigndocument_get_words_positions_v1_pki_ezsigndocument_id, ezsigndocument_get_words_positions_v1_request => $ezsigndocument_get_words_positions_v1_ezsigndocument_get_words_positions_v1_request);

#
# ezsigndocument_patch_object_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_patch_object_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_patch_object_v1_ezsigndocument_patch_object_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_patch_object_v1_result = $api->ezsigndocument_patch_object_v1(pki_ezsigndocument_id => $ezsigndocument_patch_object_v1_pki_ezsigndocument_id, ezsigndocument_patch_object_v1_request => $ezsigndocument_patch_object_v1_ezsigndocument_patch_object_v1_request);

#
# ezsigndocument_submit_ezsignform_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_submit_ezsignform_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_submit_ezsignform_v1_ezsigndocument_submit_ezsignform_v1_request = undef; # replace NULL with a proper value
#my $ezsigndocument_submit_ezsignform_v1_result = $api->ezsigndocument_submit_ezsignform_v1(pki_ezsigndocument_id => $ezsigndocument_submit_ezsignform_v1_pki_ezsigndocument_id, ezsigndocument_submit_ezsignform_v1_request => $ezsigndocument_submit_ezsignform_v1_ezsigndocument_submit_ezsignform_v1_request);

#
# ezsigndocument_unsend_v1 test
#
# uncomment below and update the test
#my $ezsigndocument_unsend_v1_pki_ezsigndocument_id = undef; # replace NULL with a proper value
#my $ezsigndocument_unsend_v1_body = undef; # replace NULL with a proper value
#my $ezsigndocument_unsend_v1_result = $api->ezsigndocument_unsend_v1(pki_ezsigndocument_id => $ezsigndocument_unsend_v1_pki_ezsigndocument_id, body => $ezsigndocument_unsend_v1_body);


done_testing();
