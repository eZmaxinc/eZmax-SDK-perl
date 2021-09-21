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

use_ok('EzmaxApi::GlobalCustomerApi');

my $api = EzmaxApi::GlobalCustomerApi->new();
isa_ok($api, 'EzmaxApi::GlobalCustomerApi');

#
# global_customer_get_endpoint_v1 test
#
# uncomment below and update the test
#my $global_customer_get_endpoint_v1_pks_customer_code = undef; # replace NULL with a proper value
#my $global_customer_get_endpoint_v1_s_infrastructureproduct_code = undef; # replace NULL with a proper value
#my $global_customer_get_endpoint_v1_result = $api->global_customer_get_endpoint_v1(pks_customer_code => $global_customer_get_endpoint_v1_pks_customer_code, s_infrastructureproduct_code => $global_customer_get_endpoint_v1_s_infrastructureproduct_code);

