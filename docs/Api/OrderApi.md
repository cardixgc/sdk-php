# Cardix\OrderApi

All URIs are relative to http://localhost, except if the operation defines another base path.

| Method | HTTP request | Description |
| ------------- | ------------- | ------------- |
| [**createOrder()**](OrderApi.md#createOrder) | **POST** /orders |  |
| [**createOrderCheckout()**](OrderApi.md#createOrderCheckout) | **POST** /orders/{orderId}/checkout |  |
| [**getOrder()**](OrderApi.md#getOrder) | **GET** /orders/{orderId} |  |


## `createOrder()`

```php
createOrder($order_request): \Cardix\Model\OrderIdDto
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: Bearer
$config = Cardix\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Cardix\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_request = new \Cardix\Model\OrderRequest(); // \Cardix\Model\OrderRequest

try {
    $result = $apiInstance->createOrder($order_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->createOrder: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order_request** | [**\Cardix\Model\OrderRequest**](../Model/OrderRequest.md)|  | |

### Return type

[**\Cardix\Model\OrderIdDto**](../Model/OrderIdDto.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `createOrderCheckout()`

```php
createOrderCheckout($order_id, $order_checkout_request): \Cardix\Model\OrderPaymentDto
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: Bearer
$config = Cardix\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Cardix\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = 'order_id_example'; // string
$order_checkout_request = new \Cardix\Model\OrderCheckoutRequest(); // \Cardix\Model\OrderCheckoutRequest

try {
    $result = $apiInstance->createOrderCheckout($order_id, $order_checkout_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->createOrderCheckout: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order_id** | **string**|  | |
| **order_checkout_request** | [**\Cardix\Model\OrderCheckoutRequest**](../Model/OrderCheckoutRequest.md)|  | |

### Return type

[**\Cardix\Model\OrderPaymentDto**](../Model/OrderPaymentDto.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: `application/json`
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)

## `getOrder()`

```php
getOrder($order_id): \Cardix\Model\OrderDto
```



### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


// Configure Bearer authorization: Bearer
$config = Cardix\Configuration::getDefaultConfiguration()->setAccessToken('YOUR_ACCESS_TOKEN');


$apiInstance = new Cardix\Api\OrderApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$order_id = 'order_id_example'; // string

try {
    $result = $apiInstance->getOrder($order_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrderApi->getOrder: ', $e->getMessage(), PHP_EOL;
}
```

### Parameters

| Name | Type | Description  | Notes |
| ------------- | ------------- | ------------- | ------------- |
| **order_id** | **string**|  | |

### Return type

[**\Cardix\Model\OrderDto**](../Model/OrderDto.md)

### Authorization

[Bearer](../../README.md#Bearer)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: `application/json`

[[Back to top]](#) [[Back to API list]](../../README.md#endpoints)
[[Back to Model list]](../../README.md#models)
[[Back to README]](../../README.md)
