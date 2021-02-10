# EzmaxApi::ObjectEzsignfolderApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfolderApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfolder_create_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_create_object_v1) | **POST** /1/object/ezsignfolder | Create a new Ezsignfolder
[**ezsignfolder_delete_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_delete_object_v1) | **DELETE** /1/object/ezsignfolder/{pkiEzsignfolderID} | Delete an existing Ezsignfolder
[**ezsignfolder_edit_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_edit_object_v1) | **PUT** /1/object/ezsignfolder/{pkiEzsignfolderID} | Modify an existing Ezsignfolder
[**ezsignfolder_get_children_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_children_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getChildren | Retrieve an existing Ezsignfolder&#39;s children IDs
[**ezsignfolder_get_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_object_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID} | Retrieve an existing Ezsignfolder
[**ezsignfolder_send_v1**](ObjectEzsignfolderApi.md#ezsignfolder_send_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/send | Send the Ezsignfolder to the signatories for signature


# **ezsignfolder_create_object_v1**
> EzsignfolderCreateObjectV1Response ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_request)

Create a new Ezsignfolder

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfolder_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignfolderCreateObjectV1Request]->new()]; # ARRAY[EzsignfolderCreateObjectV1Request] | 

eval { 
    my $result = $api_instance->ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfolder_create_object_v1_request** | [**ARRAY[EzsignfolderCreateObjectV1Request]**](EzsignfolderCreateObjectV1Request.md)|  | 

### Return type

[**EzsignfolderCreateObjectV1Response**](EzsignfolderCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_delete_object_v1**
> EzsignfolderDeleteObjectV1Response ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Delete an existing Ezsignfolder

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder

eval { 
    my $result = $api_instance->ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | 

### Return type

[**EzsignfolderDeleteObjectV1Response**](EzsignfolderDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_edit_object_v1**
> EzsignfolderEditObjectV1Response ezsignfolder_edit_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_edit_object_v1_request => $ezsignfolder_edit_object_v1_request)

Modify an existing Ezsignfolder

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder
my $ezsignfolder_edit_object_v1_request = EzmaxApi::Object::EzsignfolderEditObjectV1Request->new(); # EzsignfolderEditObjectV1Request | 

eval { 
    my $result = $api_instance->ezsignfolder_edit_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_edit_object_v1_request => $ezsignfolder_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | 
 **ezsignfolder_edit_object_v1_request** | [**EzsignfolderEditObjectV1Request**](EzsignfolderEditObjectV1Request.md)|  | 

### Return type

[**EzsignfolderEditObjectV1Response**](EzsignfolderEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_children_v1**
> ezsignfolder_get_children_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's children IDs

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder

eval { 
    $api_instance->ezsignfolder_get_children_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_children_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_object_v1**
> EzsignfolderGetObjectV1Response ezsignfolder_get_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder

eval { 
    my $result = $api_instance->ezsignfolder_get_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | 

### Return type

[**EzsignfolderGetObjectV1Response**](EzsignfolderGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_send_v1**
> EzsignfolderSendV1Response ezsignfolder_send_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_request)

Send the Ezsignfolder to the signatories for signature

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | The unique ID of the Ezsignfolder
my $ezsignfolder_send_v1_request = EzmaxApi::Object::EzsignfolderSendV1Request->new(); # EzsignfolderSendV1Request | 

eval { 
    my $result = $api_instance->ezsignfolder_send_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_send_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**| The unique ID of the Ezsignfolder | 
 **ezsignfolder_send_v1_request** | [**EzsignfolderSendV1Request**](EzsignfolderSendV1Request.md)|  | 

### Return type

[**EzsignfolderSendV1Response**](EzsignfolderSendV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

