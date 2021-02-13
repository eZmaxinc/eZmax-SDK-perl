=begin comment

eZmax API Definition

This API expose all the functionnalities for the eZmax and eZsign application.

The version of the OpenAPI document: 1.0.30
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by the OpenAPI Generator
# Please update the test cases below to test the model.
# Ref: https://openapi-generator.tech
#
use Test::More tests => 2;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;


use_ok('EzmaxApi::Object::ContactRequestCompound');

my $instance = EzmaxApi::Object::ContactRequestCompound->new();

isa_ok($instance, 'EzmaxApi::Object::ContactRequestCompound');

