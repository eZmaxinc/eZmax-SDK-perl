# EzmaxApi::ObjectEzsignuserApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignuserApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignuser_edit_object_v1**](ObjectEzsignuserApi.md#ezsignuser_edit_object_v1) | **PUT** /1/object/ezsignuser/{pkiEzsignuserID} | Edit an existing Ezsignuser
[**ezsignuser_get_object_v2**](ObjectEzsignuserApi.md#ezsignuser_get_object_v2) | **GET** /2/object/ezsignuser/{pkiEzsignuserID} | Retrieve an existing Ezsignuser


# **ezsignuser_edit_object_v1**
> CommonResponse ezsignuser_edit_object_v1(pki_ezsignuser_id => $pki_ezsignuser_id, ezsignuser_edit_object_v1_request => $ezsignuser_edit_object_v1_request)

Edit an existing Ezsignuser



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignuserApi;
my $api_instance = EzmaxApi::ObjectEzsignuserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignuser_id = 56; # int | The unique ID of the Ezsignuser
my $ezsignuser_edit_object_v1_request = EzmaxApi::Object::EzsignuserEditObjectV1Request->new(); # EzsignuserEditObjectV1Request | 

eval {
    my $result = $api_instance->ezsignuser_edit_object_v1(pki_ezsignuser_id => $pki_ezsignuser_id, ezsignuser_edit_object_v1_request => $ezsignuser_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignuserApi->ezsignuser_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignuser_id** | **int**| The unique ID of the Ezsignuser | 
 **ezsignuser_edit_object_v1_request** | [**EzsignuserEditObjectV1Request**](EzsignuserEditObjectV1Request.md)|  | 

### Return type

[**CommonResponse**](CommonResponse.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignuser_get_object_v2**
> EzsignuserGetObjectV2Response ezsignuser_get_object_v2(pki_ezsignuser_id => $pki_ezsignuser_id)

Retrieve an existing Ezsignuser



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignuserApi;
my $api_instance = EzmaxApi::ObjectEzsignuserApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignuser_id = 56; # int | The unique ID of the Ezsignuser

eval {
    my $result = $api_instance->ezsignuser_get_object_v2(pki_ezsignuser_id => $pki_ezsignuser_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignuserApi->ezsignuser_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignuser_id** | **int**| The unique ID of the Ezsignuser | 

### Return type

[**EzsignuserGetObjectV2Response**](EzsignuserGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

