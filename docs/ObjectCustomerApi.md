# EzmaxApi::ObjectCustomerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCustomerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**customer_create_object_v1**](ObjectCustomerApi.md#customer_create_object_v1) | **POST** /1/object/customer | Create a new Customer
[**customer_get_autocomplete_v2**](ObjectCustomerApi.md#customer_get_autocomplete_v2) | **GET** /2/object/customer/getAutocomplete/{sSelector} | Retrieve Customers and IDs
[**customer_get_object_v2**](ObjectCustomerApi.md#customer_get_object_v2) | **GET** /2/object/customer/{pkiCustomerID} | Retrieve an existing Customer


# **customer_create_object_v1**
> CustomerCreateObjectV1Response customer_create_object_v1(customer_create_object_v1_request => $customer_create_object_v1_request)

Create a new Customer

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCustomerApi;
my $api_instance = EzmaxApi::ObjectCustomerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $customer_create_object_v1_request = EzmaxApi::Object::CustomerCreateObjectV1Request->new(); # CustomerCreateObjectV1Request | 

eval {
    my $result = $api_instance->customer_create_object_v1(customer_create_object_v1_request => $customer_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCustomerApi->customer_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **customer_create_object_v1_request** | [**CustomerCreateObjectV1Request**](CustomerCreateObjectV1Request.md)|  | 

### Return type

[**CustomerCreateObjectV1Response**](CustomerCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_get_autocomplete_v2**
> CustomerGetAutocompleteV2Response customer_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Customers and IDs

Get the list of Customer to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCustomerApi;
my $api_instance = EzmaxApi::ObjectCustomerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Customers to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->customer_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCustomerApi->customer_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Customers to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**CustomerGetAutocompleteV2Response**](CustomerGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **customer_get_object_v2**
> CustomerGetObjectV2Response customer_get_object_v2(pki_customer_id => $pki_customer_id)

Retrieve an existing Customer



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCustomerApi;
my $api_instance = EzmaxApi::ObjectCustomerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_customer_id = 56; # int | The unique ID of the Customer

eval {
    my $result = $api_instance->customer_get_object_v2(pki_customer_id => $pki_customer_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCustomerApi->customer_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_customer_id** | **int**| The unique ID of the Customer | 

### Return type

[**CustomerGetObjectV2Response**](CustomerGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

