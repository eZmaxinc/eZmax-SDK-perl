# EzmaxApi::Object::CreditcardclientRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::CreditcardclientRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_creditcardclient_id** | **int** | The unique ID of the Creditcardclient | [optional] 
**fks_creditcardtoken_id** | **string** | The creditcard token identifier | [optional] 
**b_creditcardclientrelation_isdefault** | **boolean** | Whether if it&#39;s the creditcardclient is the default one | 
**s_creditcardclient_description** | **string** | The description of the Creditcardclient | 
**b_creditcardclient_allowedcompanypayment** | **boolean** | Whether if it&#39;s an allowedagencypayment | 
**b_creditcardclient_allowedezsign** | **boolean** | Whether if it&#39;s an allowedroyallepageprotection | 
**b_creditcardclient_allowedtranquillit** | **boolean** | Whether if it&#39;s an allowedtranquillit | 
**obj_creditcarddetail** | [**CreditcarddetailRequest**](CreditcarddetailRequest.md) |  | 
**s_creditcardclient_cvv** | **string** | The creditcard card CVV | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


