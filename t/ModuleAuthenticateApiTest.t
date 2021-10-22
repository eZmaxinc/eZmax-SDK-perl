=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.1
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

use_ok('EzmaxApi::ModuleAuthenticateApi');

my $api = EzmaxApi::ModuleAuthenticateApi->new();
isa_ok($api, 'EzmaxApi::ModuleAuthenticateApi');

#
# authenticate_authenticate_v2 test
#
# uncomment below and update the test
#my $authenticate_authenticate_v2_e_session_type = undef; # replace NULL with a proper value
#my $authenticate_authenticate_v2_authenticate_authenticate_v2_request = undef; # replace NULL with a proper value
#my $authenticate_authenticate_v2_result = $api->authenticate_authenticate_v2(e_session_type => $authenticate_authenticate_v2_e_session_type, authenticate_authenticate_v2_request => $authenticate_authenticate_v2_authenticate_authenticate_v2_request);

