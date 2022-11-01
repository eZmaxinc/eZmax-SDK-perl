=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
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

use_ok('EzmaxApi::ObjectEzsignbulksendApi');

my $api = EzmaxApi::ObjectEzsignbulksendApi->new();
isa_ok($api, 'EzmaxApi::ObjectEzsignbulksendApi');

#
# ezsignbulksend_create_ezsignbulksendtransmission_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_create_ezsignbulksendtransmission_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_create_ezsignbulksendtransmission_v1_ezsignbulksend_create_ezsignbulksendtransmission_v1_request = undef; # replace NULL with a proper value
#my $ezsignbulksend_create_ezsignbulksendtransmission_v1_result = $api->ezsignbulksend_create_ezsignbulksendtransmission_v1(pki_ezsignbulksend_id => $ezsignbulksend_create_ezsignbulksendtransmission_v1_pki_ezsignbulksend_id, ezsignbulksend_create_ezsignbulksendtransmission_v1_request => $ezsignbulksend_create_ezsignbulksendtransmission_v1_ezsignbulksend_create_ezsignbulksendtransmission_v1_request);

#
# ezsignbulksend_create_object_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_create_object_v1_ezsignbulksend_create_object_v1_request = undef; # replace NULL with a proper value
#my $ezsignbulksend_create_object_v1_result = $api->ezsignbulksend_create_object_v1(ezsignbulksend_create_object_v1_request => $ezsignbulksend_create_object_v1_ezsignbulksend_create_object_v1_request);

#
# ezsignbulksend_delete_object_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_delete_object_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_delete_object_v1_result = $api->ezsignbulksend_delete_object_v1(pki_ezsignbulksend_id => $ezsignbulksend_delete_object_v1_pki_ezsignbulksend_id);

#
# ezsignbulksend_edit_object_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_edit_object_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_edit_object_v1_ezsignbulksend_edit_object_v1_request = undef; # replace NULL with a proper value
#my $ezsignbulksend_edit_object_v1_result = $api->ezsignbulksend_edit_object_v1(pki_ezsignbulksend_id => $ezsignbulksend_edit_object_v1_pki_ezsignbulksend_id, ezsignbulksend_edit_object_v1_request => $ezsignbulksend_edit_object_v1_ezsignbulksend_edit_object_v1_request);

#
# ezsignbulksend_get_csv_template_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_get_csv_template_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_csv_template_v1_e_csv_separator = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_csv_template_v1_result = $api->ezsignbulksend_get_csv_template_v1(pki_ezsignbulksend_id => $ezsignbulksend_get_csv_template_v1_pki_ezsignbulksend_id, e_csv_separator => $ezsignbulksend_get_csv_template_v1_e_csv_separator);

#
# ezsignbulksend_get_ezsignbulksendtransmissions_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_get_ezsignbulksendtransmissions_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_ezsignbulksendtransmissions_v1_result = $api->ezsignbulksend_get_ezsignbulksendtransmissions_v1(pki_ezsignbulksend_id => $ezsignbulksend_get_ezsignbulksendtransmissions_v1_pki_ezsignbulksend_id);

#
# ezsignbulksend_get_forms_data_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_get_forms_data_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_forms_data_v1_result = $api->ezsignbulksend_get_forms_data_v1(pki_ezsignbulksend_id => $ezsignbulksend_get_forms_data_v1_pki_ezsignbulksend_id);

#
# ezsignbulksend_get_list_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_list_v1_result = $api->ezsignbulksend_get_list_v1(e_order_by => $ezsignbulksend_get_list_v1_e_order_by, i_row_max => $ezsignbulksend_get_list_v1_i_row_max, i_row_offset => $ezsignbulksend_get_list_v1_i_row_offset, accept_language => $ezsignbulksend_get_list_v1_accept_language, s_filter => $ezsignbulksend_get_list_v1_s_filter);

#
# ezsignbulksend_get_object_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_get_object_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_object_v1_result = $api->ezsignbulksend_get_object_v1(pki_ezsignbulksend_id => $ezsignbulksend_get_object_v1_pki_ezsignbulksend_id);

#
# ezsignbulksend_get_object_v2 test
#
# uncomment below and update the test
#my $ezsignbulksend_get_object_v2_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_get_object_v2_result = $api->ezsignbulksend_get_object_v2(pki_ezsignbulksend_id => $ezsignbulksend_get_object_v2_pki_ezsignbulksend_id);

#
# ezsignbulksend_reorder_v1 test
#
# uncomment below and update the test
#my $ezsignbulksend_reorder_v1_pki_ezsignbulksend_id = undef; # replace NULL with a proper value
#my $ezsignbulksend_reorder_v1_ezsignbulksend_reorder_v1_request = undef; # replace NULL with a proper value
#my $ezsignbulksend_reorder_v1_result = $api->ezsignbulksend_reorder_v1(pki_ezsignbulksend_id => $ezsignbulksend_reorder_v1_pki_ezsignbulksend_id, ezsignbulksend_reorder_v1_request => $ezsignbulksend_reorder_v1_ezsignbulksend_reorder_v1_request);

