# EzmaxApi::ObjectBillingentityexternalApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectBillingentityexternalApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**billingentityexternal_generate_federation_token_v1**](ObjectBillingentityexternalApi.md#billingentityexternal_generate_federation_token_v1) | **POST** /1/object/billingentityexternal/{pkiBillingentityexternalID}/generateFederationToken | Generate a federation token
[**billingentityexternal_get_autocomplete_v2**](ObjectBillingentityexternalApi.md#billingentityexternal_get_autocomplete_v2) | **GET** /2/object/billingentityexternal/getAutocomplete/{sSelector} | Retrieve Billingentityexternals and IDs


# **billingentityexternal_generate_federation_token_v1**
> BillingentityexternalGenerateFederationTokenV1Response billingentityexternal_generate_federation_token_v1(pki_billingentityexternal_id => $pki_billingentityexternal_id, billingentityexternal_generate_federation_token_v1_request => $billingentityexternal_generate_federation_token_v1_request)

Generate a federation token



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityexternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_billingentityexternal_id = 56; # int | 
my $billingentityexternal_generate_federation_token_v1_request = EzmaxApi::Object::BillingentityexternalGenerateFederationTokenV1Request->new(); # BillingentityexternalGenerateFederationTokenV1Request | 

eval {
    my $result = $api_instance->billingentityexternal_generate_federation_token_v1(pki_billingentityexternal_id => $pki_billingentityexternal_id, billingentityexternal_generate_federation_token_v1_request => $billingentityexternal_generate_federation_token_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityexternalApi->billingentityexternal_generate_federation_token_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_billingentityexternal_id** | **int**|  | 
 **billingentityexternal_generate_federation_token_v1_request** | [**BillingentityexternalGenerateFederationTokenV1Request**](BillingentityexternalGenerateFederationTokenV1Request.md)|  | 

### Return type

[**BillingentityexternalGenerateFederationTokenV1Response**](BillingentityexternalGenerateFederationTokenV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **billingentityexternal_get_autocomplete_v2**
> BillingentityexternalGetAutocompleteV2Response billingentityexternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language)

Retrieve Billingentityexternals and IDs

Get the list of Billingentityexternal to be used in a dropdown or autocomplete control.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectBillingentityexternalApi;
my $api_instance = EzmaxApi::ObjectBillingentityexternalApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $s_selector = "s_selector_example"; # string | The type of Billingentityexternals to return
my $e_filter_active = 'Active'; # string | Specify which results we want to display.
my $s_query = "s_query_example"; # string | Allow to filter the returned results
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 

eval {
    my $result = $api_instance->billingentityexternal_get_autocomplete_v2(s_selector => $s_selector, e_filter_active => $e_filter_active, s_query => $s_query, accept_language => $accept_language);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectBillingentityexternalApi->billingentityexternal_get_autocomplete_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **s_selector** | **string**| The type of Billingentityexternals to return | 
 **e_filter_active** | **string**| Specify which results we want to display. | [optional] [default to &#39;Active&#39;]
 **s_query** | **string**| Allow to filter the returned results | [optional] 
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 

### Return type

[**BillingentityexternalGetAutocompleteV2Response**](BillingentityexternalGetAutocompleteV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

