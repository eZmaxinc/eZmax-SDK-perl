# EzmaxApi::ObjectVersionhistoryApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectVersionhistoryApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**versionhistory_get_object_v2**](ObjectVersionhistoryApi.md#versionhistory_get_object_v2) | **GET** /2/object/versionhistory/{pkiVersionhistoryID} | Retrieve an existing Versionhistory


# **versionhistory_get_object_v2**
> VersionhistoryGetObjectV2Response versionhistory_get_object_v2(pki_versionhistory_id => $pki_versionhistory_id)

Retrieve an existing Versionhistory



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectVersionhistoryApi;
my $api_instance = EzmaxApi::ObjectVersionhistoryApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_versionhistory_id = 56; # int | 

eval {
    my $result = $api_instance->versionhistory_get_object_v2(pki_versionhistory_id => $pki_versionhistory_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectVersionhistoryApi->versionhistory_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_versionhistory_id** | **int**|  | 

### Return type

[**VersionhistoryGetObjectV2Response**](VersionhistoryGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

