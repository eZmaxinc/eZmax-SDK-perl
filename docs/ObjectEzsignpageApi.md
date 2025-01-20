# EzmaxApi::ObjectEzsignpageApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectEzsignpageApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**ezsignpage_consult_v1**](ObjectEzsignpageApi.md#ezsignpage_consult_v1) | **POST** /1/object/ezsignpage/{pkiEzsignpageID}/consult | Consult an Ezsignpage


# **ezsignpage_consult_v1**
> EzsignpageConsultV1Response ezsignpage_consult_v1(pki_ezsignpage_id => $pki_ezsignpage_id, body => $body)

Consult an Ezsignpage

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectEzsignpageApi;
my $api_instance = EzmaxApi::ObjectEzsignpageApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_ezsignpage_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->ezsignpage_consult_v1(pki_ezsignpage_id => $pki_ezsignpage_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectEzsignpageApi->ezsignpage_consult_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_ezsignpage_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**EzsignpageConsultV1Response**](EzsignpageConsultV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

