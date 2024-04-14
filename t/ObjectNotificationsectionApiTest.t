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

use_ok('EzmaxApi::ObjectNotificationsectionApi');

my $api = EzmaxApi::ObjectNotificationsectionApi->new();
isa_ok($api, 'EzmaxApi::ObjectNotificationsectionApi');

#
# notificationsection_get_notificationtests_v1 test
#
# uncomment below and update the test
#my $notificationsection_get_notificationtests_v1_pki_notificationsection_id = undef; # replace NULL with a proper value
#my $notificationsection_get_notificationtests_v1_b_show_hidden = undef; # replace NULL with a proper value
#my $notificationsection_get_notificationtests_v1_result = $api->notificationsection_get_notificationtests_v1(pki_notificationsection_id => $notificationsection_get_notificationtests_v1_pki_notificationsection_id, b_show_hidden => $notificationsection_get_notificationtests_v1_b_show_hidden);


done_testing();
