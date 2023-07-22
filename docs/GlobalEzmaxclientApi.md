# EzmaxApi::GlobalEzmaxclientApi

## Load the API package
```perl
use EzmaxApi::Object::GlobalEzmaxclientApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**global_ezmaxclient_version_v1**](GlobalEzmaxclientApi.md#global_ezmaxclient_version_v1) | **GET** /1/ezmaxclient/{pksEzmaxclientOs}/version | Retrieve the latest version of the Ezmaxclient


# **global_ezmaxclient_version_v1**
> GlobalEzmaxclientVersionV1Response global_ezmaxclient_version_v1(pks_ezmaxclient_os => $pks_ezmaxclient_os)

Retrieve the latest version of the Ezmaxclient

Retrieve the latest version of the Ezmaxclient that is available on the store.

### Example
```perl
use Data::Dumper;
use EzmaxApi::GlobalEzmaxclientApi;
my $api_instance = EzmaxApi::GlobalEzmaxclientApi->new(
);

my $pks_ezmaxclient_os = new EzmaxApi.FieldPksEzmaxclientOs(); # FieldPksEzmaxclientOs | 

eval {
    my $result = $api_instance->global_ezmaxclient_version_v1(pks_ezmaxclient_os => $pks_ezmaxclient_os);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalEzmaxclientApi->global_ezmaxclient_version_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pks_ezmaxclient_os** | [**FieldPksEzmaxclientOs**](.md)|  | 

### Return type

[**GlobalEzmaxclientVersionV1Response**](GlobalEzmaxclientVersionV1Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

