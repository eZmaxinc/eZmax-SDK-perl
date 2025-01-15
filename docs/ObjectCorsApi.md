# EzmaxApi::ObjectCorsApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCorsApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cors_create_object_v1**](ObjectCorsApi.md#cors_create_object_v1) | **POST** /1/object/cors | Create a new Cors
[**cors_delete_object_v1**](ObjectCorsApi.md#cors_delete_object_v1) | **DELETE** /1/object/cors/{pkiCorsID} | Delete an existing Cors
[**cors_edit_object_v1**](ObjectCorsApi.md#cors_edit_object_v1) | **PUT** /1/object/cors/{pkiCorsID} | Edit an existing Cors
[**cors_get_object_v2**](ObjectCorsApi.md#cors_get_object_v2) | **GET** /2/object/cors/{pkiCorsID} | Retrieve an existing Cors


# **cors_create_object_v1**
> CorsCreateObjectV1Response cors_create_object_v1(cors_create_object_v1_request => $cors_create_object_v1_request)

Create a new Cors

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCorsApi;
my $api_instance = EzmaxApi::ObjectCorsApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $cors_create_object_v1_request = EzmaxApi::Object::CorsCreateObjectV1Request->new(); # CorsCreateObjectV1Request | 

eval {
    my $result = $api_instance->cors_create_object_v1(cors_create_object_v1_request => $cors_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCorsApi->cors_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cors_create_object_v1_request** | [**CorsCreateObjectV1Request**](CorsCreateObjectV1Request.md)|  | 

### Return type

[**CorsCreateObjectV1Response**](CorsCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cors_delete_object_v1**
> CommonResponse cors_delete_object_v1(pki_cors_id => $pki_cors_id)

Delete an existing Cors



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCorsApi;
my $api_instance = EzmaxApi::ObjectCorsApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_cors_id = 56; # int | The unique ID of the Cors

eval {
    my $result = $api_instance->cors_delete_object_v1(pki_cors_id => $pki_cors_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCorsApi->cors_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_cors_id** | **int**| The unique ID of the Cors | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cors_edit_object_v1**
> CommonResponse cors_edit_object_v1(pki_cors_id => $pki_cors_id, cors_edit_object_v1_request => $cors_edit_object_v1_request)

Edit an existing Cors



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCorsApi;
my $api_instance = EzmaxApi::ObjectCorsApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_cors_id = 56; # int | The unique ID of the Cors
my $cors_edit_object_v1_request = EzmaxApi::Object::CorsEditObjectV1Request->new(); # CorsEditObjectV1Request | 

eval {
    my $result = $api_instance->cors_edit_object_v1(pki_cors_id => $pki_cors_id, cors_edit_object_v1_request => $cors_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCorsApi->cors_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_cors_id** | **int**| The unique ID of the Cors | 
 **cors_edit_object_v1_request** | [**CorsEditObjectV1Request**](CorsEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cors_get_object_v2**
> CorsGetObjectV2Response cors_get_object_v2(pki_cors_id => $pki_cors_id)

Retrieve an existing Cors



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCorsApi;
my $api_instance = EzmaxApi::ObjectCorsApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_cors_id = 56; # int | The unique ID of the Cors

eval {
    my $result = $api_instance->cors_get_object_v2(pki_cors_id => $pki_cors_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCorsApi->cors_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_cors_id** | **int**| The unique ID of the Cors | 

### Return type

[**CorsGetObjectV2Response**](CorsGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

