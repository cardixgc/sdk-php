# Cardix\OrderPaymentApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**findPayments()**](OrderPaymentApi.md#findPayments) | **GET** /orders/{orderId}/payments |  |
| [**getPayment()**](OrderPaymentApi.md#getPayment) | **GET** /orders/{orderId}/payments/{orderPaymentId} |  |


## `findPayments()`

```php
findPayments($order_id): \Cardix\Model\OrderPaymentDto[]
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: Bearer
$config = Cardix\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Cardix\Api\OrderPaymentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = 'order_id_example'; // string

try {
    $result = $apiInstance->findPayments($order_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderPaymentApi->findPayments: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order_id** | **string**|  | |

### Return type

[**\Cardix\Model\OrderPaymentDto[]**](../Model/OrderPaymentDto.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getPayment()`

```php
getPayment($order_id, $order_payment_id): \Cardix\Model\OrderPaymentDto
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: Bearer
$config = Cardix\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Cardix\Api\OrderPaymentApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = 'order_id_example'; // string
$order_payment_id = 'order_payment_id_example'; // string

try {
    $result = $apiInstance->getPayment($order_id, $order_payment_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderPaymentApi->getPayment: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order_id** | **string**|  | |
| **order_payment_id** | **string**|  | |

### Return type

[**\Cardix\Model\OrderPaymentDto**](../Model/OrderPaymentDto.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
