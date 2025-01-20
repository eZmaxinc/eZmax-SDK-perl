# EzmaxApi::ObjectUsergroupexternalApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectUsergroupexternalApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**usergroupexternal_create_object_v1**](ObjectUsergroupexternalApi.md#usergroupexternal_create_object_v1) | **POST** /1/object/usergroupexternal | Create a new Usergroupexternal
[**usergroupexternal_delete_object_v1**](ObjectUsergroupexternalApi.md#usergroupexternal_delete_object_v1) | **DELETE** /1/object/usergroupexternal/{pkiUsergroupexternalID} | Delete an existing Usergroupexternal
[**usergroupexternal_edit_object_v1**](ObjectUsergroupexternalApi.md#usergroupexternal_edit_object_v1) | **PUT** /1/object/usergroupexternal/{pkiUsergroupexternalID} | Edit an existing Usergroupexternal
[**usergroupexternal_get_autocomplete_v2**](ObjectUsergroupexternalApi.md#usergroupexternal_get_autocomplete_v2) | **GET** /2/object/usergroupexternal/getAutocomplete/{sSelector} | Retrieve Usergroupexternals and IDs
[**usergroupexternal_get_list_v1**](ObjectUsergroupexternalApi.md#usergroupexternal_get_list_v1) | **GET** /1/object/usergroupexternal/getList | Retrieve Usergroupexternal list
[**usergroupexternal_get_object_v2**](ObjectUsergroupexternalApi.md#usergroupexternal_get_object_v2) | **GET** /2/object/usergroupexternal/{pkiUsergroupexternalID} | Retrieve an existing Usergroupexternal
[**usergroupexternal_get_usergroupexternalmemberships_v1**](ObjectUsergroupexternalApi.md#usergroupexternal_get_usergroupexternalmemberships_v1) | **GET** /1/object/usergroupexternal/{pkiUsergroupexternalID}/getUsergroupexternalmemberships | Retrieve an existing Usergroupexternal&#39;s Usergroupexternalmemberships
[**usergroupexternal_get_usergroups_v1**](ObjectUsergroupexternalApi.md#usergroupexternal_get_usergroups_v1) | **GET** /1/object/usergroupexternal/{pkiUsergroupexternalID}/getUsergroups | Get Usergroupexternal&#39;s Usergroups


# **usergroupexternal_create_object_v1**
> UsergroupexternalCreateObjectV1Response usergroupexternal_create_object_v1(usergroupexternal_create_object_v1_request => $usergroupexternal_create_object_v1_request)

Create a new Usergroupexternal

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $usergroupexternal_create_object_v1_request = EzmaxApi::Object::UsergroupexternalCreateObjectV1Request->new(); # UsergroupexternalCreateObjectV1Request | 

eval {
    my $result = $api_instance->usergroupexternal_create_object_v1(usergroupexternal_create_object_v1_request => $usergroupexternal_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **usergroupexternal_create_object_v1_request** | [**UsergroupexternalCreateObjectV1Request**](UsergroupexternalCreateObjectV1Request.md)|  | 

### Return type

[**UsergroupexternalCreateObjectV1Response**](UsergroupexternalCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_delete_object_v1**
> CommonResponse usergroupexternal_delete_object_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id)

Delete an existing Usergroupexternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupexternal_id = 56; # int | The unique ID of the Usergroupexternal

eval {
    my $result = $api_instance->usergroupexternal_delete_object_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupexternal_id** | **int**| The unique ID of the Usergroupexternal | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_edit_object_v1**
> CommonResponse usergroupexternal_edit_object_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id, usergroupexternal_edit_object_v1_request => $usergroupexternal_edit_object_v1_request)

Edit an existing Usergroupexternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupexternal_id = 56; # int | The unique ID of the Usergroupexternal
my $usergroupexternal_edit_object_v1_request = EzmaxApi::Object::UsergroupexternalEditObjectV1Request->new(); # UsergroupexternalEditObjectV1Request | 

eval {
    my $result = $api_instance->usergroupexternal_edit_object_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id, usergroupexternal_edit_object_v1_request => $usergroupexternal_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupexternal_id** | **int**| The unique ID of the Usergroupexternal | 
 **usergroupexternal_edit_object_v1_request** | [**UsergroupexternalEditObjectV1Request**](UsergroupexternalEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_get_autocomplete_v2**
> UsergroupexternalGetAutocompleteV2Response usergroupexternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Usergroupexternals and IDs

Get the list of Usergroupexternal to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Usergroupexternals to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->usergroupexternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Usergroupexternals to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**UsergroupexternalGetAutocompleteV2Response**](UsergroupexternalGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_get_list_v1**
> UsergroupexternalGetListV1Response usergroupexternal_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Usergroupexternal list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

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
    my $result = $api_instance->usergroupexternal_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_get_list_v1: $@\n";
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

[**UsergroupexternalGetListV1Response**](UsergroupexternalGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_get_object_v2**
> UsergroupexternalGetObjectV2Response usergroupexternal_get_object_v2(pki_usergroupexternal_id => $pki_usergroupexternal_id)

Retrieve an existing Usergroupexternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupexternal_id = 56; # int | The unique ID of the Usergroupexternal

eval {
    my $result = $api_instance->usergroupexternal_get_object_v2(pki_usergroupexternal_id => $pki_usergroupexternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupexternal_id** | **int**| The unique ID of the Usergroupexternal | 

### Return type

[**UsergroupexternalGetObjectV2Response**](UsergroupexternalGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_get_usergroupexternalmemberships_v1**
> UsergroupexternalGetUsergroupexternalmembershipsV1Response usergroupexternal_get_usergroupexternalmemberships_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id)

Retrieve an existing Usergroupexternal's Usergroupexternalmemberships

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupexternal_id = 56; # int | 

eval {
    my $result = $api_instance->usergroupexternal_get_usergroupexternalmemberships_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_get_usergroupexternalmemberships_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupexternal_id** | **int**|  | 

### Return type

[**UsergroupexternalGetUsergroupexternalmembershipsV1Response**](UsergroupexternalGetUsergroupexternalmembershipsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **usergroupexternal_get_usergroups_v1**
> UsergroupexternalGetUsergroupsV1Response usergroupexternal_get_usergroups_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id)

Get Usergroupexternal's Usergroups

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectUsergroupexternalApi;
my $api_instance = EzmaxApi::ObjectUsergroupexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_usergroupexternal_id = 56; # int | 

eval {
    my $result = $api_instance->usergroupexternal_get_usergroups_v1(pki_usergroupexternal_id => $pki_usergroupexternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectUsergroupexternalApi->usergroupexternal_get_usergroups_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_usergroupexternal_id** | **int**|  | 

### Return type

[**UsergroupexternalGetUsergroupsV1Response**](UsergroupexternalGetUsergroupsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

