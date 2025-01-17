# EzmaxApi::ObjectUsergroupdelegationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectUsergroupdelegationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usergroupdelegation_create_object_v1**](ObjectUsergroupdelegationApi.md#usergroupdelegation_create_object_v1) | **POST** /1/object/usergroupdelegation | Create a new Usergroupdelegation
[**usergroupdelegation_delete_object_v1**](ObjectUsergroupdelegationApi.md#usergroupdelegation_delete_object_v1) | **DELETE** /1/object/usergroupdelegation/{pkiUsergroupdelegationID} | Delete an existing Usergroupdelegation
[**usergroupdelegation_edit_object_v1**](ObjectUsergroupdelegationApi.md#usergroupdelegation_edit_object_v1) | **PUT** /1/object/usergroupdelegation/{pkiUsergroupdelegationID} | Edit an existing Usergroupdelegation
[**usergroupdelegation_get_object_v2**](ObjectUsergroupdelegationApi.md#usergroupdelegation_get_object_v2) | **GET** /2/object/usergroupdelegation/{pkiUsergroupdelegationID} | Retrieve an existing Usergroupdelegation


# **usergroupdelegation_create_object_v1**
> UsergroupdelegationCreateObjectV1Response usergroupdelegation_create_object_v1(usergroupdelegation_create_object_v1_request => $usergroupdelegation_create_object_v1_request)

Create a new Usergroupdelegation

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupdelegationApi;
my $api_instance = EzmaxApi::ObjectUsergroupdelegationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $usergroupdelegation_create_object_v1_request = EzmaxApi::Object::UsergroupdelegationCreateObjectV1Request->new(); # UsergroupdelegationCreateObjectV1Request | 

eval {
    my $result = $api_instance->usergroupdelegation_create_object_v1(usergroupdelegation_create_object_v1_request => $usergroupdelegation_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupdelegationApi->usergroupdelegation_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usergroupdelegation_create_object_v1_request** | [**UsergroupdelegationCreateObjectV1Request**](UsergroupdelegationCreateObjectV1Request.md)|  | 

### Return type

[**UsergroupdelegationCreateObjectV1Response**](UsergroupdelegationCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupdelegation_delete_object_v1**
> UsergroupdelegationDeleteObjectV1Response usergroupdelegation_delete_object_v1(pki_usergroupdelegation_id => $pki_usergroupdelegation_id)

Delete an existing Usergroupdelegation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupdelegationApi;
my $api_instance = EzmaxApi::ObjectUsergroupdelegationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupdelegation_id = 56; # int | The unique ID of the Usergroupdelegation

eval {
    my $result = $api_instance->usergroupdelegation_delete_object_v1(pki_usergroupdelegation_id => $pki_usergroupdelegation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupdelegationApi->usergroupdelegation_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupdelegation_id** | **int**| The unique ID of the Usergroupdelegation | 

### Return type

[**UsergroupdelegationDeleteObjectV1Response**](UsergroupdelegationDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupdelegation_edit_object_v1**
> UsergroupdelegationEditObjectV1Response usergroupdelegation_edit_object_v1(pki_usergroupdelegation_id => $pki_usergroupdelegation_id, usergroupdelegation_edit_object_v1_request => $usergroupdelegation_edit_object_v1_request)

Edit an existing Usergroupdelegation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupdelegationApi;
my $api_instance = EzmaxApi::ObjectUsergroupdelegationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupdelegation_id = 56; # int | The unique ID of the Usergroupdelegation
my $usergroupdelegation_edit_object_v1_request = EzmaxApi::Object::UsergroupdelegationEditObjectV1Request->new(); # UsergroupdelegationEditObjectV1Request | 

eval {
    my $result = $api_instance->usergroupdelegation_edit_object_v1(pki_usergroupdelegation_id => $pki_usergroupdelegation_id, usergroupdelegation_edit_object_v1_request => $usergroupdelegation_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupdelegationApi->usergroupdelegation_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupdelegation_id** | **int**| The unique ID of the Usergroupdelegation | 
 **usergroupdelegation_edit_object_v1_request** | [**UsergroupdelegationEditObjectV1Request**](UsergroupdelegationEditObjectV1Request.md)|  | 

### Return type

[**UsergroupdelegationEditObjectV1Response**](UsergroupdelegationEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupdelegation_get_object_v2**
> UsergroupdelegationGetObjectV2Response usergroupdelegation_get_object_v2(pki_usergroupdelegation_id => $pki_usergroupdelegation_id)

Retrieve an existing Usergroupdelegation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupdelegationApi;
my $api_instance = EzmaxApi::ObjectUsergroupdelegationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupdelegation_id = 56; # int | The unique ID of the Usergroupdelegation

eval {
    my $result = $api_instance->usergroupdelegation_get_object_v2(pki_usergroupdelegation_id => $pki_usergroupdelegation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupdelegationApi->usergroupdelegation_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupdelegation_id** | **int**| The unique ID of the Usergroupdelegation | 

### Return type

[**UsergroupdelegationGetObjectV2Response**](UsergroupdelegationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

