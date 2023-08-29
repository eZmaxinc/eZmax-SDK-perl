# EzmaxApi::ScimGroupsApi

## Load the API package
```perl
use EzmaxApi::Object::ScimGroupsApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groups_create_object_scim_v2**](ScimGroupsApi.md#groups_create_object_scim_v2) | **POST** /2/scim/Groups | Create a new Usergroup
[**groups_delete_object_scim_v2**](ScimGroupsApi.md#groups_delete_object_scim_v2) | **DELETE** /2/scim/Groups/{groupId} | Delete an existing Usergroup
[**groups_edit_object_scim_v2**](ScimGroupsApi.md#groups_edit_object_scim_v2) | **PUT** /2/scim/Groups/{groupId} | Edit an existing Usergroup
[**groups_get_list_scim_v2**](ScimGroupsApi.md#groups_get_list_scim_v2) | **GET** /2/scim/Groups | Retrieve Usergroup list
[**groups_get_object_scim_v2**](ScimGroupsApi.md#groups_get_object_scim_v2) | **GET** /2/scim/Groups/{groupId} | Retrieve an existing Usergroup


# **groups_create_object_scim_v2**
> ScimGroup groups_create_object_scim_v2(scim_group => $scim_group)

Create a new Usergroup

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimGroupsApi;
my $api_instance = EzmaxApi::ScimGroupsApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $scim_group = EzmaxApi::Object::ScimGroup->new(); # ScimGroup | 

eval {
    my $result = $api_instance->groups_create_object_scim_v2(scim_group => $scim_group);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimGroupsApi->groups_create_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scim_group** | [**ScimGroup**](ScimGroup.md)|  | 

### Return type

[**ScimGroup**](ScimGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groups_delete_object_scim_v2**
> groups_delete_object_scim_v2(group_id => $group_id)

Delete an existing Usergroup

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimGroupsApi;
my $api_instance = EzmaxApi::ScimGroupsApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $group_id = "group_id_example"; # string | 

eval {
    $api_instance->groups_delete_object_scim_v2(group_id => $group_id);
};
if ($@) {
    warn "Exception when calling ScimGroupsApi->groups_delete_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **string**|  | 

### Return type

void (empty response body)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groups_edit_object_scim_v2**
> ScimGroup groups_edit_object_scim_v2(group_id => $group_id, scim_group => $scim_group)

Edit an existing Usergroup

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimGroupsApi;
my $api_instance = EzmaxApi::ScimGroupsApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $group_id = "group_id_example"; # string | 
my $scim_group = EzmaxApi::Object::ScimGroup->new(); # ScimGroup | 

eval {
    my $result = $api_instance->groups_edit_object_scim_v2(group_id => $group_id, scim_group => $scim_group);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimGroupsApi->groups_edit_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **string**|  | 
 **scim_group** | [**ScimGroup**](ScimGroup.md)|  | 

### Return type

[**ScimGroup**](ScimGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groups_get_list_scim_v2**
> ScimGroup groups_get_list_scim_v2(filter => $filter)

Retrieve Usergroup list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimGroupsApi;
my $api_instance = EzmaxApi::ScimGroupsApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $filter = "filter_example"; # string | Filter expression for searching groups

eval {
    my $result = $api_instance->groups_get_list_scim_v2(filter => $filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimGroupsApi->groups_get_list_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filter** | **string**| Filter expression for searching groups | [optional] 

### Return type

[**ScimGroup**](ScimGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groups_get_object_scim_v2**
> ScimGroup groups_get_object_scim_v2(group_id => $group_id)

Retrieve an existing Usergroup

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimGroupsApi;
my $api_instance = EzmaxApi::ScimGroupsApi->new(

    # Configure bearer access token for authorization: Bearer
    access_token => 'YOUR_BEARER_TOKEN',
    
);

my $group_id = "group_id_example"; # string | 

eval {
    my $result = $api_instance->groups_get_object_scim_v2(group_id => $group_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimGroupsApi->groups_get_object_scim_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **group_id** | **string**|  | 

### Return type

[**ScimGroup**](ScimGroup.md)

### Authorization

[Bearer](../README.md#Bearer)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

