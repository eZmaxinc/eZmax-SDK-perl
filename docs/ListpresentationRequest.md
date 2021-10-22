# EzmaxApi::Object::ListpresentationRequest

## Load the model package
```perl
use EzmaxApi::Object::ListpresentationRequest;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**s_listpresentation_description** | **string** | A descriptive for the list presentation | 
**s_listpresentation_filter** | **string** | The filter to apply to the request to limit results. | 
**s_listpresentation_orderby** | **string** | The order by the user chose | 
**a_s_column_name** | **ARRAY[string]** | An array of column names that the user chose to bee visible | 
**i_listpresentation_row_max** | **int** | The maximum numbers of results to be returned | 
**i_listpresentation_row_offset** | **int** | The starting element from where to start retrieving the results. For example if you started at iRowOffset&#x3D;0 and asked for iRowMax&#x3D;100, to get the next 100 results, you could specify iRowOffset&#x3D;100&amp;iRowMax&#x3D;100, | 
**b_listpresentation_default** | **boolean** | Set to true if the user chose this Listpresentation as the default one. A single element should be set to true | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


