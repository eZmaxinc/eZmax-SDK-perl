# EzmaxApi::ObjectEzsigntemplatesignatureApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatesignatureApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatesignature_create_object_v1**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_create_object_v1) | **POST** /1/object/ezsigntemplatesignature | Create a new Ezsigntemplatesignature
[**ezsigntemplatesignature_delete_object_v1**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_delete_object_v1) | **DELETE** /1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Delete an existing Ezsigntemplatesignature
[**ezsigntemplatesignature_edit_object_v1**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_edit_object_v1) | **PUT** /1/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Edit an existing Ezsigntemplatesignature
[**ezsigntemplatesignature_get_object_v2**](ObjectEzsigntemplatesignatureApi.md#ezsigntemplatesignature_get_object_v2) | **GET** /2/object/ezsigntemplatesignature/{pkiEzsigntemplatesignatureID} | Retrieve an existing Ezsigntemplatesignature


# **ezsigntemplatesignature_create_object_v1**
> EzsigntemplatesignatureCreateObjectV1Response ezsigntemplatesignature_create_object_v1(ezsigntemplatesignature_create_object_v1_request => $ezsigntemplatesignature_create_object_v1_request)

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

my $ezsigntemplatesignature_create_object_v1_request = EzmaxApi::Object::EzsigntemplatesignatureCreateObjectV1Request->new(); # EzsigntemplatesignatureCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_create_object_v1(ezsigntemplatesignature_create_object_v1_request => $ezsigntemplatesignature_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatesignature_create_object_v1_request** | [**EzsigntemplatesignatureCreateObjectV1Request**](EzsigntemplatesignatureCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatesignatureCreateObjectV1Response**](EzsigntemplatesignatureCreateObjectV1Response.md)

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

# **ezsigntemplatesignature_edit_object_v1**
> EzsigntemplatesignatureEditObjectV1Response ezsigntemplatesignature_edit_object_v1(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id, ezsigntemplatesignature_edit_object_v1_request => $ezsigntemplatesignature_edit_object_v1_request)

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
my $ezsigntemplatesignature_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatesignatureEditObjectV1Request->new(); # EzsigntemplatesignatureEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatesignature_edit_object_v1(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id, ezsigntemplatesignature_edit_object_v1_request => $ezsigntemplatesignature_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 
 **ezsigntemplatesignature_edit_object_v1_request** | [**EzsigntemplatesignatureEditObjectV1Request**](EzsigntemplatesignatureEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatesignatureEditObjectV1Response**](EzsigntemplatesignatureEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesignature_get_object_v2**
> EzsigntemplatesignatureGetObjectV2Response ezsigntemplatesignature_get_object_v2(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id)

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
    my $result = $api_instance->ezsigntemplatesignature_get_object_v2(pki_ezsigntemplatesignature_id => $pki_ezsigntemplatesignature_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignatureApi->ezsigntemplatesignature_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesignature_id** | **int**|  | 

### Return type

[**EzsigntemplatesignatureGetObjectV2Response**](EzsigntemplatesignatureGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

