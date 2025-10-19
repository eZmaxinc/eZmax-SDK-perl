# EzmaxApi::Object::SupplierListElement

## Load the model package
```perl
use EzmaxApi::Object::SupplierListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_supplier_id** | **int** | The unique ID of the Supplier. | 
**fki_paymentmethod_id** | **int** | The unique ID of the Paymentmethod | [optional] 
**s_supplier_name** | **string** | The name of the Supplier | 
**s_supplier_code** | **string** | The code of the Supplier | 
**s_supplier_account** | **string** | The account of the Supplier | 
**b_supplier_isactive** | **boolean** | Whether the supplier is active or not | 
**s_phone_e164** | **string** | A phone number in E.164 Format | [optional] 
**s_email_address** | **string** | The email address. | [optional] 
**s_address_civic** | **string** | The Civic number. | [optional] 
**s_address_street** | **string** | The Street Name | [optional] 
**s_address_suite** | **string** | The Suite or appartment number | [optional] 
**s_address_city** | **string** | The City name | [optional] 
**s_address_zip** | **string** | The Postal/Zip Code  The value must be entered without spaces | [optional] 
**s_province_name_x** | **string** | The name of the Province in the language of the requester | [optional] 
**s_country_name_x** | **string** | The name of the Country in the language of the requester | [optional] 
**s_paymentmethod_description_x** | **string** | The description of the Paymentmethod in the language of the requester | [optional] 
**s_electronicfundstransferbankaccount_transit** | **string** | The transit of the Electronicfundstransferbankaccount | [optional] 
**s_electronicfundstransferbankaccount_institution** | **string** | The institution of the Electronicfundstransferbankaccount | [optional] 
**s_electronicfundstransferbankaccount_account** | **string** | The account of the Electronicfundstransferbankaccount | [optional] 
**s_glaccountcontainer_longcode** | **string** | The Code for the Glaccountcontainer | 
**s_glaccountcontainer_longdescription_x** | **string** | The Description for the Glaccountcontainer in the language of the requester | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


