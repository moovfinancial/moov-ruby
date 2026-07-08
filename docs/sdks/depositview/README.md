# DepositView

## Overview

### Available Operations

* [create](#create) - Ingest a deposit account into the deposit view from a core banking source system.

The request body is a raw byte payload whose format depends on the core banking
system that produced it. Set the `X-Source-System` header to identify that system
so the payload can be parsed correctly.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

## create

Ingest a deposit account into the deposit view from a core banking source system.

The request body is a raw byte payload whose format depends on the core banking
system that produced it. Set the `X-Source-System` header to identify that system
so the payload can be parsed correctly.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createDepositAccount" method="post" path="/underwriting/{accountID}/deposit-accounts" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.deposit_view.create(account_id: '<id>', x_source_system: Models::Components::SourceSystem::JH_CIF2020, request_body: '0x86dcc65F3b'.encode)

unless res.deposit_account_ingested_response.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `account_id`                                                              | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `x_source_system`                                                         | [Models::Components::SourceSystem](../../models/shared/sourcesystem.md)   | :heavy_check_mark:                                                        | Identifies the core banking source system that produced the request body. |
| `request_body`                                                            | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |

### Response

**[T.nilable(Models::Operations::CreateDepositAccountResponse)](../../models/operations/createdepositaccountresponse.md)**

### Errors

| Error Type                                    | Status Code                                   | Content Type                                  |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| Models::Errors::GenericError                  | 400, 409                                      | application/json                              |
| Models::Errors::DepositAccountValidationError | 422                                           | application/json                              |
| Errors::APIError                              | 4XX, 5XX                                      | \*/\*                                         |