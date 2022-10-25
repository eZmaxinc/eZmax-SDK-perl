# EzmaxApi::Object::EzmaxinvoicingsummaryinternalResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzmaxinvoicingsummaryinternalResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezmaxinvoicingsummaryinternal_id** | **int** | The unique ID of the Ezmaxinvoicingsummaryinternal | [optional] 
**obj_ezmaxinvoicingsummaryinternal_description** | [**MultilingualEzmaxinvoicingsummaryinternalDescription**](MultilingualEzmaxinvoicingsummaryinternalDescription.md) |  | 
**s_ezmaxinvoicingsummaryinternal_description_x** | **string** | The Ezmaxinvoicingsummaryinternal description in the language of the requester | 
**fki_ezmaxinvoicing_id** | **int** | The unique ID of the Ezmaxinvoicing | [optional] 
**fki_billingentityinternal_id** | **int** | The unique ID of the Billingentityinternal. | 
**s_billingentityinternal_description_x** | **string** | The description of the Billingentityinternal in the language of the requester | 
**a_obj_ezmaxinvoicingsummaryinternaldetail** | [**ARRAY[EzmaxinvoicingsummaryinternaldetailResponseCompound]**](EzmaxinvoicingsummaryinternaldetailResponseCompound.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


