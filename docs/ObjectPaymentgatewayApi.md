# EzmaxApi::ObjectPaymentgatewayApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectPaymentgatewayApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**paymentgateway_create_object_v1**](ObjectPaymentgatewayApi.md#paymentgateway_create_object_v1) | **POST** /1/object/paymentgateway | Create a new Paymentgateway
[**paymentgateway_edit_object_v1**](ObjectPaymentgatewayApi.md#paymentgateway_edit_object_v1) | **PUT** /1/object/paymentgateway/{pkiPaymentgatewayID} | Edit an existing Paymentgateway
[**paymentgateway_get_autocomplete_v2**](ObjectPaymentgatewayApi.md#paymentgateway_get_autocomplete_v2) | **GET** /2/object/paymentgateway/getAutocomplete/{sSelector} | Retrieve Paymentgateways and IDs
[**paymentgateway_get_list_v1**](ObjectPaymentgatewayApi.md#paymentgateway_get_list_v1) | **GET** /1/object/paymentgateway/getList | Retrieve Paymentgateway list
[**paymentgateway_get_object_v2**](ObjectPaymentgatewayApi.md#paymentgateway_get_object_v2) | **GET** /2/object/paymentgateway/{pkiPaymentgatewayID} | Retrieve an existing Paymentgateway


# **paymentgateway_create_object_v1**
> PaymentgatewayCreateObjectV1Response paymentgateway_create_object_v1(paymentgateway_create_object_v1_request => $paymentgateway_create_object_v1_request)

Create a new Paymentgateway

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentgatewayApi;
my $api_instance = EzmaxApi::ObjectPaymentgatewayApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $paymentgateway_create_object_v1_request = EzmaxApi::Object::PaymentgatewayCreateObjectV1Request->new(); # PaymentgatewayCreateObjectV1Request | 

eval {
    my $result = $api_instance->paymentgateway_create_object_v1(paymentgateway_create_object_v1_request => $paymentgateway_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentgatewayApi->paymentgateway_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **paymentgateway_create_object_v1_request** | [**PaymentgatewayCreateObjectV1Request**](PaymentgatewayCreateObjectV1Request.md)|  | 

### Return type

[**PaymentgatewayCreateObjectV1Response**](PaymentgatewayCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentgateway_edit_object_v1**
> PaymentgatewayEditObjectV1Response paymentgateway_edit_object_v1(pki_paymentgateway_id => $pki_paymentgateway_id, paymentgateway_edit_object_v1_request => $paymentgateway_edit_object_v1_request)

Edit an existing Paymentgateway



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentgatewayApi;
my $api_instance = EzmaxApi::ObjectPaymentgatewayApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentgateway_id = 56; # int | The unique ID of the Paymentgateway
my $paymentgateway_edit_object_v1_request = EzmaxApi::Object::PaymentgatewayEditObjectV1Request->new(); # PaymentgatewayEditObjectV1Request | 

eval {
    my $result = $api_instance->paymentgateway_edit_object_v1(pki_paymentgateway_id => $pki_paymentgateway_id, paymentgateway_edit_object_v1_request => $paymentgateway_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentgatewayApi->paymentgateway_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentgateway_id** | **int**| The unique ID of the Paymentgateway | 
 **paymentgateway_edit_object_v1_request** | [**PaymentgatewayEditObjectV1Request**](PaymentgatewayEditObjectV1Request.md)|  | 

### Return type

[**PaymentgatewayEditObjectV1Response**](PaymentgatewayEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentgateway_get_autocomplete_v2**
> PaymentgatewayGetAutocompleteV2Response paymentgateway_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Paymentgateways and IDs

Get the list of Paymentgateway to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentgatewayApi;
my $api_instance = EzmaxApi::ObjectPaymentgatewayApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Paymentgateways to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->paymentgateway_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentgatewayApi->paymentgateway_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Paymentgateways to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**PaymentgatewayGetAutocompleteV2Response**](PaymentgatewayGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentgateway_get_list_v1**
> PaymentgatewayGetListV1Response paymentgateway_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Paymentgateway list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | ePaymentgatewayProcessor | Moneris |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentgatewayApi;
my $api_instance = EzmaxApi::ObjectPaymentgatewayApi->new(

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
    my $result = $api_instance->paymentgateway_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentgatewayApi->paymentgateway_get_list_v1: $@\n";
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

[**PaymentgatewayGetListV1Response**](PaymentgatewayGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **paymentgateway_get_object_v2**
> PaymentgatewayGetObjectV2Response paymentgateway_get_object_v2(pki_paymentgateway_id => $pki_paymentgateway_id)

Retrieve an existing Paymentgateway



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectPaymentgatewayApi;
my $api_instance = EzmaxApi::ObjectPaymentgatewayApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_paymentgateway_id = 56; # int | The unique ID of the Paymentgateway

eval {
    my $result = $api_instance->paymentgateway_get_object_v2(pki_paymentgateway_id => $pki_paymentgateway_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectPaymentgatewayApi->paymentgateway_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_paymentgateway_id** | **int**| The unique ID of the Paymentgateway | 

### Return type

[**PaymentgatewayGetObjectV2Response**](PaymentgatewayGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

