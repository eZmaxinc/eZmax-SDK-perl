=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.2.0
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

use_ok('EzmaxApi::ObjectBillingentityexternalApi');

my $api = EzmaxApi::ObjectBillingentityexternalApi->new();
isa_ok($api, 'EzmaxApi::ObjectBillingentityexternalApi');

#
# billingentityexternal_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $billingentityexternal_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $billingentityexternal_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $billingentityexternal_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $billingentityexternal_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $billingentityexternal_get_autocomplete_v2_result = $api->billingentityexternal_get_autocomplete_v2(s_selector => $billingentityexternal_get_autocomplete_v2_s_selector, e_filter_active => $billingentityexternal_get_autocomplete_v2_e_filter_active, s_query => $billingentityexternal_get_autocomplete_v2_s_query, accept_language => $billingentityexternal_get_autocomplete_v2_accept_language);


done_testing();
