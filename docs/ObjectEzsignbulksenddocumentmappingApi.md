# EzmaxApi::ObjectEzsignbulksenddocumentmappingApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignbulksenddocumentmappingApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignbulksenddocumentmapping_create_object_v1**](ObjectEzsignbulksenddocumentmappingApi.md#ezsignbulksenddocumentmapping_create_object_v1) | **POST** /1/object/ezsignbulksenddocumentmapping | Create a new Ezsignbulksenddocumentmapping
[**ezsignbulksenddocumentmapping_delete_object_v1**](ObjectEzsignbulksenddocumentmappingApi.md#ezsignbulksenddocumentmapping_delete_object_v1) | **DELETE** /1/object/ezsignbulksenddocumentmapping/{pkiEzsignbulksenddocumentmappingID} | Delete an existing Ezsignbulksenddocumentmapping
[**ezsignbulksenddocumentmapping_get_object_v1**](ObjectEzsignbulksenddocumentmappingApi.md#ezsignbulksenddocumentmapping_get_object_v1) | **GET** /1/object/ezsignbulksenddocumentmapping/{pkiEzsignbulksenddocumentmappingID} | Retrieve an existing Ezsignbulksenddocumentmapping


# **ezsignbulksenddocumentmapping_create_object_v1**
> EzsignbulksenddocumentmappingCreateObjectV1Response ezsignbulksenddocumentmapping_create_object_v1(ezsignbulksenddocumentmapping_create_object_v1_request => $ezsignbulksenddocumentmapping_create_object_v1_request)

Create a new Ezsignbulksenddocumentmapping

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksenddocumentmappingApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksenddocumentmappingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignbulksenddocumentmapping_create_object_v1_request = EzmaxApi::Object::EzsignbulksenddocumentmappingCreateObjectV1Request->new(); # EzsignbulksenddocumentmappingCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignbulksenddocumentmapping_create_object_v1(ezsignbulksenddocumentmapping_create_object_v1_request => $ezsignbulksenddocumentmapping_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksenddocumentmappingApi->ezsignbulksenddocumentmapping_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignbulksenddocumentmapping_create_object_v1_request** | [**EzsignbulksenddocumentmappingCreateObjectV1Request**](EzsignbulksenddocumentmappingCreateObjectV1Request.md)|  | 

### Return type

[**EzsignbulksenddocumentmappingCreateObjectV1Response**](EzsignbulksenddocumentmappingCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksenddocumentmapping_delete_object_v1**
> EzsignbulksenddocumentmappingDeleteObjectV1Response ezsignbulksenddocumentmapping_delete_object_v1(pki_ezsignbulksenddocumentmapping_id => $pki_ezsignbulksenddocumentmapping_id)

Delete an existing Ezsignbulksenddocumentmapping



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksenddocumentmappingApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksenddocumentmappingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksenddocumentmapping_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksenddocumentmapping_delete_object_v1(pki_ezsignbulksenddocumentmapping_id => $pki_ezsignbulksenddocumentmapping_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksenddocumentmappingApi->ezsignbulksenddocumentmapping_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksenddocumentmapping_id** | **int**|  | 

### Return type

[**EzsignbulksenddocumentmappingDeleteObjectV1Response**](EzsignbulksenddocumentmappingDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksenddocumentmapping_get_object_v1**
> EzsignbulksenddocumentmappingGetObjectV1Response ezsignbulksenddocumentmapping_get_object_v1(pki_ezsignbulksenddocumentmapping_id => $pki_ezsignbulksenddocumentmapping_id)

Retrieve an existing Ezsignbulksenddocumentmapping



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksenddocumentmappingApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksenddocumentmappingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksenddocumentmapping_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksenddocumentmapping_get_object_v1(pki_ezsignbulksenddocumentmapping_id => $pki_ezsignbulksenddocumentmapping_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksenddocumentmappingApi->ezsignbulksenddocumentmapping_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksenddocumentmapping_id** | **int**|  | 

### Return type

[**EzsignbulksenddocumentmappingGetObjectV1Response**](EzsignbulksenddocumentmappingGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

