# EzmaxApi::Object::EzmaxinvoicinguserResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzmaxinvoicinguserResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezmaxinvoicinguser_id** | **int** | The unique ID of the Ezmaxinvoicinguser | [optional] 
**fki_ezmaxinvoicing_id** | **int** | The unique ID of the Ezmaxinvoicing | [optional] 
**fki_billingentityinternal_id** | **int** | The unique ID of the Billingentityinternal. | 
**s_billingentityinternal_description_x** | **string** | The description of the Billingentityinternal in the language of the requester | 
**fki_user_id** | **int** | The unique ID of the User | 
**i_ezmaxinvoicinguser_ezsigndocument** | **int** | The number of ezsign documents | 
**b_ezmaxinvoicinguser_ezsignaccount** | **boolean** | Whether there is an eZsign account | 
**b_ezmaxinvoicinguser_billableezsign** | **boolean** | Whether it is billable for eZsign | 
**e_ezmaxinvoicinguser_variationezsign** | [**FieldEEzmaxinvoicinguserVariationezsign**](FieldEEzmaxinvoicinguserVariationezsign.md) |  | 
**obj_contact_name** | [**CustomContactNameResponse**](CustomContactNameResponse.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


