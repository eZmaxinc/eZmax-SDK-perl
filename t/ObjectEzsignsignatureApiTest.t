=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign application.  We provide SDKs for customers. They are generated using OpenAPI codegen, we encourage customers to use them as we also provide samples for them.  You can choose to build your own implementation manually or can use any compatible OpenAPI 3.0 generator like Swagger Codegen, OpenAPI codegen or any commercial generators.  If you need helping understanding how to use this API, don't waste too much time looking for it. Contact support-api@ezmax.ca, we're here to help. We are developpers so we know programmers don't like bad documentation. If you don't find what you need in the documentation, let us know, we'll improve it and put you rapidly up on track.

The version of the OpenAPI document: 1.0.29
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

use_ok('EzmaxApi::ObjectEzsignsignatureApi');

my $api = EzmaxApi::ObjectEzsignsignatureApi->new();
isa_ok($api, 'EzmaxApi::ObjectEzsignsignatureApi');

#
# ezsignsignature_create_object_v1 test
#
{
    my $ezsignsignature_create_object_v1_request = undef; # replace NULL with a proper value
    my $result = $api->ezsignsignature_create_object_v1(ezsignsignature_create_object_v1_request => $ezsignsignature_create_object_v1_request);
}

#
# ezsignsignature_delete_object_v1 test
#
{
    my $pki_ezsignsignature_id = undef; # replace NULL with a proper value
    my $result = $api->ezsignsignature_delete_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
}

#
# ezsignsignature_edit_object_v1 test
#
{
    my $pki_ezsignsignature_id = undef; # replace NULL with a proper value
    my $ezsignsignature_edit_object_v1_request = undef; # replace NULL with a proper value
    my $result = $api->ezsignsignature_edit_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_edit_object_v1_request => $ezsignsignature_edit_object_v1_request);
}

#
# ezsignsignature_get_children_v1 test
#
{
    my $pki_ezsignsignature_id = undef; # replace NULL with a proper value
    my $result = $api->ezsignsignature_get_children_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
}

#
# ezsignsignature_get_object_v1 test
#
{
    my $pki_ezsignsignature_id = undef; # replace NULL with a proper value
    my $result = $api->ezsignsignature_get_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
}


1;
