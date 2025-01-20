# EzmaxApi::ObjectEzsigntemplatepublicApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplatepublicApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplatepublic_create_ezsignfolder_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_create_ezsignfolder_v1) | **POST** /1/object/ezsigntemplatepublic/createEzsignfolder | Create an Ezsignfolder
[**ezsigntemplatepublic_create_object_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_create_object_v1) | **POST** /1/object/ezsigntemplatepublic | Create a new Ezsigntemplatepublic
[**ezsigntemplatepublic_edit_object_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_edit_object_v1) | **PUT** /1/object/ezsigntemplatepublic/{pkiEzsigntemplatepublicID} | Edit an existing Ezsigntemplatepublic
[**ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1) | **POST** /1/object/ezsigntemplatepublic/getEzsigntemplatepublicDetails | Retrieve the Ezsigntemplatepublic details
[**ezsigntemplatepublic_get_forms_data_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_get_forms_data_v1) | **GET** /1/object/ezsigntemplatepublic/{pkiEzsigntemplatepublicID}/getFormsData | Retrieve an existing Ezsigntemplatepublic&#39;s forms data
[**ezsigntemplatepublic_get_list_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_get_list_v1) | **GET** /1/object/ezsigntemplatepublic/getList | Retrieve Ezsigntemplatepublic list
[**ezsigntemplatepublic_get_object_v2**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_get_object_v2) | **GET** /2/object/ezsigntemplatepublic/{pkiEzsigntemplatepublicID} | Retrieve an existing Ezsigntemplatepublic
[**ezsigntemplatepublic_reset_limit_exceeded_counter_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_reset_limit_exceeded_counter_v1) | **POST** /1/object/ezsigntemplatepublic/{pkiEzsigntemplatepublicID}/resetLimitExceededCounter | Reset the limit exceeded counter
[**ezsigntemplatepublic_reset_url_v1**](ObjectEzsigntemplatepublicApi.md#ezsigntemplatepublic_reset_url_v1) | **POST** /1/object/ezsigntemplatepublic/{pkiEzsigntemplatepublicID}/resetUrl | Reset the Ezsigntemplatepublic url


# **ezsigntemplatepublic_create_ezsignfolder_v1**
> EzsigntemplatepublicCreateEzsignfolderV1Response ezsigntemplatepublic_create_ezsignfolder_v1(ezsigntemplatepublic_create_ezsignfolder_v1_request => $ezsigntemplatepublic_create_ezsignfolder_v1_request)

Create an Ezsignfolder

Create an Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepublic_create_ezsignfolder_v1_request = EzmaxApi::Object::EzsigntemplatepublicCreateEzsignfolderV1Request->new(); # EzsigntemplatepublicCreateEzsignfolderV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_create_ezsignfolder_v1(ezsigntemplatepublic_create_ezsignfolder_v1_request => $ezsigntemplatepublic_create_ezsignfolder_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_create_ezsignfolder_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepublic_create_ezsignfolder_v1_request** | [**EzsigntemplatepublicCreateEzsignfolderV1Request**](EzsigntemplatepublicCreateEzsignfolderV1Request.md)|  | 

### Return type

[**EzsigntemplatepublicCreateEzsignfolderV1Response**](EzsigntemplatepublicCreateEzsignfolderV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_create_object_v1**
> EzsigntemplatepublicCreateObjectV1Response ezsigntemplatepublic_create_object_v1(ezsigntemplatepublic_create_object_v1_request => $ezsigntemplatepublic_create_object_v1_request)

Create a new Ezsigntemplatepublic

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepublic_create_object_v1_request = EzmaxApi::Object::EzsigntemplatepublicCreateObjectV1Request->new(); # EzsigntemplatepublicCreateObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_create_object_v1(ezsigntemplatepublic_create_object_v1_request => $ezsigntemplatepublic_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepublic_create_object_v1_request** | [**EzsigntemplatepublicCreateObjectV1Request**](EzsigntemplatepublicCreateObjectV1Request.md)|  | 

### Return type

[**EzsigntemplatepublicCreateObjectV1Response**](EzsigntemplatepublicCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_edit_object_v1**
> CommonResponse ezsigntemplatepublic_edit_object_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id, ezsigntemplatepublic_edit_object_v1_request => $ezsigntemplatepublic_edit_object_v1_request)

Edit an existing Ezsigntemplatepublic



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepublic_id = 56; # int | The unique ID of the Ezsigntemplatepublic
my $ezsigntemplatepublic_edit_object_v1_request = EzmaxApi::Object::EzsigntemplatepublicEditObjectV1Request->new(); # EzsigntemplatepublicEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_edit_object_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id, ezsigntemplatepublic_edit_object_v1_request => $ezsigntemplatepublic_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepublic_id** | **int**| The unique ID of the Ezsigntemplatepublic | 
 **ezsigntemplatepublic_edit_object_v1_request** | [**EzsigntemplatepublicEditObjectV1Request**](EzsigntemplatepublicEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1**
> EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Response ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1(ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1_request => $ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1_request)

Retrieve the Ezsigntemplatepublic details

Retrieve the Ezsigntemplatepublic details

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1_request = EzmaxApi::Object::EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Request->new(); # EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Request | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1(ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1_request => $ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsigntemplatepublic_get_ezsigntemplatepublic_details_v1_request** | [**EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Request**](EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Request.md)|  | 

### Return type

[**EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Response**](EzsigntemplatepublicGetEzsigntemplatepublicDetailsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_get_forms_data_v1**
> EzsigntemplatepublicGetFormsDataV1Response ezsigntemplatepublic_get_forms_data_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id)

Retrieve an existing Ezsigntemplatepublic's forms data



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepublic_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_get_forms_data_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_get_forms_data_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepublic_id** | **int**|  | 

### Return type

[**EzsigntemplatepublicGetFormsDataV1Response**](EzsigntemplatepublicGetFormsDataV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_get_list_v1**
> EzsigntemplatepublicGetListV1Response ezsigntemplatepublic_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsigntemplatepublic list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eEzsigntemplatepublicLimittype | Hour<br>Day<br>Month<br>Total |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

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
    my $result = $api_instance->ezsigntemplatepublic_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_get_list_v1: $@\n";
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

[**EzsigntemplatepublicGetListV1Response**](EzsigntemplatepublicGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_get_object_v2**
> EzsigntemplatepublicGetObjectV2Response ezsigntemplatepublic_get_object_v2(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id)

Retrieve an existing Ezsigntemplatepublic



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepublic_id = 56; # int | The unique ID of the Ezsigntemplatepublic

eval {
    my $result = $api_instance->ezsigntemplatepublic_get_object_v2(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepublic_id** | **int**| The unique ID of the Ezsigntemplatepublic | 

### Return type

[**EzsigntemplatepublicGetObjectV2Response**](EzsigntemplatepublicGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_reset_limit_exceeded_counter_v1**
> EzsigntemplatepublicResetLimitExceededCounterV1Response ezsigntemplatepublic_reset_limit_exceeded_counter_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id, body => $body)

Reset the limit exceeded counter



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepublic_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_reset_limit_exceeded_counter_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_reset_limit_exceeded_counter_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepublic_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsigntemplatepublicResetLimitExceededCounterV1Response**](EzsigntemplatepublicResetLimitExceededCounterV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplatepublic_reset_url_v1**
> EzsigntemplatepublicResetUrlV1Response ezsigntemplatepublic_reset_url_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id, body => $body)

Reset the Ezsigntemplatepublic url



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplatepublicApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplatepublicApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplatepublic_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsigntemplatepublic_reset_url_v1(pki_ezsigntemplatepublic_id => $pki_ezsigntemplatepublic_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplatepublicApi->ezsigntemplatepublic_reset_url_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplatepublic_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsigntemplatepublicResetUrlV1Response**](EzsigntemplatepublicResetUrlV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

