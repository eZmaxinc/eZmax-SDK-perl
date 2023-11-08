# EzmaxApi::ObjectOtherincomeApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectOtherincomeApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**otherincome_get_communication_list_v1**](ObjectOtherincomeApi.md#otherincome_get_communication_list_v1) | **GET** /1/object/otherincome/{pkiOtherincomeID}/getCommunicationList | Retrieve Communication list


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

