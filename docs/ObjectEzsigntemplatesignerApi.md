# EzmaxApi::ObjectEzsigntemplatesignerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatesignerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatesigner_create_object_v1**](ObjectEzsigntemplatesignerApi.md#ezsigntemplatesigner_create_object_v1) | **POST** /1/object/ezsigntemplatesigner | Create a new Ezsigntemplatesigner
[**ezsigntemplatesigner_delete_object_v1**](ObjectEzsigntemplatesignerApi.md#ezsigntemplatesigner_delete_object_v1) | **DELETE** /1/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID} | Delete an existing Ezsigntemplatesigner
[**ezsigntemplatesigner_edit_object_v1**](ObjectEzsigntemplatesignerApi.md#ezsigntemplatesigner_edit_object_v1) | **PUT** /1/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID} | Edit an existing Ezsigntemplatesigner
[**ezsigntemplatesigner_get_object_v1**](ObjectEzsigntemplatesignerApi.md#ezsigntemplatesigner_get_object_v1) | **GET** /1/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID} | Retrieve an existing Ezsigntemplatesigner
[**ezsigntemplatesigner_get_object_v2**](ObjectEzsigntemplatesignerApi.md#ezsigntemplatesigner_get_object_v2) | **GET** /2/object/ezsigntemplatesigner/{pkiEzsigntemplatesignerID} | Retrieve an existing Ezsigntemplatesigner


# **ezsigntemplatesigner_create_object_v1**
> EzsigntemplatesignerCreateObjectV1Response ezsigntemplatesigner_create_object_v1(ezsigntemplatesigner_create_object_v1_request => $ezsigntemplatesigner_create_object_v1_request)

Create a new Ezsigntemplatesigner

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatesigner_create_object_v1_request = EzmaxApi::Object::EzsigntemplatesignerCreateObjectV1Request->new(); # EzsigntemplatesignerCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatesigner_create_object_v1(ezsigntemplatesigner_create_object_v1_request => $ezsigntemplatesigner_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignerApi->ezsigntemplatesigner_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatesigner_create_object_v1_request** | [**EzsigntemplatesignerCreateObjectV1Request**](EzsigntemplatesignerCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatesignerCreateObjectV1Response**](EzsigntemplatesignerCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesigner_delete_object_v1**
> EzsigntemplatesignerDeleteObjectV1Response ezsigntemplatesigner_delete_object_v1(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id)

Delete an existing Ezsigntemplatesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesigner_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatesigner_delete_object_v1(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignerApi->ezsigntemplatesigner_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesigner_id** | **int**|  | 

### Return type

[**EzsigntemplatesignerDeleteObjectV1Response**](EzsigntemplatesignerDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesigner_edit_object_v1**
> EzsigntemplatesignerEditObjectV1Response ezsigntemplatesigner_edit_object_v1(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id, ezsigntemplatesigner_edit_object_v1_request => $ezsigntemplatesigner_edit_object_v1_request)

Edit an existing Ezsigntemplatesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesigner_id = 56; # int | 
my $ezsigntemplatesigner_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatesignerEditObjectV1Request->new(); # EzsigntemplatesignerEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatesigner_edit_object_v1(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id, ezsigntemplatesigner_edit_object_v1_request => $ezsigntemplatesigner_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignerApi->ezsigntemplatesigner_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesigner_id** | **int**|  | 
 **ezsigntemplatesigner_edit_object_v1_request** | [**EzsigntemplatesignerEditObjectV1Request**](EzsigntemplatesignerEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatesignerEditObjectV1Response**](EzsigntemplatesignerEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesigner_get_object_v1**
> EzsigntemplatesignerGetObjectV1Response ezsigntemplatesigner_get_object_v1(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id)

Retrieve an existing Ezsigntemplatesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesigner_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatesigner_get_object_v1(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignerApi->ezsigntemplatesigner_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesigner_id** | **int**|  | 

### Return type

[**EzsigntemplatesignerGetObjectV1Response**](EzsigntemplatesignerGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatesigner_get_object_v2**
> EzsigntemplatesignerGetObjectV2Response ezsigntemplatesigner_get_object_v2(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id)

Retrieve an existing Ezsigntemplatesigner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatesignerApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatesignerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatesigner_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatesigner_get_object_v2(pki_ezsigntemplatesigner_id => $pki_ezsigntemplatesigner_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatesignerApi->ezsigntemplatesigner_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatesigner_id** | **int**|  | 

### Return type

[**EzsigntemplatesignerGetObjectV2Response**](EzsigntemplatesignerGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

