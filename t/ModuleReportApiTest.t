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

use_ok('EzmaxApi::ModuleReportApi');

my $api = EzmaxApi::ModuleReportApi->new();
isa_ok($api, 'EzmaxApi::ModuleReportApi');

#
# report_get_report_from_cache_v1 test
#
# uncomment below and update the test
#my $report_get_report_from_cache_v1_s_reportgroup_cache_id = undef; # replace NULL with a proper value
#my $report_get_report_from_cache_v1_result = $api->report_get_report_from_cache_v1(s_reportgroup_cache_id => $report_get_report_from_cache_v1_s_reportgroup_cache_id);


done_testing();
