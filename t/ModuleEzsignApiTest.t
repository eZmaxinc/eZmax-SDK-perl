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

use_ok('EzmaxApi::ModuleEzsignApi');

my $api = EzmaxApi::ModuleEzsignApi->new();
isa_ok($api, 'EzmaxApi::ModuleEzsignApi');

#
# ezsign_suggest_signers_v1 test
#
# uncomment below and update the test
#my $ezsign_suggest_signers_v1_result = $api->ezsign_suggest_signers_v1();

#
# ezsign_suggest_templates_v1 test
#
# uncomment below and update the test
#my $ezsign_suggest_templates_v1_fki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $ezsign_suggest_templates_v1_result = $api->ezsign_suggest_templates_v1(fki_ezsignfoldertype_id => $ezsign_suggest_templates_v1_fki_ezsignfoldertype_id);


done_testing();
