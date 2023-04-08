# EzmaxApi::ObjectEzsignbulksendtransmissionApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignbulksendtransmissionApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignbulksendtransmission_get_csv_errors_v1**](ObjectEzsignbulksendtransmissionApi.md#ezsignbulksendtransmission_get_csv_errors_v1) | **GET** /1/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}/getCsvErrors | Retrieve an existing Ezsignbulksendtransmission&#39;s Csv containing errors
[**ezsignbulksendtransmission_get_ezsignsignatures_automatic_v1**](ObjectEzsignbulksendtransmissionApi.md#ezsignbulksendtransmission_get_ezsignsignatures_automatic_v1) | **GET** /1/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}/getEzsignsignaturesAutomatic | Retrieve an existing Ezsignbulksendtransmission&#39;s automatic Ezsignsignatures
[**ezsignbulksendtransmission_get_forms_data_v1**](ObjectEzsignbulksendtransmissionApi.md#ezsignbulksendtransmission_get_forms_data_v1) | **GET** /1/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID}/getFormsData | Retrieve an existing Ezsignbulksendtransmission&#39;s forms data
[**ezsignbulksendtransmission_get_object_v2**](ObjectEzsignbulksendtransmissionApi.md#ezsignbulksendtransmission_get_object_v2) | **GET** /2/object/ezsignbulksendtransmission/{pkiEzsignbulksendtransmissionID} | Retrieve an existing Ezsignbulksendtransmission


# **ezsignbulksendtransmission_get_csv_errors_v1**
> string ezsignbulksendtransmission_get_csv_errors_v1(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id)

Retrieve an existing Ezsignbulksendtransmission's Csv containing errors



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendtransmissionApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendtransmissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksendtransmission_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksendtransmission_get_csv_errors_v1(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendtransmissionApi->ezsignbulksendtransmission_get_csv_errors_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksendtransmission_id** | **int**|  | 

### Return type

**string**

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksendtransmission_get_ezsignsignatures_automatic_v1**
> EzsignbulksendtransmissionGetEzsignsignaturesAutomaticV1Response ezsignbulksendtransmission_get_ezsignsignatures_automatic_v1(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id)

Retrieve an existing Ezsignbulksendtransmission's automatic Ezsignsignatures

Return the Ezsignsignatures that can be signed by the current user at the current step in the process

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendtransmissionApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendtransmissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksendtransmission_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksendtransmission_get_ezsignsignatures_automatic_v1(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendtransmissionApi->ezsignbulksendtransmission_get_ezsignsignatures_automatic_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksendtransmission_id** | **int**|  | 

### Return type

[**EzsignbulksendtransmissionGetEzsignsignaturesAutomaticV1Response**](EzsignbulksendtransmissionGetEzsignsignaturesAutomaticV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksendtransmission_get_forms_data_v1**
> EzsignbulksendtransmissionGetFormsDataV1Response ezsignbulksendtransmission_get_forms_data_v1(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id)

Retrieve an existing Ezsignbulksendtransmission's forms data



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendtransmissionApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendtransmissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksendtransmission_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksendtransmission_get_forms_data_v1(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendtransmissionApi->ezsignbulksendtransmission_get_forms_data_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksendtransmission_id** | **int**|  | 

### Return type

[**EzsignbulksendtransmissionGetFormsDataV1Response**](EzsignbulksendtransmissionGetFormsDataV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/zip

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **ezsignbulksendtransmission_get_object_v2**
> EzsignbulksendtransmissionGetObjectV2Response ezsignbulksendtransmission_get_object_v2(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id)

Retrieve an existing Ezsignbulksendtransmission



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignbulksendtransmissionApi;
my $api_instance = EzmaxApi::ObjectEzsignbulksendtransmissionApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignbulksendtransmission_id = 56; # int | 

eval {
    my $result = $api_instance->ezsignbulksendtransmission_get_object_v2(pki_ezsignbulksendtransmission_id => $pki_ezsignbulksendtransmission_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignbulksendtransmissionApi->ezsignbulksendtransmission_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignbulksendtransmission_id** | **int**|  | 

### Return type

[**EzsignbulksendtransmissionGetObjectV2Response**](EzsignbulksendtransmissionGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

