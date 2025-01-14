# EzmaxApi::ObjectCreditcardclientApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectCreditcardclientApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**creditcardclient_create_object_v1**](ObjectCreditcardclientApi.md#creditcardclient_create_object_v1) | **POST** /1/object/creditcardclient | Create a new Creditcardclient
[**creditcardclient_delete_object_v1**](ObjectCreditcardclientApi.md#creditcardclient_delete_object_v1) | **DELETE** /1/object/creditcardclient/{pkiCreditcardclientID} | Delete an existing Creditcardclient
[**creditcardclient_edit_object_v1**](ObjectCreditcardclientApi.md#creditcardclient_edit_object_v1) | **PUT** /1/object/creditcardclient/{pkiCreditcardclientID} | Edit an existing Creditcardclient
[**creditcardclient_get_autocomplete_v2**](ObjectCreditcardclientApi.md#creditcardclient_get_autocomplete_v2) | **GET** /2/object/creditcardclient/getAutocomplete/{sSelector} | Retrieve Creditcardclients and IDs
[**creditcardclient_get_list_v1**](ObjectCreditcardclientApi.md#creditcardclient_get_list_v1) | **GET** /1/object/creditcardclient/getList | Retrieve Creditcardclient list
[**creditcardclient_get_object_v2**](ObjectCreditcardclientApi.md#creditcardclient_get_object_v2) | **GET** /2/object/creditcardclient/{pkiCreditcardclientID} | Retrieve an existing Creditcardclient
[**creditcardclient_patch_object_v1**](ObjectCreditcardclientApi.md#creditcardclient_patch_object_v1) | **PATCH** /1/object/creditcardclient/{pkiCreditcardclientID} | Patch an existing Creditcardclient


# **creditcardclient_create_object_v1**
> CreditcardclientCreateObjectV1Response creditcardclient_create_object_v1(creditcardclient_create_object_v1_request => $creditcardclient_create_object_v1_request)

Create a new Creditcardclient

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $creditcardclient_create_object_v1_request = EzmaxApi::Object::CreditcardclientCreateObjectV1Request->new(); # CreditcardclientCreateObjectV1Request | 

eval {
    my $result = $api_instance->creditcardclient_create_object_v1(creditcardclient_create_object_v1_request => $creditcardclient_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **creditcardclient_create_object_v1_request** | [**CreditcardclientCreateObjectV1Request**](CreditcardclientCreateObjectV1Request.md)|  | 

### Return type

[**CreditcardclientCreateObjectV1Response**](CreditcardclientCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardclient_delete_object_v1**
> CreditcardclientDeleteObjectV1Response creditcardclient_delete_object_v1(pki_creditcardclient_id => $pki_creditcardclient_id)

Delete an existing Creditcardclient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_creditcardclient_id = 56; # int | The unique ID of the Creditcardclient

eval {
    my $result = $api_instance->creditcardclient_delete_object_v1(pki_creditcardclient_id => $pki_creditcardclient_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_creditcardclient_id** | **int**| The unique ID of the Creditcardclient | 

### Return type

[**CreditcardclientDeleteObjectV1Response**](CreditcardclientDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardclient_edit_object_v1**
> CreditcardclientEditObjectV1Response creditcardclient_edit_object_v1(pki_creditcardclient_id => $pki_creditcardclient_id, creditcardclient_edit_object_v1_request => $creditcardclient_edit_object_v1_request)

Edit an existing Creditcardclient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_creditcardclient_id = 56; # int | The unique ID of the Creditcardclient
my $creditcardclient_edit_object_v1_request = EzmaxApi::Object::CreditcardclientEditObjectV1Request->new(); # CreditcardclientEditObjectV1Request | 

eval {
    my $result = $api_instance->creditcardclient_edit_object_v1(pki_creditcardclient_id => $pki_creditcardclient_id, creditcardclient_edit_object_v1_request => $creditcardclient_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_creditcardclient_id** | **int**| The unique ID of the Creditcardclient | 
 **creditcardclient_edit_object_v1_request** | [**CreditcardclientEditObjectV1Request**](CreditcardclientEditObjectV1Request.md)|  | 

### Return type

[**CreditcardclientEditObjectV1Response**](CreditcardclientEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardclient_get_autocomplete_v2**
> CreditcardclientGetAutocompleteV2Response creditcardclient_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Creditcardclients and IDs

Get the list of Creditcardclient to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Creditcardclients to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->creditcardclient_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Creditcardclients to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**CreditcardclientGetAutocompleteV2Response**](CreditcardclientGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardclient_get_list_v1**
> CreditcardclientGetListV1Response creditcardclient_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Creditcardclient list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

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
    my $result = $api_instance->creditcardclient_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_get_list_v1: $@\n";
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

[**CreditcardclientGetListV1Response**](CreditcardclientGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardclient_get_object_v2**
> CreditcardclientGetObjectV2Response creditcardclient_get_object_v2(pki_creditcardclient_id => $pki_creditcardclient_id)

Retrieve an existing Creditcardclient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_creditcardclient_id = 56; # int | The unique ID of the Creditcardclient

eval {
    my $result = $api_instance->creditcardclient_get_object_v2(pki_creditcardclient_id => $pki_creditcardclient_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_creditcardclient_id** | **int**| The unique ID of the Creditcardclient | 

### Return type

[**CreditcardclientGetObjectV2Response**](CreditcardclientGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **creditcardclient_patch_object_v1**
> CreditcardclientPatchObjectV1Response creditcardclient_patch_object_v1(pki_creditcardclient_id => $pki_creditcardclient_id, creditcardclient_patch_object_v1_request => $creditcardclient_patch_object_v1_request)

Patch an existing Creditcardclient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectCreditcardclientApi;
my $api_instance = EzmaxApi::ObjectCreditcardclientApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_creditcardclient_id = 56; # int | The unique ID of the Creditcardclient
my $creditcardclient_patch_object_v1_request = EzmaxApi::Object::CreditcardclientPatchObjectV1Request->new(); # CreditcardclientPatchObjectV1Request | 

eval {
    my $result = $api_instance->creditcardclient_patch_object_v1(pki_creditcardclient_id => $pki_creditcardclient_id, creditcardclient_patch_object_v1_request => $creditcardclient_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectCreditcardclientApi->creditcardclient_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_creditcardclient_id** | **int**| The unique ID of the Creditcardclient | 
 **creditcardclient_patch_object_v1_request** | [**CreditcardclientPatchObjectV1Request**](CreditcardclientPatchObjectV1Request.md)|  | 

### Return type

[**CreditcardclientPatchObjectV1Response**](CreditcardclientPatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

