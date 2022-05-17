# EzmaxApi::Object::EzsignbulksendRequest

## Load the model package
```perl
use EzmaxApi::Object::EzsignbulksendRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**pki_ezsignbulksend_id** | **int** | The unique ID of the Ezsignbulksend | [optional] 
**fki_ezsignfoldertype_id** | **int** | The unique ID of the Ezsignfoldertype. | 
**fki_language_id** | **int** | The unique ID of the Language.  Valid values:  |Value|Description| |-|-| |1|French| |2|English| | 
**s_ezsignbulksend_description** | **string** | The description of the Ezsignbulksend | 
**t_ezsignbulksend_note** | **string** | Note about the Ezsignbulksend | 
**b_ezsignbulksend_needvalidation** | **boolean** | Whether the Ezsigntemplatepackage was automatically modified and needs a manual validation | 
**b_ezsignbulksend_isactive** | **boolean** | Whether the Ezsignbulksend is active or not | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


