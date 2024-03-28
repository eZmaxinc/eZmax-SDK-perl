# EzmaxApi::ObjectBrandingApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectBrandingApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**branding_create_object_v1**](ObjectBrandingApi.md#branding_create_object_v1) | **POST** /1/object/branding | Create a new Branding
[**branding_edit_object_v1**](ObjectBrandingApi.md#branding_edit_object_v1) | **PUT** /1/object/branding/{pkiBrandingID} | Edit an existing Branding
[**branding_get_autocomplete_v2**](ObjectBrandingApi.md#branding_get_autocomplete_v2) | **GET** /2/object/branding/getAutocomplete/{sSelector} | Retrieve Brandings and IDs
[**branding_get_list_v1**](ObjectBrandingApi.md#branding_get_list_v1) | **GET** /1/object/branding/getList | Retrieve Branding list
[**branding_get_object_v2**](ObjectBrandingApi.md#branding_get_object_v2) | **GET** /2/object/branding/{pkiBrandingID} | Retrieve an existing Branding


# **branding_create_object_v1**
> BrandingCreateObjectV1Response branding_create_object_v1(branding_create_object_v1_request => $branding_create_object_v1_request)

Create a new Branding

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBrandingApi;
my $api_instance = EzmaxApi::ObjectBrandingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $branding_create_object_v1_request = EzmaxApi::Object::BrandingCreateObjectV1Request->new(); # BrandingCreateObjectV1Request | 

eval {
    my $result = $api_instance->branding_create_object_v1(branding_create_object_v1_request => $branding_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBrandingApi->branding_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **branding_create_object_v1_request** | [**BrandingCreateObjectV1Request**](BrandingCreateObjectV1Request.md)|  | 

### Return type

[**BrandingCreateObjectV1Response**](BrandingCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **branding_edit_object_v1**
> BrandingEditObjectV1Response branding_edit_object_v1(pki_branding_id => $pki_branding_id, branding_edit_object_v1_request => $branding_edit_object_v1_request)

Edit an existing Branding



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBrandingApi;
my $api_instance = EzmaxApi::ObjectBrandingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_branding_id = 56; # int | 
my $branding_edit_object_v1_request = EzmaxApi::Object::BrandingEditObjectV1Request->new(); # BrandingEditObjectV1Request | 

eval {
    my $result = $api_instance->branding_edit_object_v1(pki_branding_id => $pki_branding_id, branding_edit_object_v1_request => $branding_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBrandingApi->branding_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_branding_id** | **int**|  | 
 **branding_edit_object_v1_request** | [**BrandingEditObjectV1Request**](BrandingEditObjectV1Request.md)|  | 

### Return type

[**BrandingEditObjectV1Response**](BrandingEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **branding_get_autocomplete_v2**
> BrandingGetAutocompleteV2Response branding_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Brandings and IDs

Get the list of Branding to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBrandingApi;
my $api_instance = EzmaxApi::ObjectBrandingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Brandings to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->branding_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBrandingApi->branding_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Brandings to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**BrandingGetAutocompleteV2Response**](BrandingGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **branding_get_list_v1**
> BrandingGetListV1Response branding_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Branding list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eBrandingLogo | Default<br>JPEG<br>PNG | | eBrandingLogointerface | Default<br>JPEG<br>PNG |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBrandingApi;
my $api_instance = EzmaxApi::ObjectBrandingApi->new(

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
    my $result = $api_instance->branding_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBrandingApi->branding_get_list_v1: $@\n";
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

[**BrandingGetListV1Response**](BrandingGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **branding_get_object_v2**
> BrandingGetObjectV2Response branding_get_object_v2(pki_branding_id => $pki_branding_id)

Retrieve an existing Branding



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBrandingApi;
my $api_instance = EzmaxApi::ObjectBrandingApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_branding_id = 56; # int | 

eval {
    my $result = $api_instance->branding_get_object_v2(pki_branding_id => $pki_branding_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBrandingApi->branding_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_branding_id** | **int**|  | 

### Return type

[**BrandingGetObjectV2Response**](BrandingGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

