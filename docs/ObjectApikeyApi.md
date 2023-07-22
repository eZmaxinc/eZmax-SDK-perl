# EzmaxApi::ObjectApikeyApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectApikeyApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**apikey_create_object_v2**](ObjectApikeyApi.md#apikey_create_object_v2) | **POST** /2/object/apikey | Create a new Apikey
[**apikey_edit_object_v1**](ObjectApikeyApi.md#apikey_edit_object_v1) | **PUT** /1/object/apikey/{pkiApikeyID} | Edit an existing Apikey
[**apikey_edit_permissions_v1**](ObjectApikeyApi.md#apikey_edit_permissions_v1) | **PUT** /1/object/apikey/{pkiApikeyID}/editPermissions | Edit multiple Permissions
[**apikey_get_object_v2**](ObjectApikeyApi.md#apikey_get_object_v2) | **GET** /2/object/apikey/{pkiApikeyID} | Retrieve an existing Apikey
[**apikey_get_permissions_v1**](ObjectApikeyApi.md#apikey_get_permissions_v1) | **GET** /1/object/apikey/{pkiApikeyID}/getPermissions | Retrieve an existing Apikey&#39;s Permissions
[**apikey_get_subnets_v1**](ObjectApikeyApi.md#apikey_get_subnets_v1) | **GET** /1/object/apikey/{pkiApikeyID}/getSubnets | Retrieve an existing Apikey&#39;s subnets


# **apikey_create_object_v2**
> ApikeyCreateObjectV2Response apikey_create_object_v2(apikey_create_object_v2_request => $apikey_create_object_v2_request)

Create a new Apikey

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $apikey_create_object_v2_request = EzmaxApi::Object::ApikeyCreateObjectV2Request->new(); # ApikeyCreateObjectV2Request | 

eval {
    my $result = $api_instance->apikey_create_object_v2(apikey_create_object_v2_request => $apikey_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **apikey_create_object_v2_request** | [**ApikeyCreateObjectV2Request**](ApikeyCreateObjectV2Request.md)|  | 

### Return type

[**ApikeyCreateObjectV2Response**](ApikeyCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apikey_edit_object_v1**
> ApikeyEditObjectV1Response apikey_edit_object_v1(pki_apikey_id => $pki_apikey_id, apikey_edit_object_v1_request => $apikey_edit_object_v1_request)

Edit an existing Apikey



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_apikey_id = 56; # int | The unique ID of the Apikey
my $apikey_edit_object_v1_request = EzmaxApi::Object::ApikeyEditObjectV1Request->new(); # ApikeyEditObjectV1Request | 

eval {
    my $result = $api_instance->apikey_edit_object_v1(pki_apikey_id => $pki_apikey_id, apikey_edit_object_v1_request => $apikey_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_apikey_id** | **int**| The unique ID of the Apikey | 
 **apikey_edit_object_v1_request** | [**ApikeyEditObjectV1Request**](ApikeyEditObjectV1Request.md)|  | 

### Return type

[**ApikeyEditObjectV1Response**](ApikeyEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apikey_edit_permissions_v1**
> ApikeyEditPermissionsV1Response apikey_edit_permissions_v1(pki_apikey_id => $pki_apikey_id, apikey_edit_permissions_v1_request => $apikey_edit_permissions_v1_request)

Edit multiple Permissions

Using this endpoint, you can edit multiple Permissions at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_apikey_id = 56; # int | 
my $apikey_edit_permissions_v1_request = EzmaxApi::Object::ApikeyEditPermissionsV1Request->new(); # ApikeyEditPermissionsV1Request | 

eval {
    my $result = $api_instance->apikey_edit_permissions_v1(pki_apikey_id => $pki_apikey_id, apikey_edit_permissions_v1_request => $apikey_edit_permissions_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_edit_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_apikey_id** | **int**|  | 
 **apikey_edit_permissions_v1_request** | [**ApikeyEditPermissionsV1Request**](ApikeyEditPermissionsV1Request.md)|  | 

### Return type

[**ApikeyEditPermissionsV1Response**](ApikeyEditPermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apikey_get_object_v2**
> ApikeyGetObjectV2Response apikey_get_object_v2(pki_apikey_id => $pki_apikey_id)

Retrieve an existing Apikey



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_apikey_id = 56; # int | The unique ID of the Apikey

eval {
    my $result = $api_instance->apikey_get_object_v2(pki_apikey_id => $pki_apikey_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_apikey_id** | **int**| The unique ID of the Apikey | 

### Return type

[**ApikeyGetObjectV2Response**](ApikeyGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apikey_get_permissions_v1**
> ApikeyGetPermissionsV1Response apikey_get_permissions_v1(pki_apikey_id => $pki_apikey_id)

Retrieve an existing Apikey's Permissions

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_apikey_id = 56; # int | 

eval {
    my $result = $api_instance->apikey_get_permissions_v1(pki_apikey_id => $pki_apikey_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_get_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_apikey_id** | **int**|  | 

### Return type

[**ApikeyGetPermissionsV1Response**](ApikeyGetPermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **apikey_get_subnets_v1**
> ApikeyGetSubnetsV1Response apikey_get_subnets_v1(pki_apikey_id => $pki_apikey_id)

Retrieve an existing Apikey's subnets

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectApikeyApi;
my $api_instance = EzmaxApi::ObjectApikeyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_apikey_id = 56; # int | 

eval {
    my $result = $api_instance->apikey_get_subnets_v1(pki_apikey_id => $pki_apikey_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectApikeyApi->apikey_get_subnets_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_apikey_id** | **int**|  | 

### Return type

[**ApikeyGetSubnetsV1Response**](ApikeyGetSubnetsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

