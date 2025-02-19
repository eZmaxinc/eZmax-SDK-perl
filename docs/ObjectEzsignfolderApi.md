# EzmaxApi::ObjectEzsignfolderApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignfolderApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignfolder_archive_v1**](ObjectEzsignfolderApi.md#ezsignfolder_archive_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/archive | Archive the Ezsignfolder
[**ezsignfolder_batch_download_v1**](ObjectEzsignfolderApi.md#ezsignfolder_batch_download_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/batchDownload | Download multiples files from an Ezsignfolder
[**ezsignfolder_create_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_create_object_v1) | **POST** /1/object/ezsignfolder | Create a new Ezsignfolder
[**ezsignfolder_create_object_v2**](ObjectEzsignfolderApi.md#ezsignfolder_create_object_v2) | **POST** /2/object/ezsignfolder | Create a new Ezsignfolder
[**ezsignfolder_create_object_v3**](ObjectEzsignfolderApi.md#ezsignfolder_create_object_v3) | **POST** /3/object/ezsignfolder | Create a new Ezsignfolder
[**ezsignfolder_delete_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_delete_object_v1) | **DELETE** /1/object/ezsignfolder/{pkiEzsignfolderID} | Delete an existing Ezsignfolder
[**ezsignfolder_dispose_ezsignfolders_v1**](ObjectEzsignfolderApi.md#ezsignfolder_dispose_ezsignfolders_v1) | **POST** /1/object/ezsignfolder/disposeEzsignfolders | Dispose Ezsignfolders
[**ezsignfolder_dispose_v1**](ObjectEzsignfolderApi.md#ezsignfolder_dispose_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/dispose | Dispose the Ezsignfolder
[**ezsignfolder_edit_object_v3**](ObjectEzsignfolderApi.md#ezsignfolder_edit_object_v3) | **PUT** /3/object/ezsignfolder/{pkiEzsignfolderID} | Edit an existing Ezsignfolder
[**ezsignfolder_end_prematurely_v1**](ObjectEzsignfolderApi.md#ezsignfolder_end_prematurely_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/endPrematurely | End prematurely
[**ezsignfolder_get_actionable_elements_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_actionable_elements_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getActionableElements | Retrieve actionable elements for the Ezsignfolder
[**ezsignfolder_get_attachment_count_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_attachment_count_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getAttachmentCount | Retrieve Attachment count
[**ezsignfolder_get_attachments_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_attachments_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getAttachments | Retrieve Ezsignfolder&#39;s Attachments
[**ezsignfolder_get_communication_count_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_communication_count_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getCommunicationCount | Retrieve Communication count
[**ezsignfolder_get_communication_list_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_communication_list_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getCommunicationList | Retrieve Communication list
[**ezsignfolder_get_communicationrecipients_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_communicationrecipients_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getCommunicationrecipients | Retrieve Ezsignfolder&#39;s Communicationrecipient
[**ezsignfolder_get_communicationsenders_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_communicationsenders_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getCommunicationsenders | Retrieve Ezsignfolder&#39;s Communicationsender
[**ezsignfolder_get_ezsigndocuments_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_ezsigndocuments_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getEzsigndocuments | Retrieve an existing Ezsignfolder&#39;s Ezsigndocuments
[**ezsignfolder_get_ezsignfoldersignerassociations_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_ezsignfoldersignerassociations_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getEzsignfoldersignerassociations | Retrieve an existing Ezsignfolder&#39;s Ezsignfoldersignerassociations
[**ezsignfolder_get_ezsignsignatures_automatic_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_ezsignsignatures_automatic_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getEzsignsignaturesAutomatic | Retrieve an existing Ezsignfolder&#39;s automatic Ezsignsignatures
[**ezsignfolder_get_forms_data_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_forms_data_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID}/getFormsData | Retrieve an existing Ezsignfolder&#39;s forms data
[**ezsignfolder_get_list_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_list_v1) | **GET** /1/object/ezsignfolder/getList | Retrieve Ezsignfolder list
[**ezsignfolder_get_object_v1**](ObjectEzsignfolderApi.md#ezsignfolder_get_object_v1) | **GET** /1/object/ezsignfolder/{pkiEzsignfolderID} | Retrieve an existing Ezsignfolder
[**ezsignfolder_get_object_v2**](ObjectEzsignfolderApi.md#ezsignfolder_get_object_v2) | **GET** /2/object/ezsignfolder/{pkiEzsignfolderID} | Retrieve an existing Ezsignfolder
[**ezsignfolder_get_object_v3**](ObjectEzsignfolderApi.md#ezsignfolder_get_object_v3) | **GET** /3/object/ezsignfolder/{pkiEzsignfolderID} | Retrieve an existing Ezsignfolder
[**ezsignfolder_import_ezsignfoldersignerassociations_v1**](ObjectEzsignfolderApi.md#ezsignfolder_import_ezsignfoldersignerassociations_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/importEzsignfoldersignerassociations | Import an existing Ezsignfoldersignerassociation into this Ezsignfolder
[**ezsignfolder_import_ezsigntemplatepackage_v1**](ObjectEzsignfolderApi.md#ezsignfolder_import_ezsigntemplatepackage_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/importEzsigntemplatepackage | Import an Ezsigntemplatepackage in the Ezsignfolder.
[**ezsignfolder_reorder_v1**](ObjectEzsignfolderApi.md#ezsignfolder_reorder_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/reorder | Reorder Ezsigndocuments in the Ezsignfolder
[**ezsignfolder_reorder_v2**](ObjectEzsignfolderApi.md#ezsignfolder_reorder_v2) | **POST** /2/object/ezsignfolder/{pkiEzsignfolderID}/reorder | Reorder Ezsigndocuments in the Ezsignfolder
[**ezsignfolder_send_v1**](ObjectEzsignfolderApi.md#ezsignfolder_send_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/send | Send the Ezsignfolder to the signatories for signature
[**ezsignfolder_send_v3**](ObjectEzsignfolderApi.md#ezsignfolder_send_v3) | **POST** /3/object/ezsignfolder/{pkiEzsignfolderID}/send | Send the Ezsignfolder to the signatories for signature
[**ezsignfolder_unsend_v1**](ObjectEzsignfolderApi.md#ezsignfolder_unsend_v1) | **POST** /1/object/ezsignfolder/{pkiEzsignfolderID}/unsend | Unsend the Ezsignfolder


# **ezsignfolder_archive_v1**
> EzsignfolderArchiveV1Response ezsignfolder_archive_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body)

Archive the Ezsignfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsignfolder_archive_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_archive_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsignfolderArchiveV1Response**](EzsignfolderArchiveV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_batch_download_v1**
> string ezsignfolder_batch_download_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_batch_download_v1_request => $ezsignfolder_batch_download_v1_request)

Download multiples files from an Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_batch_download_v1_request = EzmaxApi::Object::EzsignfolderBatchDownloadV1Request->new(); # EzsignfolderBatchDownloadV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_batch_download_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_batch_download_v1_request => $ezsignfolder_batch_download_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_batch_download_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_batch_download_v1_request** | [**EzsignfolderBatchDownloadV1Request**](EzsignfolderBatchDownloadV1Request.md)|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/zip, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_create_object_v1**
> EzsignfolderCreateObjectV1Response ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_request)

Create a new Ezsignfolder

The endpoint allows to create one or many elements at once.  The array can contain simple (Just the object) or compound (The object and its child) objects.  Creating compound elements allows to reduce the multiple requests to create all child objects.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfolder_create_object_v1_request = [EzmaxApi::Object::ARRAY[EzsignfolderCreateObjectV1Request]->new()]; # ARRAY[EzsignfolderCreateObjectV1Request] | 

eval {
    my $result = $api_instance->ezsignfolder_create_object_v1(ezsignfolder_create_object_v1_request => $ezsignfolder_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfolder_create_object_v1_request** | [**ARRAY[EzsignfolderCreateObjectV1Request]**](EzsignfolderCreateObjectV1Request.md)|  | 

### Return type

[**EzsignfolderCreateObjectV1Response**](EzsignfolderCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_create_object_v2**
> EzsignfolderCreateObjectV2Response ezsignfolder_create_object_v2(ezsignfolder_create_object_v2_request => $ezsignfolder_create_object_v2_request)

Create a new Ezsignfolder

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfolder_create_object_v2_request = EzmaxApi::Object::EzsignfolderCreateObjectV2Request->new(); # EzsignfolderCreateObjectV2Request | 

eval {
    my $result = $api_instance->ezsignfolder_create_object_v2(ezsignfolder_create_object_v2_request => $ezsignfolder_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfolder_create_object_v2_request** | [**EzsignfolderCreateObjectV2Request**](EzsignfolderCreateObjectV2Request.md)|  | 

### Return type

[**EzsignfolderCreateObjectV2Response**](EzsignfolderCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_create_object_v3**
> EzsignfolderCreateObjectV3Response ezsignfolder_create_object_v3(ezsignfolder_create_object_v3_request => $ezsignfolder_create_object_v3_request)

Create a new Ezsignfolder

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfolder_create_object_v3_request = EzmaxApi::Object::EzsignfolderCreateObjectV3Request->new(); # EzsignfolderCreateObjectV3Request | 

eval {
    my $result = $api_instance->ezsignfolder_create_object_v3(ezsignfolder_create_object_v3_request => $ezsignfolder_create_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_create_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfolder_create_object_v3_request** | [**EzsignfolderCreateObjectV3Request**](EzsignfolderCreateObjectV3Request.md)|  | 

### Return type

[**EzsignfolderCreateObjectV3Response**](EzsignfolderCreateObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_delete_object_v1**
> EzsignfolderDeleteObjectV1Response ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Delete an existing Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_delete_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderDeleteObjectV1Response**](EzsignfolderDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_dispose_ezsignfolders_v1**
> EzsignfolderDisposeEzsignfoldersV1Response ezsignfolder_dispose_ezsignfolders_v1(ezsignfolder_dispose_ezsignfolders_v1_request => $ezsignfolder_dispose_ezsignfolders_v1_request)

Dispose Ezsignfolders



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $ezsignfolder_dispose_ezsignfolders_v1_request = EzmaxApi::Object::EzsignfolderDisposeEzsignfoldersV1Request->new(); # EzsignfolderDisposeEzsignfoldersV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_dispose_ezsignfolders_v1(ezsignfolder_dispose_ezsignfolders_v1_request => $ezsignfolder_dispose_ezsignfolders_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_dispose_ezsignfolders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ezsignfolder_dispose_ezsignfolders_v1_request** | [**EzsignfolderDisposeEzsignfoldersV1Request**](EzsignfolderDisposeEzsignfoldersV1Request.md)|  | 

### Return type

[**EzsignfolderDisposeEzsignfoldersV1Response**](EzsignfolderDisposeEzsignfoldersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_dispose_v1**
> EzsignfolderDisposeV1Response ezsignfolder_dispose_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body)

Dispose the Ezsignfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsignfolder_dispose_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_dispose_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsignfolderDisposeV1Response**](EzsignfolderDisposeV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_edit_object_v3**
> EzsignfolderEditObjectV3Response ezsignfolder_edit_object_v3(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_edit_object_v3_request => $ezsignfolder_edit_object_v3_request)

Edit an existing Ezsignfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_edit_object_v3_request = EzmaxApi::Object::EzsignfolderEditObjectV3Request->new(); # EzsignfolderEditObjectV3Request | 

eval {
    my $result = $api_instance->ezsignfolder_edit_object_v3(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_edit_object_v3_request => $ezsignfolder_edit_object_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_edit_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_edit_object_v3_request** | [**EzsignfolderEditObjectV3Request**](EzsignfolderEditObjectV3Request.md)|  | 

### Return type

[**EzsignfolderEditObjectV3Response**](EzsignfolderEditObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_end_prematurely_v1**
> EzsignfolderEndPrematurelyV1Response ezsignfolder_end_prematurely_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body)

End prematurely

End prematurely all Ezsigndocument of Ezsignfolder when some signatures are still required

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsignfolder_end_prematurely_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_end_prematurely_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsignfolderEndPrematurelyV1Response**](EzsignfolderEndPrematurelyV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_actionable_elements_v1**
> EzsignfolderGetActionableElementsV1Response ezsignfolder_get_actionable_elements_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve actionable elements for the Ezsignfolder

Return the Ezsignsignatures that can be signed and Ezsignformfieldgroups that can be filled by the current user at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_actionable_elements_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_actionable_elements_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetActionableElementsV1Response**](EzsignfolderGetActionableElementsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_attachment_count_v1**
> EzsignfolderGetAttachmentCountV1Response ezsignfolder_get_attachment_count_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve Attachment count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_attachment_count_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_attachment_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetAttachmentCountV1Response**](EzsignfolderGetAttachmentCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_attachments_v1**
> EzsignfolderGetAttachmentsV1Response ezsignfolder_get_attachments_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve Ezsignfolder's Attachments



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_attachments_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_attachments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetAttachmentsV1Response**](EzsignfolderGetAttachmentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_communication_count_v1**
> EzsignfolderGetCommunicationCountV1Response ezsignfolder_get_communication_count_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve Communication count



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_communication_count_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_communication_count_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetCommunicationCountV1Response**](EzsignfolderGetCommunicationCountV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_communication_list_v1**
> EzsignfolderGetCommunicationListV1Response ezsignfolder_get_communication_list_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve Communication list



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_communication_list_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_communication_list_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetCommunicationListV1Response**](EzsignfolderGetCommunicationListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_communicationrecipients_v1**
> EzsignfolderGetCommunicationrecipientsV1Response ezsignfolder_get_communicationrecipients_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve Ezsignfolder's Communicationrecipient



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_communicationrecipients_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_communicationrecipients_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetCommunicationrecipientsV1Response**](EzsignfolderGetCommunicationrecipientsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_communicationsenders_v1**
> EzsignfolderGetCommunicationsendersV1Response ezsignfolder_get_communicationsenders_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve Ezsignfolder's Communicationsender



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_communicationsenders_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_communicationsenders_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetCommunicationsendersV1Response**](EzsignfolderGetCommunicationsendersV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_ezsigndocuments_v1**
> EzsignfolderGetEzsigndocumentsV1Response ezsignfolder_get_ezsigndocuments_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's Ezsigndocuments



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_ezsigndocuments_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_ezsigndocuments_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetEzsigndocumentsV1Response**](EzsignfolderGetEzsigndocumentsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_ezsignfoldersignerassociations_v1**
> EzsignfolderGetEzsignfoldersignerassociationsV1Response ezsignfolder_get_ezsignfoldersignerassociations_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's Ezsignfoldersignerassociations



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_ezsignfoldersignerassociations_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_ezsignfoldersignerassociations_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetEzsignfoldersignerassociationsV1Response**](EzsignfolderGetEzsignfoldersignerassociationsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_ezsignsignatures_automatic_v1**
> EzsignfolderGetEzsignsignaturesAutomaticV1Response ezsignfolder_get_ezsignsignatures_automatic_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's automatic Ezsignsignatures

Return the Ezsignsignatures that can be signed by the current user at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_ezsignsignatures_automatic_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_ezsignsignatures_automatic_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetEzsignsignaturesAutomaticV1Response**](EzsignfolderGetEzsignsignaturesAutomaticV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_forms_data_v1**
> EzsignfolderGetFormsDataV1Response ezsignfolder_get_forms_data_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder's forms data



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_forms_data_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_forms_data_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetFormsDataV1Response**](EzsignfolderGetFormsDataV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_list_v1**
> EzsignfolderGetListV1Response ezsignfolder_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Ezsignfolder list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eEzsignfolderStep | Unsent<br>Sent<br>PartiallySigned<br>Expired<br>Completed<br>Archived<br>Disposed| | eEzsignfoldertypePrivacylevel | User<br>Usergroup |  Advanced filters that can be used in query parameter *sFilter*:  | Variable | |---| | fkiUserID | | sContactFirstname | | sContactLastname | | sUserFirstname | | sUserLastname | | sEzsigndocumentName |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

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
    my $result = $api_instance->ezsignfolder_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_list_v1: $@\n";
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

[**EzsignfolderGetListV1Response**](EzsignfolderGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_object_v1**
> EzsignfolderGetObjectV1Response ezsignfolder_get_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_object_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetObjectV1Response**](EzsignfolderGetObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_object_v2**
> EzsignfolderGetObjectV2Response ezsignfolder_get_object_v2(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_object_v2(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetObjectV2Response**](EzsignfolderGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_get_object_v3**
> EzsignfolderGetObjectV3Response ezsignfolder_get_object_v3(pki_ezsignfolder_id => $pki_ezsignfolder_id)

Retrieve an existing Ezsignfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignfolder_get_object_v3(pki_ezsignfolder_id => $pki_ezsignfolder_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_get_object_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 

### Return type

[**EzsignfolderGetObjectV3Response**](EzsignfolderGetObjectV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_import_ezsignfoldersignerassociations_v1**
> EzsignfolderImportEzsignfoldersignerassociationsV1Response ezsignfolder_import_ezsignfoldersignerassociations_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_import_ezsignfoldersignerassociations_v1_request => $ezsignfolder_import_ezsignfoldersignerassociations_v1_request)

Import an existing Ezsignfoldersignerassociation into this Ezsignfolder



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_import_ezsignfoldersignerassociations_v1_request = EzmaxApi::Object::EzsignfolderImportEzsignfoldersignerassociationsV1Request->new(); # EzsignfolderImportEzsignfoldersignerassociationsV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_import_ezsignfoldersignerassociations_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_import_ezsignfoldersignerassociations_v1_request => $ezsignfolder_import_ezsignfoldersignerassociations_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_import_ezsignfoldersignerassociations_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_import_ezsignfoldersignerassociations_v1_request** | [**EzsignfolderImportEzsignfoldersignerassociationsV1Request**](EzsignfolderImportEzsignfoldersignerassociationsV1Request.md)|  | 

### Return type

[**EzsignfolderImportEzsignfoldersignerassociationsV1Response**](EzsignfolderImportEzsignfoldersignerassociationsV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_import_ezsigntemplatepackage_v1**
> EzsignfolderImportEzsigntemplatepackageV1Response ezsignfolder_import_ezsigntemplatepackage_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_import_ezsigntemplatepackage_v1_request => $ezsignfolder_import_ezsigntemplatepackage_v1_request)

Import an Ezsigntemplatepackage in the Ezsignfolder.

This endpoint imports all of the Ezsigntemplates from the Ezsigntemplatepackage into the Ezsignfolder as Ezsigndocuments.  This allows to automatically apply all the Ezsigntemplateformfieldgroups and Ezsigntemplatesignatures on the newly created Ezsigndocuments in a single step.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_import_ezsigntemplatepackage_v1_request = EzmaxApi::Object::EzsignfolderImportEzsigntemplatepackageV1Request->new(); # EzsignfolderImportEzsigntemplatepackageV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_import_ezsigntemplatepackage_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_import_ezsigntemplatepackage_v1_request => $ezsignfolder_import_ezsigntemplatepackage_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_import_ezsigntemplatepackage_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_import_ezsigntemplatepackage_v1_request** | [**EzsignfolderImportEzsigntemplatepackageV1Request**](EzsignfolderImportEzsigntemplatepackageV1Request.md)|  | 

### Return type

[**EzsignfolderImportEzsigntemplatepackageV1Response**](EzsignfolderImportEzsigntemplatepackageV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_reorder_v1**
> EzsignfolderReorderV1Response ezsignfolder_reorder_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_reorder_v1_request => $ezsignfolder_reorder_v1_request)

Reorder Ezsigndocuments in the Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_reorder_v1_request = EzmaxApi::Object::EzsignfolderReorderV1Request->new(); # EzsignfolderReorderV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_reorder_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_reorder_v1_request => $ezsignfolder_reorder_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_reorder_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_reorder_v1_request** | [**EzsignfolderReorderV1Request**](EzsignfolderReorderV1Request.md)|  | 

### Return type

[**EzsignfolderReorderV1Response**](EzsignfolderReorderV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_reorder_v2**
> EzsignfolderReorderV2Response ezsignfolder_reorder_v2(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_reorder_v2_request => $ezsignfolder_reorder_v2_request)

Reorder Ezsigndocuments in the Ezsignfolder

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_reorder_v2_request = EzmaxApi::Object::EzsignfolderReorderV2Request->new(); # EzsignfolderReorderV2Request | 

eval {
    my $result = $api_instance->ezsignfolder_reorder_v2(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_reorder_v2_request => $ezsignfolder_reorder_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_reorder_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_reorder_v2_request** | [**EzsignfolderReorderV2Request**](EzsignfolderReorderV2Request.md)|  | 

### Return type

[**EzsignfolderReorderV2Response**](EzsignfolderReorderV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_send_v1**
> EzsignfolderSendV1Response ezsignfolder_send_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_request)

Send the Ezsignfolder to the signatories for signature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_send_v1_request = EzmaxApi::Object::EzsignfolderSendV1Request->new(); # EzsignfolderSendV1Request | 

eval {
    my $result = $api_instance->ezsignfolder_send_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v1_request => $ezsignfolder_send_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_send_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_send_v1_request** | [**EzsignfolderSendV1Request**](EzsignfolderSendV1Request.md)|  | 

### Return type

[**EzsignfolderSendV1Response**](EzsignfolderSendV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_send_v3**
> EzsignfolderSendV3Response ezsignfolder_send_v3(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v3_request => $ezsignfolder_send_v3_request)

Send the Ezsignfolder to the signatories for signature



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $ezsignfolder_send_v3_request = EzmaxApi::Object::EzsignfolderSendV3Request->new(); # EzsignfolderSendV3Request | 

eval {
    my $result = $api_instance->ezsignfolder_send_v3(pki_ezsignfolder_id => $pki_ezsignfolder_id, ezsignfolder_send_v3_request => $ezsignfolder_send_v3_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_send_v3: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **ezsignfolder_send_v3_request** | [**EzsignfolderSendV3Request**](EzsignfolderSendV3Request.md)|  | 

### Return type

[**EzsignfolderSendV3Response**](EzsignfolderSendV3Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignfolder_unsend_v1**
> EzsignfolderUnsendV1Response ezsignfolder_unsend_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body)

Unsend the Ezsignfolder

Once an Ezsignfolder has been sent to signatories, it cannot be modified.  Using this endpoint, you can unsend the Ezsignfolder and make it modifiable again.  Signatories will receive an email informing them the signature process was aborted and they might receive a new invitation to sign.  ⚠️ Warning: Any signature previously made by signatories on \"Non-completed\" Ezsigndocuments will be lost.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignfolderApi;
my $api_instance = EzmaxApi::ObjectEzsignfolderApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignfolder_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsignfolder_unsend_v1(pki_ezsignfolder_id => $pki_ezsignfolder_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignfolderApi->ezsignfolder_unsend_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignfolder_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsignfolderUnsendV1Response**](EzsignfolderUnsendV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

