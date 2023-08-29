# EzmaxApi::ScimUsersApi

## Load the API package
```perl
use EzmaxApi::Object::ScimUsersApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**users_create_object_scim_v2**](ScimUsersApi.md#users_create_object_scim_v2) | **POST** /2/scim/Users | Create a new User
[**users_delete_object_scim_v2**](ScimUsersApi.md#users_delete_object_scim_v2) | **DELETE** /2/scim/Users/{userId} | Delete an existing User
[**users_edit_object_scim_v2**](ScimUsersApi.md#users_edit_object_scim_v2) | **PUT** /2/scim/Users/{userId} | Edit an existing User
[**users_get_list_scim_v2**](ScimUsersApi.md#users_get_list_scim_v2) | **GET** /2/scim/Users | Retrieve User list
[**users_get_object_scim_v2**](ScimUsersApi.md#users_get_object_scim_v2) | **GET** /2/scim/Users/{userId} | Retrieve an existing User


# **users_create_object_scim_v2**
> ScimUser users_create_object_scim_v2(scim_user => $scim_user)

Create a new User

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimUsersApi;
my $api_instance = EzmaxApi::ScimUsersApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $scim_user = EzmaxApi::Object::ScimUser->new(); # ScimUser | 

eval {
    my $result = $api_instance->users_create_object_scim_v2(scim_user => $scim_user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimUsersApi->users_create_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scim_user** | [**ScimUser**](ScimUser.md)|  | 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users_delete_object_scim_v2**
> users_delete_object_scim_v2(user_id => $user_id)

Delete an existing User

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimUsersApi;
my $api_instance = EzmaxApi::ScimUsersApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $user_id = "user_id_example"; # string | 

eval {
    $api_instance->users_delete_object_scim_v2(user_id => $user_id);
};
if ($@) {
    warn "Exception when calling ScimUsersApi->users_delete_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users_edit_object_scim_v2**
> ScimUser users_edit_object_scim_v2(user_id => $user_id, scim_user => $scim_user)

Edit an existing User

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimUsersApi;
my $api_instance = EzmaxApi::ScimUsersApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $user_id = "user_id_example"; # string | 
my $scim_user = EzmaxApi::Object::ScimUser->new(); # ScimUser | 

eval {
    my $result = $api_instance->users_edit_object_scim_v2(user_id => $user_id, scim_user => $scim_user);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimUsersApi->users_edit_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**|  | 
 **scim_user** | [**ScimUser**](ScimUser.md)|  | 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users_get_list_scim_v2**
> ScimUserList users_get_list_scim_v2(filter => $filter)

Retrieve User list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimUsersApi;
my $api_instance = EzmaxApi::ScimUsersApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter = "filter_example"; # string | Filter expression for searching users

eval {
    my $result = $api_instance->users_get_list_scim_v2(filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimUsersApi->users_get_list_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **string**| Filter expression for searching users | [optional] 

### Return type

[**ScimUserList**](ScimUserList.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **users_get_object_scim_v2**
> ScimUser users_get_object_scim_v2(user_id => $user_id)

Retrieve an existing User

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimUsersApi;
my $api_instance = EzmaxApi::ScimUsersApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $user_id = "user_id_example"; # string | 

eval {
    my $result = $api_instance->users_get_object_scim_v2(user_id => $user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimUsersApi->users_get_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **string**|  | 

### Return type

[**ScimUser**](ScimUser.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

