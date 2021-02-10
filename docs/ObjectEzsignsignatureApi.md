# EzmaxApi::ObjectEzsignsignatureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignsignatureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignsignature_create_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_create_object_v1) | **POST** /1/object/ezsignsignature | Create a new Ezsignsignature
[**ezsignsignature_delete_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_delete_object_v1) | **DELETE** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Delete an existing Ezsignsignature
[**ezsignsignature_edit_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_edit_object_v1) | **PUT** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Modify an existing Ezsignsignature
[**ezsignsignature_get_children_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_get_children_v1) | **GET** /1/object/ezsignsignature/{pkiEzsignsignatureID}/getChildren | Retrieve an existing Ezsignsignature&#39;s children IDs
[**ezsignsignature_get_object_v1**](ObjectEzsignsignatureApi.md#ezsignsignature_get_object_v1) | **GET** /1/object/ezsignsignature/{pkiEzsignsignatureID} | Retrieve an existing Ezsignsignature


# **ezsignsignature_create_object_v1**
> EzsignsignatureCreateObjectV1Response ezsignsignature_create_object_v1(ezsignsignature_create_object_v1_request => $ezsignsignature_create_object_v1_request)

Create a new Ezsignsignature

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignsignature_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignsignatureCreateObjectV1Request]->new()]; # ARRAY[EzsignsignatureCreateObjectV1Request] | 

eval { 
    my $result = $api_instance->ezsignsignature_create_object_v1(ezsignsignature_create_object_v1_request => $ezsignsignature_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsignature_create_object_v1_request** | [**ARRAY[EzsignsignatureCreateObjectV1Request]**](EzsignsignatureCreateObjectV1Request.md)|  | 

### Return type

[**EzsignsignatureCreateObjectV1Response**](EzsignsignatureCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_delete_object_v1**
> EzsignsignatureDeleteObjectV1Response ezsignsignature_delete_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id)

Delete an existing Ezsignsignature

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | The unique ID of the Ezsignsignature

eval { 
    my $result = $api_instance->ezsignsignature_delete_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**| The unique ID of the Ezsignsignature | 

### Return type

[**EzsignsignatureDeleteObjectV1Response**](EzsignsignatureDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_edit_object_v1**
> EzsignsignatureEditObjectV1Response ezsignsignature_edit_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_edit_object_v1_request => $ezsignsignature_edit_object_v1_request)

Modify an existing Ezsignsignature

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | The unique ID of the Ezsignsignature
my $ezsignsignature_edit_object_v1_request = EzmaxApi::Object::EzsignsignatureEditObjectV1Request->new(); # EzsignsignatureEditObjectV1Request | 

eval { 
    my $result = $api_instance->ezsignsignature_edit_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id, ezsignsignature_edit_object_v1_request => $ezsignsignature_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**| The unique ID of the Ezsignsignature | 
 **ezsignsignature_edit_object_v1_request** | [**EzsignsignatureEditObjectV1Request**](EzsignsignatureEditObjectV1Request.md)|  | 

### Return type

[**EzsignsignatureEditObjectV1Response**](EzsignsignatureEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_get_children_v1**
> ezsignsignature_get_children_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id)

Retrieve an existing Ezsignsignature's children IDs

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | The unique ID of the Ezsignsignature

eval { 
    $api_instance->ezsignsignature_get_children_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_get_children_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**| The unique ID of the Ezsignsignature | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsignature_get_object_v1**
> EzsignsignatureGetObjectV1Response ezsignsignature_get_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id)

Retrieve an existing Ezsignsignature

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsignatureApi;
my $api_instance = EzmaxApi::ObjectEzsignsignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsignature_id = 56; # int | The unique ID of the Ezsignsignature

eval { 
    my $result = $api_instance->ezsignsignature_get_object_v1(pki_ezsignsignature_id => $pki_ezsignsignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsignatureApi->ezsignsignature_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsignature_id** | **int**| The unique ID of the Ezsignsignature | 

### Return type

[**EzsignsignatureGetObjectV1Response**](EzsignsignatureGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

