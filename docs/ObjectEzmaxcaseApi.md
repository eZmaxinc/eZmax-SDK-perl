# EzmaxApi::ObjectEzmaxcaseApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzmaxcaseApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezmaxcase_patch_object_v1**](ObjectEzmaxcaseApi.md#ezmaxcase_patch_object_v1) | **PATCH** /1/object/ezmaxcase/{pkiEzmaxcaseID} | Patch an existing Ezmaxcase


# **ezmaxcase_patch_object_v1**
> EzmaxcasePatchObjectV1Response ezmaxcase_patch_object_v1(pki_ezmaxcase_id => $pki_ezmaxcase_id, ezmaxcase_patch_object_v1_request => $ezmaxcase_patch_object_v1_request)

Patch an existing Ezmaxcase



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzmaxcaseApi;
my $api_instance = EzmaxApi::ObjectEzmaxcaseApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezmaxcase_id = 56; # int | The unique ID of the Ezmaxcase
my $ezmaxcase_patch_object_v1_request = EzmaxApi::Object::EzmaxcasePatchObjectV1Request->new(); # EzmaxcasePatchObjectV1Request | 

eval {
    my $result = $api_instance->ezmaxcase_patch_object_v1(pki_ezmaxcase_id => $pki_ezmaxcase_id, ezmaxcase_patch_object_v1_request => $ezmaxcase_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzmaxcaseApi->ezmaxcase_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezmaxcase_id** | **int**| The unique ID of the Ezmaxcase | 
 **ezmaxcase_patch_object_v1_request** | [**EzmaxcasePatchObjectV1Request**](EzmaxcasePatchObjectV1Request.md)|  | 

### Return type

[**EzmaxcasePatchObjectV1Response**](EzmaxcasePatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

