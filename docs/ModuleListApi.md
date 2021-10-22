# EzmaxApi::ModuleListApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleListApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**list_get_listpresentation_v1**](ModuleListApi.md#list_get_listpresentation_v1) | **GET** /1/module/list/listpresentation/{sListName} | Get all Listpresentation for a specific list
[**list_save_listpresentation_v1**](ModuleListApi.md#list_save_listpresentation_v1) | **POST** /1/module/list/listpresentation/{sListName} | Save all Listpresentation for a specific list


# **list_get_listpresentation_v1**
> ListGetListpresentationV1Response list_get_listpresentation_v1(s_list_name => $s_list_name)

Get all Listpresentation for a specific list

Retrive previously saved Listpresentation

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleListApi;
my $api_instance = EzmaxApi::ModuleListApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_list_name = "s_list_name_example"; # string | The list Name

eval {
    my $result = $api_instance->list_get_listpresentation_v1(s_list_name => $s_list_name);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleListApi->list_get_listpresentation_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_list_name** | **string**| The list Name | 

### Return type

[**ListGetListpresentationV1Response**](ListGetListpresentationV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **list_save_listpresentation_v1**
> ListSaveListpresentationV1Response list_save_listpresentation_v1(s_list_name => $s_list_name, list_save_listpresentation_v1_request => $list_save_listpresentation_v1_request)

Save all Listpresentation for a specific list

Users can create many Listpresentations for lists in the system. They can customize orber by, filters, numbers of rows, etc.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleListApi;
my $api_instance = EzmaxApi::ModuleListApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_list_name = "s_list_name_example"; # string | The list Name
my $list_save_listpresentation_v1_request = EzmaxApi::Object::ListSaveListpresentationV1Request->new(); # ListSaveListpresentationV1Request | 

eval {
    my $result = $api_instance->list_save_listpresentation_v1(s_list_name => $s_list_name, list_save_listpresentation_v1_request => $list_save_listpresentation_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleListApi->list_save_listpresentation_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_list_name** | **string**| The list Name | 
 **list_save_listpresentation_v1_request** | [**ListSaveListpresentationV1Request**](ListSaveListpresentationV1Request.md)|  | 

### Return type

[**ListSaveListpresentationV1Response**](ListSaveListpresentationV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

