# EzmaxApi::Object::CreditcardmerchantResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::CreditcardmerchantResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_creditcardmerchant_id** | **int** | The unique ID of the Creditcardmerchant | 
**fki_bankaccount_id** | **int** | The unique ID of the Bankaccount | 
**s_bankaccount_bankname** | **string** | The name of the bank | [optional] 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | [optional] 
**s_language_name_x** | **string** | The Name of the Language in the language of the requester | [optional] 
**b_creditcardmerchant_denyvisa** | **boolean** | Whether if visa are denied | 
**b_creditcardmerchant_denymastercard** | **boolean** | Whether if mastercard are denied | 
**b_creditcardmerchant_denyamex** | **boolean** | Whether if amex are denied | 
**b_creditcardmerchant_isactive** | **boolean** | Whether the creditcardmerchant is active or not | 
**s_creditcardmerchant_description** | **string** | The description of the Creditcardmerchant | 
**s_creditcardmerchant_storeid** | **string** | The storeid of the Creditcardmerchant | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


