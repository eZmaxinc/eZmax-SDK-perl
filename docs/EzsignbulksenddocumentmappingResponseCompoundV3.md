# EzmaxApi::Object::EzsignbulksenddocumentmappingResponseCompoundV3

## Load the model package
```perl
use EzmaxApi::Object::EzsignbulksenddocumentmappingResponseCompoundV3;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignbulksenddocumentmapping_id** | **int** | The unique ID of the Ezsignbulksenddocumentmapping. | 
**fki_ezsignbulksend_id** | **int** | The unique ID of the Ezsignbulksend | 
**fki_ezsigntemplatepackage_id** | **int** | The unique ID of the Ezsigntemplatepackage | [optional] 
**fki_ezsigntemplate_id** | **int** | The unique ID of the Ezsigntemplate | [optional] 
**i_ezsignbulksenddocumentmapping_order** | **int** | The order in which the Ezsigntemplate or Ezsigntemplatepackage will be presented to the signatory in the Ezsignfolder. | 
**obj_ezsigntemplate** | [**EzsigntemplateResponseCompoundV4**](EzsigntemplateResponseCompoundV4.md) |  | [optional] 
**obj_ezsigntemplatepackage** | [**EzsigntemplatepackageResponseCompoundV3**](EzsigntemplatepackageResponseCompoundV3.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


