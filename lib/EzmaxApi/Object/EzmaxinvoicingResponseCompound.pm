=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzmaxinvoicingResponseCompound;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use EzmaxApi::Object::CommonAudit;
use EzmaxApi::Object::CustomEzmaxinvoicingEzsigndocumentResponse;
use EzmaxApi::Object::CustomEzmaxinvoicingEzsignfolderResponse;
use EzmaxApi::Object::CustomEzmaxpricingResponse;
use EzmaxApi::Object::EzmaxinvoicingResponse;
use EzmaxApi::Object::EzmaxinvoicingResponseCompoundAllOf;
use EzmaxApi::Object::EzmaxinvoicingagentResponseCompound;
use EzmaxApi::Object::EzmaxinvoicingcontractResponseCompound;
use EzmaxApi::Object::EzmaxinvoicingsummaryexternalResponseCompound;
use EzmaxApi::Object::EzmaxinvoicingsummaryglobalResponseCompound;
use EzmaxApi::Object::EzmaxinvoicingsummaryinternalResponseCompound;
use EzmaxApi::Object::EzmaxinvoicinguserResponseCompound;
use EzmaxApi::Object::FieldEEzmaxinvoicingPaymenttype;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezmaxinvoicing Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.14
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            $_data->{$self->attribute_map->{$_key}} = $self->{$_key};
        }
    }

    return $_data;
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if ($type eq 'DateTime') {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double', 'string', 'boolean'))) {
        return $data;
    } else { # hash(model)
        my $_instance = eval "EzmaxApi::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => 'A Ezmaxinvoicing Object',
                                  class => 'EzmaxinvoicingResponseCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezmaxinvoicing_id' => {
        datatype => 'int',
        base_name => 'pkiEzmaxinvoicingID',
        description => 'The unique ID of the Ezmaxinvoicing',
        format => '',
        read_only => '',
            },
    'fki_ezmaxinvoicingcontract_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxinvoicingcontractID',
        description => 'The unique ID of the Ezmaxinvoicingcontract',
        format => '',
        read_only => '',
            },
    'fki_ezmaxpricing_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxpricingID',
        description => 'The unique ID of the Ezmaxpricing',
        format => '',
        read_only => '',
            },
    'fki_systemconfigurationtype_id' => {
        datatype => 'int',
        base_name => 'fkiSystemconfigurationtypeID',
        description => 'The unique ID of the Systemconfigurationtype',
        format => '',
        read_only => '',
            },
    's_systemconfigurationtype_description_x' => {
        datatype => 'string',
        base_name => 'sSystemconfigurationtypeDescriptionX',
        description => 'The description of the Systemconfigurationtype in the language of the requester',
        format => '',
        read_only => '',
            },
    'yyyymm_ezmaxinvoicing' => {
        datatype => 'string',
        base_name => 'yyyymmEzmaxinvoicing',
        description => 'The YYYYMM period of the Ezmaxinvoicing',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicing_days' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingDays',
        description => 'The number of days invoiced',
        format => '',
        read_only => '',
            },
    'e_ezmaxinvoicing_paymenttype' => {
        datatype => 'FieldEEzmaxinvoicingPaymenttype',
        base_name => 'eEzmaxinvoicingPaymenttype',
        description => '',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicing_rebatepaymenttype' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingRebatepaymenttype',
        description => 'The percentage of rebate depending of the payment type',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicing_contractlength' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingContractlength',
        description => 'The length of the contract in years',
        format => '',
        read_only => '',
            },
    'd_ezmaxinvoicing_rebatecontractlength' => {
        datatype => 'string',
        base_name => 'dEzmaxinvoicingRebatecontractlength',
        description => 'The percentage of rebate depending of the contract length',
        format => '',
        read_only => '',
            },
    'b_ezmaxinvoicing_rebate_ezsignallagents' => {
        datatype => 'boolean',
        base_name => 'bEzmaxinvoicingRebateEzsignallagents',
        description => 'Whether the rebate for eZsign is for all agents',
        format => '',
        read_only => '',
            },
    'obj_audit' => {
        datatype => 'CommonAudit',
        base_name => 'objAudit',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_ezmaxinvoicingcontract' => {
        datatype => 'EzmaxinvoicingcontractResponseCompound',
        base_name => 'objEzmaxinvoicingcontract',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_ezmaxpricing' => {
        datatype => 'CustomEzmaxpricingResponse',
        base_name => 'objEzmaxpricing',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicingsummaryglobal' => {
        datatype => 'ARRAY[EzmaxinvoicingsummaryglobalResponseCompound]',
        base_name => 'a_objEzmaxinvoicingsummaryglobal',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicingsummaryexternal' => {
        datatype => 'ARRAY[EzmaxinvoicingsummaryexternalResponseCompound]',
        base_name => 'a_objEzmaxinvoicingsummaryexternal',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicingsummaryinternal' => {
        datatype => 'ARRAY[EzmaxinvoicingsummaryinternalResponseCompound]',
        base_name => 'a_objEzmaxinvoicingsummaryinternal',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicingagent' => {
        datatype => 'ARRAY[EzmaxinvoicingagentResponseCompound]',
        base_name => 'a_objEzmaxinvoicingagent',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicinguser' => {
        datatype => 'ARRAY[EzmaxinvoicinguserResponseCompound]',
        base_name => 'a_objEzmaxinvoicinguser',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicingezsignfolder' => {
        datatype => 'ARRAY[CustomEzmaxinvoicingEzsignfolderResponse]',
        base_name => 'a_objEzmaxinvoicingezsignfolder',
        description => '',
        format => '',
        read_only => '',
            },
    'a_obj_ezmaxinvoicingezsigndocument' => {
        datatype => 'ARRAY[CustomEzmaxinvoicingEzsigndocumentResponse]',
        base_name => 'a_objEzmaxinvoicingezsigndocument',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezmaxinvoicing_id' => 'int',
    'fki_ezmaxinvoicingcontract_id' => 'int',
    'fki_ezmaxpricing_id' => 'int',
    'fki_systemconfigurationtype_id' => 'int',
    's_systemconfigurationtype_description_x' => 'string',
    'yyyymm_ezmaxinvoicing' => 'string',
    'i_ezmaxinvoicing_days' => 'int',
    'e_ezmaxinvoicing_paymenttype' => 'FieldEEzmaxinvoicingPaymenttype',
    'd_ezmaxinvoicing_rebatepaymenttype' => 'string',
    'i_ezmaxinvoicing_contractlength' => 'int',
    'd_ezmaxinvoicing_rebatecontractlength' => 'string',
    'b_ezmaxinvoicing_rebate_ezsignallagents' => 'boolean',
    'obj_audit' => 'CommonAudit',
    'obj_ezmaxinvoicingcontract' => 'EzmaxinvoicingcontractResponseCompound',
    'obj_ezmaxpricing' => 'CustomEzmaxpricingResponse',
    'a_obj_ezmaxinvoicingsummaryglobal' => 'ARRAY[EzmaxinvoicingsummaryglobalResponseCompound]',
    'a_obj_ezmaxinvoicingsummaryexternal' => 'ARRAY[EzmaxinvoicingsummaryexternalResponseCompound]',
    'a_obj_ezmaxinvoicingsummaryinternal' => 'ARRAY[EzmaxinvoicingsummaryinternalResponseCompound]',
    'a_obj_ezmaxinvoicingagent' => 'ARRAY[EzmaxinvoicingagentResponseCompound]',
    'a_obj_ezmaxinvoicinguser' => 'ARRAY[EzmaxinvoicinguserResponseCompound]',
    'a_obj_ezmaxinvoicingezsignfolder' => 'ARRAY[CustomEzmaxinvoicingEzsignfolderResponse]',
    'a_obj_ezmaxinvoicingezsigndocument' => 'ARRAY[CustomEzmaxinvoicingEzsigndocumentResponse]'
} );

