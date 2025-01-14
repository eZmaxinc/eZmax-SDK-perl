# EzmaxApi::ObjectSupplyApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectSupplyApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**supply_create_object_v1**](ObjectSupplyApi.md#supply_create_object_v1) | **POST** /1/object/supply | Create a new Supply
[**supply_delete_object_v1**](ObjectSupplyApi.md#supply_delete_object_v1) | **DELETE** /1/object/supply/{pkiSupplyID} | Delete an existing Supply
[**supply_edit_object_v1**](ObjectSupplyApi.md#supply_edit_object_v1) | **PUT** /1/object/supply/{pkiSupplyID} | Edit an existing Supply
[**supply_get_autocomplete_v2**](ObjectSupplyApi.md#supply_get_autocomplete_v2) | **GET** /2/object/supply/getAutocomplete/{sSelector} | Retrieve Supplys and IDs
[**supply_get_list_v1**](ObjectSupplyApi.md#supply_get_list_v1) | **GET** /1/object/supply/getList | Retrieve Supply list
[**supply_get_object_v2**](ObjectSupplyApi.md#supply_get_object_v2) | **GET** /2/object/supply/{pkiSupplyID} | Retrieve an existing Supply


# **supply_create_object_v1**
> SupplyCreateObjectV1Response supply_create_object_v1(supply_create_object_v1_request => $supply_create_object_v1_request)

Create a new Supply

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplyApi;
my $api_instance = EzmaxApi::ObjectSupplyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $supply_create_object_v1_request = EzmaxApi::Object::SupplyCreateObjectV1Request->new(); # SupplyCreateObjectV1Request | 

eval {
    my $result = $api_instance->supply_create_object_v1(supply_create_object_v1_request => $supply_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplyApi->supply_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **supply_create_object_v1_request** | [**SupplyCreateObjectV1Request**](SupplyCreateObjectV1Request.md)|  | 

### Return type

[**SupplyCreateObjectV1Response**](SupplyCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supply_delete_object_v1**
> SupplyDeleteObjectV1Response supply_delete_object_v1(pki_supply_id => $pki_supply_id)

Delete an existing Supply



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplyApi;
my $api_instance = EzmaxApi::ObjectSupplyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_supply_id = 56; # int | The unique ID of the Supply

eval {
    my $result = $api_instance->supply_delete_object_v1(pki_supply_id => $pki_supply_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplyApi->supply_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_supply_id** | **int**| The unique ID of the Supply | 

### Return type

[**SupplyDeleteObjectV1Response**](SupplyDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supply_edit_object_v1**
> SupplyEditObjectV1Response supply_edit_object_v1(pki_supply_id => $pki_supply_id, supply_edit_object_v1_request => $supply_edit_object_v1_request)

Edit an existing Supply



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplyApi;
my $api_instance = EzmaxApi::ObjectSupplyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_supply_id = 56; # int | The unique ID of the Supply
my $supply_edit_object_v1_request = EzmaxApi::Object::SupplyEditObjectV1Request->new(); # SupplyEditObjectV1Request | 

eval {
    my $result = $api_instance->supply_edit_object_v1(pki_supply_id => $pki_supply_id, supply_edit_object_v1_request => $supply_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplyApi->supply_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_supply_id** | **int**| The unique ID of the Supply | 
 **supply_edit_object_v1_request** | [**SupplyEditObjectV1Request**](SupplyEditObjectV1Request.md)|  | 

### Return type

[**SupplyEditObjectV1Response**](SupplyEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supply_get_autocomplete_v2**
> SupplyGetAutocompleteV2Response supply_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Supplys and IDs

Get the list of Supply to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplyApi;
my $api_instance = EzmaxApi::ObjectSupplyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Supplys to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->supply_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplyApi->supply_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Supplys to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**SupplyGetAutocompleteV2Response**](SupplyGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supply_get_list_v1**
> SupplyGetListV1Response supply_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Supply list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplyApi;
my $api_instance = EzmaxApi::ObjectSupplyApi->new(

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
    my $result = $api_instance->supply_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplyApi->supply_get_list_v1: $@\n";
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

[**SupplyGetListV1Response**](SupplyGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **supply_get_object_v2**
> SupplyGetObjectV2Response supply_get_object_v2(pki_supply_id => $pki_supply_id)

Retrieve an existing Supply



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSupplyApi;
my $api_instance = EzmaxApi::ObjectSupplyApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_supply_id = 56; # int | The unique ID of the Supply

eval {
    my $result = $api_instance->supply_get_object_v2(pki_supply_id => $pki_supply_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSupplyApi->supply_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_supply_id** | **int**| The unique ID of the Supply | 

### Return type

[**SupplyGetObjectV2Response**](SupplyGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

