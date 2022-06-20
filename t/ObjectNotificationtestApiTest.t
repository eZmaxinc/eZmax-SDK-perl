=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.9
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

use_ok('EzmaxApi::ObjectNotificationtestApi');

my $api = EzmaxApi::ObjectNotificationtestApi->new();
isa_ok($api, 'EzmaxApi::ObjectNotificationtestApi');

#
# notificationtest_get_elements_v1 test
#
# uncomment below and update the test
#my $notificationtest_get_elements_v1_pki_notificationtest_id = undef; # replace NULL with a proper value
#my $notificationtest_get_elements_v1_result = $api->notificationtest_get_elements_v1(pki_notificationtest_id => $notificationtest_get_elements_v1_pki_notificationtest_id);

