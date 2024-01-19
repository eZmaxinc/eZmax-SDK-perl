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
use Test::More tests => 1; #TODO update number of test cases
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('EzmaxApi::ObjectBuyercontractApi');

my $api = EzmaxApi::ObjectBuyercontractApi->new();
isa_ok($api, 'EzmaxApi::ObjectBuyercontractApi');

#
# buyercontract_get_communication_list_v1 test
#
# uncomment below and update the test
#my $buyercontract_get_communication_list_v1_pki_buyercontract_id = undef; # replace NULL with a proper value
#my $buyercontract_get_communication_list_v1_result = $api->buyercontract_get_communication_list_v1(pki_buyercontract_id => $buyercontract_get_communication_list_v1_pki_buyercontract_id);
