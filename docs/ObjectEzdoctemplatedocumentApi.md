# EzmaxApi::ObjectEzdoctemplatedocumentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzdoctemplatedocumentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezdoctemplatedocument_create_object_v1**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_create_object_v1) | **POST** /1/object/ezdoctemplatedocument | Create a new Ezdoctemplatedocument
[**ezdoctemplatedocument_download_v1**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_download_v1) | **GET** /1/object/ezdoctemplatedocument/{pkiEzdoctemplatedocumentID}/download | Retrieve the content
[**ezdoctemplatedocument_edit_object_v1**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_edit_object_v1) | **PUT** /1/object/ezdoctemplatedocument/{pkiEzdoctemplatedocumentID} | Edit an existing Ezdoctemplatedocument
[**ezdoctemplatedocument_get_autocomplete_v2**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_get_autocomplete_v2) | **GET** /2/object/ezdoctemplatedocument/getAutocomplete/{sSelector} | Retrieve Ezdoctemplatedocuments and IDs
[**ezdoctemplatedocument_get_list_v1**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_get_list_v1) | **GET** /1/object/ezdoctemplatedocument/getList | Retrieve Ezdoctemplatedocument list
[**ezdoctemplatedocument_get_object_v2**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_get_object_v2) | **GET** /2/object/ezdoctemplatedocument/{pkiEzdoctemplatedocumentID} | Retrieve an existing Ezdoctemplatedocument
[**ezdoctemplatedocument_patch_object_v1**](ObjectEzdoctemplatedocumentApi.md#ezdoctemplatedocument_patch_object_v1) | **PATCH** /1/object/ezdoctemplatedocument/{pkiEzdoctemplatedocumentID} | Patch an existing Ezdoctemplatedocument


# **ezdoctemplatedocument_create_object_v1**
> EzdoctemplatedocumentCreateObjectV1Response ezdoctemplatedocument_create_object_v1(ezdoctemplatedocument_create_object_v1_request => $ezdoctemplatedocument_create_object_v1_request)

Create a new Ezdoctemplatedocument

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezdoctemplatedocument_create_object_v1_request = EzmaxApi::Object::EzdoctemplatedocumentCreateObjectV1Request->new(); # EzdoctemplatedocumentCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezdoctemplatedocument_create_object_v1(ezdoctemplatedocument_create_object_v1_request => $ezdoctemplatedocument_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezdoctemplatedocument_create_object_v1_request** | [**EzdoctemplatedocumentCreateObjectV1Request**](EzdoctemplatedocumentCreateObjectV1Request.md)|  | 

### Return type

[**EzdoctemplatedocumentCreateObjectV1Response**](EzdoctemplatedocumentCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezdoctemplatedocument_download_v1**
> ezdoctemplatedocument_download_v1(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id)

Retrieve the content

Using this endpoint, you can retrieve the content of an ezdoctemplatedocument.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
    # Configure API key authorization: Presigned
    api_key => {'sAuthorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'sAuthorization' => 'Bearer'},
);

my $pki_ezdoctemplatedocument_id = 56; # int | 

eval {
    $api_instance->ezdoctemplatedocument_download_v1(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezdoctemplatedocument_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization), [Presigned](../README.md#Presigned)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezdoctemplatedocument_edit_object_v1**
> EzdoctemplatedocumentEditObjectV1Response ezdoctemplatedocument_edit_object_v1(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id, ezdoctemplatedocument_edit_object_v1_request => $ezdoctemplatedocument_edit_object_v1_request)

Edit an existing Ezdoctemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezdoctemplatedocument_id = 56; # int | The unique ID of the Ezdoctemplatedocument
my $ezdoctemplatedocument_edit_object_v1_request = EzmaxApi::Object::EzdoctemplatedocumentEditObjectV1Request->new(); # EzdoctemplatedocumentEditObjectV1Request | 

eval {
    my $result = $api_instance->ezdoctemplatedocument_edit_object_v1(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id, ezdoctemplatedocument_edit_object_v1_request => $ezdoctemplatedocument_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezdoctemplatedocument_id** | **int**| The unique ID of the Ezdoctemplatedocument | 
 **ezdoctemplatedocument_edit_object_v1_request** | [**EzdoctemplatedocumentEditObjectV1Request**](EzdoctemplatedocumentEditObjectV1Request.md)|  | 

### Return type

[**EzdoctemplatedocumentEditObjectV1Response**](EzdoctemplatedocumentEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezdoctemplatedocument_get_autocomplete_v2**
> EzdoctemplatedocumentGetAutocompleteV2Response ezdoctemplatedocument_get_autocomplete_v2(s_selector => $s_selector, e_type => $e_type, fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezdoctemplatedocuments and IDs

Get the list of Ezdoctemplatedocument to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezdoctemplatedocuments to return
my $e_type = 'CompanyEzsignfoldertype'; # string | The type of Ezdoctemplatedocument
my $fki_ezsignfoldertype_id = "fki_ezsignfoldertype_id_example"; # string | Specify which fkiEzsignfoldertypeID we want to display. only used when eType = Ezsignfoldertype
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezdoctemplatedocument_get_autocomplete_v2(s_selector => $s_selector, e_type => $e_type, fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezdoctemplatedocuments to return | 
 **e_type** | **string**| The type of Ezdoctemplatedocument | [default to &#39;CompanyEzsignfoldertype&#39;]
 **fki_ezsignfoldertype_id** | **string**| Specify which fkiEzsignfoldertypeID we want to display. only used when eType &#x3D; Ezsignfoldertype | [optional] 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**EzdoctemplatedocumentGetAutocompleteV2Response**](EzdoctemplatedocumentGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezdoctemplatedocument_get_list_v1**
> EzdoctemplatedocumentGetListV1Response ezdoctemplatedocument_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezdoctemplatedocument list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

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
    my $result = $api_instance->ezdoctemplatedocument_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_get_list_v1: $@\n";
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

[**EzdoctemplatedocumentGetListV1Response**](EzdoctemplatedocumentGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezdoctemplatedocument_get_object_v2**
> EzdoctemplatedocumentGetObjectV2Response ezdoctemplatedocument_get_object_v2(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id)

Retrieve an existing Ezdoctemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezdoctemplatedocument_id = 56; # int | The unique ID of the Ezdoctemplatedocument

eval {
    my $result = $api_instance->ezdoctemplatedocument_get_object_v2(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezdoctemplatedocument_id** | **int**| The unique ID of the Ezdoctemplatedocument | 

### Return type

[**EzdoctemplatedocumentGetObjectV2Response**](EzdoctemplatedocumentGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezdoctemplatedocument_patch_object_v1**
> EzdoctemplatedocumentPatchObjectV1Response ezdoctemplatedocument_patch_object_v1(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id, ezdoctemplatedocument_patch_object_v1_request => $ezdoctemplatedocument_patch_object_v1_request)

Patch an existing Ezdoctemplatedocument



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzdoctemplatedocumentApi;
my $api_instance = EzmaxApi::ObjectEzdoctemplatedocumentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezdoctemplatedocument_id = 56; # int | The unique ID of the Ezdoctemplatedocument
my $ezdoctemplatedocument_patch_object_v1_request = EzmaxApi::Object::EzdoctemplatedocumentPatchObjectV1Request->new(); # EzdoctemplatedocumentPatchObjectV1Request | 

eval {
    my $result = $api_instance->ezdoctemplatedocument_patch_object_v1(pki_ezdoctemplatedocument_id => $pki_ezdoctemplatedocument_id, ezdoctemplatedocument_patch_object_v1_request => $ezdoctemplatedocument_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzdoctemplatedocumentApi->ezdoctemplatedocument_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezdoctemplatedocument_id** | **int**| The unique ID of the Ezdoctemplatedocument | 
 **ezdoctemplatedocument_patch_object_v1_request** | [**EzdoctemplatedocumentPatchObjectV1Request**](EzdoctemplatedocumentPatchObjectV1Request.md)|  | 

### Return type

[**EzdoctemplatedocumentPatchObjectV1Response**](EzdoctemplatedocumentPatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

