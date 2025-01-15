# EzmaxApi::ObjectEzsigntemplateApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplateApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplate_copy_v1**](ObjectEzsigntemplateApi.md#ezsigntemplate_copy_v1) | **POST** /1/object/ezsigntemplate/{pkiEzsigntemplateID}/copy | Copy the Ezsigntemplate
[**ezsigntemplate_create_object_v3**](ObjectEzsigntemplateApi.md#ezsigntemplate_create_object_v3) | **POST** /3/object/ezsigntemplate | Create a new Ezsigntemplate
[**ezsigntemplate_delete_object_v1**](ObjectEzsigntemplateApi.md#ezsigntemplate_delete_object_v1) | **DELETE** /1/object/ezsigntemplate/{pkiEzsigntemplateID} | Delete an existing Ezsigntemplate
[**ezsigntemplate_edit_object_v3**](ObjectEzsigntemplateApi.md#ezsigntemplate_edit_object_v3) | **PUT** /3/object/ezsigntemplate/{pkiEzsigntemplateID} | Edit an existing Ezsigntemplate
[**ezsigntemplate_get_autocomplete_v2**](ObjectEzsigntemplateApi.md#ezsigntemplate_get_autocomplete_v2) | **GET** /2/object/ezsigntemplate/getAutocomplete/{sSelector} | Retrieve Ezsigntemplates and IDs
[**ezsigntemplate_get_list_v1**](ObjectEzsigntemplateApi.md#ezsigntemplate_get_list_v1) | **GET** /1/object/ezsigntemplate/getList | Retrieve Ezsigntemplate list
[**ezsigntemplate_get_object_v3**](ObjectEzsigntemplateApi.md#ezsigntemplate_get_object_v3) | **GET** /3/object/ezsigntemplate/{pkiEzsigntemplateID} | Retrieve an existing Ezsigntemplate


# **ezsigntemplate_copy_v1**
> EzsigntemplateCopyV1Response ezsigntemplate_copy_v1(pki_ezsigntemplate_id => $pki_ezsigntemplate_id, ezsigntemplate_copy_v1_request => $ezsigntemplate_copy_v1_request)

Copy the Ezsigntemplate



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplate_id = 56; # int | 
my $ezsigntemplate_copy_v1_request = EzmaxApi::Object::EzsigntemplateCopyV1Request->new(); # EzsigntemplateCopyV1Request | 

eval {
    my $result = $api_instance->ezsigntemplate_copy_v1(pki_ezsigntemplate_id => $pki_ezsigntemplate_id, ezsigntemplate_copy_v1_request => $ezsigntemplate_copy_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_copy_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplate_id** | **int**|  | 
 **ezsigntemplate_copy_v1_request** | [**EzsigntemplateCopyV1Request**](EzsigntemplateCopyV1Request.md)|  | 

### Return type

[**EzsigntemplateCopyV1Response**](EzsigntemplateCopyV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplate_create_object_v3**
> EzsigntemplateCreateObjectV3Response ezsigntemplate_create_object_v3(ezsigntemplate_create_object_v3_request => $ezsigntemplate_create_object_v3_request)

Create a new Ezsigntemplate

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplate_create_object_v3_request = EzmaxApi::Object::EzsigntemplateCreateObjectV3Request->new(); # EzsigntemplateCreateObjectV3Request | 

eval {
    my $result = $api_instance->ezsigntemplate_create_object_v3(ezsigntemplate_create_object_v3_request => $ezsigntemplate_create_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_create_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplate_create_object_v3_request** | [**EzsigntemplateCreateObjectV3Request**](EzsigntemplateCreateObjectV3Request.md)|  | 

### Return type

[**EzsigntemplateCreateObjectV3Response**](EzsigntemplateCreateObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplate_delete_object_v1**
> CommonResponse ezsigntemplate_delete_object_v1(pki_ezsigntemplate_id => $pki_ezsigntemplate_id)

Delete an existing Ezsigntemplate



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplate_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplate_delete_object_v1(pki_ezsigntemplate_id => $pki_ezsigntemplate_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplate_id** | **int**|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplate_edit_object_v3**
> CommonResponse ezsigntemplate_edit_object_v3(pki_ezsigntemplate_id => $pki_ezsigntemplate_id, ezsigntemplate_edit_object_v3_request => $ezsigntemplate_edit_object_v3_request)

Edit an existing Ezsigntemplate



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplate_id = 56; # int | 
my $ezsigntemplate_edit_object_v3_request = EzmaxApi::Object::EzsigntemplateEditObjectV3Request->new(); # EzsigntemplateEditObjectV3Request | 

eval {
    my $result = $api_instance->ezsigntemplate_edit_object_v3(pki_ezsigntemplate_id => $pki_ezsigntemplate_id, ezsigntemplate_edit_object_v3_request => $ezsigntemplate_edit_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_edit_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplate_id** | **int**|  | 
 **ezsigntemplate_edit_object_v3_request** | [**EzsigntemplateEditObjectV3Request**](EzsigntemplateEditObjectV3Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplate_get_autocomplete_v2**
> EzsigntemplateGetAutocompleteV2Response ezsigntemplate_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language, fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id)

Retrieve Ezsigntemplates and IDs

Get the list of Ezsigntemplate to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsigntemplates to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $fki_ezsignfoldertype_id = 56; # int | The fkiEzsignfoldertypeID to use with the selector Ezsigntemplatepublic

eval {
    my $result = $api_instance->ezsigntemplate_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language, fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsigntemplates to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **fki_ezsignfoldertype_id** | **int**| The fkiEzsignfoldertypeID to use with the selector Ezsigntemplatepublic | [optional] 

### Return type

[**EzsigntemplateGetAutocompleteV2Response**](EzsigntemplateGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplate_get_list_v1**
> EzsigntemplateGetListV1Response ezsigntemplate_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsigntemplate list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eEzsigntemplateType | Company<br>Team<br>User<br>Usergroup | 

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

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
    my $result = $api_instance->ezsigntemplate_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_get_list_v1: $@\n";
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

[**EzsigntemplateGetListV1Response**](EzsigntemplateGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplate_get_object_v3**
> EzsigntemplateGetObjectV3Response ezsigntemplate_get_object_v3(pki_ezsigntemplate_id => $pki_ezsigntemplate_id)

Retrieve an existing Ezsigntemplate



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplate_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplate_get_object_v3(pki_ezsigntemplate_id => $pki_ezsigntemplate_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateApi->ezsigntemplate_get_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplate_id** | **int**|  | 

### Return type

[**EzsigntemplateGetObjectV3Response**](EzsigntemplateGetObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

