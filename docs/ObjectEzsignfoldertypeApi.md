# EzmaxApi::ObjectEzsignfoldertypeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfoldertypeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfoldertype_create_object_v3**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_create_object_v3) | **POST** /3/object/ezsignfoldertype | Create a new Ezsignfoldertype
[**ezsignfoldertype_edit_object_v3**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_edit_object_v3) | **PUT** /3/object/ezsignfoldertype/{pkiEzsignfoldertypeID} | Edit an existing Ezsignfoldertype
[**ezsignfoldertype_get_autocomplete_v2**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_get_autocomplete_v2) | **GET** /2/object/ezsignfoldertype/getAutocomplete/{sSelector} | Retrieve Ezsignfoldertypes and IDs
[**ezsignfoldertype_get_list_v1**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_get_list_v1) | **GET** /1/object/ezsignfoldertype/getList | Retrieve Ezsignfoldertype list
[**ezsignfoldertype_get_object_v2**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_get_object_v2) | **GET** /2/object/ezsignfoldertype/{pkiEzsignfoldertypeID} | Retrieve an existing Ezsignfoldertype
[**ezsignfoldertype_get_object_v4**](ObjectEzsignfoldertypeApi.md#ezsignfoldertype_get_object_v4) | **GET** /4/object/ezsignfoldertype/{pkiEzsignfoldertypeID} | Retrieve an existing Ezsignfoldertype


# **ezsignfoldertype_create_object_v3**
> EzsignfoldertypeCreateObjectV3Response ezsignfoldertype_create_object_v3(ezsignfoldertype_create_object_v3_request => $ezsignfoldertype_create_object_v3_request)

Create a new Ezsignfoldertype

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfoldertype_create_object_v3_request = EzmaxApi::Object::EzsignfoldertypeCreateObjectV3Request->new(); # EzsignfoldertypeCreateObjectV3Request | 

eval {
    my $result = $api_instance->ezsignfoldertype_create_object_v3(ezsignfoldertype_create_object_v3_request => $ezsignfoldertype_create_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_create_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfoldertype_create_object_v3_request** | [**EzsignfoldertypeCreateObjectV3Request**](EzsignfoldertypeCreateObjectV3Request.md)|  | 

### Return type

[**EzsignfoldertypeCreateObjectV3Response**](EzsignfoldertypeCreateObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldertype_edit_object_v3**
> CommonResponse ezsignfoldertype_edit_object_v3(pki_ezsignfoldertype_id => $pki_ezsignfoldertype_id, ezsignfoldertype_edit_object_v3_request => $ezsignfoldertype_edit_object_v3_request)

Edit an existing Ezsignfoldertype



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldertype_id = 56; # int | 
my $ezsignfoldertype_edit_object_v3_request = EzmaxApi::Object::EzsignfoldertypeEditObjectV3Request->new(); # EzsignfoldertypeEditObjectV3Request | 

eval {
    my $result = $api_instance->ezsignfoldertype_edit_object_v3(pki_ezsignfoldertype_id => $pki_ezsignfoldertype_id, ezsignfoldertype_edit_object_v3_request => $ezsignfoldertype_edit_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_edit_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldertype_id** | **int**|  | 
 **ezsignfoldertype_edit_object_v3_request** | [**EzsignfoldertypeEditObjectV3Request**](EzsignfoldertypeEditObjectV3Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldertype_get_autocomplete_v2**
> EzsignfoldertypeGetAutocompleteV2Response ezsignfoldertype_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezsignfoldertypes and IDs

Get the list of Ezsignfoldertype to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsignfoldertypes to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezsignfoldertype_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsignfoldertypes to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**EzsignfoldertypeGetAutocompleteV2Response**](EzsignfoldertypeGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldertype_get_list_v1**
> EzsignfoldertypeGetListV1Response ezsignfoldertype_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsignfoldertype list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eEzsignfoldertypePrivacylevel | User<br>Usergroup |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

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
    my $result = $api_instance->ezsignfoldertype_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_get_list_v1: $@\n";
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

[**EzsignfoldertypeGetListV1Response**](EzsignfoldertypeGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldertype_get_object_v2**
> EzsignfoldertypeGetObjectV2Response ezsignfoldertype_get_object_v2(pki_ezsignfoldertype_id => $pki_ezsignfoldertype_id)

Retrieve an existing Ezsignfoldertype



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldertype_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfoldertype_get_object_v2(pki_ezsignfoldertype_id => $pki_ezsignfoldertype_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldertype_id** | **int**|  | 

### Return type

[**EzsignfoldertypeGetObjectV2Response**](EzsignfoldertypeGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfoldertype_get_object_v4**
> EzsignfoldertypeGetObjectV4Response ezsignfoldertype_get_object_v4(pki_ezsignfoldertype_id => $pki_ezsignfoldertype_id)

Retrieve an existing Ezsignfoldertype



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfoldertypeApi;
my $api_instance = EzmaxApi::ObjectEzsignfoldertypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfoldertype_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfoldertype_get_object_v4(pki_ezsignfoldertype_id => $pki_ezsignfoldertype_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfoldertypeApi->ezsignfoldertype_get_object_v4: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfoldertype_id** | **int**|  | 

### Return type

[**EzsignfoldertypeGetObjectV4Response**](EzsignfoldertypeGetObjectV4Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

