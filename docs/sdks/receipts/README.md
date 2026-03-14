# Receipts

## Overview

### Available Operations

* [create](#create) -  Create receipts for transfers and scheduled transfers.

 To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
 you'll need to specify the `/accounts/{accountID}/transfers.write` scope.
* [list](#list) - List receipts by transferID, scheduleID, or occurrenceID.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.

## create

 Create receipts for transfers and scheduled transfers.

 To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
 you'll need to specify the `/accounts/{accountID}/transfers.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createReceipts" method="post" path="/receipts" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = []
res = s.receipts.create(request: req)

unless res.receipt_responses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request`                                                         | [T::Array[Models::Components::ReceiptRequest]](../../models//.md) | :heavy_check_mark:                                                | The request object to use for the request.                        |

### Response

**[T.nilable(Models::Operations::CreateReceiptsResponse)](../../models/operations/createreceiptsresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## list

List receipts by transferID, scheduleID, or occurrenceID.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/transfers.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listReceipts" method="get" path="/receipts" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.receipts.list(id: '8508cf6c-9ce4-4e35-84c1-4b77320a620b')

unless res.receipt_responses.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                | Type                                                                     | Required                                                                 | Description                                                              |
| ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ | ------------------------------------------------------------------------ |
| `id`                                                                     | *::String*                                                               | :heavy_check_mark:                                                       | The transfer, schedule, or transfer occurrence ID to filter receipts by. |

### Response

**[T.nilable(Models::Operations::ListReceiptsResponse)](../../models/operations/listreceiptsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |