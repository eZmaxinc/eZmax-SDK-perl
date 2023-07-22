# EzmaxApi::GlobalEzmaxcustomerApi

## Load the API package
```perl
use EzmaxApi::Object::GlobalEzmaxcustomerApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**global_ezmaxcustomer_get_configuration_v1**](GlobalEzmaxcustomerApi.md#global_ezmaxcustomer_get_configuration_v1) | **GET** /1/ezmaxcustomer/{pksEzmaxcustomerCode}/getConfiguration | Get ezmaxcustomer configuration


# **global_ezmaxcustomer_get_configuration_v1**
> GlobalEzmaxcustomerGetConfigurationV1Response global_ezmaxcustomer_get_configuration_v1(pks_ezmaxcustomer_code => $pks_ezmaxcustomer_code)

Get ezmaxcustomer configuration

Retrieve the ezmaxcustomer's specific configuration. This will help locate the proper region (ie: sInfrastructureregionCode) and the proper environment (ie: sInfrastructureenvironmenttypeDescription) where the customer's data is stored.

### Example
```perl
use Data::Dumper;
use EzmaxApi::GlobalEzmaxcustomerApi;
my $api_instance = EzmaxApi::GlobalEzmaxcustomerApi->new(
);

my $pks_ezmaxcustomer_code = "pks_ezmaxcustomer_code_example"; # string | 

eval {
    my $result = $api_instance->global_ezmaxcustomer_get_configuration_v1(pks_ezmaxcustomer_code => $pks_ezmaxcustomer_code);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling GlobalEzmaxcustomerApi->global_ezmaxcustomer_get_configuration_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pks_ezmaxcustomer_code** | **string**|  | 

### Return type

[**GlobalEzmaxcustomerGetConfigurationV1Response**](GlobalEzmaxcustomerGetConfigurationV1Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

