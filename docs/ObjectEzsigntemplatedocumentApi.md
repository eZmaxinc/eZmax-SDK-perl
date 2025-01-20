# EzmaxApi::ObjectEzsigntemplatedocumentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatedocumentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatedocument_create_object_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_create_object_v1) | **POST** /1/object/ezsigntemplatedocument | Create a new Ezsigntemplatedocument
[**ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1) | **PUT** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/editEzsigntemplatedocumentpagerecognitions | Edit multiple Ezsigntemplatedocumentpagerecognitions
[**ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1) | **PUT** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/editEzsigntemplateformfieldgroups | Edit multiple Ezsigntemplateformfieldgroups
[**ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1) | **PUT** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/editEzsigntemplatesignatures | Edit multiple Ezsigntemplatesignatures
[**ezsigntemplatedocument_edit_object_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_edit_object_v1) | **PUT** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID} | Edit an existing Ezsigntemplatedocument
[**ezsigntemplatedocument_extract_text_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_extract_text_v1) | **POST** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/extractText | Extract text from Ezsigntemplatedocument area
[**ezsigntemplatedocument_flatten_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_flatten_v1) | **POST** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/flatten | Flatten
[**ezsigntemplatedocument_get_ezsigntemplatedocumentpagerecognitions_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_get_ezsigntemplatedocumentpagerecognitions_v1) | **GET** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplatedocumentpagerecognitions | Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplatedocumentpagerecognitions
[**ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1) | **GET** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplatedocumentpages | Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplatedocumentpages
[**ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1) | **GET** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplateformfieldgroups | Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplateformfieldgroups
[**ezsigntemplatedocument_get_ezsigntemplatesignatures_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_get_ezsigntemplatesignatures_v1) | **GET** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getEzsigntemplatesignatures | Retrieve an existing Ezsigntemplatedocument&#39;s Ezsigntemplatesignatures
[**ezsigntemplatedocument_get_object_v2**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_get_object_v2) | **GET** /2/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID} | Retrieve an existing Ezsigntemplatedocument
[**ezsigntemplatedocument_get_words_positions_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_get_words_positions_v1) | **POST** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID}/getWordsPositions | Retrieve positions X,Y of given words from a Ezsigntemplatedocument
[**ezsigntemplatedocument_patch_object_v1**](ObjectEzsigntemplatedocumentApi.md#ezsigntemplatedocument_patch_object_v1) | **PATCH** /1/object/ezsigntemplatedocument/{pkiEzsigntemplatedocumentID} | Patch an existing Ezsigntemplatedocument


# **ezsigntemplatedocument_create_object_v1**
> EzsigntemplatedocumentCreateObjectV1Response ezsigntemplatedocument_create_object_v1(ezsigntemplatedocument_create_object_v1_request => $ezsigntemplatedocument_create_object_v1_request)

Create a new Ezsigntemplatedocument

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatedocument_create_object_v1_request = EzmaxApi::Object::EzsigntemplatedocumentCreateObjectV1Request->new(); # EzsigntemplatedocumentCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_create_object_v1(ezsigntemplatedocument_create_object_v1_request => $ezsigntemplatedocument_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatedocument_create_object_v1_request** | [**EzsigntemplatedocumentCreateObjectV1Request**](EzsigntemplatedocumentCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentCreateObjectV1Response**](EzsigntemplatedocumentCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1**
> EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Response ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1_request => $ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1_request)

Edit multiple Ezsigntemplatedocumentpagerecognitions

Edit multiple Ezsigntemplatedocumentpagerecognitions

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1_request = EzmaxApi::Object::EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Request->new(); # EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1_request => $ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_edit_ezsigntemplatedocumentpagerecognitions_v1_request** | [**EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Request**](EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Response**](EzsigntemplatedocumentEditEzsigntemplatedocumentpagerecognitionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1**
> EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Response ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request => $ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request)

Edit multiple Ezsigntemplateformfieldgroups

Using this endpoint, you can edit multiple Ezsigntemplateformfieldgroups at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request = EzmaxApi::Object::EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Request->new(); # EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request => $ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_edit_ezsigntemplateformfieldgroups_v1_request** | [**EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Request**](EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Response**](EzsigntemplatedocumentEditEzsigntemplateformfieldgroupsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1**
> EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Response ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request => $ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request)

Edit multiple Ezsigntemplatesignatures

Using this endpoint, you can edit multiple Ezsigntemplatesignatures at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request = EzmaxApi::Object::EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Request->new(); # EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request => $ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_edit_ezsigntemplatesignatures_v1_request** | [**EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Request**](EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Response**](EzsigntemplatedocumentEditEzsigntemplatesignaturesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_edit_object_v1**
> EzsigntemplatedocumentEditObjectV1Response ezsigntemplatedocument_edit_object_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_object_v1_request => $ezsigntemplatedocument_edit_object_v1_request)

Edit an existing Ezsigntemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatedocumentEditObjectV1Request->new(); # EzsigntemplatedocumentEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_edit_object_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_edit_object_v1_request => $ezsigntemplatedocument_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_edit_object_v1_request** | [**EzsigntemplatedocumentEditObjectV1Request**](EzsigntemplatedocumentEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentEditObjectV1Response**](EzsigntemplatedocumentEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_extract_text_v1**
> EzsigntemplatedocumentExtractTextV1Response ezsigntemplatedocument_extract_text_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_extract_text_v1_request => $ezsigntemplatedocument_extract_text_v1_request)

