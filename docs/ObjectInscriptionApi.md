# EzmaxApi::ObjectInscriptionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscription_get_communication_list_v1**](ObjectInscriptionApi.md#inscription_get_communication_list_v1) | **GET** /1/object/inscription/{pkiInscriptionID}/getCommunicationList | Retrieve Communication list


# **inscription_get_communication_list_v1**
> InscriptionGetCommunicationListV1Response inscription_get_communication_list_v1(pki_inscription_id => $pki_inscription_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptionApi;
my $api_instance = EzmaxApi::ObjectInscriptionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscription_id = 56; # int | 

eval {
    my $result = $api_instance->inscription_get_communication_list_v1(pki_inscription_id => $pki_inscription_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 

### Return type

[**InscriptionGetCommunicationListV1Response**](InscriptionGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

