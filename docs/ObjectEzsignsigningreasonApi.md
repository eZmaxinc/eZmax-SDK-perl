# EzmaxApi::ObjectEzsignsigningreasonApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignsigningreasonApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignsigningreason_create_object_v1**](ObjectEzsignsigningreasonApi.md#ezsignsigningreason_create_object_v1) | **POST** /1/object/ezsignsigningreason | Create a new Ezsignsigningreason
[**ezsignsigningreason_edit_object_v1**](ObjectEzsignsigningreasonApi.md#ezsignsigningreason_edit_object_v1) | **PUT** /1/object/ezsignsigningreason/{pkiEzsignsigningreasonID} | Edit an existing Ezsignsigningreason
[**ezsignsigningreason_get_autocomplete_v2**](ObjectEzsignsigningreasonApi.md#ezsignsigningreason_get_autocomplete_v2) | **GET** /2/object/ezsignsigningreason/getAutocomplete/{sSelector} | Retrieve Ezsignsigningreasons and IDs
[**ezsignsigningreason_get_list_v1**](ObjectEzsignsigningreasonApi.md#ezsignsigningreason_get_list_v1) | **GET** /1/object/ezsignsigningreason/getList | Retrieve Ezsignsigningreason list
[**ezsignsigningreason_get_object_v2**](ObjectEzsignsigningreasonApi.md#ezsignsigningreason_get_object_v2) | **GET** /2/object/ezsignsigningreason/{pkiEzsignsigningreasonID} | Retrieve an existing Ezsignsigningreason


# **ezsignsigningreason_create_object_v1**
> EzsignsigningreasonCreateObjectV1Response ezsignsigningreason_create_object_v1(ezsignsigningreason_create_object_v1_request => $ezsignsigningreason_create_object_v1_request)

Create a new Ezsignsigningreason

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsigningreasonApi;
my $api_instance = EzmaxApi::ObjectEzsignsigningreasonApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignsigningreason_create_object_v1_request = EzmaxApi::Object::EzsignsigningreasonCreateObjectV1Request->new(); # EzsignsigningreasonCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignsigningreason_create_object_v1(ezsignsigningreason_create_object_v1_request => $ezsignsigningreason_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsigningreasonApi->ezsignsigningreason_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignsigningreason_create_object_v1_request** | [**EzsignsigningreasonCreateObjectV1Request**](EzsignsigningreasonCreateObjectV1Request.md)|  | 

### Return type

[**EzsignsigningreasonCreateObjectV1Response**](EzsignsigningreasonCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsigningreason_edit_object_v1**
> CommonResponse ezsignsigningreason_edit_object_v1(pki_ezsignsigningreason_id => $pki_ezsignsigningreason_id, ezsignsigningreason_edit_object_v1_request => $ezsignsigningreason_edit_object_v1_request)

Edit an existing Ezsignsigningreason



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsigningreasonApi;
my $api_instance = EzmaxApi::ObjectEzsignsigningreasonApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsigningreason_id = 56; # int | The unique ID of the Ezsignsigningreason
my $ezsignsigningreason_edit_object_v1_request = EzmaxApi::Object::EzsignsigningreasonEditObjectV1Request->new(); # EzsignsigningreasonEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignsigningreason_edit_object_v1(pki_ezsignsigningreason_id => $pki_ezsignsigningreason_id, ezsignsigningreason_edit_object_v1_request => $ezsignsigningreason_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsigningreasonApi->ezsignsigningreason_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsigningreason_id** | **int**| The unique ID of the Ezsignsigningreason | 
 **ezsignsigningreason_edit_object_v1_request** | [**EzsignsigningreasonEditObjectV1Request**](EzsignsigningreasonEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsigningreason_get_autocomplete_v2**
> EzsignsigningreasonGetAutocompleteV2Response ezsignsigningreason_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezsignsigningreasons and IDs

Get the list of Ezsignsigningreason to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsigningreasonApi;
my $api_instance = EzmaxApi::ObjectEzsignsigningreasonApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsignsigningreasons to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezsignsigningreason_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsigningreasonApi->ezsignsigningreason_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsignsigningreasons to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**EzsignsigningreasonGetAutocompleteV2Response**](EzsignsigningreasonGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsigningreason_get_list_v1**
> EzsignsigningreasonGetListV1Response ezsignsigningreason_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsignsigningreason list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsigningreasonApi;
my $api_instance = EzmaxApi::ObjectEzsignsigningreasonApi->new(

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
    my $result = $api_instance->ezsignsigningreason_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsigningreasonApi->ezsignsigningreason_get_list_v1: $@\n";
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

[**EzsignsigningreasonGetListV1Response**](EzsignsigningreasonGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignsigningreason_get_object_v2**
> EzsignsigningreasonGetObjectV2Response ezsignsigningreason_get_object_v2(pki_ezsignsigningreason_id => $pki_ezsignsigningreason_id)

Retrieve an existing Ezsignsigningreason



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignsigningreasonApi;
my $api_instance = EzmaxApi::ObjectEzsignsigningreasonApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignsigningreason_id = 56; # int | The unique ID of the Ezsignsigningreason

eval {
    my $result = $api_instance->ezsignsigningreason_get_object_v2(pki_ezsignsigningreason_id => $pki_ezsignsigningreason_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignsigningreasonApi->ezsignsigningreason_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignsigningreason_id** | **int**| The unique ID of the Ezsignsigningreason | 

### Return type

[**EzsignsigningreasonGetObjectV2Response**](EzsignsigningreasonGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

