# PaymentMethods

## Overview

### Available Operations

* [list](#list) - Retrieve a list of payment methods associated with a Moov account. Read our [payment methods 
guide](https://docs.moov.io/guides/money-movement/payment-methods/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/payment-methods.read` scope.
* [get](#get) - Get the specified payment method associated with a Moov account. Read our [payment methods guide](https://docs.moov.io/guides/money-movement/payment-methods/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/payment-methods.read` scope.

## list

Retrieve a list of payment methods associated with a Moov account. Read our [payment methods 
guide](https://docs.moov.io/guides/money-movement/payment-methods/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/payment-methods.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listPaymentMethods" method="get" path="/accounts/{accountID}/payment-methods" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.payment_methods.list(account_id: 'f5503781-dfe4-4bcd-9487-5b5fe2b4d53b')

unless res.payment_methods.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                      | Type                                                                                                                                                                                                                                                                                           | Required                                                                                                                                                                                                                                                                                       | Description                                                                                                                                                                                                                                                                                    |
| ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                   | *::String*                                                                                                                                                                                                                                                                                     | :heavy_check_mark:                                                                                                                                                                                                                                                                             | N/A                                                                                                                                                                                                                                                                                            |
| `source_id`                                                                                                                                                                                                                                                                                    | *T.nilable(::String)*                                                                                                                                                                                                                                                                          | :heavy_minus_sign:                                                                                                                                                                                                                                                                             | Optional parameter to filter the account's payment methods by source ID. <br/><br/>A source ID can be a [walletID](https://docs.moov.io/api/sources/wallets/list/), [cardID](https://docs.moov.io/api/sources/cards/list/), <br/>or [bankAccountID](https://docs.moov.io/api/sources/bank-accounts/list/). |
| `payment_method_type`                                                                                                                                                                                                                                                                          | [T.nilable(Models::Components::PaymentMethodType)](../../models/shared/paymentmethodtype.md)                                                                                                                                                                                                   | :heavy_minus_sign:                                                                                                                                                                                                                                                                             | Optional parameter to filter the account's payment methods by payment method type.                                                                                                                                                                                                             |

### Response

**[T.nilable(Models::Operations::ListPaymentMethodsResponse)](../../models/operations/listpaymentmethodsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Get the specified payment method associated with a Moov account. Read our [payment methods guide](https://docs.moov.io/guides/money-movement/payment-methods/) to learn more.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/payment-methods.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getPaymentMethod" method="get" path="/accounts/{accountID}/payment-methods/{paymentMethodID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.payment_methods.get(account_id: '56878537-30b0-48ee-9c54-07ab3a8b243d', payment_method_id: 'aa740bf3-4c5f-459b-9370-4f7d4bea382b')

unless res.payment_method.nil?
  # handle response
end

```

### Parameters

| Parameter           | Type                | Required            | Description         |
| ------------------- | ------------------- | ------------------- | ------------------- |
| `account_id`        | *::String*          | :heavy_check_mark:  | N/A                 |
| `payment_method_id` | *::String*          | :heavy_check_mark:  | N/A                 |

### Response

**[T.nilable(Models::Operations::GetPaymentMethodResponse)](../../models/operations/getpaymentmethodresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |