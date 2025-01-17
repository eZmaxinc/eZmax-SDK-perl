# EzmaxApi::Object::EzmaxinvoicingsummaryglobalResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::EzmaxinvoicingsummaryglobalResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezmaxinvoicingsummaryglobal_id** | **int** | The unique ID of the Ezmaxinvoicingsummaryglobal | [optional] 
**fki_ezmaxinvoicing_id** | **int** | The unique ID of the Ezmaxinvoicing | [optional] 
**fki_ezmaxproduct_id** | **int** | The unique ID of the Ezmaxproduct | 
**s_ezmaxproduct_description_x** | **string** | The description of the Ezmaxproduct in the language of the requester | 
**dt_ezmaxinvoicingsummaryglobal_start** | **string** | The start date for the Ezmaxinvoicingsummaryglobal | 
**dt_ezmaxinvoicingsummaryglobal_end** | **string** | The end date for the Ezmaxinvoicingsummaryglobal | 
**i_ezmaxinvoicingsummaryglobal_days** | **int** | The number of days for the Ezmaxinvoicingsummaryglobal | 
**d_ezmaxinvoicingsummaryglobal_countreal** | **string** | The count item calculated | 
**d_ezmaxinvoicingsummaryglobal_countbilled** | **string** | The count item billed | 
**d_ezmaxinvoicingsummaryglobal_subtotal** | **string** | The Ezmaxinvoicingsummaryglobal subtotal | 
**d_ezmaxinvoicingsummaryglobal_rebateamount** | **string** | The rebate amount for the Ezmaxinvoicingsummaryglobal | 
**d_ezmaxinvoicingsummaryglobal_rebatepercent** | **string** | The rebate percentage of the Ezmaxinvoicingsummaryglobal | 
**d_ezmaxinvoicingsummaryglobal_rebatetotal** | **string** | The rebate amount total for the Ezmaxinvoicingsummaryglobal | 
**d_ezmaxinvoicingsummaryglobal_total** | **string** | The Ezmaxinvoicingsummaryglobal total | 
**d_ezmaxinvoicingsummaryglobal_representative** | **string** | The amount of commission for the representative | [optional] 
**d_ezmaxinvoicingsummaryglobal_partner** | **string** | The amount of commission for the partner | [optional] 
**d_ezmaxinvoicingsummaryglobal_net** | **string** | The net amount of the Ezmaxinvoicingsummaryglobal | [optional] 
**b_ezmaxinvoicingsummaryglobal_adjustment** | **boolean** | Whether it is adjustment for the Ezmaxinvoicingsummaryglobal | 
**t_ezmaxproduct_help_x** | **string** | The help message of the Ezmaxproduct in the language of the requester | 
**a_obj_ezmaxinvoicingcommission** | [**ARRAY[EzmaxinvoicingcommissionResponseCompound]**](EzmaxinvoicingcommissionResponseCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


