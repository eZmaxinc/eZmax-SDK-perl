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

use_ok('EzmaxApi::ObjectUsergroupApi');

my $api = EzmaxApi::ObjectUsergroupApi->new();
isa_ok($api, 'EzmaxApi::ObjectUsergroupApi');

#
# usergroup_get_autocomplete_v1 test
#
# uncomment below and update the test
#my $usergroup_get_autocomplete_v1_s_selector = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v1_s_query = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v1_accept_language = undef; # replace NULL with a proper value
#my $usergroup_get_autocomplete_v1_result = $api->usergroup_get_autocomplete_v1(s_selector => $usergroup_get_autocomplete_v1_s_selector, s_query => $usergroup_get_autocomplete_v1_s_query, accept_language => $usergroup_get_autocomplete_v1_accept_language);
