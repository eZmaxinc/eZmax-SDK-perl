# EzmaxApi::ObjectEzsignfolderApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfolderApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfolder_create_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_create_object_v1) | **POST** /1/object/ezsignfolder | Create a new Ezsignfolder
[**ezsignfolder_delete_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_delete_object_v1) | **DELETE** /1/object/ezsignfolder/{pkiEzsignfolderID} | Delete an existing Ezsignfolder
[**ezsignfolder_get_children_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_children_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getChildren | Retrieve an existing Ezsignfolder&#39;s children IDs
[**ezsignfolder_get_forms_data_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_forms_data_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getFormsData | Retrieve an existing Ezsignfolder&#39;s forms data
[**ezsignfolder_get_list_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_list_v1) | **GET** /1/object/ezsignfolder/getList | Retrieve Ezsignfolder list
[**ezsignfolder_get_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_object_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID} | Retrieve an existing Ezsignfolder
[**ezsignfolder_send_v1**](ObjectEzsignfolderApi.md#ezsignfolder_send_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/send | Send the Ezsignfolder to the signatories for signature


# **ezsignfolder_create_object_v1**
> EzsignfolderCreateObjectV1Response ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_request)

Create a new Ezsignfolder

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfolder_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignfolderCreateObjectV1Request]->new()]; # ARRAY[EzsignfolderCreateObjectV1Request] | 

eval {
    my $result = $api_instance->ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfolder_create_object_v1_request** | [**ARRAY[EzsignfolderCreateObjectV1Request]**](EzsignfolderCreateObjectV1Request.md)|  | 

### Return type

[**EzsignfolderCreateObjectV1Response**](EzsignfolderCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_delete_object_v1**
> EzsignfolderDeleteObjectV1Response ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Delete an existing Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderDeleteObjectV1Response**](EzsignfolderDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_children_v1**
> ezsignfolder_get_children_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's children IDs

## ⚠️EARLY ADOPTERS WARNING  ### This endpoint is not officially released. Its definition might still change and it might not be available in every environment and region.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    $api_instance->ezsignfolder_get_children_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_children_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

void (empty response body)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_forms_data_v1**
> EzsignfolderGetFormsDataV1Response ezsignfolder_get_forms_data_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's forms data

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_forms_data_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_forms_data_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetFormsDataV1Response**](EzsignfolderGetFormsDataV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_list_v1**
> EzsignfolderGetListV1Response ezsignfolder_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsignfolder list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

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
    my $result = $api_instance->ezsignfolder_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_list_v1: $@\n";
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

[**EzsignfolderGetListV1Response**](EzsignfolderGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_object_v1**
> EzsignfolderGetObjectV1Response ezsignfolder_get_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder

## ⚠️EARLY ADOPTERS WARNING  ### This endpoint is not officially released. Its definition might still change and it might not be available in every environment and region.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetObjectV1Response**](EzsignfolderGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_send_v1**
> EzsignfolderSendV1Response ezsignfolder_send_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_request)

Send the Ezsignfolder to the signatories for signature

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_send_v1_request = EzmaxApi::Object::EzsignfolderSendV1Request->new(); # EzsignfolderSendV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_send_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_send_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_send_v1_request** | [**EzsignfolderSendV1Request**](EzsignfolderSendV1Request.md)|  | 

### Return type

[**EzsignfolderSendV1Response**](EzsignfolderSendV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

