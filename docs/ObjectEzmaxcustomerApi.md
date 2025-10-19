# EzmaxApi::ObjectEzmaxcustomerApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzmaxcustomerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezmaxcustomer_patch_object_v1**](ObjectEzmaxcustomerApi.md#ezmaxcustomer_patch_object_v1) | **PATCH** /1/object/ezmaxcustomer/{pkiEzmaxcustomerID} | Patch an existing Ezmaxcustomer


# **ezmaxcustomer_patch_object_v1**
> EzmaxcustomerPatchObjectV1Response ezmaxcustomer_patch_object_v1(pki_ezmaxcustomer_id => $pki_ezmaxcustomer_id, ezmaxcustomer_patch_object_v1_request => $ezmaxcustomer_patch_object_v1_request)

Patch an existing Ezmaxcustomer



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzmaxcustomerApi;
my $api_instance = EzmaxApi::ObjectEzmaxcustomerApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezmaxcustomer_id = 56; # int | The unique ID of the Ezmaxcustomer
my $ezmaxcustomer_patch_object_v1_request = EzmaxApi::Object::EzmaxcustomerPatchObjectV1Request->new(); # EzmaxcustomerPatchObjectV1Request | 

eval {
    my $result = $api_instance->ezmaxcustomer_patch_object_v1(pki_ezmaxcustomer_id => $pki_ezmaxcustomer_id, ezmaxcustomer_patch_object_v1_request => $ezmaxcustomer_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzmaxcustomerApi->ezmaxcustomer_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezmaxcustomer_id** | **int**| The unique ID of the Ezmaxcustomer | 
 **ezmaxcustomer_patch_object_v1_request** | [**EzmaxcustomerPatchObjectV1Request**](EzmaxcustomerPatchObjectV1Request.md)|  | 

### Return type

[**EzmaxcustomerPatchObjectV1Response**](EzmaxcustomerPatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

