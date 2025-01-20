# EzmaxApi::ObjectUsergroupmembershipApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectUsergroupmembershipApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usergroupmembership_create_object_v1**](ObjectUsergroupmembershipApi.md#usergroupmembership_create_object_v1) | **POST** /1/object/usergroupmembership | Create a new Usergroupmembership
[**usergroupmembership_delete_object_v1**](ObjectUsergroupmembershipApi.md#usergroupmembership_delete_object_v1) | **DELETE** /1/object/usergroupmembership/{pkiUsergroupmembershipID} | Delete an existing Usergroupmembership
[**usergroupmembership_edit_object_v1**](ObjectUsergroupmembershipApi.md#usergroupmembership_edit_object_v1) | **PUT** /1/object/usergroupmembership/{pkiUsergroupmembershipID} | Edit an existing Usergroupmembership
[**usergroupmembership_get_object_v2**](ObjectUsergroupmembershipApi.md#usergroupmembership_get_object_v2) | **GET** /2/object/usergroupmembership/{pkiUsergroupmembershipID} | Retrieve an existing Usergroupmembership


# **usergroupmembership_create_object_v1**
> UsergroupmembershipCreateObjectV1Response usergroupmembership_create_object_v1(usergroupmembership_create_object_v1_request => $usergroupmembership_create_object_v1_request)

Create a new Usergroupmembership

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectUsergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $usergroupmembership_create_object_v1_request = EzmaxApi::Object::UsergroupmembershipCreateObjectV1Request->new(); # UsergroupmembershipCreateObjectV1Request | 

eval {
    my $result = $api_instance->usergroupmembership_create_object_v1(usergroupmembership_create_object_v1_request => $usergroupmembership_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupmembershipApi->usergroupmembership_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usergroupmembership_create_object_v1_request** | [**UsergroupmembershipCreateObjectV1Request**](UsergroupmembershipCreateObjectV1Request.md)|  | 

### Return type

[**UsergroupmembershipCreateObjectV1Response**](UsergroupmembershipCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupmembership_delete_object_v1**
> CommonResponse usergroupmembership_delete_object_v1(pki_usergroupmembership_id => $pki_usergroupmembership_id)

Delete an existing Usergroupmembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectUsergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupmembership_id = 56; # int | 

eval {
    my $result = $api_instance->usergroupmembership_delete_object_v1(pki_usergroupmembership_id => $pki_usergroupmembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupmembershipApi->usergroupmembership_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupmembership_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupmembership_edit_object_v1**
> CommonResponse usergroupmembership_edit_object_v1(pki_usergroupmembership_id => $pki_usergroupmembership_id, usergroupmembership_edit_object_v1_request => $usergroupmembership_edit_object_v1_request)

Edit an existing Usergroupmembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectUsergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupmembership_id = 56; # int | 
my $usergroupmembership_edit_object_v1_request = EzmaxApi::Object::UsergroupmembershipEditObjectV1Request->new(); # UsergroupmembershipEditObjectV1Request | 

eval {
    my $result = $api_instance->usergroupmembership_edit_object_v1(pki_usergroupmembership_id => $pki_usergroupmembership_id, usergroupmembership_edit_object_v1_request => $usergroupmembership_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupmembershipApi->usergroupmembership_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupmembership_id** | **int**|  | 
 **usergroupmembership_edit_object_v1_request** | [**UsergroupmembershipEditObjectV1Request**](UsergroupmembershipEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupmembership_get_object_v2**
> UsergroupmembershipGetObjectV2Response usergroupmembership_get_object_v2(pki_usergroupmembership_id => $pki_usergroupmembership_id)

Retrieve an existing Usergroupmembership



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupmembershipApi;
my $api_instance = EzmaxApi::ObjectUsergroupmembershipApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupmembership_id = 56; # int | 

eval {
    my $result = $api_instance->usergroupmembership_get_object_v2(pki_usergroupmembership_id => $pki_usergroupmembership_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupmembershipApi->usergroupmembership_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupmembership_id** | **int**|  | 

### Return type

[**UsergroupmembershipGetObjectV2Response**](UsergroupmembershipGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

