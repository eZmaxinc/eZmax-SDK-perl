# EzmaxApi::Object::SsprUnlockAccountV1Request

## Load the model package
```perl
use EzmaxApi::Object::SsprUnlockAccountV1Request;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pks_customer_code** | **string** | The customer code assigned to your account | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**e_user_type_sspr** | [**FieldEUserTypeSSPR**](FieldEUserTypeSSPR.md) |  | 
**s_email_address** | **string** | The email address. | [optional] 
**s_user_loginname** | **string** | The Login name of the User. | [optional] 
**bin_user_ssp_rtoken** | **string** | Hex Encoded Secret SSPR token | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


