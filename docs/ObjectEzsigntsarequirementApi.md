# EzmaxApi::ObjectEzsigntsarequirementApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntsarequirementApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntsarequirement_get_autocomplete_v1**](ObjectEzsigntsarequirementApi.md#ezsigntsarequirement_get_autocomplete_v1) | **GET** /1/object/ezsigntsarequirement/getAutocomplete/{sSelector} | Retrieve Ezsigntsarequirements and IDs


# **ezsigntsarequirement_get_autocomplete_v1**
> CommonGetAutocompleteDisabledV1Response ezsigntsarequirement_get_autocomplete_v1(s_selector => $s_selector, fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Ezsigntsarequirements and IDs

Get the list of Ezsigntsarequirement to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntsarequirementApi;
my $api_instance = EzmaxApi::ObjectEzsigntsarequirementApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Ezsigntsarequirements to return
my $fki_ezsignfoldertype_id = 56; # int | 
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->ezsigntsarequirement_get_autocomplete_v1(s_selector => $s_selector, fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntsarequirementApi->ezsigntsarequirement_get_autocomplete_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Ezsigntsarequirements to return | 
 **fki_ezsignfoldertype_id** | **int**|  | [optional] 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**CommonGetAutocompleteDisabledV1Response**](CommonGetAutocompleteDisabledV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

