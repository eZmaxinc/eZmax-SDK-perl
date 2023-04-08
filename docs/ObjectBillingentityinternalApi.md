# EzmaxApi::ObjectBillingentityinternalApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectBillingentityinternalApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingentityinternal_create_object_v1**](ObjectBillingentityinternalApi.md#billingentityinternal_create_object_v1) | **POST** /1/object/billingentityinternal | Create a new Billingentityinternal
[**billingentityinternal_delete_object_v1**](ObjectBillingentityinternalApi.md#billingentityinternal_delete_object_v1) | **DELETE** /1/object/billingentityinternal/{pkiBillingentityinternalID} | Delete an existing Billingentityinternal
[**billingentityinternal_edit_object_v1**](ObjectBillingentityinternalApi.md#billingentityinternal_edit_object_v1) | **PUT** /1/object/billingentityinternal/{pkiBillingentityinternalID} | Edit an existing Billingentityinternal
[**billingentityinternal_get_autocomplete_v2**](ObjectBillingentityinternalApi.md#billingentityinternal_get_autocomplete_v2) | **GET** /2/object/billingentityinternal/getAutocomplete/{sSelector} | Retrieve Billingentityinternals and IDs
[**billingentityinternal_get_list_v1**](ObjectBillingentityinternalApi.md#billingentityinternal_get_list_v1) | **GET** /1/object/billingentityinternal/getList | Retrieve Billingentityinternal list
[**billingentityinternal_get_object_v2**](ObjectBillingentityinternalApi.md#billingentityinternal_get_object_v2) | **GET** /2/object/billingentityinternal/{pkiBillingentityinternalID} | Retrieve an existing Billingentityinternal


# **billingentityinternal_create_object_v1**
> BillingentityinternalCreateObjectV1Response billingentityinternal_create_object_v1(billingentityinternal_create_object_v1_request => $billingentityinternal_create_object_v1_request)

Create a new Billingentityinternal

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityinternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityinternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $billingentityinternal_create_object_v1_request = EzmaxApi::Object::BillingentityinternalCreateObjectV1Request->new(); # BillingentityinternalCreateObjectV1Request | 

eval {
    my $result = $api_instance->billingentityinternal_create_object_v1(billingentityinternal_create_object_v1_request => $billingentityinternal_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityinternalApi->billingentityinternal_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingentityinternal_create_object_v1_request** | [**BillingentityinternalCreateObjectV1Request**](BillingentityinternalCreateObjectV1Request.md)|  | 

### Return type

[**BillingentityinternalCreateObjectV1Response**](BillingentityinternalCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingentityinternal_delete_object_v1**
> BillingentityinternalDeleteObjectV1Response billingentityinternal_delete_object_v1(pki_billingentityinternal_id => $pki_billingentityinternal_id)

Delete an existing Billingentityinternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityinternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityinternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_billingentityinternal_id = 56; # int | The unique ID of the Billingentityinternal

eval {
    my $result = $api_instance->billingentityinternal_delete_object_v1(pki_billingentityinternal_id => $pki_billingentityinternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityinternalApi->billingentityinternal_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_billingentityinternal_id** | **int**| The unique ID of the Billingentityinternal | 

### Return type

[**BillingentityinternalDeleteObjectV1Response**](BillingentityinternalDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingentityinternal_edit_object_v1**
> BillingentityinternalEditObjectV1Response billingentityinternal_edit_object_v1(pki_billingentityinternal_id => $pki_billingentityinternal_id, billingentityinternal_edit_object_v1_request => $billingentityinternal_edit_object_v1_request)

Edit an existing Billingentityinternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityinternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityinternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_billingentityinternal_id = 56; # int | The unique ID of the Billingentityinternal
my $billingentityinternal_edit_object_v1_request = EzmaxApi::Object::BillingentityinternalEditObjectV1Request->new(); # BillingentityinternalEditObjectV1Request | 

eval {
    my $result = $api_instance->billingentityinternal_edit_object_v1(pki_billingentityinternal_id => $pki_billingentityinternal_id, billingentityinternal_edit_object_v1_request => $billingentityinternal_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityinternalApi->billingentityinternal_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_billingentityinternal_id** | **int**| The unique ID of the Billingentityinternal | 
 **billingentityinternal_edit_object_v1_request** | [**BillingentityinternalEditObjectV1Request**](BillingentityinternalEditObjectV1Request.md)|  | 

### Return type

[**BillingentityinternalEditObjectV1Response**](BillingentityinternalEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingentityinternal_get_autocomplete_v2**
> BillingentityinternalGetAutocompleteV2Response billingentityinternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Billingentityinternals and IDs

Get the list of Billingentityinternal to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityinternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityinternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Billingentityinternals to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->billingentityinternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityinternalApi->billingentityinternal_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Billingentityinternals to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**BillingentityinternalGetAutocompleteV2Response**](BillingentityinternalGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingentityinternal_get_list_v1**
> BillingentityinternalGetListV1Response billingentityinternal_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Billingentityinternal list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityinternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityinternalApi->new(

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
    my $result = $api_instance->billingentityinternal_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityinternalApi->billingentityinternal_get_list_v1: $@\n";
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

[**BillingentityinternalGetListV1Response**](BillingentityinternalGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingentityinternal_get_object_v2**
> BillingentityinternalGetObjectV2Response billingentityinternal_get_object_v2(pki_billingentityinternal_id => $pki_billingentityinternal_id)

Retrieve an existing Billingentityinternal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityinternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityinternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_billingentityinternal_id = 56; # int | The unique ID of the Billingentityinternal

eval {
    my $result = $api_instance->billingentityinternal_get_object_v2(pki_billingentityinternal_id => $pki_billingentityinternal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityinternalApi->billingentityinternal_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_billingentityinternal_id** | **int**| The unique ID of the Billingentityinternal | 

### Return type

[**BillingentityinternalGetObjectV2Response**](BillingentityinternalGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

