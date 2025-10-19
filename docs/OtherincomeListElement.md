# EzmaxApi::Object::OtherincomeListElement

## Load the model package
```perl
use EzmaxApi::Object::OtherincomeListElement;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_otherincome_id** | **int** | The unique ID of the Otherincome | 
**fki_otherincometype_id** | **int** | The unique ID of the Otherincometype | 
**s_otherincometype_description_x** | **string** | The description of the Otherincometype in the language of the requester | 
**s_otherincome_description** | **string** | The description of the Otherincome | 
**e_otherincome_remunerationtype** | [**FieldEOtherincomeRemunerationtype**](FieldEOtherincomeRemunerationtype.md) |  | 
**d_otherincome_remunerationsubtotal** | **string** | The remuneration subtotal of the Otherincome | 
**d_otherincome_remunerationtaxes** | **string** | The remuneration total taxes of the Otherincome | [optional] 
**d_otherincome_remunerationtotal** | **string** | The remuneration total of the Otherincome | [optional] 
**dt_otherincome_paid** | **string** | The paid of the Otherincome | 
**b_otherincome_isactive** | **boolean** | Whether the otherincome is active or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


