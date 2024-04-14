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

use_ok('EzmaxApi::GlobalEzmaxcustomerApi');

my $api = EzmaxApi::GlobalEzmaxcustomerApi->new();
isa_ok($api, 'EzmaxApi::GlobalEzmaxcustomerApi');

#
# global_ezmaxcustomer_get_configuration_v1 test
#
# uncomment below and update the test
#my $global_ezmaxcustomer_get_configuration_v1_pks_ezmaxcustomer_code = undef; # replace NULL with a proper value
#my $global_ezmaxcustomer_get_configuration_v1_result = $api->global_ezmaxcustomer_get_configuration_v1(pks_ezmaxcustomer_code => $global_ezmaxcustomer_get_configuration_v1_pks_ezmaxcustomer_code);


done_testing();
