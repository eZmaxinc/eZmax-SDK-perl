# EzmaxApi::Object::ModuleResponseCompound

## Load the model package
```perl
use EzmaxApi::Object::ModuleResponseCompound;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_module_id** | **int** | The unique ID of the Module | 
**fki_modulegroup_id** | **int** | The unique ID of the Modulegroup | 
**e_module_internalname** | **string** | The Internal name of the Module.  This is theoretically an enum field but there are so many possibles values we decided not to list them all. | 
**s_module_name_x** | **string** | The Name of the Module in the language of the requester | 
**b_module_registered** | **boolean** | Whether the Module is registered or not | 
**b_module_registeredapi** | **boolean** | Whether the Module is registered or not for api use | 
**a_obj_modulesection** | [**ARRAY[ModulesectionResponseCompound]**](ModulesectionResponseCompound.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


