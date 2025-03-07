# EzmaxApi::ObjectEzsignimportfolderApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignimportfolderApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignimportfolder_delete_object_v1**](ObjectEzsignimportfolderApi.md#ezsignimportfolder_delete_object_v1) | **DELETE** /1/object/ezsignimportfolder/{pkiEzsignimportfolderID} | Delete an existing Ezsignimportfolder
[**ezsignimportfolder_get_list_v1**](ObjectEzsignimportfolderApi.md#ezsignimportfolder_get_list_v1) | **GET** /1/object/ezsignimportfolder/getList | Retrieve Ezsignimportfolder list
[**ezsignimportfolder_get_object_v2**](ObjectEzsignimportfolderApi.md#ezsignimportfolder_get_object_v2) | **GET** /2/object/ezsignimportfolder/{pkiEzsignimportfolderID} | Retrieve an existing Ezsignimportfolder


# **ezsignimportfolder_delete_object_v1**
> EzsignimportfolderDeleteObjectV1Response ezsignimportfolder_delete_object_v1(pki_ezsignimportfolder_id => $pki_ezsignimportfolder_id)

Delete an existing Ezsignimportfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignimportfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignimportfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignimportfolder_id = 56; # int | The unique ID of the Ezsignimportfolder

eval {
    my $result = $api_instance->ezsignimportfolder_delete_object_v1(pki_ezsignimportfolder_id => $pki_ezsignimportfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignimportfolderApi->ezsignimportfolder_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignimportfolder_id** | **int**| The unique ID of the Ezsignimportfolder | 

### Return type

[**EzsignimportfolderDeleteObjectV1Response**](EzsignimportfolderDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignimportfolder_get_list_v1**
> EzsignimportfolderGetListV1Response ezsignimportfolder_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsignimportfolder list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignimportfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignimportfolderApi->new(

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
    my $result = $api_instance->ezsignimportfolder_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignimportfolderApi->ezsignimportfolder_get_list_v1: $@\n";
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

[**EzsignimportfolderGetListV1Response**](EzsignimportfolderGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignimportfolder_get_object_v2**
> EzsignimportfolderGetObjectV2Response ezsignimportfolder_get_object_v2(pki_ezsignimportfolder_id => $pki_ezsignimportfolder_id)

Retrieve an existing Ezsignimportfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignimportfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignimportfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignimportfolder_id = 56; # int | The unique ID of the Ezsignimportfolder

eval {
    my $result = $api_instance->ezsignimportfolder_get_object_v2(pki_ezsignimportfolder_id => $pki_ezsignimportfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignimportfolderApi->ezsignimportfolder_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignimportfolder_id** | **int**| The unique ID of the Ezsignimportfolder | 

### Return type

[**EzsignimportfolderGetObjectV2Response**](EzsignimportfolderGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

