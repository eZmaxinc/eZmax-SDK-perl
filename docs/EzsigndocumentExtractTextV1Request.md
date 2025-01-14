# EzmaxApi::Object::EzsigndocumentExtractTextV1Request

## Load the model package
```perl
use EzmaxApi::Object::EzsigndocumentExtractTextV1Request;
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**i_page** | **int** | The page where the area is located | 
**e_section** | **string** | The section of the page | [optional] 
**i_x** | **int** | The X coordinate (Horizontal). Require when eSection &#x3D; &#39;Region&#39; or eSection is not set. | [optional] 
**i_y** | **int** | The Y coordinate (Vertical). Require when eSection &#x3D; &#39;Region&#39; or eSection is not set. | [optional] 
**i_width** | **int** | Area&#39;s width. Require when eSection &#x3D; &#39;Region&#39; or eSection is not set. | [optional] 
**i_height** | **int** | Area&#39;s height. Require when eSection &#x3D; &#39;Region&#39; or eSection is not set. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


