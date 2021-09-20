# EzmaxApi::Object::FranchisereferalincomeRequestCompound

## Load the model package
```perl
use EzmaxApi::Object::FranchisereferalincomeRequestCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**obj_address** | [**AddressRequest**](AddressRequest.md) |  | 
**a_obj_contact** | [**ARRAY[ContactRequestCompound]**](ContactRequestCompound.md) |  | 
**fki_franchisebroker_id** | **int** | The unique ID of the Franchisebroker | 
**fki_franchisereferalincomeprogram_id** | **int** | The unique ID of the Franchisereferalincomeprogram | 
**fki_period_id** | **int** | The unique ID of the Period | 
**d_franchisereferalincome_loan** | **string** | The loan amount | 
**d_franchisereferalincome_franchiseamount** | **string** | The amount that will be given to the franchise | 
**d_franchisereferalincome_franchisoramount** | **string** | The amount that will be kept by the franchisor | 
**d_franchisereferalincome_agentamount** | **string** | The amount that will be given to the agent | 
**dt_franchisereferalincome_disbursed** | **string** | The date the amounts were disbursed | 
**t_franchisereferalincome_comment** | **string** | A comment about the transaction | 
**fki_franchiseoffice_id** | **int** | The unique ID of the Franchisereoffice | 
**s_franchisereferalincome_remoteid** | **string** |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


