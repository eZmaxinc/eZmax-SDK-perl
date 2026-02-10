# EzmaxApi::ObjectEzsigntemplateglobalannotationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsigntemplateglobalannotationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsigntemplateglobalannotation_get_object_v2**](ObjectEzsigntemplateglobalannotationApi.md#ezsigntemplateglobalannotation_get_object_v2) | **GET** /2/object/ezsigntemplateglobalannotation/{pkiEzsigntemplateglobalannotationID} | Retrieve an existing Ezsigntemplateglobalannotation


# **ezsigntemplateglobalannotation_get_object_v2**
> EzsigntemplateglobalannotationGetObjectV2Response ezsigntemplateglobalannotation_get_object_v2(pki_ezsigntemplateglobalannotation_id => $pki_ezsigntemplateglobalannotation_id)

Retrieve an existing Ezsigntemplateglobalannotation



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsigntemplateglobalannotationApi;
my $api_instance = EzmaxApi::ObjectEzsigntemplateglobalannotationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsigntemplateglobalannotation_id = 56; # int | The unique ID of the Ezsigntemplateglobalannotation

eval {
    my $result = $api_instance->ezsigntemplateglobalannotation_get_object_v2(pki_ezsigntemplateglobalannotation_id => $pki_ezsigntemplateglobalannotation_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsigntemplateglobalannotationApi->ezsigntemplateglobalannotation_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsigntemplateglobalannotation_id** | **int**| The unique ID of the Ezsigntemplateglobalannotation | 

### Return type

[**EzsigntemplateglobalannotationGetObjectV2Response**](EzsigntemplateglobalannotationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

