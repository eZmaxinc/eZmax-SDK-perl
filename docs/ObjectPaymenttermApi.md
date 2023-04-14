# EzmaxApi::ObjectPaymenttermApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectPaymenttermApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentterm_create_object_v1**](ObjectPaymenttermApi.md#paymentterm_create_object_v1) | **POST** /1/object/paymentterm | Create a new Paymentterm
[**paymentterm_edit_object_v1**](ObjectPaymenttermApi.md#paymentterm_edit_object_v1) | **PUT** /1/object/paymentterm/{pkiPaymenttermID} | Edit an existing Paymentterm
[**paymentterm_get_autocomplete_v2**](ObjectPaymenttermApi.md#paymentterm_get_autocomplete_v2) | **GET** /2/object/paymentterm/getAutocomplete/{sSelector} | Retrieve Paymentterms and IDs
[**paymentterm_get_list_v1**](ObjectPaymenttermApi.md#paymentterm_get_list_v1) | **GET** /1/object/paymentterm/getList | Retrieve Paymentterm list
[**paymentterm_get_object_v2**](ObjectPaymenttermApi.md#paymentterm_get_object_v2) | **GET** /2/object/paymentterm/{pkiPaymenttermID} | Retrieve an existing Paymentterm


# **paymentterm_create_object_v1**
> PaymenttermCreateObjectV1Response paymentterm_create_object_v1(paymentterm_create_object_v1_request => $paymentterm_create_object_v1_request)

Create a new Paymentterm

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymenttermApi;
my $api_instance = EzmaxApi::ObjectPaymenttermApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $paymentterm_create_object_v1_request = EzmaxApi::Object::PaymenttermCreateObjectV1Request->new(); # PaymenttermCreateObjectV1Request | 

eval {
    my $result = $api_instance->paymentterm_create_object_v1(paymentterm_create_object_v1_request => $paymentterm_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymenttermApi->paymentterm_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentterm_create_object_v1_request** | [**PaymenttermCreateObjectV1Request**](PaymenttermCreateObjectV1Request.md)|  | 

### Return type

[**PaymenttermCreateObjectV1Response**](PaymenttermCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentterm_edit_object_v1**
> PaymenttermEditObjectV1Response paymentterm_edit_object_v1(pki_paymentterm_id => $pki_paymentterm_id, paymentterm_edit_object_v1_request => $paymentterm_edit_object_v1_request)

Edit an existing Paymentterm



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymenttermApi;
my $api_instance = EzmaxApi::ObjectPaymenttermApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentterm_id = 56; # int | 
my $paymentterm_edit_object_v1_request = EzmaxApi::Object::PaymenttermEditObjectV1Request->new(); # PaymenttermEditObjectV1Request | 

eval {
    my $result = $api_instance->paymentterm_edit_object_v1(pki_paymentterm_id => $pki_paymentterm_id, paymentterm_edit_object_v1_request => $paymentterm_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymenttermApi->paymentterm_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentterm_id** | **int**|  | 
 **paymentterm_edit_object_v1_request** | [**PaymenttermEditObjectV1Request**](PaymenttermEditObjectV1Request.md)|  | 

### Return type

[**PaymenttermEditObjectV1Response**](PaymenttermEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentterm_get_autocomplete_v2**
> PaymenttermGetAutocompleteV2Response paymentterm_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Paymentterms and IDs

Get the list of Paymentterm to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymenttermApi;
my $api_instance = EzmaxApi::ObjectPaymenttermApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Paymentterms to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->paymentterm_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymenttermApi->paymentterm_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Paymentterms to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**PaymenttermGetAutocompleteV2Response**](PaymenttermGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentterm_get_list_v1**
> PaymenttermGetListV1Response paymentterm_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Paymentterm list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymenttermApi;
my $api_instance = EzmaxApi::ObjectPaymenttermApi->new(

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
    my $result = $api_instance->paymentterm_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymenttermApi->paymentterm_get_list_v1: $@\n";
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

[**PaymenttermGetListV1Response**](PaymenttermGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentterm_get_object_v2**
> PaymenttermGetObjectV2Response paymentterm_get_object_v2(pki_paymentterm_id => $pki_paymentterm_id)

Retrieve an existing Paymentterm



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymenttermApi;
my $api_instance = EzmaxApi::ObjectPaymenttermApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentterm_id = 56; # int | 

eval {
    my $result = $api_instance->paymentterm_get_object_v2(pki_paymentterm_id => $pki_paymentterm_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymenttermApi->paymentterm_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentterm_id** | **int**|  | 

### Return type

[**PaymenttermGetObjectV2Response**](PaymenttermGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

