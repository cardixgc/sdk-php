# Cardix\OrderCallbackApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**retryOrderCallback()**](OrderCallbackApi.md#retryOrderCallback) | **PUT** /orders/{orderId}/callbacks/{orderCallbackId}/retries |  |


## `retryOrderCallback()`

```php
retryOrderCallback($order_id, $order_callback_id)
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: Bearer
$config = Cardix\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Cardix\Api\OrderCallbackApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = 'order_id_example'; // string
$order_callback_id = 'order_callback_id_example'; // string

try {
    $apiInstance->retryOrderCallback($order_id, $order_callback_id);
} catch (Exception $e) {
    echo 'Exception when calling OrderCallbackApi->retryOrderCallback: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order_id** | **string**|  | |
| **order_callback_id** | **string**|  | |

### Return type

void (empty response body)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
