# EzmaxApi::ObjectEzsignbulksendApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignbulksendApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignbulksend_create_ezsignbulksendtransmission_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_create_ezsignbulksendtransmission_v1) | **POST** /1/object/ezsignbulksend/{pkiEzsignbulksendID}/createEzsignbulksendtransmission | Create a new Ezsignbulksendtransmission in the Ezsignbulksend
[**ezsignbulksend_create_object_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_create_object_v1) | **POST** /1/object/ezsignbulksend | Create a new Ezsignbulksend
[**ezsignbulksend_delete_object_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_delete_object_v1) | **DELETE** /1/object/ezsignbulksend/{pkiEzsignbulksendID} | Delete an existing Ezsignbulksend
[**ezsignbulksend_edit_object_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_edit_object_v1) | **PUT** /1/object/ezsignbulksend/{pkiEzsignbulksendID} | Edit an existing Ezsignbulksend
[**ezsignbulksend_get_csv_template_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_get_csv_template_v1) | **GET** /1/object/ezsignbulksend/{pkiEzsignbulksendID}/getCsvTemplate | Retrieve an existing Ezsignbulksend&#39;s empty Csv template
[**ezsignbulksend_get_ezsignbulksendtransmissions_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_get_ezsignbulksendtransmissions_v1) | **GET** /1/object/ezsignbulksend/{pkiEzsignbulksendID}/getEzsignbulksendtransmissions | Retrieve an existing Ezsignbulksend&#39;s Ezsignbulksendtransmissions
[**ezsignbulksend_get_ezsignsignatures_automatic_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_get_ezsignsignatures_automatic_v1) | **GET** /1/object/ezsignbulksend/{pkiEzsignbulksendID}/getEzsignsignaturesAutomatic | Retrieve an existing Ezsignbulksend&#39;s automatic Ezsignsignatures
[**ezsignbulksend_get_forms_data_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_get_forms_data_v1) | **GET** /1/object/ezsignbulksend/{pkiEzsignbulksendID}/getFormsData | Retrieve an existing Ezsignbulksend&#39;s forms data
[**ezsignbulksend_get_list_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_get_list_v1) | **GET** /1/object/ezsignbulksend/getList | Retrieve Ezsignbulksend list
[**ezsignbulksend_get_object_v2**](ObjectEzsignbulksendApi.md#ezsignbulksend_get_object_v2) | **GET** /2/object/ezsignbulksend/{pkiEzsignbulksendID} | Retrieve an existing Ezsignbulksend
[**ezsignbulksend_reorder_v1**](ObjectEzsignbulksendApi.md#ezsignbulksend_reorder_v1) | **POST** /1/object/ezsignbulksend/{pkiEzsignbulksendID}/reorder | Reorder Ezsignbulksenddocumentmappings in the Ezsignbulksend


# **ezsignbulksend_create_ezsignbulksendtransmission_v1**
> EzsignbulksendCreateEzsignbulksendtransmissionV1Response ezsignbulksend_create_ezsignbulksendtransmission_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, ezsignbulksend_create_ezsignbulksendtransmission_v1_request => $ezsignbulksend_create_ezsignbulksendtransmission_v1_request)

Create a new Ezsignbulksendtransmission in the Ezsignbulksend

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 
my $ezsignbulksend_create_ezsignbulksendtransmission_v1_request = EzmaxApi::Object::EzsignbulksendCreateEzsignbulksendtransmissionV1Request->new(); # EzsignbulksendCreateEzsignbulksendtransmissionV1Request | 

eval {
    my $result = $api_instance->ezsignbulksend_create_ezsignbulksendtransmission_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, ezsignbulksend_create_ezsignbulksendtransmission_v1_request => $ezsignbulksend_create_ezsignbulksendtransmission_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_create_ezsignbulksendtransmission_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 
 **ezsignbulksend_create_ezsignbulksendtransmission_v1_request** | [**EzsignbulksendCreateEzsignbulksendtransmissionV1Request**](EzsignbulksendCreateEzsignbulksendtransmissionV1Request.md)|  | 

### Return type

[**EzsignbulksendCreateEzsignbulksendtransmissionV1Response**](EzsignbulksendCreateEzsignbulksendtransmissionV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_create_object_v1**
> EzsignbulksendCreateObjectV1Response ezsignbulksend_create_object_v1(ezsignbulksend_create_object_v1_request => $ezsignbulksend_create_object_v1_request)

Create a new Ezsignbulksend

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignbulksend_create_object_v1_request = EzmaxApi::Object::EzsignbulksendCreateObjectV1Request->new(); # EzsignbulksendCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsignbulksend_create_object_v1(ezsignbulksend_create_object_v1_request => $ezsignbulksend_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignbulksend_create_object_v1_request** | [**EzsignbulksendCreateObjectV1Request**](EzsignbulksendCreateObjectV1Request.md)|  | 

### Return type

[**EzsignbulksendCreateObjectV1Response**](EzsignbulksendCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_delete_object_v1**
> EzsignbulksendDeleteObjectV1Response ezsignbulksend_delete_object_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id)

Delete an existing Ezsignbulksend



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksend_delete_object_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 

### Return type

[**EzsignbulksendDeleteObjectV1Response**](EzsignbulksendDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_edit_object_v1**
> EzsignbulksendEditObjectV1Response ezsignbulksend_edit_object_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, ezsignbulksend_edit_object_v1_request => $ezsignbulksend_edit_object_v1_request)

Edit an existing Ezsignbulksend



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 
my $ezsignbulksend_edit_object_v1_request = EzmaxApi::Object::EzsignbulksendEditObjectV1Request->new(); # EzsignbulksendEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignbulksend_edit_object_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, ezsignbulksend_edit_object_v1_request => $ezsignbulksend_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 
 **ezsignbulksend_edit_object_v1_request** | [**EzsignbulksendEditObjectV1Request**](EzsignbulksendEditObjectV1Request.md)|  | 

### Return type

[**EzsignbulksendEditObjectV1Response**](EzsignbulksendEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_get_csv_template_v1**
> string ezsignbulksend_get_csv_template_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, e_csv_separator => $e_csv_separator)

Retrieve an existing Ezsignbulksend's empty Csv template



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 
my $e_csv_separator = "e_csv_separator_example"; # string | Separator that will be used to separate fields

eval {
    my $result = $api_instance->ezsignbulksend_get_csv_template_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, e_csv_separator => $e_csv_separator);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_get_csv_template_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 
 **e_csv_separator** | **string**| Separator that will be used to separate fields | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_get_ezsignbulksendtransmissions_v1**
> EzsignbulksendGetEzsignbulksendtransmissionsV1Response ezsignbulksend_get_ezsignbulksendtransmissions_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id)

Retrieve an existing Ezsignbulksend's Ezsignbulksendtransmissions



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksend_get_ezsignbulksendtransmissions_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_get_ezsignbulksendtransmissions_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 

### Return type

[**EzsignbulksendGetEzsignbulksendtransmissionsV1Response**](EzsignbulksendGetEzsignbulksendtransmissionsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_get_ezsignsignatures_automatic_v1**
> EzsignbulksendGetEzsignsignaturesAutomaticV1Response ezsignbulksend_get_ezsignsignatures_automatic_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id)

Retrieve an existing Ezsignbulksend's automatic Ezsignsignatures

Return the Ezsignsignatures that can be signed by the current user at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksend_get_ezsignsignatures_automatic_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_get_ezsignsignatures_automatic_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 

### Return type

[**EzsignbulksendGetEzsignsignaturesAutomaticV1Response**](EzsignbulksendGetEzsignsignaturesAutomaticV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_get_forms_data_v1**
> EzsignbulksendGetFormsDataV1Response ezsignbulksend_get_forms_data_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id)

Retrieve an existing Ezsignbulksend's forms data



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksend_get_forms_data_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_get_forms_data_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 

### Return type

[**EzsignbulksendGetFormsDataV1Response**](EzsignbulksendGetFormsDataV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_get_list_v1**
> EzsignbulksendGetListV1Response ezsignbulksend_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsignbulksend list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eEzsignfoldertypePrivacylevel | User<br>Usergroup |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

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
    my $result = $api_instance->ezsignbulksend_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_get_list_v1: $@\n";
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

[**EzsignbulksendGetListV1Response**](EzsignbulksendGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_get_object_v2**
> EzsignbulksendGetObjectV2Response ezsignbulksend_get_object_v2(pki_ezsignbulksend_id => $pki_ezsignbulksend_id)

Retrieve an existing Ezsignbulksend



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksend_get_object_v2(pki_ezsignbulksend_id => $pki_ezsignbulksend_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 

### Return type

[**EzsignbulksendGetObjectV2Response**](EzsignbulksendGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksend_reorder_v1**
> EzsignbulksendReorderV1Response ezsignbulksend_reorder_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, ezsignbulksend_reorder_v1_request => $ezsignbulksend_reorder_v1_request)

Reorder Ezsignbulksenddocumentmappings in the Ezsignbulksend

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksend_id = 56; # int | 
my $ezsignbulksend_reorder_v1_request = EzmaxApi::Object::EzsignbulksendReorderV1Request->new(); # EzsignbulksendReorderV1Request | 

eval {
    my $result = $api_instance->ezsignbulksend_reorder_v1(pki_ezsignbulksend_id => $pki_ezsignbulksend_id, ezsignbulksend_reorder_v1_request => $ezsignbulksend_reorder_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendApi->ezsignbulksend_reorder_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksend_id** | **int**|  | 
 **ezsignbulksend_reorder_v1_request** | [**EzsignbulksendReorderV1Request**](EzsignbulksendReorderV1Request.md)|  | 

### Return type

[**EzsignbulksendReorderV1Response**](EzsignbulksendReorderV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

