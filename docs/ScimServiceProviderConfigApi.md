# EzmaxApi::ScimServiceProviderConfigApi

## Load the API package
```perl
use EzmaxApi::Object::ScimServiceProviderConfigApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**service_provider_config_get_object_scim_v2**](ScimServiceProviderConfigApi.md#service_provider_config_get_object_scim_v2) | **GET** /2/scim/ServiceProviderConfig | Get Service Provider Configuration


# **service_provider_config_get_object_scim_v2**
> ScimServiceProviderConfig service_provider_config_get_object_scim_v2()

Get Service Provider Configuration

### Example
```perl
use Data::Dumper;
use EzmaxApi::ScimServiceProviderConfigApi;
my $api_instance = EzmaxApi::ScimServiceProviderConfigApi->new(
);


eval {
    my $result = $api_instance->service_provider_config_get_object_scim_v2();
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ScimServiceProviderConfigApi->service_provider_config_get_object_scim_v2: $@\n";
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ScimServiceProviderConfig**](ScimServiceProviderConfig.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

