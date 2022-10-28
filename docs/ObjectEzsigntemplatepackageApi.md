# EzmaxApi::ObjectEzsigntemplatepackageApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatepackageApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatepackage_create_object_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_create_object_v1) | **POST** /1/object/ezsigntemplatepackage | Create a new Ezsigntemplatepackage
[**ezsigntemplatepackage_delete_object_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_delete_object_v1) | **DELETE** /1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID} | Delete an existing Ezsigntemplatepackage
[**ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1) | **PUT** /1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID}/editEzsigntemplatepackagesigners | Edit multiple Ezsigntemplatepackagesigners
[**ezsigntemplatepackage_edit_object_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_edit_object_v1) | **PUT** /1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID} | Edit an existing Ezsigntemplatepackage
[**ezsigntemplatepackage_get_autocomplete_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_get_autocomplete_v1) | **GET** /1/object/ezsigntemplatepackage/getAutocomplete/{sSelector} | Retrieve Ezsigntemplatepackages and IDs
[**ezsigntemplatepackage_get_autocomplete_v2**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_get_autocomplete_v2) | **GET** /2/object/ezsigntemplatepackage/getAutocomplete/{sSelector} | Retrieve Ezsigntemplatepackages and IDs
[**ezsigntemplatepackage_get_list_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_get_list_v1) | **GET** /1/object/ezsigntemplatepackage/getList | Retrieve Ezsigntemplatepackage list
[**ezsigntemplatepackage_get_object_v1**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_get_object_v1) | **GET** /1/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID} | Retrieve an existing Ezsigntemplatepackage
[**ezsigntemplatepackage_get_object_v2**](ObjectEzsigntemplatepackageApi.md#ezsigntemplatepackage_get_object_v2) | **GET** /2/object/ezsigntemplatepackage/{pkiEzsigntemplatepackageID} | Retrieve an existing Ezsigntemplatepackage


# **ezsigntemplatepackage_create_object_v1**
> EzsigntemplatepackageCreateObjectV1Response ezsigntemplatepackage_create_object_v1(ezsigntemplatepackage_create_object_v1_request => $ezsigntemplatepackage_create_object_v1_request)

Create a new Ezsigntemplatepackage

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepackage_create_object_v1_request = EzmaxApi::Object::EzsigntemplatepackageCreateObjectV1Request->new(); # EzsigntemplatepackageCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_create_object_v1(ezsigntemplatepackage_create_object_v1_request => $ezsigntemplatepackage_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepackage_create_object_v1_request** | [**EzsigntemplatepackageCreateObjectV1Request**](EzsigntemplatepackageCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatepackageCreateObjectV1Response**](EzsigntemplatepackageCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_delete_object_v1**
> EzsigntemplatepackageDeleteObjectV1Response ezsigntemplatepackage_delete_object_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id)

Delete an existing Ezsigntemplatepackage



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackage_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_delete_object_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackage_id** | **int**|  | 

### Return type

[**EzsigntemplatepackageDeleteObjectV1Response**](EzsigntemplatepackageDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1**
> EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Response ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id, ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request => $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request)

Edit multiple Ezsigntemplatepackagesigners

Using this endpoint, you can edit multiple Ezsigntemplatepackagesigners at the same time.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackage_id = 56; # int | 
my $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request = EzmaxApi::Object::EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Request->new(); # EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id, ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request => $ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackage_id** | **int**|  | 
 **ezsigntemplatepackage_edit_ezsigntemplatepackagesigners_v1_request** | [**EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Request**](EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Request.md)|  | 

### Return type

[**EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Response**](EzsigntemplatepackageEditEzsigntemplatepackagesignersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_edit_object_v1**
> EzsigntemplatepackageEditObjectV1Response ezsigntemplatepackage_edit_object_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id, ezsigntemplatepackage_edit_object_v1_request => $ezsigntemplatepackage_edit_object_v1_request)

Edit an existing Ezsigntemplatepackage



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackage_id = 56; # int | 
my $ezsigntemplatepackage_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatepackageEditObjectV1Request->new(); # EzsigntemplatepackageEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_edit_object_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id, ezsigntemplatepackage_edit_object_v1_request => $ezsigntemplatepackage_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackage_id** | **int**|  | 
 **ezsigntemplatepackage_edit_object_v1_request** | [**EzsigntemplatepackageEditObjectV1Request**](EzsigntemplatepackageEditObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatepackageEditObjectV1Response**](EzsigntemplatepackageEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_get_autocomplete_v1**
> CommonGetAutocompleteDisabledV1Response ezsigntemplatepackage_get_autocomplete_v1(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezsigntemplatepackages and IDs

Get the list of Ezsigntemplatepackage to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsigntemplatepackages to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_get_autocomplete_v1(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_get_autocomplete_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsigntemplatepackages to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**CommonGetAutocompleteDisabledV1Response**](CommonGetAutocompleteDisabledV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_get_autocomplete_v2**
> EzsigntemplatepackageGetAutocompleteV2Response ezsigntemplatepackage_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezsigntemplatepackages and IDs

Get the list of Ezsigntemplatepackage to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsigntemplatepackages to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsigntemplatepackages to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**EzsigntemplatepackageGetAutocompleteV2Response**](EzsigntemplatepackageGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_get_list_v1**
> EzsigntemplatepackageGetListV1Response ezsigntemplatepackage_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsigntemplatepackage list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eEzsigntemplatepackageType | Company<br>Team<br>User<br>Usergroup |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

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
    my $result = $api_instance->ezsigntemplatepackage_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_get_list_v1: $@\n";
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

[**EzsigntemplatepackageGetListV1Response**](EzsigntemplatepackageGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_get_object_v1**
> EzsigntemplatepackageGetObjectV1Response ezsigntemplatepackage_get_object_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id)

Retrieve an existing Ezsigntemplatepackage



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackage_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_get_object_v1(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackage_id** | **int**|  | 

### Return type

[**EzsigntemplatepackageGetObjectV1Response**](EzsigntemplatepackageGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepackage_get_object_v2**
> EzsigntemplatepackageGetObjectV2Response ezsigntemplatepackage_get_object_v2(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id)

Retrieve an existing Ezsigntemplatepackage



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepackageApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepackageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepackage_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepackage_get_object_v2(pki_ezsigntemplatepackage_id => $pki_ezsigntemplatepackage_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepackageApi->ezsigntemplatepackage_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepackage_id** | **int**|  | 

### Return type

[**EzsigntemplatepackageGetObjectV2Response**](EzsigntemplatepackageGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

