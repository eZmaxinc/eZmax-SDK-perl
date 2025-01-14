# EzmaxApi::Object::SupplyResponse

## Load the model package
```perl
use EzmaxApi::Object::SupplyResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_supply_id** | **int** | The unique ID of the Supply | 
**fki_glaccount_id** | **int** | The unique ID of the Glaccount | [optional] 
**fki_glaccountcontainer_id** | **int** | The unique ID of the Glaccountcontainer | [optional] 
**fki_variableexpense_id** | **int** | The unique ID of the Variableexpense | 
**s_supply_code** | **string** | The code of the Supply | 
**obj_supply_description** | [**MultilingualSupplyDescription**](MultilingualSupplyDescription.md) |  | 
**d_supply_unitprice** | **string** | The unit price of the Supply | 
**b_supply_isactive** | **boolean** | Whether the supply is active or not | 
**b_supply_variableprice** | **boolean** | Whether if the price is variable | 
**s_glaccount_description_x** | **string** | The Description for the Glaccount in the language of the requester | [optional] 
**s_glaccountcontainer_longdescription_x** | **string** | The Description for the Glaccountcontainer in the language of the requester | [optional] 
**s_variableexpense_description_x** | **string** | The description of the Variableexpense in the language of the requester | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


