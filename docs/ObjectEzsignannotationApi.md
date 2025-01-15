# EzmaxApi::ObjectEzsignannotationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignannotationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignannotation_create_object_v1**](ObjectEzsignannotationApi.md#ezsignannotation_create_object_v1) | **POST** /1/object/ezsignannotation | Create a new Ezsignannotation
[**ezsignannotation_delete_object_v1**](ObjectEzsignannotationApi.md#ezsignannotation_delete_object_v1) | **DELETE** /1/object/ezsignannotation/{pkiEzsignannotationID} | Delete an existing Ezsignannotation
[**ezsignannotation_edit_object_v1**](ObjectEzsignannotationApi.md#ezsignannotation_edit_object_v1) | **PUT** /1/object/ezsignannotation/{pkiEzsignannotationID} | Edit an existing Ezsignannotation
[**ezsignannotation_get_object_v2**](ObjectEzsignannotationApi.md#ezsignannotation_get_object_v2) | **GET** /2/object/ezsignannotation/{pkiEzsignannotationID} | Retrieve an existing Ezsignannotation


# **ezsignannotation_create_object_v1**
> EzsignannotationCreateObjectV1Response ezsignannotation_create_object_v1(ezsignannotation_create_object_v1_request => $ezsignannotation_create_object_v1_request)

Create a new Ezsignannotation

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignannotationApi;
my $api_instance = EzmaxApi::ObjectEzsignannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignannotation_create_object_v1_request = EzmaxApi::Object::EzsignannotationCreateObjectV1Request->new(); # EzsignannotationCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignannotation_create_object_v1(ezsignannotation_create_object_v1_request => $ezsignannotation_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignannotationApi->ezsignannotation_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignannotation_create_object_v1_request** | [**EzsignannotationCreateObjectV1Request**](EzsignannotationCreateObjectV1Request.md)|  | 

### Return type

[**EzsignannotationCreateObjectV1Response**](EzsignannotationCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignannotation_delete_object_v1**
> CommonResponse ezsignannotation_delete_object_v1(pki_ezsignannotation_id => $pki_ezsignannotation_id)

Delete an existing Ezsignannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignannotationApi;
my $api_instance = EzmaxApi::ObjectEzsignannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignannotation_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignannotation_delete_object_v1(pki_ezsignannotation_id => $pki_ezsignannotation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignannotationApi->ezsignannotation_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignannotation_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignannotation_edit_object_v1**
> CommonResponse ezsignannotation_edit_object_v1(pki_ezsignannotation_id => $pki_ezsignannotation_id, ezsignannotation_edit_object_v1_request => $ezsignannotation_edit_object_v1_request)

Edit an existing Ezsignannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignannotationApi;
my $api_instance = EzmaxApi::ObjectEzsignannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignannotation_id = 56; # int | 
my $ezsignannotation_edit_object_v1_request = EzmaxApi::Object::EzsignannotationEditObjectV1Request->new(); # EzsignannotationEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignannotation_edit_object_v1(pki_ezsignannotation_id => $pki_ezsignannotation_id, ezsignannotation_edit_object_v1_request => $ezsignannotation_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignannotationApi->ezsignannotation_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignannotation_id** | **int**|  | 
 **ezsignannotation_edit_object_v1_request** | [**EzsignannotationEditObjectV1Request**](EzsignannotationEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignannotation_get_object_v2**
> EzsignannotationGetObjectV2Response ezsignannotation_get_object_v2(pki_ezsignannotation_id => $pki_ezsignannotation_id)

Retrieve an existing Ezsignannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignannotationApi;
my $api_instance = EzmaxApi::ObjectEzsignannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignannotation_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignannotation_get_object_v2(pki_ezsignannotation_id => $pki_ezsignannotation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignannotationApi->ezsignannotation_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignannotation_id** | **int**|  | 

### Return type

[**EzsignannotationGetObjectV2Response**](EzsignannotationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

