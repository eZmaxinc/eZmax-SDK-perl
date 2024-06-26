# EzmaxApi::ObjectUsergroupApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectUsergroupApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usergroup_create_object_v1**](ObjectUsergroupApi.md#usergroup_create_object_v1) | **POST** /1/object/usergroup | Create a new Usergroup
[**usergroup_edit_object_v1**](ObjectUsergroupApi.md#usergroup_edit_object_v1) | **PUT** /1/object/usergroup/{pkiUsergroupID} | Edit an existing Usergroup
[**usergroup_edit_permissions_v1**](ObjectUsergroupApi.md#usergroup_edit_permissions_v1) | **PUT** /1/object/usergroup/{pkiUsergroupID}/editPermissions | Edit multiple Permissions
[**usergroup_edit_usergroupdelegations_v1**](ObjectUsergroupApi.md#usergroup_edit_usergroupdelegations_v1) | **PUT** /1/object/usergroup/{pkiUsergroupID}/editUsergroupdelegations | Edit multiple Usergroupdelegations
[**usergroup_edit_usergroupmemberships_v1**](ObjectUsergroupApi.md#usergroup_edit_usergroupmemberships_v1) | **PUT** /1/object/usergroup/{pkiUsergroupID}/editUsergroupmemberships | Edit multiple Usergroupmemberships
[**usergroup_get_autocomplete_v2**](ObjectUsergroupApi.md#usergroup_get_autocomplete_v2) | **GET** /2/object/usergroup/getAutocomplete/{sSelector} | Retrieve Usergroups and IDs
[**usergroup_get_list_v1**](ObjectUsergroupApi.md#usergroup_get_list_v1) | **GET** /1/object/usergroup/getList | Retrieve Usergroup list
[**usergroup_get_object_v2**](ObjectUsergroupApi.md#usergroup_get_object_v2) | **GET** /2/object/usergroup/{pkiUsergroupID} | Retrieve an existing Usergroup
[**usergroup_get_permissions_v1**](ObjectUsergroupApi.md#usergroup_get_permissions_v1) | **GET** /1/object/usergroup/{pkiUsergroupID}/getPermissions | Retrieve an existing Usergroup&#39;s Permissions
[**usergroup_get_usergroupdelegations_v1**](ObjectUsergroupApi.md#usergroup_get_usergroupdelegations_v1) | **GET** /1/object/usergroup/{pkiUsergroupID}/getUsergroupdelegations | Retrieve an existing Usergroup&#39;s Usergroupdelegations
[**usergroup_get_usergroupmemberships_v1**](ObjectUsergroupApi.md#usergroup_get_usergroupmemberships_v1) | **GET** /1/object/usergroup/{pkiUsergroupID}/getUsergroupmemberships | Retrieve an existing Usergroup&#39;s Usergroupmemberships


# **usergroup_create_object_v1**
> UsergroupCreateObjectV1Response usergroup_create_object_v1(usergroup_create_object_v1_request => $usergroup_create_object_v1_request)

Create a new Usergroup

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $usergroup_create_object_v1_request = EzmaxApi::Object::UsergroupCreateObjectV1Request->new(); # UsergroupCreateObjectV1Request | 

eval {
    my $result = $api_instance->usergroup_create_object_v1(usergroup_create_object_v1_request => $usergroup_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usergroup_create_object_v1_request** | [**UsergroupCreateObjectV1Request**](UsergroupCreateObjectV1Request.md)|  | 

### Return type

[**UsergroupCreateObjectV1Response**](UsergroupCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_edit_object_v1**
> UsergroupEditObjectV1Response usergroup_edit_object_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_object_v1_request => $usergroup_edit_object_v1_request)

Edit an existing Usergroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 
my $usergroup_edit_object_v1_request = EzmaxApi::Object::UsergroupEditObjectV1Request->new(); # UsergroupEditObjectV1Request | 

eval {
    my $result = $api_instance->usergroup_edit_object_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_object_v1_request => $usergroup_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 
 **usergroup_edit_object_v1_request** | [**UsergroupEditObjectV1Request**](UsergroupEditObjectV1Request.md)|  | 

### Return type

[**UsergroupEditObjectV1Response**](UsergroupEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_edit_permissions_v1**
> UsergroupEditPermissionsV1Response usergroup_edit_permissions_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_permissions_v1_request => $usergroup_edit_permissions_v1_request)

Edit multiple Permissions

Using this endpoint, you can edit multiple Permissions at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 
my $usergroup_edit_permissions_v1_request = EzmaxApi::Object::UsergroupEditPermissionsV1Request->new(); # UsergroupEditPermissionsV1Request | 

eval {
    my $result = $api_instance->usergroup_edit_permissions_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_permissions_v1_request => $usergroup_edit_permissions_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_edit_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 
 **usergroup_edit_permissions_v1_request** | [**UsergroupEditPermissionsV1Request**](UsergroupEditPermissionsV1Request.md)|  | 

### Return type

[**UsergroupEditPermissionsV1Response**](UsergroupEditPermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_edit_usergroupdelegations_v1**
> UsergroupEditUsergroupdelegationsV1Response usergroup_edit_usergroupdelegations_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_usergroupdelegations_v1_request => $usergroup_edit_usergroupdelegations_v1_request)

Edit multiple Usergroupdelegations

Edit multiple Usergroupdelegations

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 
my $usergroup_edit_usergroupdelegations_v1_request = EzmaxApi::Object::UsergroupEditUsergroupdelegationsV1Request->new(); # UsergroupEditUsergroupdelegationsV1Request | 

eval {
    my $result = $api_instance->usergroup_edit_usergroupdelegations_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_usergroupdelegations_v1_request => $usergroup_edit_usergroupdelegations_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_edit_usergroupdelegations_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 
 **usergroup_edit_usergroupdelegations_v1_request** | [**UsergroupEditUsergroupdelegationsV1Request**](UsergroupEditUsergroupdelegationsV1Request.md)|  | 

### Return type

[**UsergroupEditUsergroupdelegationsV1Response**](UsergroupEditUsergroupdelegationsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_edit_usergroupmemberships_v1**
> UsergroupEditUsergroupmembershipsV1Response usergroup_edit_usergroupmemberships_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_usergroupmemberships_v1_request => $usergroup_edit_usergroupmemberships_v1_request)

Edit multiple Usergroupmemberships

Using this endpoint, you can edit multiple Usergroupmemberships at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 
my $usergroup_edit_usergroupmemberships_v1_request = EzmaxApi::Object::UsergroupEditUsergroupmembershipsV1Request->new(); # UsergroupEditUsergroupmembershipsV1Request | 

eval {
    my $result = $api_instance->usergroup_edit_usergroupmemberships_v1(pki_usergroup_id => $pki_usergroup_id, usergroup_edit_usergroupmemberships_v1_request => $usergroup_edit_usergroupmemberships_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_edit_usergroupmemberships_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 
 **usergroup_edit_usergroupmemberships_v1_request** | [**UsergroupEditUsergroupmembershipsV1Request**](UsergroupEditUsergroupmembershipsV1Request.md)|  | 

### Return type

[**UsergroupEditUsergroupmembershipsV1Response**](UsergroupEditUsergroupmembershipsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_get_autocomplete_v2**
> UsergroupGetAutocompleteV2Response usergroup_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Usergroups and IDs

Get the list of Usergroup to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Usergroups to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->usergroup_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Usergroups to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**UsergroupGetAutocompleteV2Response**](UsergroupGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_get_list_v1**
> UsergroupGetListV1Response usergroup_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Usergroup list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

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
    my $result = $api_instance->usergroup_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_get_list_v1: $@\n";
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

[**UsergroupGetListV1Response**](UsergroupGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_get_object_v2**
> UsergroupGetObjectV2Response usergroup_get_object_v2(pki_usergroup_id => $pki_usergroup_id)

Retrieve an existing Usergroup



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 

eval {
    my $result = $api_instance->usergroup_get_object_v2(pki_usergroup_id => $pki_usergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 

### Return type

[**UsergroupGetObjectV2Response**](UsergroupGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_get_permissions_v1**
> UsergroupGetPermissionsV1Response usergroup_get_permissions_v1(pki_usergroup_id => $pki_usergroup_id)

Retrieve an existing Usergroup's Permissions

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 

eval {
    my $result = $api_instance->usergroup_get_permissions_v1(pki_usergroup_id => $pki_usergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_get_permissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 

### Return type

[**UsergroupGetPermissionsV1Response**](UsergroupGetPermissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_get_usergroupdelegations_v1**
> UsergroupGetUsergroupdelegationsV1Response usergroup_get_usergroupdelegations_v1(pki_usergroup_id => $pki_usergroup_id)

Retrieve an existing Usergroup's Usergroupdelegations

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 

eval {
    my $result = $api_instance->usergroup_get_usergroupdelegations_v1(pki_usergroup_id => $pki_usergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_get_usergroupdelegations_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 

### Return type

[**UsergroupGetUsergroupdelegationsV1Response**](UsergroupGetUsergroupdelegationsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroup_get_usergroupmemberships_v1**
> UsergroupGetUsergroupmembershipsV1Response usergroup_get_usergroupmemberships_v1(pki_usergroup_id => $pki_usergroup_id)

Retrieve an existing Usergroup's Usergroupmemberships

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupApi;
my $api_instance = EzmaxApi::ObjectUsergroupApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroup_id = 56; # int | 

eval {
    my $result = $api_instance->usergroup_get_usergroupmemberships_v1(pki_usergroup_id => $pki_usergroup_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupApi->usergroup_get_usergroupmemberships_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroup_id** | **int**|  | 

### Return type

[**UsergroupGetUsergroupmembershipsV1Response**](UsergroupGetUsergroupmembershipsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

