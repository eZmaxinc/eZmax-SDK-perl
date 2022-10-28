# EzmaxApi::Object::VersionhistoryResponse

## Load the model package
```perl
use EzmaxApi::Object::VersionhistoryResponse;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_versionhistory_id** | **int** | The unique ID of the Versionhistory | 
**fki_module_id** | **int** | The unique ID of the Module | [optional] 
**fki_modulesection_id** | **int** | The unique ID of the Modulesection | [optional] 
**s_module_name_x** | **string** | The Name of the Module in the language of the requester | [optional] 
**s_modulesection_name_x** | **string** | The Name of the Modulesection in the language of the requester | [optional] 
**e_versionhistory_usertype** | [**FieldEVersionhistoryUsertype**](FieldEVersionhistoryUsertype.md) |  | [optional] 
**obj_versionhistory_detail** | [**MultilingualVersionhistoryDetail**](MultilingualVersionhistoryDetail.md) |  | 
**dt_versionhistory_date** | **string** | The date  at which the Versionhistory was published or should be published | 
**dt_versionhistory_dateend** | **string** | The date  at which the Versionhistory will no longer be visible | [optional] 
**e_versionhistory_type** | [**FieldEVersionhistoryType**](FieldEVersionhistoryType.md) |  | 
**b_versionhistory_draft** | **boolean** | Whether the Versionhistory is published or still a draft | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


