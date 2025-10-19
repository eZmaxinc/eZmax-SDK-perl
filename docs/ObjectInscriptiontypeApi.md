# EzmaxApi::ObjectInscriptiontypeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptiontypeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscriptiontype_get_autocomplete_v2**](ObjectInscriptiontypeApi.md#inscriptiontype_get_autocomplete_v2) | **GET** /2/object/inscriptiontype/getAutocomplete/{sSelector} | Retrieve Inscriptiontypes and IDs


# **inscriptiontype_get_autocomplete_v2**
> InscriptiontypeGetAutocompleteV2Response inscriptiontype_get_autocomplete_v2(s_selector => $s_selector, s_query => $s_query, accept_language => $accept_language)

Retrieve Inscriptiontypes and IDs

Get the list of Inscriptiontype to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontypeApi;
my $api_instance = EzmaxApi::ObjectInscriptiontypeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Inscriptiontypes to return
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->inscriptiontype_get_autocomplete_v2(s_selector => $s_selector, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontypeApi->inscriptiontype_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Inscriptiontypes to return | 
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**InscriptiontypeGetAutocompleteV2Response**](InscriptiontypeGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

