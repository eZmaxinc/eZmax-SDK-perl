# EzmaxApi::ObjectCreditcardmerchantApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCreditcardmerchantApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creditcardmerchant_get_autocomplete_v2**](ObjectCreditcardmerchantApi.md#creditcardmerchant_get_autocomplete_v2) | **GET** /2/object/creditcardmerchant/getAutocomplete/{sSelector} | Retrieve Creditcardmerchants and IDs
[**creditcardmerchant_get_list_v1**](ObjectCreditcardmerchantApi.md#creditcardmerchant_get_list_v1) | **GET** /1/object/creditcardmerchant/getList | Retrieve Creditcardmerchant list
[**creditcardmerchant_get_object_v2**](ObjectCreditcardmerchantApi.md#creditcardmerchant_get_object_v2) | **GET** /2/object/creditcardmerchant/{pkiCreditcardmerchantID} | Retrieve an existing Creditcardmerchant


# **creditcardmerchant_get_autocomplete_v2**
> CreditcardmerchantGetAutocompleteV2Response creditcardmerchant_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Creditcardmerchants and IDs

Get the list of Creditcardmerchant to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardmerchantApi;
my $api_instance = EzmaxApi::ObjectCreditcardmerchantApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Creditcardmerchants to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->creditcardmerchant_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardmerchantApi->creditcardmerchant_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Creditcardmerchants to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**CreditcardmerchantGetAutocompleteV2Response**](CreditcardmerchantGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardmerchant_get_list_v1**
> CreditcardmerchantGetListV1Response creditcardmerchant_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Creditcardmerchant list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardmerchantApi;
my $api_instance = EzmaxApi::ObjectCreditcardmerchantApi->new(

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
    my $result = $api_instance->creditcardmerchant_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardmerchantApi->creditcardmerchant_get_list_v1: $@\n";
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

[**CreditcardmerchantGetListV1Response**](CreditcardmerchantGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardmerchant_get_object_v2**
> CreditcardmerchantGetObjectV2Response creditcardmerchant_get_object_v2(pki_creditcardmerchant_id => $pki_creditcardmerchant_id)

Retrieve an existing Creditcardmerchant



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardmerchantApi;
my $api_instance = EzmaxApi::ObjectCreditcardmerchantApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_creditcardmerchant_id = 56; # int | The unique ID of the Creditcardmerchant

eval {
    my $result = $api_instance->creditcardmerchant_get_object_v2(pki_creditcardmerchant_id => $pki_creditcardmerchant_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardmerchantApi->creditcardmerchant_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_creditcardmerchant_id** | **int**| The unique ID of the Creditcardmerchant | 

### Return type

[**CreditcardmerchantGetObjectV2Response**](CreditcardmerchantGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

