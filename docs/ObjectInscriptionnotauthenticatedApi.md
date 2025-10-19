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
[**inscriptionnotauthenticated_get_list_v1**](ObjectInscriptionnotauthenticatedApi.md#inscriptionnotauthenticated_get_list_v1) | **GET** /1/object/inscriptionnotauthenticated/getList | Retrieve Inscriptionnotauthenticated list
[**inscriptionnotauthenticated_import_into_edmv1**](ObjectInscriptionnotauthenticatedApi.md#inscriptionnotauthenticated_import_into_edmv1) | **POST** /1/object/inscriptionnotauthenticated/{pkiInscriptionnotauthenticatedID}/importIntoEDM | Import attachments into the Inscriptionnotauthenticated


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

# **inscriptionnotauthenticated_get_list_v1**
> InscriptionnotauthenticatedGetListV1Response inscriptionnotauthenticated_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Inscriptionnotauthenticated list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eInscriptionStep | TemporaryNotAuthenticated<br>ImportedInscription<br>Inscription<br>ModifiedInscription<br>ContractEnded<br>ExpiredInscription<br>Out-market<br>ImportedNotauthenticated<br>NotAuthenticated<br>ModifiedNotauthenticated<br>Authenticated |

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

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->inscriptionnotauthenticated_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionnotauthenticatedApi->inscriptionnotauthenticated_get_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **e_order_by** | **string**| Specify how you want the results to be sorted | [optional] 
 **i_row_max** | **int**|  | [optional] 
 **i_row_offset** | **int**|  | [optional] [default to 0]
 **accept_language** | [**HeaderAcceptLanguage**](.md)|  | [optional] 
 **s_filter** | **string**|  | [optional] 

### Return type

[**InscriptionnotauthenticatedGetListV1Response**](InscriptionnotauthenticatedGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscriptionnotauthenticated_import_into_edmv1**
> InscriptionnotauthenticatedImportIntoEDMV1Response inscriptionnotauthenticated_import_into_edmv1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id, inscriptionnotauthenticated_import_into_edmv1_request => $inscriptionnotauthenticated_import_into_edmv1_request)

Import attachments into the Inscriptionnotauthenticated



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
my $inscriptionnotauthenticated_import_into_edmv1_request = EzmaxApi::Object::InscriptionnotauthenticatedImportIntoEDMV1Request->new(); # InscriptionnotauthenticatedImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->inscriptionnotauthenticated_import_into_edmv1(pki_inscriptionnotauthenticated_id => $pki_inscriptionnotauthenticated_id, inscriptionnotauthenticated_import_into_edmv1_request => $inscriptionnotauthenticated_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionnotauthenticatedApi->inscriptionnotauthenticated_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscriptionnotauthenticated_id** | **int**|  | 
 **inscriptionnotauthenticated_import_into_edmv1_request** | [**InscriptionnotauthenticatedImportIntoEDMV1Request**](InscriptionnotauthenticatedImportIntoEDMV1Request.md)|  | 

### Return type

[**InscriptionnotauthenticatedImportIntoEDMV1Response**](InscriptionnotauthenticatedImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

