=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.2
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

use_ok('EzmaxApi::ModuleListApi');

my $api = EzmaxApi::ModuleListApi->new();
isa_ok($api, 'EzmaxApi::ModuleListApi');

#
# list_get_listpresentation_v1 test
#
# uncomment below and update the test
#my $list_get_listpresentation_v1_s_list_name = undef; # replace NULL with a proper value
#my $list_get_listpresentation_v1_result = $api->list_get_listpresentation_v1(s_list_name => $list_get_listpresentation_v1_s_list_name);

#
# list_save_listpresentation_v1 test
#
# uncomment below and update the test
#my $list_save_listpresentation_v1_s_list_name = undef; # replace NULL with a proper value
#my $list_save_listpresentation_v1_list_save_listpresentation_v1_request = undef; # replace NULL with a proper value
#my $list_save_listpresentation_v1_result = $api->list_save_listpresentation_v1(s_list_name => $list_save_listpresentation_v1_s_list_name, list_save_listpresentation_v1_request => $list_save_listpresentation_v1_list_save_listpresentation_v1_request);

