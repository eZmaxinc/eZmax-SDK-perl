# EzmaxApi::ObjectEzsigntemplateglobalApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplateglobalApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplateglobal_get_autocomplete_v2**](ObjectEzsigntemplateglobalApi.md#ezsigntemplateglobal_get_autocomplete_v2) | **GET** /2/object/ezsigntemplateglobal/getAutocomplete/{sSelector} | Retrieve Ezsigntemplateglobals and IDs
[**ezsigntemplateglobal_get_object_v2**](ObjectEzsigntemplateglobalApi.md#ezsigntemplateglobal_get_object_v2) | **GET** /2/object/ezsigntemplateglobal/{pkiEzsigntemplateglobalID} | Retrieve an existing Ezsigntemplateglobal


# **ezsigntemplateglobal_get_autocomplete_v2**
> EzsigntemplateglobalGetAutocompleteV2Response ezsigntemplateglobal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezsigntemplateglobals and IDs

Get the list of Ezsigntemplateglobal to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateglobalApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateglobalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsigntemplateglobals to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezsigntemplateglobal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateglobalApi->ezsigntemplateglobal_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsigntemplateglobals to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**EzsigntemplateglobalGetAutocompleteV2Response**](EzsigntemplateglobalGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsigntemplateglobal_get_object_v2**
> EzsigntemplateglobalGetObjectV2Response ezsigntemplateglobal_get_object_v2(pki_ezsigntemplateglobal_id => $pki_ezsigntemplateglobal_id)

Retrieve an existing Ezsigntemplateglobal



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateglobalApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateglobalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateglobal_id = 56; # int | 

eval {
    my $result = $api_instance->ezsigntemplateglobal_get_object_v2(pki_ezsigntemplateglobal_id => $pki_ezsigntemplateglobal_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateglobalApi->ezsigntemplateglobal_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateglobal_id** | **int**|  | 

### Return type

[**EzsigntemplateglobalGetObjectV2Response**](EzsigntemplateglobalGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

