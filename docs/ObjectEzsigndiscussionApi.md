# EzmaxApi::ObjectEzsigndiscussionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigndiscussionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigndiscussion_create_object_v1**](ObjectEzsigndiscussionApi.md#ezsigndiscussion_create_object_v1) | **POST** /1/object/ezsigndiscussion | Create a new Ezsigndiscussion
[**ezsigndiscussion_delete_object_v1**](ObjectEzsigndiscussionApi.md#ezsigndiscussion_delete_object_v1) | **DELETE** /1/object/ezsigndiscussion/{pkiEzsigndiscussionID} | Delete an existing Ezsigndiscussion
[**ezsigndiscussion_get_object_v2**](ObjectEzsigndiscussionApi.md#ezsigndiscussion_get_object_v2) | **GET** /2/object/ezsigndiscussion/{pkiEzsigndiscussionID} | Retrieve an existing Ezsigndiscussion


# **ezsigndiscussion_create_object_v1**
> EzsigndiscussionCreateObjectV1Response ezsigndiscussion_create_object_v1(ezsigndiscussion_create_object_v1_request => $ezsigndiscussion_create_object_v1_request)

Create a new Ezsigndiscussion

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndiscussionApi;
my $api_instance = EzmaxApi::ObjectEzsigndiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigndiscussion_create_object_v1_request = EzmaxApi::Object::EzsigndiscussionCreateObjectV1Request->new(); # EzsigndiscussionCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigndiscussion_create_object_v1(ezsigndiscussion_create_object_v1_request => $ezsigndiscussion_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndiscussionApi->ezsigndiscussion_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigndiscussion_create_object_v1_request** | [**EzsigndiscussionCreateObjectV1Request**](EzsigndiscussionCreateObjectV1Request.md)|  | 

### Return type

[**EzsigndiscussionCreateObjectV1Response**](EzsigndiscussionCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndiscussion_delete_object_v1**
> CommonResponse ezsigndiscussion_delete_object_v1(pki_ezsigndiscussion_id => $pki_ezsigndiscussion_id)

Delete an existing Ezsigndiscussion



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndiscussionApi;
my $api_instance = EzmaxApi::ObjectEzsigndiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndiscussion_id = 56; # int | The unique ID of the Ezsigndiscussion

eval {
    my $result = $api_instance->ezsigndiscussion_delete_object_v1(pki_ezsigndiscussion_id => $pki_ezsigndiscussion_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndiscussionApi->ezsigndiscussion_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndiscussion_id** | **int**| The unique ID of the Ezsigndiscussion | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigndiscussion_get_object_v2**
> EzsigndiscussionGetObjectV2Response ezsigndiscussion_get_object_v2(pki_ezsigndiscussion_id => $pki_ezsigndiscussion_id)

Retrieve an existing Ezsigndiscussion



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigndiscussionApi;
my $api_instance = EzmaxApi::ObjectEzsigndiscussionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigndiscussion_id = 56; # int | The unique ID of the Ezsigndiscussion

eval {
    my $result = $api_instance->ezsigndiscussion_get_object_v2(pki_ezsigndiscussion_id => $pki_ezsigndiscussion_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigndiscussionApi->ezsigndiscussion_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigndiscussion_id** | **int**| The unique ID of the Ezsigndiscussion | 

### Return type

[**EzsigndiscussionGetObjectV2Response**](EzsigndiscussionGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