__PACKAGE__->attribute_map( {
    'pki_ezmaxinvoicing_id' => 'pkiEzmaxinvoicingID',
    'fki_ezmaxinvoicingcontract_id' => 'fkiEzmaxinvoicingcontractID',
    'fki_ezmaxpricing_id' => 'fkiEzmaxpricingID',
    'fki_systemconfigurationtype_id' => 'fkiSystemconfigurationtypeID',
    's_systemconfigurationtype_description_x' => 'sSystemconfigurationtypeDescriptionX',
    'yyyymm_ezmaxinvoicing' => 'yyyymmEzmaxinvoicing',
    'i_ezmaxinvoicing_days' => 'iEzmaxinvoicingDays',
    'e_ezmaxinvoicing_paymenttype' => 'eEzmaxinvoicingPaymenttype',
    'd_ezmaxinvoicing_rebatepaymenttype' => 'dEzmaxinvoicingRebatepaymenttype',
    'i_ezmaxinvoicing_contractlength' => 'iEzmaxinvoicingContractlength',
    'd_ezmaxinvoicing_rebatecontractlength' => 'dEzmaxinvoicingRebatecontractlength',
    'b_ezmaxinvoicing_rebate_ezsignallagents' => 'bEzmaxinvoicingRebateEzsignallagents',
    'obj_audit' => 'objAudit',
    'obj_ezmaxinvoicingcontract' => 'objEzmaxinvoicingcontract',
    'obj_ezmaxpricing' => 'objEzmaxpricing',
    'a_obj_ezmaxinvoicingsummaryglobal' => 'a_objEzmaxinvoicingsummaryglobal',
    'a_obj_ezmaxinvoicingsummaryexternal' => 'a_objEzmaxinvoicingsummaryexternal',
    'a_obj_ezmaxinvoicingsummaryinternal' => 'a_objEzmaxinvoicingsummaryinternal',
    'a_obj_ezmaxinvoicingagent' => 'a_objEzmaxinvoicingagent',
    'a_obj_ezmaxinvoicinguser' => 'a_objEzmaxinvoicinguser',
    'a_obj_ezmaxinvoicingezsignfolder' => 'a_objEzmaxinvoicingezsignfolder',
    'a_obj_ezmaxinvoicingezsigndocument' => 'a_objEzmaxinvoicingezsigndocument'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
