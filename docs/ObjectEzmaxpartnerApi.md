# EzmaxApi::ObjectEzmaxpartnerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzmaxpartnerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezmaxpartner_get_custom_developpers_v1**](ObjectEzmaxpartnerApi.md#ezmaxpartner_get_custom_developpers_v1) | **GET** /1/object/ezmaxpartner/getCustomDeveloppers | Retrieve Ezmaxpartner custom developpers list
[**ezmaxpartner_get_object_v2**](ObjectEzmaxpartnerApi.md#ezmaxpartner_get_object_v2) | **GET** /2/object/ezmaxpartner/{pkiEzmaxpartnerID} | Retrieve an existing Ezmaxpartner


# **ezmaxpartner_get_custom_developpers_v1**
> EzmaxpartnerGetCustomDeveloppersV1Response ezmaxpartner_get_custom_developpers_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezmaxpartner custom developpers list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzmaxpartnerApi;
my $api_instance = EzmaxApi::ObjectEzmaxpartnerApi->new(

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
    my $result = $api_instance->ezmaxpartner_get_custom_developpers_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzmaxpartnerApi->ezmaxpartner_get_custom_developpers_v1: $@\n";
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

[**EzmaxpartnerGetCustomDeveloppersV1Response**](EzmaxpartnerGetCustomDeveloppersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezmaxpartner_get_object_v2**
> EzmaxpartnerGetObjectV2Response ezmaxpartner_get_object_v2(pki_ezmaxpartner_id => $pki_ezmaxpartner_id)

Retrieve an existing Ezmaxpartner



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzmaxpartnerApi;
my $api_instance = EzmaxApi::ObjectEzmaxpartnerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezmaxpartner_id = 56; # int | The unique ID of the Ezmaxpartner

eval {
    my $result = $api_instance->ezmaxpartner_get_object_v2(pki_ezmaxpartner_id => $pki_ezmaxpartner_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzmaxpartnerApi->ezmaxpartner_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezmaxpartner_id** | **int**| The unique ID of the Ezmaxpartner | 

### Return type

[**EzmaxpartnerGetObjectV2Response**](EzmaxpartnerGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

