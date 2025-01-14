# EzmaxApi::ObjectInscriptionnotauthenticatedApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptionnotauthenticatedApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscriptionnotauthenticated_get_communication_count_v1**](ObjectInscriptionnotauthenticatedApi.md#inscriptionnotauthenticated_get_communication_count_v1) | **GET** /1/object/inscriptionnotauthenticated/{pkiInscriptionnotauthenticatedID}/getCommunicationCount | Retrieve Communication count
[**inscriptionnotauthenticated_get_communication_list_v1**](ObjectInscriptionnotauthenticatedApi.md#inscriptionnotauthenticated_get_communication_list_v1) | **GET** /1/object/inscriptionnotauthenticated/{pkiInscriptionnotauthenticatedID}/getCommunicationList | Retrieve Communication list
[**inscriptionnotauthenticated_get_communicationrecipients_v1**](ObjectInscriptionnotauthenticatedApi.md#inscriptionnotauthenticated_get_communicationrecipients_v1) | **GET** /1/object/inscriptionnotauthenticated/{pkiInscriptionnotauthenticatedID}/getCommunicationrecipients | Retrieve Inscriptionnotauthenticated&#39;s Communicationrecipient
[**inscriptionnotauthenticated_get_communicationsenders_v1**](ObjectInscriptionnotauthenticatedApi.md#inscriptionnotauthenticated_get_communicationsenders_v1) | **GET** /1/object/inscriptionnotauthenticated/{pkiInscriptionnotauthenticatedID}/getCommunicationsenders | Retrieve Inscriptionnotauthenticated&#39;s Communicationsender


# **inscriptionnotauthenticated_get_communication_count_v1**
> InscriptionnotauthenticatedGetCommunicationCountV1Response inscriptionnotauthenticated_get_communication_count_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptionnotauthenticatedApi;
my $api_instance = EzmaxApi::ObjectInscriptionnotauthenticatedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptionnotauthenticated_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptionnotauthenticated_get_communication_count_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionnotauthenticatedApi->inscriptionnotauthenticated_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptionnotauthenticated_id** | **int**|  | 

### Return type

[**InscriptionnotauthenticatedGetCommunicationCountV1Response**](InscriptionnotauthenticatedGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptionnotauthenticated_get_communication_list_v1**
> InscriptionnotauthenticatedGetCommunicationListV1Response inscriptionnotauthenticated_get_communication_list_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptionnotauthenticatedApi;
my $api_instance = EzmaxApi::ObjectInscriptionnotauthenticatedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptionnotauthenticated_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptionnotauthenticated_get_communication_list_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionnotauthenticatedApi->inscriptionnotauthenticated_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptionnotauthenticated_id** | **int**|  | 

### Return type

[**InscriptionnotauthenticatedGetCommunicationListV1Response**](InscriptionnotauthenticatedGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptionnotauthenticated_get_communicationrecipients_v1**
> InscriptionnotauthenticatedGetCommunicationrecipientsV1Response inscriptionnotauthenticated_get_communicationrecipients_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id)

Retrieve Inscriptionnotauthenticated's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptionnotauthenticatedApi;
my $api_instance = EzmaxApi::ObjectInscriptionnotauthenticatedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptionnotauthenticated_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptionnotauthenticated_get_communicationrecipients_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionnotauthenticatedApi->inscriptionnotauthenticated_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptionnotauthenticated_id** | **int**|  | 

### Return type

[**InscriptionnotauthenticatedGetCommunicationrecipientsV1Response**](InscriptionnotauthenticatedGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptionnotauthenticated_get_communicationsenders_v1**
> InscriptionnotauthenticatedGetCommunicationsendersV1Response inscriptionnotauthenticated_get_communicationsenders_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id)

Retrieve Inscriptionnotauthenticated's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectInscriptionnotauthenticatedApi;
my $api_instance = EzmaxApi::ObjectInscriptionnotauthenticatedApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_inscriptionnotauthenticated_id = 56; # int | 

eval {
    my $result = $api_instance->inscriptionnotauthenticated_get_communicationsenders_v1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionnotauthenticatedApi->inscriptionnotauthenticated_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptionnotauthenticated_id** | **int**|  | 

### Return type

[**InscriptionnotauthenticatedGetCommunicationsendersV1Response**](InscriptionnotauthenticatedGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

