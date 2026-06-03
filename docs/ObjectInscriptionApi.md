# EzmaxApi::ObjectInscriptionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectInscriptionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**inscription_get_attachments_v1**](ObjectInscriptionApi.md#inscription_get_attachments_v1) | **GET** /1/object/inscription/{pkiInscriptionID}/getAttachments | Retrieve Inscription&#39;s Attachments
[**inscription_get_communication_count_v1**](ObjectInscriptionApi.md#inscription_get_communication_count_v1) | **GET** /1/object/inscription/{pkiInscriptionID}/getCommunicationCount | Retrieve Communication count
[**inscription_get_communication_list_v1**](ObjectInscriptionApi.md#inscription_get_communication_list_v1) | **GET** /1/object/inscription/{pkiInscriptionID}/getCommunicationList | Retrieve Communication list
[**inscription_get_communicationrecipients_v1**](ObjectInscriptionApi.md#inscription_get_communicationrecipients_v1) | **GET** /1/object/inscription/{pkiInscriptionID}/getCommunicationrecipients | Retrieve Inscription&#39;s Communicationrecipient
[**inscription_get_communicationsenders_v1**](ObjectInscriptionApi.md#inscription_get_communicationsenders_v1) | **GET** /1/object/inscription/{pkiInscriptionID}/getCommunicationsenders | Retrieve Inscription&#39;s Communicationsender
[**inscription_get_list_v1**](ObjectInscriptionApi.md#inscription_get_list_v1) | **GET** /1/object/inscription/getList | Retrieve Inscription list
[**inscription_import_into_edmv1**](ObjectInscriptionApi.md#inscription_import_into_edmv1) | **POST** /1/object/inscription/{pkiInscriptionID}/importIntoEDM | Import attachments into the Inscription
[**inscription_prepare_files_transfer_v1**](ObjectInscriptionApi.md#inscription_prepare_files_transfer_v1) | **POST** /1/object/inscription/{pkiInscriptionID}/prepareFilesTransfer | Prepares file transfer into EDM


# **inscription_get_attachments_v1**
> InscriptionGetAttachmentsV1Response inscription_get_attachments_v1(pki_inscription_id => $pki_inscription_id)

Retrieve Inscription's Attachments



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
    my $result = $api_instance->inscription_get_attachments_v1(pki_inscription_id => $pki_inscription_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 

### Return type

[**InscriptionGetAttachmentsV1Response**](InscriptionGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscription_get_communication_count_v1**
> InscriptionGetCommunicationCountV1Response inscription_get_communication_count_v1(pki_inscription_id => $pki_inscription_id)

Retrieve Communication count



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
    my $result = $api_instance->inscription_get_communication_count_v1(pki_inscription_id => $pki_inscription_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 

### Return type

[**InscriptionGetCommunicationCountV1Response**](InscriptionGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **inscription_get_communicationrecipients_v1**
> InscriptionGetCommunicationrecipientsV1Response inscription_get_communicationrecipients_v1(pki_inscription_id => $pki_inscription_id)

Retrieve Inscription's Communicationrecipient



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
    my $result = $api_instance->inscription_get_communicationrecipients_v1(pki_inscription_id => $pki_inscription_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 

### Return type

[**InscriptionGetCommunicationrecipientsV1Response**](InscriptionGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscription_get_communicationsenders_v1**
> InscriptionGetCommunicationsendersV1Response inscription_get_communicationsenders_v1(pki_inscription_id => $pki_inscription_id)

Retrieve Inscription's Communicationsender



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
    my $result = $api_instance->inscription_get_communicationsenders_v1(pki_inscription_id => $pki_inscription_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 

### Return type

[**InscriptionGetCommunicationsendersV1Response**](InscriptionGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscription_get_list_v1**
> InscriptionGetListV1Response inscription_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Inscription list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eInscriptionStep | TemporaryNotAuthenticated<br>ImportedInscription<br>Inscription<br>ModifiedInscription<br>ContractEnded<br>ExpiredInscription<br>Out-market<br>ImportedNotauthenticated<br>NotAuthenticated<br>ModifiedNotauthenticated<br>Authenticated |  Advanced filters that can be used in query parameter *sFilter*:  | Variable | |---| | sBrokerNameInscriptor | | sBrokerNameSeller | | sContactFirstnameAgentInscriptor | | sContactLastnameAgentInscriptor | | sContactFirstnameAgentSeller | | sContactLastnameAgentSeller |         | sContactFirstnameBuyer | | sContactLastnameBuyer | | sContactFirstnameSeller | | sContactLastnameSeller |  | sContactFirstnameNotaryBuyer | | sContactLastnameNotaryBuyer |  | sContactFirstnameNotarySeller | | sContactLastnameNotarySeller |         

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

my $e_order_by = "e_order_by_example"; # string | Specify how you want the results to be sorted
my $i_row_max = 56; # int | 
my $i_row_offset = 0; # int | 
my $accept_language = new EzmaxApi.HeaderAcceptLanguage(); # HeaderAcceptLanguage | 
my $s_filter = "s_filter_example"; # string | 

eval {
    my $result = $api_instance->inscription_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_get_list_v1: $@\n";
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

[**InscriptionGetListV1Response**](InscriptionGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscription_import_into_edmv1**
> InscriptionImportIntoEDMV1Response inscription_import_into_edmv1(pki_inscription_id => $pki_inscription_id, inscription_import_into_edmv1_request => $inscription_import_into_edmv1_request)

Import attachments into the Inscription



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
my $inscription_import_into_edmv1_request = EzmaxApi::Object::InscriptionImportIntoEDMV1Request->new(); # InscriptionImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->inscription_import_into_edmv1(pki_inscription_id => $pki_inscription_id, inscription_import_into_edmv1_request => $inscription_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 
 **inscription_import_into_edmv1_request** | [**InscriptionImportIntoEDMV1Request**](InscriptionImportIntoEDMV1Request.md)|  | 

### Return type

[**InscriptionImportIntoEDMV1Response**](InscriptionImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **inscription_prepare_files_transfer_v1**
> InscriptionPrepareFilesTransferV1Response inscription_prepare_files_transfer_v1(pki_inscription_id => $pki_inscription_id, inscription_prepare_files_transfer_v1_request => $inscription_prepare_files_transfer_v1_request)

Prepares file transfer into EDM



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
my $inscription_prepare_files_transfer_v1_request = EzmaxApi::Object::InscriptionPrepareFilesTransferV1Request->new(); # InscriptionPrepareFilesTransferV1Request | 

eval {
    my $result = $api_instance->inscription_prepare_files_transfer_v1(pki_inscription_id => $pki_inscription_id, inscription_prepare_files_transfer_v1_request => $inscription_prepare_files_transfer_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectInscriptionApi->inscription_prepare_files_transfer_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_inscription_id** | **int**|  | 
 **inscription_prepare_files_transfer_v1_request** | [**InscriptionPrepareFilesTransferV1Request**](InscriptionPrepareFilesTransferV1Request.md)|  | 

### Return type

[**InscriptionPrepareFilesTransferV1Response**](InscriptionPrepareFilesTransferV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

