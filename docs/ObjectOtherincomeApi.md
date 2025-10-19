# EzmaxApi::ObjectOtherincomeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectOtherincomeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**otherincome_get_communication_count_v1**](ObjectOtherincomeApi.md#otherincome_get_communication_count_v1) | **GET** /1/object/otherincome/{pkiOtherincomeID}/getCommunicationCount | Retrieve Communication count
[**otherincome_get_communication_list_v1**](ObjectOtherincomeApi.md#otherincome_get_communication_list_v1) | **GET** /1/object/otherincome/{pkiOtherincomeID}/getCommunicationList | Retrieve Communication list
[**otherincome_get_communicationrecipients_v1**](ObjectOtherincomeApi.md#otherincome_get_communicationrecipients_v1) | **GET** /1/object/otherincome/{pkiOtherincomeID}/getCommunicationrecipients | Retrieve Otherincome&#39;s Communicationrecipient
[**otherincome_get_communicationsenders_v1**](ObjectOtherincomeApi.md#otherincome_get_communicationsenders_v1) | **GET** /1/object/otherincome/{pkiOtherincomeID}/getCommunicationsenders | Retrieve Otherincome&#39;s Communicationsender
[**otherincome_get_list_v1**](ObjectOtherincomeApi.md#otherincome_get_list_v1) | **GET** /1/object/otherincome/getList | Retrieve Otherincome list
[**otherincome_import_into_edmv1**](ObjectOtherincomeApi.md#otherincome_import_into_edmv1) | **POST** /1/object/otherincome/{pkiOtherincomeID}/importIntoEDM | Import attachments into the Otherincome


# **otherincome_get_communication_count_v1**
> OtherincomeGetCommunicationCountV1Response otherincome_get_communication_count_v1(pki_otherincome_id => $pki_otherincome_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOtherincomeApi;
my $api_instance = EzmaxApi::ObjectOtherincomeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_otherincome_id = 56; # int | 

eval {
    my $result = $api_instance->otherincome_get_communication_count_v1(pki_otherincome_id => $pki_otherincome_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOtherincomeApi->otherincome_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_otherincome_id** | **int**|  | 

### Return type

[**OtherincomeGetCommunicationCountV1Response**](OtherincomeGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **otherincome_get_communication_list_v1**
> OtherincomeGetCommunicationListV1Response otherincome_get_communication_list_v1(pki_otherincome_id => $pki_otherincome_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOtherincomeApi;
my $api_instance = EzmaxApi::ObjectOtherincomeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_otherincome_id = 56; # int | 

eval {
    my $result = $api_instance->otherincome_get_communication_list_v1(pki_otherincome_id => $pki_otherincome_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOtherincomeApi->otherincome_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_otherincome_id** | **int**|  | 

### Return type

[**OtherincomeGetCommunicationListV1Response**](OtherincomeGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **otherincome_get_communicationrecipients_v1**
> OtherincomeGetCommunicationrecipientsV1Response otherincome_get_communicationrecipients_v1(pki_otherincome_id => $pki_otherincome_id)

Retrieve Otherincome's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOtherincomeApi;
my $api_instance = EzmaxApi::ObjectOtherincomeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_otherincome_id = 56; # int | 

eval {
    my $result = $api_instance->otherincome_get_communicationrecipients_v1(pki_otherincome_id => $pki_otherincome_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOtherincomeApi->otherincome_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_otherincome_id** | **int**|  | 

### Return type

[**OtherincomeGetCommunicationrecipientsV1Response**](OtherincomeGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **otherincome_get_communicationsenders_v1**
> OtherincomeGetCommunicationsendersV1Response otherincome_get_communicationsenders_v1(pki_otherincome_id => $pki_otherincome_id)

Retrieve Otherincome's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOtherincomeApi;
my $api_instance = EzmaxApi::ObjectOtherincomeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_otherincome_id = 56; # int | 

eval {
    my $result = $api_instance->otherincome_get_communicationsenders_v1(pki_otherincome_id => $pki_otherincome_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOtherincomeApi->otherincome_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_otherincome_id** | **int**|  | 

### Return type

[**OtherincomeGetCommunicationsendersV1Response**](OtherincomeGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **otherincome_get_list_v1**
> OtherincomeGetListV1Response otherincome_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Otherincome list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eOtherincomeRemunerationtype | Dollars<br>DollarsTaxesIncluded |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOtherincomeApi;
my $api_instance = EzmaxApi::ObjectOtherincomeApi->new(

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
    my $result = $api_instance->otherincome_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOtherincomeApi->otherincome_get_list_v1: $@\n";
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

[**OtherincomeGetListV1Response**](OtherincomeGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **otherincome_import_into_edmv1**
> OtherincomeImportIntoEDMV1Response otherincome_import_into_edmv1(pki_otherincome_id => $pki_otherincome_id, otherincome_import_into_edmv1_request => $otherincome_import_into_edmv1_request)

Import attachments into the Otherincome



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectOtherincomeApi;
my $api_instance = EzmaxApi::ObjectOtherincomeApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_otherincome_id = 56; # int | 
my $otherincome_import_into_edmv1_request = EzmaxApi::Object::OtherincomeImportIntoEDMV1Request->new(); # OtherincomeImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->otherincome_import_into_edmv1(pki_otherincome_id => $pki_otherincome_id, otherincome_import_into_edmv1_request => $otherincome_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectOtherincomeApi->otherincome_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_otherincome_id** | **int**|  | 
 **otherincome_import_into_edmv1_request** | [**OtherincomeImportIntoEDMV1Request**](OtherincomeImportIntoEDMV1Request.md)|  | 

### Return type

[**OtherincomeImportIntoEDMV1Response**](OtherincomeImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

