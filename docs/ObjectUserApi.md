# EzmaxApi::ObjectUserApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectUserApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**user_create_object_v1**](ObjectUserApi.md#user_create_object_v1) | **POST** /1/object/user | Create a new User
[**user_edit_object_v1**](ObjectUserApi.md#user_edit_object_v1) | **PUT** /1/object/user/{pkiUserID} | Edit an existing User
[**user_edit_permissions_v1**](ObjectUserApi.md#user_edit_permissions_v1) | **PUT** /1/object/user/{pkiUserID}/editPermissions | Edit multiple Permissions
[**user_get_autocomplete_v2**](ObjectUserApi.md#user_get_autocomplete_v2) | **GET** /2/object/user/getAutocomplete/{sSelector} | Retrieve Users and IDs
[**user_get_effective_permissions_v1**](ObjectUserApi.md#user_get_effective_permissions_v1) | **GET** /1/object/user/{pkiUserID}/getEffectivePermissions | Retrieve an existing User&#39;s Effective Permissions
[**user_get_list_v1**](ObjectUserApi.md#user_get_list_v1) | **GET** /1/object/user/getList | Retrieve User list
[**user_get_object_v2**](ObjectUserApi.md#user_get_object_v2) | **GET** /2/object/user/{pkiUserID} | Retrieve an existing User
[**user_get_permissions_v1**](ObjectUserApi.md#user_get_permissions_v1) | **GET** /1/object/user/{pkiUserID}/getPermissions | Retrieve an existing User&#39;s Permissions
[**user_get_subnets_v1**](ObjectUserApi.md#user_get_subnets_v1) | **GET** /1/object/user/{pkiUserID}/getSubnets | Retrieve an existing User&#39;s Subnets


# **user_create_object_v1**
> UserCreateObjectV1Response user_create_object_v1(user_create_object_v1_request => $user_create_object_v1_request)

Create a new User

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $user_create_object_v1_request = EzmaxApi::Object::UserCreateObjectV1Request->new(); # UserCreateObjectV1Request | 

eval {
    my $result = $api_instance->user_create_object_v1(user_create_object_v1_request => $user_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_create_object_v1_request** | [**UserCreateObjectV1Request**](UserCreateObjectV1Request.md)|  | 

### Return type

[**UserCreateObjectV1Response**](UserCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_edit_object_v1**
> UserEditObjectV1Response user_edit_object_v1(pki_user_id => $pki_user_id, user_edit_object_v1_request => $user_edit_object_v1_request)

Edit an existing User



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_user_id = 56; # int | The unique ID of the User
my $user_edit_object_v1_request = EzmaxApi::Object::UserEditObjectV1Request->new(); # UserEditObjectV1Request | 

eval {
    my $result = $api_instance->user_edit_object_v1(pki_user_id => $pki_user_id, user_edit_object_v1_request => $user_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_user_id** | **int**| The unique ID of the User | 
 **user_edit_object_v1_request** | [**UserEditObjectV1Request**](UserEditObjectV1Request.md)|  | 

### Return type

[**UserEditObjectV1Response**](UserEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_edit_permissions_v1**
> UserEditPermissionsV1Response user_edit_permissions_v1(pki_user_id => $pki_user_id, user_edit_permissions_v1_request => $user_edit_permissions_v1_request)

Edit multiple Permissions

Using this endpoint, you can edit multiple Permissions at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_user_id = 56; # int | 
my $user_edit_permissions_v1_request = EzmaxApi::Object::UserEditPermissionsV1Request->new(); # UserEditPermissionsV1Request | 

eval {
    my $result = $api_instance->user_edit_permissions_v1(pki_user_id => $pki_user_id, user_edit_permissions_v1_request => $user_edit_permissions_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_edit_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_user_id** | **int**|  | 
 **user_edit_permissions_v1_request** | [**UserEditPermissionsV1Request**](UserEditPermissionsV1Request.md)|  | 

### Return type

[**UserEditPermissionsV1Response**](UserEditPermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_get_autocomplete_v2**
> UserGetAutocompleteV2Response user_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Users and IDs

Get the list of User to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Users to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->user_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Users to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**UserGetAutocompleteV2Response**](UserGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_get_effective_permissions_v1**
> UserGetEffectivePermissionsV1Response user_get_effective_permissions_v1(pki_user_id => $pki_user_id)

Retrieve an existing User's Effective Permissions

Effective Permissions refers to the combination of Permissions held by a User and the Permissions associated with the Usergroups they belong to.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_user_id = 56; # int | 

eval {
    my $result = $api_instance->user_get_effective_permissions_v1(pki_user_id => $pki_user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_get_effective_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_user_id** | **int**|  | 

### Return type

[**UserGetEffectivePermissionsV1Response**](UserGetEffectivePermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_get_list_v1**
> UserGetListV1Response user_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve User list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eUserType | AgentBroker<br>Assistant<br>Employee<br>EzsignUser<br>Normal | | eUserOrigin | BuiltIn<br>External | | eUserEzsignaccess | No<br>PaidByOffice<br>PerDocument<br>Prepaid |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 10000; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->user_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] [default to 10000]
 **i_row_offset** | **int**|  | [optional] [default to 0]
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**UserGetListV1Response**](UserGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_get_object_v2**
> UserGetObjectV2Response user_get_object_v2(pki_user_id => $pki_user_id)

Retrieve an existing User



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_user_id = 56; # int | The unique ID of the User

eval {
    my $result = $api_instance->user_get_object_v2(pki_user_id => $pki_user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_user_id** | **int**| The unique ID of the User | 

### Return type

[**UserGetObjectV2Response**](UserGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_get_permissions_v1**
> UserGetPermissionsV1Response user_get_permissions_v1(pki_user_id => $pki_user_id)

Retrieve an existing User's Permissions

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_user_id = 56; # int | 

eval {
    my $result = $api_instance->user_get_permissions_v1(pki_user_id => $pki_user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_get_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_user_id** | **int**|  | 

### Return type

[**UserGetPermissionsV1Response**](UserGetPermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **user_get_subnets_v1**
> UserGetSubnetsV1Response user_get_subnets_v1(pki_user_id => $pki_user_id)

Retrieve an existing User's Subnets

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUserApi;
my $api_instance = EzmaxApi::ObjectUserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_user_id = 56; # int | 

eval {
    my $result = $api_instance->user_get_subnets_v1(pki_user_id => $pki_user_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUserApi->user_get_subnets_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_user_id** | **int**|  | 

### Return type

[**UserGetSubnetsV1Response**](UserGetSubnetsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

