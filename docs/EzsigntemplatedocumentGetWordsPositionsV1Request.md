# EzmaxApi::Object::EzsigntemplatedocumentGetWordsPositionsV1Request

## Load the model package
```perl
use EzmaxApi::Object::EzsigntemplatedocumentGetWordsPositionsV1Request;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**e_get** | **string** | Specify if you want to retrieve *All* words or specific *Words* from the document. If you specify *Words*, you must send the list of words to search for in *a_sWord*. | 
**b_word_case_sensitive** | **boolean** | IF *true*, words will be searched case-sensitive and results will be returned case-sensitive. IF *false*, words will be searched case-insensitive and results will be returned case-insensitive. | 
**a_s_word** | **ARRAY[string]** | Array of words to find in the document | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

