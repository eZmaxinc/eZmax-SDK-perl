# EzmaxApi::Object::CustomEzmaxpartnerproductSubscribe

## Load the model package
```perl
use EzmaxApi::Object::CustomEzmaxpartnerproductSubscribe;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pks_ezmaxcustomer_code** | **string** | The Ezmaxcustomer code | 
**s_infrastructureenvironmenttype_description** | **string** | The environment type Description | 
**s_company_name1** | **string** | The Name of the Company in French | 
**s_company_name2** | **string** | The Name of the Company in English | 
**fki_systemconfigurationtype_id** | **int** | The unique ID of the Systemconfigurationtype | 
**s_systemconfigurationtype_description1** | **string** | The description of the Systemconfigurationtype in the language of the requester | 
**s_systemconfigurationtype_description2** | **string** | The description of the Systemconfigurationtype in the language of the requester | 
**fki_ezmaxpartner_id** | **int** | The unique ID of the Ezmaxpartner | 
**s_ezmaxpartner_name1** | **string** | The name of the Ezmaxpartner in french | 
**s_ezmaxpartner_name2** | **string** | The name of the Ezmaxpartner in english | 
**fki_ezmaxpartnerproduct_id** | **int** | The unique ID of the Ezmaxpartnerproduct | 
**s_ezmaxpartnerproduct_name1** | **string** | The name1 of the Ezmaxpartnerproduct | 
**s_ezmaxpartnerproduct_name2** | **string** | The name2 of the Ezmaxpartnerproduct | 
**fki_ezmaxpartnerproductstage_id** | **int** | The unique ID of the Ezmaxpartnerproductstage | 
**s_ezmaxpartnerproductstage_code** | **string** | The code of the sEzmaxpartnerproductstage | 
**s_user_login_name** | **string** | The login name of the User. | 
**s_user_first_name** | **string** | The first name of the user | 
**s_user_last_name** | **string** | The last name of the user | 
**fki_user_id** | **int** | The unique ID of the User | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**obj_address** | [**AddressRequestCompound**](AddressRequestCompound.md) |  | [optional] 
**objphone** | [**PhoneRequestCompoundV2**](PhoneRequestCompoundV2.md) |  | [optional] 
**obj_email** | [**EmailRequestCompound**](EmailRequestCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


