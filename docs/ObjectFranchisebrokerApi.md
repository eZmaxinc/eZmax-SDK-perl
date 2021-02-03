# EzmaxApi::ObjectFranchisebrokerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectFranchisebrokerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**franchisebroker_get_autocomplete_v1**](ObjectFranchisebrokerApi.md#franchisebroker_get_autocomplete_v1) | **GET** /1/object/franchisebroker/getAutocomplete/{sSelector} | Retrieve Franchisebrokers and IDs


# **franchisebroker_get_autocomplete_v1**
> CommonGetAutocompleteV1Response franchisebroker_get_autocomplete_v1(s_selector => $s_selector, s_query => $s_query)

Retrieve Franchisebrokers and IDs

Get the list of Franchisebrokers to be used in a dropdown or autocomplete control.

### Example 
```perl
use Data::Dumper;
use EzmaxApi::ObjectFranchisebrokerApi;
my $api_instance = EzmaxApi::ObjectFranchisebrokerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Franchisebrokers to return
my $s_query = "s_query_example"; # string | Allow to filter on the option value

eval { 
    my $result = $api_instance->franchisebroker_get_autocomplete_v1(s_selector => $s_selector, s_query => $s_query);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectFranchisebrokerApi->franchisebroker_get_autocomplete_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Franchisebrokers to return | 
 **s_query** | **string**| Allow to filter on the option value | [optional] 

### Return type

[**CommonGetAutocompleteV1Response**](CommonGetAutocompleteV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

