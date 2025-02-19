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

use_ok('EzmaxApi::ObjectPermissionApi');

my $api = EzmaxApi::ObjectPermissionApi->new();
isa_ok($api, 'EzmaxApi::ObjectPermissionApi');

#
# permission_create_object_v1 test
#
# uncomment below and update the test
#my $permission_create_object_v1_permission_create_object_v1_request = undef; # replace NULL with a proper value
#my $permission_create_object_v1_result = $api->permission_create_object_v1(permission_create_object_v1_request => $permission_create_object_v1_permission_create_object_v1_request);

#
# permission_delete_object_v1 test
#
# uncomment below and update the test
#my $permission_delete_object_v1_pki_permission_id = undef; # replace NULL with a proper value
#my $permission_delete_object_v1_result = $api->permission_delete_object_v1(pki_permission_id => $permission_delete_object_v1_pki_permission_id);

#
# permission_edit_object_v1 test
#
# uncomment below and update the test
#my $permission_edit_object_v1_pki_permission_id = undef; # replace NULL with a proper value
#my $permission_edit_object_v1_permission_edit_object_v1_request = undef; # replace NULL with a proper value
#my $permission_edit_object_v1_result = $api->permission_edit_object_v1(pki_permission_id => $permission_edit_object_v1_pki_permission_id, permission_edit_object_v1_request => $permission_edit_object_v1_permission_edit_object_v1_request);

#
# permission_get_object_v2 test
#
# uncomment below and update the test
#my $permission_get_object_v2_pki_permission_id = undef; # replace NULL with a proper value
#my $permission_get_object_v2_result = $api->permission_get_object_v2(pki_permission_id => $permission_get_object_v2_pki_permission_id);


done_testing();
