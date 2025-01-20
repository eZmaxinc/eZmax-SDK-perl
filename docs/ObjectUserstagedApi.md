# EzmaxApi::ObjectUserstagedApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectUserstagedApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userstaged_create_user_v1**](ObjectUserstagedApi.md#userstaged_create_user_v1) | **POST** /1/object/userstaged/{pkiUserstagedID}/createUser | Create a User from a Userstaged and then map it
[**userstaged_delete_object_v1**](ObjectUserstagedApi.md#userstaged_delete_object_v1) | **DELETE** /1/object/userstaged/{pkiUserstagedID} | Delete an existing Userstaged
[**userstaged_get_list_v1**](ObjectUserstagedApi.md#userstaged_get_list_v1) | **GET** /1/object/userstaged/getList | Retrieve Userstaged list
[**userstaged_get_object_v2**](ObjectUserstagedApi.md#userstaged_get_object_v2) | **GET** /2/object/userstaged/{pkiUserstagedID} | Retrieve an existing Userstaged
[**userstaged_map_v1**](ObjectUserstagedApi.md#userstaged_map_v1) | **POST** /1/object/userstaged/{pkiUserstagedID}/map | Map the Userstaged to an existing user


# **userstaged_create_user_v1**
> UserstagedCreateUserV1Response userstaged_create_user_v1(pki_userstaged_id => $pki_userstaged_id, body => $body)

Create a User from a Userstaged and then map it

Default values will be used while creating the User. If you need to change those values, you should use the route to edit a User.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserstagedApi;
my $api_instance = EzmaxApi::ObjectUserstagedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_userstaged_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->userstaged_create_user_v1(pki_userstaged_id => $pki_userstaged_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserstagedApi->userstaged_create_user_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_userstaged_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**UserstagedCreateUserV1Response**](UserstagedCreateUserV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userstaged_delete_object_v1**
> CommonResponse userstaged_delete_object_v1(pki_userstaged_id => $pki_userstaged_id)

Delete an existing Userstaged



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserstagedApi;
my $api_instance = EzmaxApi::ObjectUserstagedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_userstaged_id = 56; # int | 

eval {
    my $result = $api_instance->userstaged_delete_object_v1(pki_userstaged_id => $pki_userstaged_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserstagedApi->userstaged_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_userstaged_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userstaged_get_list_v1**
> UserstagedGetListV1Response userstaged_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Userstaged list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserstagedApi;
my $api_instance = EzmaxApi::ObjectUserstagedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->userstaged_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserstagedApi->userstaged_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] 
 **i_row_offset** | **int**|  | [optional] [default to 0]
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**UserstagedGetListV1Response**](UserstagedGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userstaged_get_object_v2**
> UserstagedGetObjectV2Response userstaged_get_object_v2(pki_userstaged_id => $pki_userstaged_id)

Retrieve an existing Userstaged



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserstagedApi;
my $api_instance = EzmaxApi::ObjectUserstagedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_userstaged_id = 56; # int | 

eval {
    my $result = $api_instance->userstaged_get_object_v2(pki_userstaged_id => $pki_userstaged_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserstagedApi->userstaged_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_userstaged_id** | **int**|  | 

### Return type

[**UserstagedGetObjectV2Response**](UserstagedGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userstaged_map_v1**
> CommonResponse userstaged_map_v1(pki_userstaged_id => $pki_userstaged_id, userstaged_map_v1_request => $userstaged_map_v1_request)

Map the Userstaged to an existing user



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserstagedApi;
my $api_instance = EzmaxApi::ObjectUserstagedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_userstaged_id = 56; # int | 
my $userstaged_map_v1_request = EzmaxApi::Object::UserstagedMapV1Request->new(); # UserstagedMapV1Request | 

eval {
    my $result = $api_instance->userstaged_map_v1(pki_userstaged_id => $pki_userstaged_id, userstaged_map_v1_request => $userstaged_map_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserstagedApi->userstaged_map_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_userstaged_id** | **int**|  | 
 **userstaged_map_v1_request** | [**UserstagedMapV1Request**](UserstagedMapV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

