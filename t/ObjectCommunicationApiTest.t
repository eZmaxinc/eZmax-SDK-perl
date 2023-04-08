=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.17
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

use_ok('EzmaxApi::ObjectCommunicationApi');

my $api = EzmaxApi::ObjectCommunicationApi->new();
isa_ok($api, 'EzmaxApi::ObjectCommunicationApi');

#
# communication_get_object_v2 test
#
# uncomment below and update the test
#my $communication_get_object_v2_pki_communication_id = undef; # replace NULL with a proper value
#my $communication_get_object_v2_result = $api->communication_get_object_v2(pki_communication_id => $communication_get_object_v2_pki_communication_id);

