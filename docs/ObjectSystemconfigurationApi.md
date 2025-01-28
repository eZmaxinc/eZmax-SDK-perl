# EzmaxApi::ObjectSystemconfigurationApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectSystemconfigurationApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**systemconfiguration_edit_object_v1**](ObjectSystemconfigurationApi.md#systemconfiguration_edit_object_v1) | **PUT** /1/object/systemconfiguration/{pkiSystemconfigurationID} | Edit an existing Systemconfiguration
[**systemconfiguration_get_object_v2**](ObjectSystemconfigurationApi.md#systemconfiguration_get_object_v2) | **GET** /2/object/systemconfiguration/{pkiSystemconfigurationID} | Retrieve an existing Systemconfiguration


# **systemconfiguration_edit_object_v1**
> SystemconfigurationEditObjectV1Response systemconfiguration_edit_object_v1(pki_systemconfiguration_id => $pki_systemconfiguration_id, systemconfiguration_edit_object_v1_request => $systemconfiguration_edit_object_v1_request)

Edit an existing Systemconfiguration



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSystemconfigurationApi;
my $api_instance = EzmaxApi::ObjectSystemconfigurationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_systemconfiguration_id = 56; # int | The unique ID of the Systemconfiguration
my $systemconfiguration_edit_object_v1_request = EzmaxApi::Object::SystemconfigurationEditObjectV1Request->new(); # SystemconfigurationEditObjectV1Request | 

eval {
    my $result = $api_instance->systemconfiguration_edit_object_v1(pki_systemconfiguration_id => $pki_systemconfiguration_id, systemconfiguration_edit_object_v1_request => $systemconfiguration_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSystemconfigurationApi->systemconfiguration_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_systemconfiguration_id** | **int**| The unique ID of the Systemconfiguration | 
 **systemconfiguration_edit_object_v1_request** | [**SystemconfigurationEditObjectV1Request**](SystemconfigurationEditObjectV1Request.md)|  | 

### Return type

[**SystemconfigurationEditObjectV1Response**](SystemconfigurationEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **systemconfiguration_get_object_v2**
> SystemconfigurationGetObjectV2Response systemconfiguration_get_object_v2(pki_systemconfiguration_id => $pki_systemconfiguration_id)

Retrieve an existing Systemconfiguration



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectSystemconfigurationApi;
my $api_instance = EzmaxApi::ObjectSystemconfigurationApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_systemconfiguration_id = 56; # int | The unique ID of the Systemconfiguration

eval {
    my $result = $api_instance->systemconfiguration_get_object_v2(pki_systemconfiguration_id => $pki_systemconfiguration_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectSystemconfigurationApi->systemconfiguration_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_systemconfiguration_id** | **int**| The unique ID of the Systemconfiguration | 

### Return type

[**SystemconfigurationGetObjectV2Response**](SystemconfigurationGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

