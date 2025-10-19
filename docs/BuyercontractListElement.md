# EzmaxApi::Object::BuyercontractListElement

## Load the model package
```perl
use EzmaxApi::Object::BuyercontractListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_buyercontract_id** | **int** | The unique ID of the Buyercontract | 
**fki_inscriptiontype_id** | **int** | The unique ID of the Inscriptiontype | 
**s_inscriptiontype_name_x** | **string** | The name of the Inscriptiontype in the language of the requester | 
**e_buyercontract_step** | [**FieldEBuyercontractStep**](FieldEBuyercontractStep.md) |  | 
**d_buyercontract_minimumprice** | **string** | The minimumprice of the Buyercontract | 
**d_buyercontract_maximumprice** | **string** | The maximumprice of the Buyercontract | 
**e_buyercontract_type** | [**FieldEBuyercontractType**](FieldEBuyercontractType.md) |  | 
**dt_buyercontract_date** | **string** | The date of the Buyercontract | 
**dt_buyercontract_expirationdate** | **string** | The expirationdate of the Buyercontract | [optional] 
**b_buyercontract_isactive** | **boolean** | Whether the buyercontract is active or not | 
**s_buyercontract_brokers** | **string** | The brokers&#39; name of the Buyercontract | 
**s_buyercontract_buyers** | **string** | The buyers&#39; name of the Buyercontract | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


