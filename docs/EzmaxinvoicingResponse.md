# EzmaxApi::Object::EzmaxinvoicingResponse

## Load the model package
```perl
use EzmaxApi::Object::EzmaxinvoicingResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezmaxinvoicing_id** | **int** | The unique ID of the Ezmaxinvoicing | [optional] 
**fki_ezmaxinvoicingcontract_id** | **int** | The unique ID of the Ezmaxinvoicingcontract | 
**fki_ezmaxpricing_id** | **int** | The unique ID of the Ezmaxpricing | 
**fki_systemconfigurationtype_id** | **int** | The unique ID of the Systemconfigurationtype | 
**s_systemconfigurationtype_description_x** | **string** | The description of the Systemconfigurationtype in the language of the requester | 
**yyyymm_ezmaxinvoicing** | **string** | The YYYYMM period of the Ezmaxinvoicing | 
**i_ezmaxinvoicing_days** | **int** | The number of days invoiced | 
**e_ezmaxinvoicing_paymenttype** | [**FieldEEzmaxinvoicingPaymenttype**](FieldEEzmaxinvoicingPaymenttype.md) |  | 
**d_ezmaxinvoicing_rebatepaymenttype** | **string** | The percentage of rebate depending of the payment type | 
**i_ezmaxinvoicing_contractlength** | **int** | The length of the contract in years | 
**d_ezmaxinvoicing_rebatecontractlength** | **string** | The percentage of rebate depending of the contract length | 
**b_ezmaxinvoicing_rebate_ezsignallagents** | **boolean** | Whether the rebate for eZsign is for all agents | 
**obj_audit** | [**CommonAudit**](CommonAudit.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


