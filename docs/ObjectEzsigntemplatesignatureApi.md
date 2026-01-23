# EzmaxApi::ObjectEzsigntemplatesignatureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatesignatureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatesignature_create_object_v2**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_create_object_v2) | **POST** /2/object/ezsigntemplatesignature | Create a new Ezsigntemplatesignature
[**ezsigntemplatesignature_create_object_v3**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_create_object_v3) | **POST** /3/object/ezsigntemplatesignature | Create a new Ezsigntemplatesignature
[**ezsigntemplatesignature_delete_object_v1**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_delete_object_v1) | **DELETE** /1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Delete an existing Ezsigntemplatesignature
[**ezsigntemplatesignature_edit_object_v3**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_edit_object_v3) | **PUT** /3/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Edit an existing Ezsigntemplatesignature
[**ezsigntemplatesignature_get_object_v4**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_get_object_v4) | **GET** /4/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Retrieve an existing Ezsigntemplatesignature


# **ezsigntemplatesignature_create_object_v2**
> EzsigntemplatesignatureCreateObjectV2Response ezsigntemplatesignature_create_object_v2(ezsigntemplatesignature_create_object_v2_request => $ezsigntemplatesignature_create_object_v2_request)

Create a new Ezsigntemplatesignature

The endpoint allows to create one or many elements at once.  Major step overhaul.  Endpoints that existed before version 1.3 do not allow you to combine forms and signatures in the same step. The step numbers are different from those indicated by endpoints added since version 1.3. This endpoint is compatible with endpoints that existed before 1.3 but are not compatible with those added since 1.3.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignatureApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatesignature_create_object_v2_request = EzmaxApi::Object::EzsigntemplatesignatureCreateObjectV2Request->new(); # EzsigntemplatesignatureCreateObjectV2Request | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_create_object_v2(ezsigntemplatesignature_create_object_v2_request => $ezsigntemplatesignature_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatesignature_create_object_v2_request** | [**EzsigntemplatesignatureCreateObjectV2Request**](EzsigntemplatesignatureCreateObjectV2Request.md)|  | 

### Return type

[**EzsigntemplatesignatureCreateObjectV2Response**](EzsigntemplatesignatureCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_create_object_v3**
> EzsigntemplatesignatureCreateObjectV3Response ezsigntemplatesignature_create_object_v3(ezsigntemplatesignature_create_object_v3_request => $ezsigntemplatesignature_create_object_v3_request)

Create a new Ezsigntemplatesignature

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignatureApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatesignature_create_object_v3_request = EzmaxApi::Object::EzsigntemplatesignatureCreateObjectV3Request->new(); # EzsigntemplatesignatureCreateObjectV3Request | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_create_object_v3(ezsigntemplatesignature_create_object_v3_request => $ezsigntemplatesignature_create_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_create_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatesignature_create_object_v3_request** | [**EzsigntemplatesignatureCreateObjectV3Request**](EzsigntemplatesignatureCreateObjectV3Request.md)|  | 

### Return type

[**EzsigntemplatesignatureCreateObjectV3Response**](EzsigntemplatesignatureCreateObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_delete_object_v1**
> EzsigntemplatesignatureDeleteObjectV1Response ezsigntemplatesignature_delete_object_v1(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id)

Delete an existing Ezsigntemplatesignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignatureApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesignature_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_delete_object_v1(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 

### Return type

[**EzsigntemplatesignatureDeleteObjectV1Response**](EzsigntemplatesignatureDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_edit_object_v3**
> EzsigntemplatesignatureEditObjectV3Response ezsigntemplatesignature_edit_object_v3(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id, ezsigntemplatesignature_edit_object_v3_request => $ezsigntemplatesignature_edit_object_v3_request)

Edit an existing Ezsigntemplatesignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignatureApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesignature_id = 56; # int | 
my $ezsigntemplatesignature_edit_object_v3_request = EzmaxApi::Object::EzsigntemplatesignatureEditObjectV3Request->new(); # EzsigntemplatesignatureEditObjectV3Request | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_edit_object_v3(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id, ezsigntemplatesignature_edit_object_v3_request => $ezsigntemplatesignature_edit_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_edit_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 
 **ezsigntemplatesignature_edit_object_v3_request** | [**EzsigntemplatesignatureEditObjectV3Request**](EzsigntemplatesignatureEditObjectV3Request.md)|  | 

### Return type

[**EzsigntemplatesignatureEditObjectV3Response**](EzsigntemplatesignatureEditObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_get_object_v4**
> EzsigntemplatesignatureGetObjectV4Response ezsigntemplatesignature_get_object_v4(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id)

Retrieve an existing Ezsigntemplatesignature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignatureApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignatureApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesignature_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_get_object_v4(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_get_object_v4: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 

### Return type

[**EzsigntemplatesignatureGetObjectV4Response**](EzsigntemplatesignatureGetObjectV4Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

