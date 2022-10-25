=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.11
Contact: support-api@ezmax.ca
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package EzmaxApi::Object::EzmaxinvoicingagentResponseCompound;

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

use EzmaxApi::Object::CustomContactNameResponse;
use EzmaxApi::Object::EzmaxinvoicingagentResponse;
use EzmaxApi::Object::EzmaxinvoicingagentResponseCompoundAllOf;
use EzmaxApi::Object::FieldEEzmaxinvoicingagentVariationezmax;
use EzmaxApi::Object::FieldEEzmaxinvoicingagentVariationezsign;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#A Ezmaxinvoicingagent Object
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

=begin comment

eZmax API Definition (Full)

This API expose all the functionnalities for the eZmax and eZsign applications.

The version of the OpenAPI document: 1.1.11
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


__PACKAGE__->class_documentation({description => 'A Ezmaxinvoicingagent Object',
                                  class => 'EzmaxinvoicingagentResponseCompound',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_ezmaxinvoicingagent_id' => {
        datatype => 'int',
        base_name => 'pkiEzmaxinvoicingagentID',
        description => 'The unique ID of the Ezmaxinvoicingagent',
        format => '',
        read_only => '',
            },
    'fki_ezmaxinvoicing_id' => {
        datatype => 'int',
        base_name => 'fkiEzmaxinvoicingID',
        description => 'The unique ID of the Ezmaxinvoicing',
        format => '',
        read_only => '',
            },
    'fki_billingentityinternal_id' => {
        datatype => 'int',
        base_name => 'fkiBillingentityinternalID',
        description => 'The unique ID of the Billingentityinternal.',
        format => '',
        read_only => '',
            },
    's_billingentityinternal_description_x' => {
        datatype => 'string',
        base_name => 'sBillingentityinternalDescriptionX',
        description => 'The description of the Billingentityinternal in the language of the requester',
        format => '',
        read_only => '',
            },
    'fki_agent_id' => {
        datatype => 'int',
        base_name => 'fkiAgentID',
        description => 'The unique ID of the Agent.',
        format => '',
        read_only => '',
            },
    'fki_broker_id' => {
        datatype => 'int',
        base_name => 'fkiBrokerID',
        description => 'The unique ID of the Broker.',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_session' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentSession',
        description => 'The number of sessions',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_cloned' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentCloned',
        description => 'The number of times this user was cloned',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_invoice' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentInvoice',
        description => 'The number of invoices',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_inscription' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentInscription',
        description => 'The number of inscriptions',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_inscriptionactive' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentInscriptionactive',
        description => 'The number of active inscriptions',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_sale' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentSale',
        description => 'The number of sales',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_otherincome' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentOtherincome',
        description => 'The number of otherincomes',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_commissioncalculation' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentCommissioncalculation',
        description => 'The number of commission calculations',
        format => '',
        read_only => '',
            },
    'i_ezmaxinvoicingagent_ezsigndocument' => {
        datatype => 'int',
        base_name => 'iEzmaxinvoicingagentEzsigndocument',
        description => 'The number of ezsign documents',
        format => '',
        read_only => '',
            },
    'b_ezmaxinvoicingagent_ezsignaccount' => {
        datatype => 'boolean',
        base_name => 'bEzmaxinvoicingagentEzsignaccount',
        description => 'Whether the agent has an eZsign account',
        format => '',
        read_only => '',
            },
    'b_ezmaxinvoicingagent_billableezmax' => {
        datatype => 'boolean',
        base_name => 'bEzmaxinvoicingagentBillableezmax',
        description => 'Whether it is billable for eZmax',
        format => '',
        read_only => '',
            },
    'e_ezmaxinvoicingagent_variationezmax' => {
        datatype => 'FieldEEzmaxinvoicingagentVariationezmax',
        base_name => 'eEzmaxinvoicingagentVariationezmax',
        description => '',
        format => '',
        read_only => '',
            },
    'b_ezmaxinvoicingagent_billableezsign' => {
        datatype => 'boolean',
        base_name => 'bEzmaxinvoicingagentBillableezsign',
        description => 'Whether it is billable for eZsign',
        format => '',
        read_only => '',
            },
    'e_ezmaxinvoicingagent_variationezsign' => {
        datatype => 'FieldEEzmaxinvoicingagentVariationezsign',
        base_name => 'eEzmaxinvoicingagentVariationezsign',
        description => '',
        format => '',
        read_only => '',
            },
    'obj_contact_name' => {
        datatype => 'CustomContactNameResponse',
        base_name => 'objContactName',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_ezmaxinvoicingagent_id' => 'int',
    'fki_ezmaxinvoicing_id' => 'int',
    'fki_billingentityinternal_id' => 'int',
    's_billingentityinternal_description_x' => 'string',
    'fki_agent_id' => 'int',
    'fki_broker_id' => 'int',
    'i_ezmaxinvoicingagent_session' => 'int',
    'i_ezmaxinvoicingagent_cloned' => 'int',
    'i_ezmaxinvoicingagent_invoice' => 'int',
    'i_ezmaxinvoicingagent_inscription' => 'int',
    'i_ezmaxinvoicingagent_inscriptionactive' => 'int',
    'i_ezmaxinvoicingagent_sale' => 'int',
    'i_ezmaxinvoicingagent_otherincome' => 'int',
    'i_ezmaxinvoicingagent_commissioncalculation' => 'int',
    'i_ezmaxinvoicingagent_ezsigndocument' => 'int',
    'b_ezmaxinvoicingagent_ezsignaccount' => 'boolean',
    'b_ezmaxinvoicingagent_billableezmax' => 'boolean',
    'e_ezmaxinvoicingagent_variationezmax' => 'FieldEEzmaxinvoicingagentVariationezmax',
    'b_ezmaxinvoicingagent_billableezsign' => 'boolean',
    'e_ezmaxinvoicingagent_variationezsign' => 'FieldEEzmaxinvoicingagentVariationezsign',
    'obj_contact_name' => 'CustomContactNameResponse'
} );

