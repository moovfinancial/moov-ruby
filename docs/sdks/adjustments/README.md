# Adjustments

## Overview

### Available Operations

* [list](#list) - List adjustments associated with a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.
* [get](#get) - Retrieve a specific adjustment associated with a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.

## list

List adjustments associated with a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAdjustments" method="get" path="/accounts/{accountID}/adjustments" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.adjustments.list(account_id: 'c054f3a6-d542-4310-a955-830739f800f0')

unless res.adjustments.nil?
  # handle response
end

```

### Parameters

| Parameter                             | Type                                  | Required                              | Description                           |
| ------------------------------------- | ------------------------------------- | ------------------------------------- | ------------------------------------- |
| `account_id`                          | *::String*                            | :heavy_check_mark:                    | N/A                                   |
| `wallet_id`                           | *T.nilable(::String)*                 | :heavy_minus_sign:                    | A wallet ID to filter adjustments by. |

### Response

**[T.nilable(Models::Operations::ListAdjustmentsResponse)](../../models/operations/listadjustmentsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Retrieve a specific adjustment associated with a Moov account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/wallets.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAdjustment" method="get" path="/accounts/{accountID}/adjustments/{adjustmentID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.adjustments.get(account_id: '3ef4e658-8aaa-449f-a7a4-95a6839172a1', adjustment_id: 'cbe4a8e7-605f-4667-a308-1afde85cd7a5')

unless res.adjustment.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `account_id`       | *::String*         | :heavy_check_mark: | N/A                |
| `adjustment_id`    | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetAdjustmentResponse)](../../models/operations/getadjustmentresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |