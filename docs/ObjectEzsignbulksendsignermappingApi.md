# EzmaxApi::ObjectEzsignbulksendsignermappingApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignbulksendsignermappingApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignbulksendsignermapping_create_object_v1**](ObjectEzsignbulksendsignermappingApi.md#ezsignbulksendsignermapping_create_object_v1) | **POST** /1/object/ezsignbulksendsignermapping | Create a new Ezsignbulksendsignermapping
[**ezsignbulksendsignermapping_delete_object_v1**](ObjectEzsignbulksendsignermappingApi.md#ezsignbulksendsignermapping_delete_object_v1) | **DELETE** /1/object/ezsignbulksendsignermapping/{pkiEzsignbulksendsignermappingID} | Delete an existing Ezsignbulksendsignermapping
[**ezsignbulksendsignermapping_get_object_v1**](ObjectEzsignbulksendsignermappingApi.md#ezsignbulksendsignermapping_get_object_v1) | **GET** /1/object/ezsignbulksendsignermapping/{pkiEzsignbulksendsignermappingID} | Retrieve an existing Ezsignbulksendsignermapping


# **ezsignbulksendsignermapping_create_object_v1**
> EzsignbulksendsignermappingCreateObjectV1Response ezsignbulksendsignermapping_create_object_v1(ezsignbulksendsignermapping_create_object_v1_request => $ezsignbulksendsignermapping_create_object_v1_request)

Create a new Ezsignbulksendsignermapping

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendsignermappingApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendsignermappingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignbulksendsignermapping_create_object_v1_request = EzmaxApi::Object::EzsignbulksendsignermappingCreateObjectV1Request->new(); # EzsignbulksendsignermappingCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignbulksendsignermapping_create_object_v1(ezsignbulksendsignermapping_create_object_v1_request => $ezsignbulksendsignermapping_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendsignermappingApi->ezsignbulksendsignermapping_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignbulksendsignermapping_create_object_v1_request** | [**EzsignbulksendsignermappingCreateObjectV1Request**](EzsignbulksendsignermappingCreateObjectV1Request.md)|  | 

### Return type

[**EzsignbulksendsignermappingCreateObjectV1Response**](EzsignbulksendsignermappingCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksendsignermapping_delete_object_v1**
> EzsignbulksendsignermappingDeleteObjectV1Response ezsignbulksendsignermapping_delete_object_v1(pki_ezsignbulksendsignermapping_id => $pki_ezsignbulksendsignermapping_id)

Delete an existing Ezsignbulksendsignermapping



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendsignermappingApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendsignermappingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksendsignermapping_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksendsignermapping_delete_object_v1(pki_ezsignbulksendsignermapping_id => $pki_ezsignbulksendsignermapping_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendsignermappingApi->ezsignbulksendsignermapping_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksendsignermapping_id** | **int**|  | 

### Return type

[**EzsignbulksendsignermappingDeleteObjectV1Response**](EzsignbulksendsignermappingDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksendsignermapping_get_object_v1**
> EzsignbulksendsignermappingGetObjectV1Response ezsignbulksendsignermapping_get_object_v1(pki_ezsignbulksendsignermapping_id => $pki_ezsignbulksendsignermapping_id)

Retrieve an existing Ezsignbulksendsignermapping



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendsignermappingApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendsignermappingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksendsignermapping_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksendsignermapping_get_object_v1(pki_ezsignbulksendsignermapping_id => $pki_ezsignbulksendsignermapping_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendsignermappingApi->ezsignbulksendsignermapping_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksendsignermapping_id** | **int**|  | 

### Return type

[**EzsignbulksendsignermappingGetObjectV1Response**](EzsignbulksendsignermappingGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

