# EzmaxApi::ObjectAuthenticationexternalApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectAuthenticationexternalApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authenticationexternal_create_object_v1**](ObjectAuthenticationexternalApi.md#authenticationexternal_create_object_v1) | **POST** /1/object/authenticationexternal | Create a new Authenticationexternal
[**authenticationexternal_delete_object_v1**](ObjectAuthenticationexternalApi.md#authenticationexternal_delete_object_v1) | **DELETE** /1/object/authenticationexternal/{pkiAuthenticationexternalID} | Delete an existing Authenticationexternal
[**authenticationexternal_edit_object_v1**](ObjectAuthenticationexternalApi.md#authenticationexternal_edit_object_v1) | **PUT** /1/object/authenticationexternal/{pkiAuthenticationexternalID} | Edit an existing Authenticationexternal
[**authenticationexternal_get_autocomplete_v2**](ObjectAuthenticationexternalApi.md#authenticationexternal_get_autocomplete_v2) | **GET** /2/object/authenticationexternal/getAutocomplete/{sSelector} | Retrieve Authenticationexternals and IDs
[**authenticationexternal_get_list_v1**](ObjectAuthenticationexternalApi.md#authenticationexternal_get_list_v1) | **GET** /1/object/authenticationexternal/getList | Retrieve Authenticationexternal list
[**authenticationexternal_get_object_v2**](ObjectAuthenticationexternalApi.md#authenticationexternal_get_object_v2) | **GET** /2/object/authenticationexternal/{pkiAuthenticationexternalID} | Retrieve an existing Authenticationexternal
[**authenticationexternal_reset_authorization_v1**](ObjectAuthenticationexternalApi.md#authenticationexternal_reset_authorization_v1) | **POST** /1/object/authenticationexternal/{pkiAuthenticationexternalID}/resetAuthorization | Reset the Authenticationexternal authorization


# **authenticationexternal_create_object_v1**
> AuthenticationexternalCreateObjectV1Response authenticationexternal_create_object_v1(authenticationexternal_create_object_v1_request => $authenticationexternal_create_object_v1_request)

Create a new Authenticationexternal

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $authenticationexternal_create_object_v1_request = EzmaxApi::Object::AuthenticationexternalCreateObjectV1Request->new(); # AuthenticationexternalCreateObjectV1Request | 

eval {
    my $result = $api_instance->authenticationexternal_create_object_v1(authenticationexternal_create_object_v1_request => $authenticationexternal_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authenticationexternal_create_object_v1_request** | [**AuthenticationexternalCreateObjectV1Request**](AuthenticationexternalCreateObjectV1Request.md)|  | 

### Return type

[**AuthenticationexternalCreateObjectV1Response**](AuthenticationexternalCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationexternal_delete_object_v1**
> CommonResponse authenticationexternal_delete_object_v1(pki_authenticationexternal_id => $pki_authenticationexternal_id)

Delete an existing Authenticationexternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_authenticationexternal_id = 56; # int | The unique ID of the Authenticationexternal

eval {
    my $result = $api_instance->authenticationexternal_delete_object_v1(pki_authenticationexternal_id => $pki_authenticationexternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_authenticationexternal_id** | **int**| The unique ID of the Authenticationexternal | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationexternal_edit_object_v1**
> CommonResponse authenticationexternal_edit_object_v1(pki_authenticationexternal_id => $pki_authenticationexternal_id, authenticationexternal_edit_object_v1_request => $authenticationexternal_edit_object_v1_request)

Edit an existing Authenticationexternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_authenticationexternal_id = 56; # int | The unique ID of the Authenticationexternal
my $authenticationexternal_edit_object_v1_request = EzmaxApi::Object::AuthenticationexternalEditObjectV1Request->new(); # AuthenticationexternalEditObjectV1Request | 

eval {
    my $result = $api_instance->authenticationexternal_edit_object_v1(pki_authenticationexternal_id => $pki_authenticationexternal_id, authenticationexternal_edit_object_v1_request => $authenticationexternal_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_authenticationexternal_id** | **int**| The unique ID of the Authenticationexternal | 
 **authenticationexternal_edit_object_v1_request** | [**AuthenticationexternalEditObjectV1Request**](AuthenticationexternalEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationexternal_get_autocomplete_v2**
> AuthenticationexternalGetAutocompleteV2Response authenticationexternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Authenticationexternals and IDs

Get the list of Authenticationexternal to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Authenticationexternals to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->authenticationexternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Authenticationexternals to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**AuthenticationexternalGetAutocompleteV2Response**](AuthenticationexternalGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationexternal_get_list_v1**
> AuthenticationexternalGetListV1Response authenticationexternal_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Authenticationexternal list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eAuthenticationexternalType | Salesforce<br>SalesforceSandbox |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

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
    my $result = $api_instance->authenticationexternal_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_get_list_v1: $@\n";
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

[**AuthenticationexternalGetListV1Response**](AuthenticationexternalGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationexternal_get_object_v2**
> AuthenticationexternalGetObjectV2Response authenticationexternal_get_object_v2(pki_authenticationexternal_id => $pki_authenticationexternal_id)

Retrieve an existing Authenticationexternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_authenticationexternal_id = 56; # int | The unique ID of the Authenticationexternal

eval {
    my $result = $api_instance->authenticationexternal_get_object_v2(pki_authenticationexternal_id => $pki_authenticationexternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_authenticationexternal_id** | **int**| The unique ID of the Authenticationexternal | 

### Return type

[**AuthenticationexternalGetObjectV2Response**](AuthenticationexternalGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **authenticationexternal_reset_authorization_v1**
> CommonResponse authenticationexternal_reset_authorization_v1(pki_authenticationexternal_id => $pki_authenticationexternal_id, body => $body)

Reset the Authenticationexternal authorization



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAuthenticationexternalApi;
my $api_instance = EzmaxApi::ObjectAuthenticationexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_authenticationexternal_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->authenticationexternal_reset_authorization_v1(pki_authenticationexternal_id => $pki_authenticationexternal_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAuthenticationexternalApi->authenticationexternal_reset_authorization_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_authenticationexternal_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