__PACKAGE__->attribute_map( {
    'pki_ezmaxinvoicingagent_id' => 'pkiEzmaxinvoicingagentID',
    'fki_ezmaxinvoicing_id' => 'fkiEzmaxinvoicingID',
    'fki_billingentityinternal_id' => 'fkiBillingentityinternalID',
    's_billingentityinternal_description_x' => 'sBillingentityinternalDescriptionX',
    'fki_agent_id' => 'fkiAgentID',
    'fki_broker_id' => 'fkiBrokerID',
    'i_ezmaxinvoicingagent_session' => 'iEzmaxinvoicingagentSession',
    'i_ezmaxinvoicingagent_cloned' => 'iEzmaxinvoicingagentCloned',
    'i_ezmaxinvoicingagent_invoice' => 'iEzmaxinvoicingagentInvoice',
    'i_ezmaxinvoicingagent_inscription' => 'iEzmaxinvoicingagentInscription',
    'i_ezmaxinvoicingagent_inscriptionactive' => 'iEzmaxinvoicingagentInscriptionactive',
    'i_ezmaxinvoicingagent_sale' => 'iEzmaxinvoicingagentSale',
    'i_ezmaxinvoicingagent_otherincome' => 'iEzmaxinvoicingagentOtherincome',
    'i_ezmaxinvoicingagent_commissioncalculation' => 'iEzmaxinvoicingagentCommissioncalculation',
    'i_ezmaxinvoicingagent_ezsigndocument' => 'iEzmaxinvoicingagentEzsigndocument',
    'b_ezmaxinvoicingagent_ezsignaccount' => 'bEzmaxinvoicingagentEzsignaccount',
    'b_ezmaxinvoicingagent_billableezmax' => 'bEzmaxinvoicingagentBillableezmax',
    'e_ezmaxinvoicingagent_variationezmax' => 'eEzmaxinvoicingagentVariationezmax',
    'b_ezmaxinvoicingagent_billableezsign' => 'bEzmaxinvoicingagentBillableezsign',
    'e_ezmaxinvoicingagent_variationezsign' => 'eEzmaxinvoicingagentVariationezsign',
    'obj_contact_name' => 'objContactName'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
