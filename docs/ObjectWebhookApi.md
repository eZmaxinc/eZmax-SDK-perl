# EzmaxApi::ObjectWebhookApi

## Load the API package
```perl
use EzmaxApi::Object::ObjectWebhookApi;
```

All URIs are relative to *https://prod.api.appcluster01.ca-central-1.ezmax.com/rest*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webhook_create_object_v1**](ObjectWebhookApi.md#webhook_create_object_v1) | **POST** /1/object/webhook | Create a new Webhook
[**webhook_create_object_v2**](ObjectWebhookApi.md#webhook_create_object_v2) | **POST** /2/object/webhook | Create a new Webhook
[**webhook_delete_object_v1**](ObjectWebhookApi.md#webhook_delete_object_v1) | **DELETE** /1/object/webhook/{pkiWebhookID} | Delete an existing Webhook
[**webhook_edit_object_v1**](ObjectWebhookApi.md#webhook_edit_object_v1) | **PUT** /1/object/webhook/{pkiWebhookID} | Edit an existing Webhook
[**webhook_get_history_v1**](ObjectWebhookApi.md#webhook_get_history_v1) | **GET** /1/object/webhook/{pkiWebhookID}/getHistory | Retrieve the logs for recent Webhook calls
[**webhook_get_list_v1**](ObjectWebhookApi.md#webhook_get_list_v1) | **GET** /1/object/webhook/getList | Retrieve Webhook list
[**webhook_get_object_v2**](ObjectWebhookApi.md#webhook_get_object_v2) | **GET** /2/object/webhook/{pkiWebhookID} | Retrieve an existing Webhook
[**webhook_regenerate_apikey_v1**](ObjectWebhookApi.md#webhook_regenerate_apikey_v1) | **POST** /1/object/webhook/{pkiWebhookID}/regenerateApikey | Regenerate the Apikey
[**webhook_test_v1**](ObjectWebhookApi.md#webhook_test_v1) | **POST** /1/object/webhook/{pkiWebhookID}/test | Test the Webhook by calling the Url


# **webhook_create_object_v1**
> WebhookCreateObjectV1Response webhook_create_object_v1(webhook_create_object_v1_request => $webhook_create_object_v1_request)

Create a new Webhook

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $webhook_create_object_v1_request = EzmaxApi::Object::WebhookCreateObjectV1Request->new(); # WebhookCreateObjectV1Request | 

eval {
    my $result = $api_instance->webhook_create_object_v1(webhook_create_object_v1_request => $webhook_create_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_create_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_create_object_v1_request** | [**WebhookCreateObjectV1Request**](WebhookCreateObjectV1Request.md)|  | 

### Return type

[**WebhookCreateObjectV1Response**](WebhookCreateObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_create_object_v2**
> WebhookCreateObjectV2Response webhook_create_object_v2(webhook_create_object_v2_request => $webhook_create_object_v2_request)

Create a new Webhook

The endpoint allows to create one or many elements at once.

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $webhook_create_object_v2_request = EzmaxApi::Object::WebhookCreateObjectV2Request->new(); # WebhookCreateObjectV2Request | 

eval {
    my $result = $api_instance->webhook_create_object_v2(webhook_create_object_v2_request => $webhook_create_object_v2_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_create_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **webhook_create_object_v2_request** | [**WebhookCreateObjectV2Request**](WebhookCreateObjectV2Request.md)|  | 

### Return type

[**WebhookCreateObjectV2Response**](WebhookCreateObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_delete_object_v1**
> WebhookDeleteObjectV1Response webhook_delete_object_v1(pki_webhook_id => $pki_webhook_id)

Delete an existing Webhook



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_webhook_id = 56; # int | 

eval {
    my $result = $api_instance->webhook_delete_object_v1(pki_webhook_id => $pki_webhook_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_delete_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_webhook_id** | **int**|  | 

### Return type

[**WebhookDeleteObjectV1Response**](WebhookDeleteObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_edit_object_v1**
> WebhookEditObjectV1Response webhook_edit_object_v1(pki_webhook_id => $pki_webhook_id, webhook_edit_object_v1_request => $webhook_edit_object_v1_request)

Edit an existing Webhook



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_webhook_id = 56; # int | 
my $webhook_edit_object_v1_request = EzmaxApi::Object::WebhookEditObjectV1Request->new(); # WebhookEditObjectV1Request | 

eval {
    my $result = $api_instance->webhook_edit_object_v1(pki_webhook_id => $pki_webhook_id, webhook_edit_object_v1_request => $webhook_edit_object_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_edit_object_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_webhook_id** | **int**|  | 
 **webhook_edit_object_v1_request** | [**WebhookEditObjectV1Request**](WebhookEditObjectV1Request.md)|  | 

### Return type

[**WebhookEditObjectV1Response**](WebhookEditObjectV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_get_history_v1**
> WebhookGetHistoryV1Response webhook_get_history_v1(pki_webhook_id => $pki_webhook_id, e_webhook_historyinterval => $e_webhook_historyinterval)

Retrieve the logs for recent Webhook calls



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_webhook_id = 56; # int | 
my $e_webhook_historyinterval = "e_webhook_historyinterval_example"; # string | The number of days to return

eval {
    my $result = $api_instance->webhook_get_history_v1(pki_webhook_id => $pki_webhook_id, e_webhook_historyinterval => $e_webhook_historyinterval);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_get_history_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_webhook_id** | **int**|  | 
 **e_webhook_historyinterval** | **string**| The number of days to return | 

### Return type

[**WebhookGetHistoryV1Response**](WebhookGetHistoryV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_get_list_v1**
> WebhookGetListV1Response webhook_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter)

Retrieve Webhook list

Enum values that can be filtered in query parameter *sFilter*:  | Variable | Valid values | |---|---| | eWebhookModule | Ezsign<br>Management | | eWebhookEzsignevent | DocumentCompleted<br>FolderCompleted | | eWebhookManagementevent | UserCreated |

### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

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
    my $result = $api_instance->webhook_get_list_v1(e_order_by => $e_order_by, i_row_max => $i_row_max, i_row_offset => $i_row_offset, accept_language => $accept_language, s_filter => $s_filter);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_get_list_v1: $@\n";
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

[**WebhookGetListV1Response**](WebhookGetListV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, application/vnd.openxmlformats-officedocument.spreadsheetml.sheet

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_get_object_v2**
> WebhookGetObjectV2Response webhook_get_object_v2(pki_webhook_id => $pki_webhook_id)

Retrieve an existing Webhook



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_webhook_id = 56; # int | 

eval {
    my $result = $api_instance->webhook_get_object_v2(pki_webhook_id => $pki_webhook_id);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_get_object_v2: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_webhook_id** | **int**|  | 

### Return type

[**WebhookGetObjectV2Response**](WebhookGetObjectV2Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_regenerate_apikey_v1**
> WebhookRegenerateApikeyV1Response webhook_regenerate_apikey_v1(pki_webhook_id => $pki_webhook_id, webhook_regenerate_apikey_v1_request => $webhook_regenerate_apikey_v1_request)

Regenerate the Apikey



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_webhook_id = 56; # int | 
my $webhook_regenerate_apikey_v1_request = EzmaxApi::Object::WebhookRegenerateApikeyV1Request->new(); # WebhookRegenerateApikeyV1Request | 

eval {
    my $result = $api_instance->webhook_regenerate_apikey_v1(pki_webhook_id => $pki_webhook_id, webhook_regenerate_apikey_v1_request => $webhook_regenerate_apikey_v1_request);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_regenerate_apikey_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_webhook_id** | **int**|  | 
 **webhook_regenerate_apikey_v1_request** | [**WebhookRegenerateApikeyV1Request**](WebhookRegenerateApikeyV1Request.md)|  | 

### Return type

[**WebhookRegenerateApikeyV1Response**](WebhookRegenerateApikeyV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **webhook_test_v1**
> WebhookTestV1Response webhook_test_v1(pki_webhook_id => $pki_webhook_id, body => $body)

Test the Webhook by calling the Url



### Example
```perl
use Data::Dumper;
use EzmaxApi::ObjectWebhookApi;
my $api_instance = EzmaxApi::ObjectWebhookApi->new(

    # Configure API key authorization: Authorization
    api_key => {'Authorization' => 'YOUR_API_KEY'},
    # uncomment below to setup prefix (e.g. Bearer) for API key, if needed
    #api_key_prefix => {'Authorization' => 'Bearer'},
);

my $pki_webhook_id = 56; # int | 
my $body = EzmaxApi::Object::object->new(); # object | 

eval {
    my $result = $api_instance->webhook_test_v1(pki_webhook_id => $pki_webhook_id, body => $body);
    print Dumper($result);
};
if ($@) {
    warn "Exception when calling ObjectWebhookApi->webhook_test_v1: $@\n";
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pki_webhook_id** | **int**|  | 
 **body** | **object**|  | 

### Return type

[**WebhookTestV1Response**](WebhookTestV1Response.md)

### Authorization

[Authorization](../README.md#Authorization)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

