# EzmaxApi::ObjectInscriptiontempApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptiontempApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscriptiontemp_get_communication_list_v1**](ObjectInscriptiontempApi.md#inscriptiontemp_get_communication_list_v1) | **GET** /1/object/inscriptiontemp/{pkiInscriptiontempID}/getCommunicationList | Retrieve Communication list


# **inscriptiontemp_get_communication_list_v1**
> InscriptiontempGetCommunicationListV1Response inscriptiontemp_get_communication_list_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptiontempApi;
my $api_instance = EzmaxApi::ObjectInscriptiontempApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptiontemp_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptiontemp_get_communication_list_v1(pki_inscriptiontemp_id => $pki_inscriptiontemp_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptiontempApi->inscriptiontemp_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptiontemp_id** | **int**|  | 

### Return type

[**InscriptiontempGetCommunicationListV1Response**](InscriptiontempGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

