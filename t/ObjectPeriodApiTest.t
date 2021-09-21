=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.0.48
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

use_ok('EzmaxApi::ObjectPeriodApi');

my $api = EzmaxApi::ObjectPeriodApi->new();
isa_ok($api, 'EzmaxApi::ObjectPeriodApi');

#
# period_get_autocomplete_v1 test
#
# uncomment below and update the test
#my $period_get_autocomplete_v1_s_selector = undef; # replace NULL with a proper value
#my $period_get_autocomplete_v1_s_query = undef; # replace NULL with a proper value
#my $period_get_autocomplete_v1_result = $api->period_get_autocomplete_v1(s_selector => $period_get_autocomplete_v1_s_selector, s_query => $period_get_autocomplete_v1_s_query);

