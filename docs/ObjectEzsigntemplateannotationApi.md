# EzmaxApi::ObjectEzsigntemplateannotationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplateannotationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplateannotation_create_object_v1**](ObjectEzsigntemplateannotationApi.md#ezsigntemplateannotation_create_object_v1) | **POST** /1/object/ezsigntemplateannotation | Create a new Ezsigntemplateannotation
[**ezsigntemplateannotation_delete_object_v1**](ObjectEzsigntemplateannotationApi.md#ezsigntemplateannotation_delete_object_v1) | **DELETE** /1/object/ezsigntemplateannotation/{pkiEzsigntemplateannotationID} | Delete an existing Ezsigntemplateannotation
[**ezsigntemplateannotation_edit_object_v1**](ObjectEzsigntemplateannotationApi.md#ezsigntemplateannotation_edit_object_v1) | **PUT** /1/object/ezsigntemplateannotation/{pkiEzsigntemplateannotationID} | Edit an existing Ezsigntemplateannotation
[**ezsigntemplateannotation_get_object_v2**](ObjectEzsigntemplateannotationApi.md#ezsigntemplateannotation_get_object_v2) | **GET** /2/object/ezsigntemplateannotation/{pkiEzsigntemplateannotationID} | Retrieve an existing Ezsigntemplateannotation


# **ezsigntemplateannotation_create_object_v1**
> EzsigntemplateannotationCreateObjectV1Response ezsigntemplateannotation_create_object_v1(ezsigntemplateannotation_create_object_v1_request => $ezsigntemplateannotation_create_object_v1_request)

Create a new Ezsigntemplateannotation

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateannotationApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplateannotation_create_object_v1_request = EzmaxApi::Object::EzsigntemplateannotationCreateObjectV1Request->new(); # EzsigntemplateannotationCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplateannotation_create_object_v1(ezsigntemplateannotation_create_object_v1_request => $ezsigntemplateannotation_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateannotationApi->ezsigntemplateannotation_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplateannotation_create_object_v1_request** | [**EzsigntemplateannotationCreateObjectV1Request**](EzsigntemplateannotationCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplateannotationCreateObjectV1Response**](EzsigntemplateannotationCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateannotation_delete_object_v1**
> EzsigntemplateannotationDeleteObjectV1Response ezsigntemplateannotation_delete_object_v1(pki_ezsigntemplateannotation_id => $pki_ezsigntemplateannotation_id)

Delete an existing Ezsigntemplateannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateannotationApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateannotation_id = 56; # int | The unique ID of the Ezsigntemplateannotation

eval {
    my $result = $api_instance->ezsigntemplateannotation_delete_object_v1(pki_ezsigntemplateannotation_id => $pki_ezsigntemplateannotation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateannotationApi->ezsigntemplateannotation_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateannotation_id** | **int**| The unique ID of the Ezsigntemplateannotation | 

### Return type

[**EzsigntemplateannotationDeleteObjectV1Response**](EzsigntemplateannotationDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateannotation_edit_object_v1**
> EzsigntemplateannotationEditObjectV1Response ezsigntemplateannotation_edit_object_v1(pki_ezsigntemplateannotation_id => $pki_ezsigntemplateannotation_id, ezsigntemplateannotation_edit_object_v1_request => $ezsigntemplateannotation_edit_object_v1_request)

Edit an existing Ezsigntemplateannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateannotationApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateannotation_id = 56; # int | The unique ID of the Ezsigntemplateannotation
my $ezsigntemplateannotation_edit_object_v1_request = EzmaxApi::Object::EzsigntemplateannotationEditObjectV1Request->new(); # EzsigntemplateannotationEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplateannotation_edit_object_v1(pki_ezsigntemplateannotation_id => $pki_ezsigntemplateannotation_id, ezsigntemplateannotation_edit_object_v1_request => $ezsigntemplateannotation_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateannotationApi->ezsigntemplateannotation_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateannotation_id** | **int**| The unique ID of the Ezsigntemplateannotation | 
 **ezsigntemplateannotation_edit_object_v1_request** | [**EzsigntemplateannotationEditObjectV1Request**](EzsigntemplateannotationEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplateannotationEditObjectV1Response**](EzsigntemplateannotationEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateannotation_get_object_v2**
> EzsigntemplateannotationGetObjectV2Response ezsigntemplateannotation_get_object_v2(pki_ezsigntemplateannotation_id => $pki_ezsigntemplateannotation_id)

Retrieve an existing Ezsigntemplateannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateannotationApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateannotation_id = 56; # int | The unique ID of the Ezsigntemplateannotation

eval {
    my $result = $api_instance->ezsigntemplateannotation_get_object_v2(pki_ezsigntemplateannotation_id => $pki_ezsigntemplateannotation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateannotationApi->ezsigntemplateannotation_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateannotation_id** | **int**| The unique ID of the Ezsigntemplateannotation | 

### Return type

[**EzsigntemplateannotationGetObjectV2Response**](EzsigntemplateannotationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

