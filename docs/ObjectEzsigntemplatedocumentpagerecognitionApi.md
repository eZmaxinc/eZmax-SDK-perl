# EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatedocumentpagerecognitionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatedocumentpagerecognition_create_object_v1**](ObjectEzsigntemplatedocumentpagerecognitionApi.md#ezsigntemplatedocumentpagerecognition_create_object_v1) | **POST** /1/object/ezsigntemplatedocumentpagerecognition | Create a new Ezsigntemplatedocumentpagerecognition
[**ezsigntemplatedocumentpagerecognition_delete_object_v1**](ObjectEzsigntemplatedocumentpagerecognitionApi.md#ezsigntemplatedocumentpagerecognition_delete_object_v1) | **DELETE** /1/object/ezsigntemplatedocumentpagerecognition/{pkiEzsigntemplatedocumentpagerecognitionID} | Delete an existing Ezsigntemplatedocumentpagerecognition
[**ezsigntemplatedocumentpagerecognition_edit_object_v1**](ObjectEzsigntemplatedocumentpagerecognitionApi.md#ezsigntemplatedocumentpagerecognition_edit_object_v1) | **PUT** /1/object/ezsigntemplatedocumentpagerecognition/{pkiEzsigntemplatedocumentpagerecognitionID} | Edit an existing Ezsigntemplatedocumentpagerecognition
[**ezsigntemplatedocumentpagerecognition_get_object_v2**](ObjectEzsigntemplatedocumentpagerecognitionApi.md#ezsigntemplatedocumentpagerecognition_get_object_v2) | **GET** /2/object/ezsigntemplatedocumentpagerecognition/{pkiEzsigntemplatedocumentpagerecognitionID} | Retrieve an existing Ezsigntemplatedocumentpagerecognition


# **ezsigntemplatedocumentpagerecognition_create_object_v1**
> EzsigntemplatedocumentpagerecognitionCreateObjectV1Response ezsigntemplatedocumentpagerecognition_create_object_v1(ezsigntemplatedocumentpagerecognition_create_object_v1_request => $ezsigntemplatedocumentpagerecognition_create_object_v1_request)

Create a new Ezsigntemplatedocumentpagerecognition

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatedocumentpagerecognition_create_object_v1_request = EzmaxApi::Object::EzsigntemplatedocumentpagerecognitionCreateObjectV1Request->new(); # EzsigntemplatedocumentpagerecognitionCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocumentpagerecognition_create_object_v1(ezsigntemplatedocumentpagerecognition_create_object_v1_request => $ezsigntemplatedocumentpagerecognition_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentpagerecognitionApi->ezsigntemplatedocumentpagerecognition_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatedocumentpagerecognition_create_object_v1_request** | [**EzsigntemplatedocumentpagerecognitionCreateObjectV1Request**](EzsigntemplatedocumentpagerecognitionCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentpagerecognitionCreateObjectV1Response**](EzsigntemplatedocumentpagerecognitionCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocumentpagerecognition_delete_object_v1**
> EzsigntemplatedocumentpagerecognitionDeleteObjectV1Response ezsigntemplatedocumentpagerecognition_delete_object_v1(pki_ezsigntemplatedocumentpagerecognition_id => $pki_ezsigntemplatedocumentpagerecognition_id)

Delete an existing Ezsigntemplatedocumentpagerecognition



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocumentpagerecognition_id = 56; # int | The unique ID of the Ezsigntemplatedocumentpagerecognition

eval {
    my $result = $api_instance->ezsigntemplatedocumentpagerecognition_delete_object_v1(pki_ezsigntemplatedocumentpagerecognition_id => $pki_ezsigntemplatedocumentpagerecognition_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentpagerecognitionApi->ezsigntemplatedocumentpagerecognition_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocumentpagerecognition_id** | **int**| The unique ID of the Ezsigntemplatedocumentpagerecognition | 

### Return type

[**EzsigntemplatedocumentpagerecognitionDeleteObjectV1Response**](EzsigntemplatedocumentpagerecognitionDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocumentpagerecognition_edit_object_v1**
> EzsigntemplatedocumentpagerecognitionEditObjectV1Response ezsigntemplatedocumentpagerecognition_edit_object_v1(pki_ezsigntemplatedocumentpagerecognition_id => $pki_ezsigntemplatedocumentpagerecognition_id, ezsigntemplatedocumentpagerecognition_edit_object_v1_request => $ezsigntemplatedocumentpagerecognition_edit_object_v1_request)

Edit an existing Ezsigntemplatedocumentpagerecognition



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocumentpagerecognition_id = 56; # int | The unique ID of the Ezsigntemplatedocumentpagerecognition
my $ezsigntemplatedocumentpagerecognition_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatedocumentpagerecognitionEditObjectV1Request->new(); # EzsigntemplatedocumentpagerecognitionEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatedocumentpagerecognition_edit_object_v1(pki_ezsigntemplatedocumentpagerecognition_id => $pki_ezsigntemplatedocumentpagerecognition_id, ezsigntemplatedocumentpagerecognition_edit_object_v1_request => $ezsigntemplatedocumentpagerecognition_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentpagerecognitionApi->ezsigntemplatedocumentpagerecognition_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocumentpagerecognition_id** | **int**| The unique ID of the Ezsigntemplatedocumentpagerecognition | 
 **ezsigntemplatedocumentpagerecognition_edit_object_v1_request** | [**EzsigntemplatedocumentpagerecognitionEditObjectV1Request**](EzsigntemplatedocumentpagerecognitionEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatedocumentpagerecognitionEditObjectV1Response**](EzsigntemplatedocumentpagerecognitionEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatedocumentpagerecognition_get_object_v2**
> EzsigntemplatedocumentpagerecognitionGetObjectV2Response ezsigntemplatedocumentpagerecognition_get_object_v2(pki_ezsigntemplatedocumentpagerecognition_id => $pki_ezsigntemplatedocumentpagerecognition_id)

Retrieve an existing Ezsigntemplatedocumentpagerecognition



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatedocumentpagerecognitionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatedocumentpagerecognition_id = 56; # int | The unique ID of the Ezsigntemplatedocumentpagerecognition

eval {
    my $result = $api_instance->ezsigntemplatedocumentpagerecognition_get_object_v2(pki_ezsigntemplatedocumentpagerecognition_id => $pki_ezsigntemplatedocumentpagerecognition_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatedocumentpagerecognitionApi->ezsigntemplatedocumentpagerecognition_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatedocumentpagerecognition_id** | **int**| The unique ID of the Ezsigntemplatedocumentpagerecognition | 

### Return type

[**EzsigntemplatedocumentpagerecognitionGetObjectV2Response**](EzsigntemplatedocumentpagerecognitionGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

