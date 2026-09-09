# EzmaxApi::ObjectAdjustmentApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectAdjustmentApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**adjustment_batch_download_v1**](ObjectAdjustmentApi.md#adjustment_batch_download_v1) | **POST** /1/object/adjustment/{pkiAdjustmentID}/batchDownload | Download multiples attachments from an Adjustment
[**adjustment_get_attachments_v1**](ObjectAdjustmentApi.md#adjustment_get_attachments_v1) | **GET** /1/object/adjustment/{pkiAdjustmentID}/getAttachments | Retrieve Adjustment&#39;s attachments
[**adjustment_get_communication_count_v1**](ObjectAdjustmentApi.md#adjustment_get_communication_count_v1) | **GET** /1/object/adjustment/{pkiAdjustmentID}/getCommunicationCount | Retrieve Communication count
[**adjustment_get_communication_list_v1**](ObjectAdjustmentApi.md#adjustment_get_communication_list_v1) | **GET** /1/object/adjustment/{pkiAdjustmentID}/getCommunicationList | Retrieve Communication list
[**adjustment_get_communicationrecipients_v1**](ObjectAdjustmentApi.md#adjustment_get_communicationrecipients_v1) | **GET** /1/object/adjustment/{pkiAdjustmentID}/getCommunicationrecipients | Retrieve Communication recipients
[**adjustment_get_communicationsenders_v1**](ObjectAdjustmentApi.md#adjustment_get_communicationsenders_v1) | **GET** /1/object/adjustment/{pkiAdjustmentID}/getCommunicationsenders | Retrieve Communication senders
[**adjustment_import_into_edmv1**](ObjectAdjustmentApi.md#adjustment_import_into_edmv1) | **POST** /1/object/adjustment/{pkiAdjustmentID}/importIntoEDM | Import attachments into the Adjustment


# **adjustment_batch_download_v1**
> string adjustment_batch_download_v1(pki_adjustment_id => $pki_adjustment_id, adjustment_batch_download_v1_request => $adjustment_batch_download_v1_request)

Download multiples attachments from an Adjustment

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 
my $adjustment_batch_download_v1_request = EzmaxApi::Object::AdjustmentBatchDownloadV1Request->new(); # AdjustmentBatchDownloadV1Request | 

eval {
    my $result = $api_instance->adjustment_batch_download_v1(pki_adjustment_id => $pki_adjustment_id, adjustment_batch_download_v1_request => $adjustment_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 
 **adjustment_batch_download_v1_request** | [**AdjustmentBatchDownloadV1Request**](AdjustmentBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, text/xml, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustment_get_attachments_v1**
> AdjustmentGetAttachmentsV1Response adjustment_get_attachments_v1(pki_adjustment_id => $pki_adjustment_id)

Retrieve Adjustment's attachments

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 

eval {
    my $result = $api_instance->adjustment_get_attachments_v1(pki_adjustment_id => $pki_adjustment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 

### Return type

[**AdjustmentGetAttachmentsV1Response**](AdjustmentGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustment_get_communication_count_v1**
> AdjustmentGetCommunicationCountV1Response adjustment_get_communication_count_v1(pki_adjustment_id => $pki_adjustment_id)

Retrieve Communication count

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 

eval {
    my $result = $api_instance->adjustment_get_communication_count_v1(pki_adjustment_id => $pki_adjustment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 

### Return type

[**AdjustmentGetCommunicationCountV1Response**](AdjustmentGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustment_get_communication_list_v1**
> AdjustmentGetCommunicationListV1Response adjustment_get_communication_list_v1(pki_adjustment_id => $pki_adjustment_id)

Retrieve Communication list

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 

eval {
    my $result = $api_instance->adjustment_get_communication_list_v1(pki_adjustment_id => $pki_adjustment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 

### Return type

[**AdjustmentGetCommunicationListV1Response**](AdjustmentGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustment_get_communicationrecipients_v1**
> AdjustmentGetCommunicationrecipientsV1Response adjustment_get_communicationrecipients_v1(pki_adjustment_id => $pki_adjustment_id)

Retrieve Communication recipients

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 

eval {
    my $result = $api_instance->adjustment_get_communicationrecipients_v1(pki_adjustment_id => $pki_adjustment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 

### Return type

[**AdjustmentGetCommunicationrecipientsV1Response**](AdjustmentGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustment_get_communicationsenders_v1**
> AdjustmentGetCommunicationsendersV1Response adjustment_get_communicationsenders_v1(pki_adjustment_id => $pki_adjustment_id)

Retrieve Communication senders

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 

eval {
    my $result = $api_instance->adjustment_get_communicationsenders_v1(pki_adjustment_id => $pki_adjustment_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 

### Return type

[**AdjustmentGetCommunicationsendersV1Response**](AdjustmentGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **adjustment_import_into_edmv1**
> AdjustmentImportIntoEDMV1Response adjustment_import_into_edmv1(pki_adjustment_id => $pki_adjustment_id, adjustment_import_into_edmv1_request => $adjustment_import_into_edmv1_request)

Import attachments into the Adjustment

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectAdjustmentApi;
my $api_instance = EzmaxApi::ObjectAdjustmentApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_adjustment_id = 56; # int | 
my $adjustment_import_into_edmv1_request = EzmaxApi::Object::AdjustmentImportIntoEDMV1Request->new(); # AdjustmentImportIntoEDMV1Request | 

eval {
    my $result = $api_instance->adjustment_import_into_edmv1(pki_adjustment_id => $pki_adjustment_id, adjustment_import_into_edmv1_request => $adjustment_import_into_edmv1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectAdjustmentApi->adjustment_import_into_edmv1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_adjustment_id** | **int**|  | 
 **adjustment_import_into_edmv1_request** | [**AdjustmentImportIntoEDMV1Request**](AdjustmentImportIntoEDMV1Request.md)|  | 

### Return type

[**AdjustmentImportIntoEDMV1Response**](AdjustmentImportIntoEDMV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

