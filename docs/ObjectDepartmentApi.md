# EzmaxApi::ObjectDepartmentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectDepartmentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**department_get_autocomplete_v2**](ObjectDepartmentApi.md#department_get_autocomplete_v2) | **GET** /2/object/department/getAutocomplete/{sSelector} | Retrieve Departments and IDs


# **department_get_autocomplete_v2**
> DepartmentGetAutocompleteV2Response department_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Departments and IDs

Get the list of Department to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectDepartmentApi;
my $api_instance = EzmaxApi::ObjectDepartmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Departments to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->department_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectDepartmentApi->department_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Departments to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**DepartmentGetAutocompleteV2Response**](DepartmentGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

