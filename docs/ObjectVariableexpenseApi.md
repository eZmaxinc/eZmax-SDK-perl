# EzmaxApi::ObjectVariableexpenseApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectVariableexpenseApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**variableexpense_create_object_v1**](ObjectVariableexpenseApi.md#variableexpense_create_object_v1) | **POST** /1/object/variableexpense | Create a new Variableexpense
[**variableexpense_delete_object_v1**](ObjectVariableexpenseApi.md#variableexpense_delete_object_v1) | **DELETE** /1/object/variableexpense/{pkiVariableexpenseID} | Delete an existing Variableexpense
[**variableexpense_edit_object_v1**](ObjectVariableexpenseApi.md#variableexpense_edit_object_v1) | **PUT** /1/object/variableexpense/{pkiVariableexpenseID} | Edit an existing Variableexpense
[**variableexpense_get_autocomplete_v2**](ObjectVariableexpenseApi.md#variableexpense_get_autocomplete_v2) | **GET** /2/object/variableexpense/getAutocomplete/{sSelector} | Retrieve Variableexpenses and IDs
[**variableexpense_get_list_v1**](ObjectVariableexpenseApi.md#variableexpense_get_list_v1) | **GET** /1/object/variableexpense/getList | Retrieve Variableexpense list
[**variableexpense_get_object_v2**](ObjectVariableexpenseApi.md#variableexpense_get_object_v2) | **GET** /2/object/variableexpense/{pkiVariableexpenseID} | Retrieve an existing Variableexpense


# **variableexpense_create_object_v1**
> VariableexpenseCreateObjectV1Response variableexpense_create_object_v1(variableexpense_create_object_v1_request => $variableexpense_create_object_v1_request)

Create a new Variableexpense

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVariableexpenseApi;
my $api_instance = EzmaxApi::ObjectVariableexpenseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $variableexpense_create_object_v1_request = EzmaxApi::Object::VariableexpenseCreateObjectV1Request->new(); # VariableexpenseCreateObjectV1Request | 

eval {
    my $result = $api_instance->variableexpense_create_object_v1(variableexpense_create_object_v1_request => $variableexpense_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVariableexpenseApi->variableexpense_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **variableexpense_create_object_v1_request** | [**VariableexpenseCreateObjectV1Request**](VariableexpenseCreateObjectV1Request.md)|  | 

### Return type

[**VariableexpenseCreateObjectV1Response**](VariableexpenseCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **variableexpense_delete_object_v1**
> VariableexpenseDeleteObjectV1Response variableexpense_delete_object_v1(pki_variableexpense_id => $pki_variableexpense_id)

Delete an existing Variableexpense



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVariableexpenseApi;
my $api_instance = EzmaxApi::ObjectVariableexpenseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_variableexpense_id = 56; # int | The unique ID of the Variableexpense

eval {
    my $result = $api_instance->variableexpense_delete_object_v1(pki_variableexpense_id => $pki_variableexpense_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVariableexpenseApi->variableexpense_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_variableexpense_id** | **int**| The unique ID of the Variableexpense | 

### Return type

[**VariableexpenseDeleteObjectV1Response**](VariableexpenseDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **variableexpense_edit_object_v1**
> VariableexpenseEditObjectV1Response variableexpense_edit_object_v1(pki_variableexpense_id => $pki_variableexpense_id, variableexpense_edit_object_v1_request => $variableexpense_edit_object_v1_request)

Edit an existing Variableexpense



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVariableexpenseApi;
my $api_instance = EzmaxApi::ObjectVariableexpenseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_variableexpense_id = 56; # int | The unique ID of the Variableexpense
my $variableexpense_edit_object_v1_request = EzmaxApi::Object::VariableexpenseEditObjectV1Request->new(); # VariableexpenseEditObjectV1Request | 

eval {
    my $result = $api_instance->variableexpense_edit_object_v1(pki_variableexpense_id => $pki_variableexpense_id, variableexpense_edit_object_v1_request => $variableexpense_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVariableexpenseApi->variableexpense_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_variableexpense_id** | **int**| The unique ID of the Variableexpense | 
 **variableexpense_edit_object_v1_request** | [**VariableexpenseEditObjectV1Request**](VariableexpenseEditObjectV1Request.md)|  | 

### Return type

[**VariableexpenseEditObjectV1Response**](VariableexpenseEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **variableexpense_get_autocomplete_v2**
> VariableexpenseGetAutocompleteV2Response variableexpense_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Variableexpenses and IDs

Get the list of Variableexpense to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVariableexpenseApi;
my $api_instance = EzmaxApi::ObjectVariableexpenseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Variableexpenses to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->variableexpense_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVariableexpenseApi->variableexpense_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Variableexpenses to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**VariableexpenseGetAutocompleteV2Response**](VariableexpenseGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **variableexpense_get_list_v1**
> VariableexpenseGetListV1Response variableexpense_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Variableexpense list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eVariableexpenseTaxable | Yes<br>No<br>Included |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVariableexpenseApi;
my $api_instance = EzmaxApi::ObjectVariableexpenseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 56; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->variableexpense_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVariableexpenseApi->variableexpense_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] 
 **i_row_offset** | **int**|  | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**VariableexpenseGetListV1Response**](VariableexpenseGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **variableexpense_get_object_v2**
> VariableexpenseGetObjectV2Response variableexpense_get_object_v2(pki_variableexpense_id => $pki_variableexpense_id)

Retrieve an existing Variableexpense



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVariableexpenseApi;
my $api_instance = EzmaxApi::ObjectVariableexpenseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_variableexpense_id = 56; # int | The unique ID of the Variableexpense

eval {
    my $result = $api_instance->variableexpense_get_object_v2(pki_variableexpense_id => $pki_variableexpense_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVariableexpenseApi->variableexpense_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_variableexpense_id** | **int**| The unique ID of the Variableexpense | 

### Return type

[**VariableexpenseGetObjectV2Response**](VariableexpenseGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

