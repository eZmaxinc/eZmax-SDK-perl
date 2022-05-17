# EzmaxApi::ModuleEzsignApi

## Load the API package
```perl
use EzmaxApi::Object::ModuleEzsignApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsign_suggest_signers_v1**](ModuleEzsignApi.md#ezsign_suggest_signers_v1) | **GET** /1/module/ezsign/suggestSigners | Suggest signers
[**ezsign_suggest_templates_v1**](ModuleEzsignApi.md#ezsign_suggest_templates_v1) | **GET** /1/module/ezsign/suggestTemplates | Suggest templates


# **ezsign_suggest_signers_v1**
> EzsignSuggestSignersV1Response ezsign_suggest_signers_v1()

Suggest signers

Retrieve previously used Ezsignsigners and all users from the system

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleEzsignApi;
my $api_instance = EzmaxApi::ModuleEzsignApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);


eval {
    my $result = $api_instance->ezsign_suggest_signers_v1();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleEzsignApi->ezsign_suggest_signers_v1: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**EzsignSuggestSignersV1Response**](EzsignSuggestSignersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsign_suggest_templates_v1**
> EzsignSuggestTemplatesV1Response ezsign_suggest_templates_v1(fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id)

Suggest templates

Retrieve Ezsigntemplates and Ezsigntemplatepackages that can be imported in a Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ModuleEzsignApi;
my $api_instance = EzmaxApi::ModuleEzsignApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $fki_ezsignfoldertype_id = 56; # int | 

eval {
    my $result = $api_instance->ezsign_suggest_templates_v1(fki_ezsignfoldertype_id => $fki_ezsignfoldertype_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ModuleEzsignApi->ezsign_suggest_templates_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fki_ezsignfoldertype_id** | **int**|  | [optional] 

### Return type

[**EzsignSuggestTemplatesV1Response**](EzsignSuggestTemplatesV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