Extract text from Ezsigntemplatedocument area

Extract text from Ezsigntemplatedocument area

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_extract_text_v1_request = EzmaxApi::Object::EzsigntemplatedocumentExtractTextV1Request->new(); # EzsigntemplatedocumentExtractTextV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_extract_text_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_extract_text_v1_request => $ezsigntemplatedocument_extract_text_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_extract_text_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_extract_text_v1_request** | [**EzsigntemplatedocumentExtractTextV1Request**](EzsigntemplatedocumentExtractTextV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentExtractTextV1Response**](EzsigntemplatedocumentExtractTextV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_flatten_v1**
> CommonResponse ezsigntemplatedocument_flatten_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, body => $body)

Flatten

Flatten an Ezsigntemplatedocument signatures, forms and annotations. This process finalizes the PDF so that the forms and annotations become part of the document content and cannot be edited.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_flatten_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_flatten_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_get_ezsigntemplatedocumentpagerecognitions_v1**
> EzsigntemplatedocumentGetEzsigntemplatedocumentpagerecognitionsV1Response ezsigntemplatedocument_get_ezsigntemplatedocumentpagerecognitions_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id)

Retrieve an existing Ezsigntemplatedocument's Ezsigntemplatedocumentpagerecognitions



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_get_ezsigntemplatedocumentpagerecognitions_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_get_ezsigntemplatedocumentpagerecognitions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 

### Return type

[**EzsigntemplatedocumentGetEzsigntemplatedocumentpagerecognitionsV1Response**](EzsigntemplatedocumentGetEzsigntemplatedocumentpagerecognitionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1**
> EzsigntemplatedocumentGetEzsigntemplatedocumentpagesV1Response ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id)

Retrieve an existing Ezsigntemplatedocument's Ezsigntemplatedocumentpages



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_get_ezsigntemplatedocumentpages_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 

### Return type

[**EzsigntemplatedocumentGetEzsigntemplatedocumentpagesV1Response**](EzsigntemplatedocumentGetEzsigntemplatedocumentpagesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1**
> EzsigntemplatedocumentGetEzsigntemplateformfieldgroupsV1Response ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id)

Retrieve an existing Ezsigntemplatedocument's Ezsigntemplateformfieldgroups



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_get_ezsigntemplateformfieldgroups_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 

### Return type

[**EzsigntemplatedocumentGetEzsigntemplateformfieldgroupsV1Response**](EzsigntemplatedocumentGetEzsigntemplateformfieldgroupsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_get_ezsigntemplatesignatures_v1**
> EzsigntemplatedocumentGetEzsigntemplatesignaturesV1Response ezsigntemplatedocument_get_ezsigntemplatesignatures_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id)

Retrieve an existing Ezsigntemplatedocument's Ezsigntemplatesignatures



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_get_ezsigntemplatesignatures_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_get_ezsigntemplatesignatures_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 

### Return type

[**EzsigntemplatedocumentGetEzsigntemplatesignaturesV1Response**](EzsigntemplatedocumentGetEzsigntemplatesignaturesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_get_object_v2**
> EzsigntemplatedocumentGetObjectV2Response ezsigntemplatedocument_get_object_v2(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id)

Retrieve an existing Ezsigntemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_get_object_v2(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 

### Return type

[**EzsigntemplatedocumentGetObjectV2Response**](EzsigntemplatedocumentGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_get_words_positions_v1**
> EzsigntemplatedocumentGetWordsPositionsV1Response ezsigntemplatedocument_get_words_positions_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_get_words_positions_v1_request => $ezsigntemplatedocument_get_words_positions_v1_request)

Retrieve positions X,Y of given words from a Ezsigntemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_get_words_positions_v1_request = EzmaxApi::Object::EzsigntemplatedocumentGetWordsPositionsV1Request->new(); # EzsigntemplatedocumentGetWordsPositionsV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_get_words_positions_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_get_words_positions_v1_request => $ezsigntemplatedocument_get_words_positions_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_get_words_positions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_get_words_positions_v1_request** | [**EzsigntemplatedocumentGetWordsPositionsV1Request**](EzsigntemplatedocumentGetWordsPositionsV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentGetWordsPositionsV1Response**](EzsigntemplatedocumentGetWordsPositionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocument_patch_object_v1**
> CommonResponse ezsigntemplatedocument_patch_object_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_patch_object_v1_request => $ezsigntemplatedocument_patch_object_v1_request)

Patch an existing Ezsigntemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocument_id = 56; # int | 
my $ezsigntemplatedocument_patch_object_v1_request = EzmaxApi::Object::EzsigntemplatedocumentPatchObjectV1Request->new(); # EzsigntemplatedocumentPatchObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocument_patch_object_v1(pki_ezsigntemplatedocument_id => $pki_ezsigntemplatedocument_id, ezsigntemplatedocument_patch_object_v1_request => $ezsigntemplatedocument_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentApi->ezsigntemplatedocument_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocument_id** | **int**|  | 
 **ezsigntemplatedocument_patch_object_v1_request** | [**EzsigntemplatedocumentPatchObjectV1Request**](EzsigntemplatedocumentPatchObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

