# EzmaxApi::ObjectPermissionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectPermissionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**permission_create_object_v1**](ObjectPermissionApi.md#permission_create_object_v1) | **POST** /1/object/permission | Create a new Permission
[**permission_delete_object_v1**](ObjectPermissionApi.md#permission_delete_object_v1) | **DELETE** /1/object/permission/{pkiPermissionID} | Delete an existing Permission
[**permission_edit_object_v1**](ObjectPermissionApi.md#permission_edit_object_v1) | **PUT** /1/object/permission/{pkiPermissionID} | Edit an existing Permission
[**permission_get_object_v2**](ObjectPermissionApi.md#permission_get_object_v2) | **GET** /2/object/permission/{pkiPermissionID} | Retrieve an existing Permission


# **permission_create_object_v1**
> PermissionCreateObjectV1Response permission_create_object_v1(permission_create_object_v1_request => $permission_create_object_v1_request)

Create a new Permission

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPermissionApi;
my $api_instance = EzmaxApi::ObjectPermissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $permission_create_object_v1_request = EzmaxApi::Object::PermissionCreateObjectV1Request->new(); # PermissionCreateObjectV1Request | 

eval {
    my $result = $api_instance->permission_create_object_v1(permission_create_object_v1_request => $permission_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPermissionApi->permission_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **permission_create_object_v1_request** | [**PermissionCreateObjectV1Request**](PermissionCreateObjectV1Request.md)|  | 

### Return type

[**PermissionCreateObjectV1Response**](PermissionCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permission_delete_object_v1**
> PermissionDeleteObjectV1Response permission_delete_object_v1(pki_permission_id => $pki_permission_id)

Delete an existing Permission



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPermissionApi;
my $api_instance = EzmaxApi::ObjectPermissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_permission_id = 56; # int | The unique ID of the Permission

eval {
    my $result = $api_instance->permission_delete_object_v1(pki_permission_id => $pki_permission_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPermissionApi->permission_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_permission_id** | **int**| The unique ID of the Permission | 

### Return type

[**PermissionDeleteObjectV1Response**](PermissionDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permission_edit_object_v1**
> PermissionEditObjectV1Response permission_edit_object_v1(pki_permission_id => $pki_permission_id, permission_edit_object_v1_request => $permission_edit_object_v1_request)

Edit an existing Permission



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPermissionApi;
my $api_instance = EzmaxApi::ObjectPermissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_permission_id = 56; # int | The unique ID of the Permission
my $permission_edit_object_v1_request = EzmaxApi::Object::PermissionEditObjectV1Request->new(); # PermissionEditObjectV1Request | 

eval {
    my $result = $api_instance->permission_edit_object_v1(pki_permission_id => $pki_permission_id, permission_edit_object_v1_request => $permission_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPermissionApi->permission_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_permission_id** | **int**| The unique ID of the Permission | 
 **permission_edit_object_v1_request** | [**PermissionEditObjectV1Request**](PermissionEditObjectV1Request.md)|  | 

### Return type

[**PermissionEditObjectV1Response**](PermissionEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **permission_get_object_v2**
> PermissionGetObjectV2Response permission_get_object_v2(pki_permission_id => $pki_permission_id)

Retrieve an existing Permission



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPermissionApi;
my $api_instance = EzmaxApi::ObjectPermissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_permission_id = 56; # int | The unique ID of the Permission

eval {
    my $result = $api_instance->permission_get_object_v2(pki_permission_id => $pki_permission_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPermissionApi->permission_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_permission_id** | **int**| The unique ID of the Permission | 

### Return type

[**PermissionGetObjectV2Response**](PermissionGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

