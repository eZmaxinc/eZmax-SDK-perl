=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign application.

The version of the OpenAPI document: 1.0.30
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

use_ok('EzmaxApi::ObjectFranchisereferalincomeApi');

my $api = EzmaxApi::ObjectFranchisereferalincomeApi->new();
isa_ok($api, 'EzmaxApi::ObjectFranchisereferalincomeApi');

#
# franchisereferalincome_create_object_v1 test
#
{
    my $franchisereferalincome_create_object_v1_request = undef; # replace NULL with a proper value
    my $result = $api->franchisereferalincome_create_object_v1(franchisereferalincome_create_object_v1_request => $franchisereferalincome_create_object_v1_request);
}


1;
