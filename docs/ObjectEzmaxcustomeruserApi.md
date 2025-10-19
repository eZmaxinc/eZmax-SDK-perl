# EzmaxApi::ObjectEzmaxcustomeruserApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzmaxcustomeruserApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezmaxcustomeruser_patch_object_v1**](ObjectEzmaxcustomeruserApi.md#ezmaxcustomeruser_patch_object_v1) | **PATCH** /1/object/ezmaxcustomeruser/{pkiEzmaxcustomeruserID} | Patch an existing Ezmaxcustomeruser


# **ezmaxcustomeruser_patch_object_v1**
> EzmaxcustomeruserPatchObjectV1Response ezmaxcustomeruser_patch_object_v1(pki_ezmaxcustomeruser_id => $pki_ezmaxcustomeruser_id, ezmaxcustomeruser_patch_object_v1_request => $ezmaxcustomeruser_patch_object_v1_request)

Patch an existing Ezmaxcustomeruser



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzmaxcustomeruserApi;
my $api_instance = EzmaxApi::ObjectEzmaxcustomeruserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezmaxcustomeruser_id = 56; # int | The unique ID of the Ezmaxcustomeruser
my $ezmaxcustomeruser_patch_object_v1_request = EzmaxApi::Object::EzmaxcustomeruserPatchObjectV1Request->new(); # EzmaxcustomeruserPatchObjectV1Request | 

eval {
    my $result = $api_instance->ezmaxcustomeruser_patch_object_v1(pki_ezmaxcustomeruser_id => $pki_ezmaxcustomeruser_id, ezmaxcustomeruser_patch_object_v1_request => $ezmaxcustomeruser_patch_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzmaxcustomeruserApi->ezmaxcustomeruser_patch_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezmaxcustomeruser_id** | **int**| The unique ID of the Ezmaxcustomeruser | 
 **ezmaxcustomeruser_patch_object_v1_request** | [**EzmaxcustomeruserPatchObjectV1Request**](EzmaxcustomeruserPatchObjectV1Request.md)|  | 

### Return type

[**EzmaxcustomeruserPatchObjectV1Response**](EzmaxcustomeruserPatchObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

