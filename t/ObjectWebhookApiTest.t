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

use_ok('EzmaxApi::ObjectWebhookApi');

my $api = EzmaxApi::ObjectWebhookApi->new();
isa_ok($api, 'EzmaxApi::ObjectWebhookApi');

#
# webhook_create_object_v2 test
#
# uncomment below and update the test
#my $webhook_create_object_v2_webhook_create_object_v2_request = undef; # replace NULL with a proper value
#my $webhook_create_object_v2_result = $api->webhook_create_object_v2(webhook_create_object_v2_request => $webhook_create_object_v2_webhook_create_object_v2_request);

#
# webhook_delete_object_v1 test
#
# uncomment below and update the test
#my $webhook_delete_object_v1_pki_webhook_id = undef; # replace NULL with a proper value
#my $webhook_delete_object_v1_result = $api->webhook_delete_object_v1(pki_webhook_id => $webhook_delete_object_v1_pki_webhook_id);

#
# webhook_edit_object_v1 test
#
# uncomment below and update the test
#my $webhook_edit_object_v1_pki_webhook_id = undef; # replace NULL with a proper value
#my $webhook_edit_object_v1_webhook_edit_object_v1_request = undef; # replace NULL with a proper value
#my $webhook_edit_object_v1_result = $api->webhook_edit_object_v1(pki_webhook_id => $webhook_edit_object_v1_pki_webhook_id, webhook_edit_object_v1_request => $webhook_edit_object_v1_webhook_edit_object_v1_request);

#
# webhook_get_history_v1 test
#
# uncomment below and update the test
#my $webhook_get_history_v1_pki_webhook_id = undef; # replace NULL with a proper value
#my $webhook_get_history_v1_e_webhook_historyinterval = undef; # replace NULL with a proper value
#my $webhook_get_history_v1_result = $api->webhook_get_history_v1(pki_webhook_id => $webhook_get_history_v1_pki_webhook_id, e_webhook_historyinterval => $webhook_get_history_v1_e_webhook_historyinterval);

#
# webhook_get_list_v1 test
#
# uncomment below and update the test
#my $webhook_get_list_v1_e_order_by = undef; # replace NULL with a proper value
#my $webhook_get_list_v1_i_row_max = undef; # replace NULL with a proper value
#my $webhook_get_list_v1_i_row_offset = undef; # replace NULL with a proper value
#my $webhook_get_list_v1_accept_language = undef; # replace NULL with a proper value
#my $webhook_get_list_v1_s_filter = undef; # replace NULL with a proper value
#my $webhook_get_list_v1_result = $api->webhook_get_list_v1(e_order_by => $webhook_get_list_v1_e_order_by, i_row_max => $webhook_get_list_v1_i_row_max, i_row_offset => $webhook_get_list_v1_i_row_offset, accept_language => $webhook_get_list_v1_accept_language, s_filter => $webhook_get_list_v1_s_filter);

#
# webhook_get_object_v2 test
#
# uncomment below and update the test
#my $webhook_get_object_v2_pki_webhook_id = undef; # replace NULL with a proper value
#my $webhook_get_object_v2_result = $api->webhook_get_object_v2(pki_webhook_id => $webhook_get_object_v2_pki_webhook_id);

#
# webhook_regenerate_apikey_v1 test
#
# uncomment below and update the test
#my $webhook_regenerate_apikey_v1_pki_webhook_id = undef; # replace NULL with a proper value
#my $webhook_regenerate_apikey_v1_webhook_regenerate_apikey_v1_request = undef; # replace NULL with a proper value
#my $webhook_regenerate_apikey_v1_result = $api->webhook_regenerate_apikey_v1(pki_webhook_id => $webhook_regenerate_apikey_v1_pki_webhook_id, webhook_regenerate_apikey_v1_request => $webhook_regenerate_apikey_v1_webhook_regenerate_apikey_v1_request);

#
# webhook_send_webhook_v1 test
#
# uncomment below and update the test
#my $webhook_send_webhook_v1_webhook_send_webhook_v1_request = undef; # replace NULL with a proper value
#my $webhook_send_webhook_v1_result = $api->webhook_send_webhook_v1(webhook_send_webhook_v1_request => $webhook_send_webhook_v1_webhook_send_webhook_v1_request);

#
# webhook_test_v1 test
#
# uncomment below and update the test
#my $webhook_test_v1_pki_webhook_id = undef; # replace NULL with a proper value
#my $webhook_test_v1_body = undef; # replace NULL with a proper value
#my $webhook_test_v1_result = $api->webhook_test_v1(pki_webhook_id => $webhook_test_v1_pki_webhook_id, body => $webhook_test_v1_body);


done_testing();
