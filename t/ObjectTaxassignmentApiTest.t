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

use_ok('EzmaxApi::ObjectTaxassignmentApi');

my $api = EzmaxApi::ObjectTaxassignmentApi->new();
isa_ok($api, 'EzmaxApi::ObjectTaxassignmentApi');

#
# taxassignment_get_autocomplete_v1 test
#
# uncomment below and update the test
#my $taxassignment_get_autocomplete_v1_s_selector = undef; # replace NULL with a proper value
#my $taxassignment_get_autocomplete_v1_s_query = undef; # replace NULL with a proper value
#my $taxassignment_get_autocomplete_v1_accept_language = undef; # replace NULL with a proper value
#my $taxassignment_get_autocomplete_v1_result = $api->taxassignment_get_autocomplete_v1(s_selector => $taxassignment_get_autocomplete_v1_s_selector, s_query => $taxassignment_get_autocomplete_v1_s_query, accept_language => $taxassignment_get_autocomplete_v1_accept_language);
