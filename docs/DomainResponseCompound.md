# EzmaxApi::Object::DomainResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::DomainResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_domain_id** | **int** | The unique ID of the Domain | 
**s_domain_name** | **string** | The name of the Domain | 
**b_domain_validdkim** | **boolean** | Whether the DKIM is valid or not | 
**b_domain_validmailfrom** | **boolean** | Whether the mail from is valid or not | 
**b_domain_validcustomer** | **boolean** | Whether the customer has access to it or not | 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | 
**a_obj_dnsrecord** | [**ARRAY[CustomDnsrecordResponse]**](CustomDnsrecordResponse.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


