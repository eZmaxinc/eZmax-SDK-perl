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

use_ok('EzmaxApi::ObjectDiscussionmessageApi');

my $api = EzmaxApi::ObjectDiscussionmessageApi->new();
isa_ok($api, 'EzmaxApi::ObjectDiscussionmessageApi');

#
# discussionmessage_create_object_v1 test
#
# uncomment below and update the test
#my $discussionmessage_create_object_v1_discussionmessage_create_object_v1_request = undef; # replace NULL with a proper value
#my $discussionmessage_create_object_v1_result = $api->discussionmessage_create_object_v1(discussionmessage_create_object_v1_request => $discussionmessage_create_object_v1_discussionmessage_create_object_v1_request);

#
# discussionmessage_delete_object_v1 test
#
# uncomment below and update the test
#my $discussionmessage_delete_object_v1_pki_discussionmessage_id = undef; # replace NULL with a proper value
#my $discussionmessage_delete_object_v1_result = $api->discussionmessage_delete_object_v1(pki_discussionmessage_id => $discussionmessage_delete_object_v1_pki_discussionmessage_id);

#
# discussionmessage_patch_object_v1 test
#
# uncomment below and update the test
#my $discussionmessage_patch_object_v1_pki_discussionmessage_id = undef; # replace NULL with a proper value
#my $discussionmessage_patch_object_v1_discussionmessage_patch_object_v1_request = undef; # replace NULL with a proper value
#my $discussionmessage_patch_object_v1_result = $api->discussionmessage_patch_object_v1(pki_discussionmessage_id => $discussionmessage_patch_object_v1_pki_discussionmessage_id, discussionmessage_patch_object_v1_request => $discussionmessage_patch_object_v1_discussionmessage_patch_object_v1_request);


done_testing();
