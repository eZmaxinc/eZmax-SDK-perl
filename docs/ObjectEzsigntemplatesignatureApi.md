# EzmaxApi::ObjectEzsigntemplatesignatureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatesignatureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatesignature_create_object_v2**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_create_object_v2) | **POST** /2/object/ezsigntemplatesignature | Create a new Ezsigntemplatesignature
[**ezsigntemplatesignature_delete_object_v1**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_delete_object_v1) | **DELETE** /1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Delete an existing Ezsigntemplatesignature
[**ezsigntemplatesignature_edit_object_v2**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_edit_object_v2) | **PUT** /2/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Edit an existing Ezsigntemplatesignature
[**ezsigntemplatesignature_get_object_v3**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_get_object_v3) | **GET** /3/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Retrieve an existing Ezsigntemplatesignature


# **ezsigntemplatesignature_create_object_v2**
> EzsigntemplatesignatureCreateObjectV2Response ezsigntemplatesignature_create_object_v2(ezsigntemplatesignature_create_object_v2_request => $ezsigntemplatesignature_create_object_v2_request)

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

# **ezsigntemplatesignature_delete_object_v1**
> CommonResponse ezsigntemplatesignature_delete_object_v1(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id)

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

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_edit_object_v2**
> CommonResponse ezsigntemplatesignature_edit_object_v2(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id, ezsigntemplatesignature_edit_object_v2_request => $ezsigntemplatesignature_edit_object_v2_request)

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
my $ezsigntemplatesignature_edit_object_v2_request = EzmaxApi::Object::EzsigntemplatesignatureEditObjectV2Request->new(); # EzsigntemplatesignatureEditObjectV2Request | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_edit_object_v2(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id, ezsigntemplatesignature_edit_object_v2_request => $ezsigntemplatesignature_edit_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_edit_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 
 **ezsigntemplatesignature_edit_object_v2_request** | [**EzsigntemplatesignatureEditObjectV2Request**](EzsigntemplatesignatureEditObjectV2Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_get_object_v3**
> EzsigntemplatesignatureGetObjectV3Response ezsigntemplatesignature_get_object_v3(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id)

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
    my $result = $api_instance->ezsigntemplatesignature_get_object_v3(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_get_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 

### Return type

[**EzsigntemplatesignatureGetObjectV3Response**](EzsigntemplatesignatureGetObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

