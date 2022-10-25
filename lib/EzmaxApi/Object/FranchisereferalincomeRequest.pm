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
package EzmaxApi::Object::FranchisereferalincomeRequest;

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


use base ("Class::Accessor", "Class::Data::Inheritable");

#
#An Franchisereferalincome Object
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


__PACKAGE__->class_documentation({description => 'An Franchisereferalincome Object',
                                  class => 'FranchisereferalincomeRequest',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'pki_franchisereferalincome_id' => {
        datatype => 'int',
        base_name => 'pkiFranchisereferalincomeID',
        description => 'The unique ID of the Franchisereferalincome',
        format => '',
        read_only => '',
            },
    'fki_franchisebroker_id' => {
        datatype => 'int',
        base_name => 'fkiFranchisebrokerID',
        description => 'The unique ID of the Franchisebroker',
        format => '',
        read_only => '',
            },
    'fki_franchisereferalincomeprogram_id' => {
        datatype => 'int',
        base_name => 'fkiFranchisereferalincomeprogramID',
        description => 'The unique ID of the Franchisereferalincomeprogram',
        format => '',
        read_only => '',
            },
    'fki_period_id' => {
        datatype => 'int',
        base_name => 'fkiPeriodID',
        description => 'The unique ID of the Period',
        format => '',
        read_only => '',
            },
    'd_franchisereferalincome_loan' => {
        datatype => 'string',
        base_name => 'dFranchisereferalincomeLoan',
        description => 'The loan amount',
        format => '',
        read_only => '',
            },
    'd_franchisereferalincome_franchiseamount' => {
        datatype => 'string',
        base_name => 'dFranchisereferalincomeFranchiseamount',
        description => 'The amount that will be given to the franchise',
        format => '',
        read_only => '',
            },
    'd_franchisereferalincome_franchisoramount' => {
        datatype => 'string',
        base_name => 'dFranchisereferalincomeFranchisoramount',
        description => 'The amount that will be kept by the franchisor',
        format => '',
        read_only => '',
            },
    'd_franchisereferalincome_agentamount' => {
        datatype => 'string',
        base_name => 'dFranchisereferalincomeAgentamount',
        description => 'The amount that will be given to the agent',
        format => '',
        read_only => '',
            },
    'dt_franchisereferalincome_disbursed' => {
        datatype => 'string',
        base_name => 'dtFranchisereferalincomeDisbursed',
        description => 'The date the amounts were disbursed',
        format => '',
        read_only => '',
            },
    't_franchisereferalincome_comment' => {
        datatype => 'string',
        base_name => 'tFranchisereferalincomeComment',
        description => 'Comment about the transaction',
        format => '',
        read_only => '',
            },
    'fki_franchiseoffice_id' => {
        datatype => 'int',
        base_name => 'fkiFranchiseofficeID',
        description => 'The unique ID of the Franchisereoffice',
        format => '',
        read_only => '',
            },
    's_franchisereferalincome_remoteid' => {
        datatype => 'string',
        base_name => 'sFranchisereferalincomeRemoteid',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'pki_franchisereferalincome_id' => 'int',
    'fki_franchisebroker_id' => 'int',
    'fki_franchisereferalincomeprogram_id' => 'int',
    'fki_period_id' => 'int',
    'd_franchisereferalincome_loan' => 'string',
    'd_franchisereferalincome_franchiseamount' => 'string',
    'd_franchisereferalincome_franchisoramount' => 'string',
    'd_franchisereferalincome_agentamount' => 'string',
    'dt_franchisereferalincome_disbursed' => 'string',
    't_franchisereferalincome_comment' => 'string',
    'fki_franchiseoffice_id' => 'int',
    's_franchisereferalincome_remoteid' => 'string'
} );

__PACKAGE__->attribute_map( {
    'pki_franchisereferalincome_id' => 'pkiFranchisereferalincomeID',
    'fki_franchisebroker_id' => 'fkiFranchisebrokerID',
    'fki_franchisereferalincomeprogram_id' => 'fkiFranchisereferalincomeprogramID',
    'fki_period_id' => 'fkiPeriodID',
    'd_franchisereferalincome_loan' => 'dFranchisereferalincomeLoan',
    'd_franchisereferalincome_franchiseamount' => 'dFranchisereferalincomeFranchiseamount',
    'd_franchisereferalincome_franchisoramount' => 'dFranchisereferalincomeFranchisoramount',
    'd_franchisereferalincome_agentamount' => 'dFranchisereferalincomeAgentamount',
    'dt_franchisereferalincome_disbursed' => 'dtFranchisereferalincomeDisbursed',
    't_franchisereferalincome_comment' => 'tFranchisereferalincomeComment',
    'fki_franchiseoffice_id' => 'fkiFranchiseofficeID',
    's_franchisereferalincome_remoteid' => 'sFranchisereferalincomeRemoteid'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
