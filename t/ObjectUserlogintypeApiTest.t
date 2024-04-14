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

use_ok('EzmaxApi::ObjectUserlogintypeApi');

my $api = EzmaxApi::ObjectUserlogintypeApi->new();
isa_ok($api, 'EzmaxApi::ObjectUserlogintypeApi');

#
# userlogintype_get_autocomplete_v2 test
#
# uncomment below and update the test
#my $userlogintype_get_autocomplete_v2_s_selector = undef; # replace NULL with a proper value
#my $userlogintype_get_autocomplete_v2_fki_ezsignfoldertype_id = undef; # replace NULL with a proper value
#my $userlogintype_get_autocomplete_v2_e_filter_active = undef; # replace NULL with a proper value
#my $userlogintype_get_autocomplete_v2_s_query = undef; # replace NULL with a proper value
#my $userlogintype_get_autocomplete_v2_accept_language = undef; # replace NULL with a proper value
#my $userlogintype_get_autocomplete_v2_result = $api->userlogintype_get_autocomplete_v2(s_selector => $userlogintype_get_autocomplete_v2_s_selector, fki_ezsignfoldertype_id => $userlogintype_get_autocomplete_v2_fki_ezsignfoldertype_id, e_filter_active => $userlogintype_get_autocomplete_v2_e_filter_active, s_query => $userlogintype_get_autocomplete_v2_s_query, accept_language => $userlogintype_get_autocomplete_v2_accept_language);


done_testing();
