# TransferConfig

## Overview

### Available Operations

* [create](#create) - Create a transfer config for an account.
* [get](#get) - Get the transfer config for an account.
* [update](#update) - Update the transfer config for an account.

## create

Create a transfer config for an account.

### Example Usage: Fixed amount tip config created

<!-- UsageSnippet language="ruby" operationID="createTransferConfig" method="post" path="/accounts/{accountID}/transfer-config" example="Fixed amount tip config created" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.transfer_config.create(account_id: '<id>', create_transfer_config: Models::Components::CreateTransferConfig.new(
  tip_presets: Models::Components::CreateTipPresets.new(
    fixed_amount_options: [
      Models::Components::AmountDecimal.new(
        currency: 'USD',
        value_decimal: '12.987654321'
      ),
    ]
  )
))

unless res.transfer_config.nil?
  # handle response
end

```
### Example Usage: Percentage tip config created

<!-- UsageSnippet language="ruby" operationID="createTransferConfig" method="post" path="/accounts/{accountID}/transfer-config" example="Percentage tip config created" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.transfer_config.create(account_id: '<id>', create_transfer_config: Models::Components::CreateTransferConfig.new(
  tip_presets: Models::Components::CreateTipPresets.new(
    fixed_amount_options: [
      Models::Components::AmountDecimal.new(
        currency: 'USD',
        value_decimal: '12.987654321'
      ),
    ]
  )
))

unless res.transfer_config.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `account_id`                                                                            | *::String*                                                                              | :heavy_check_mark:                                                                      | Your Moov account ID.                                                                   |
| `create_transfer_config`                                                                | [Models::Components::CreateTransferConfig](../../models/shared/createtransferconfig.md) | :heavy_check_mark:                                                                      | N/A                                                                                     |

### Response

**[T.nilable(Models::Operations::CreateTransferConfigResponse)](../../models/operations/createtransferconfigresponse.md)**

### Errors

| Error Type                                    | Status Code                                   | Content Type                                  |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| Models::Errors::GenericError                  | 400                                           | application/json                              |
| Models::Errors::TransferConfigValidationError | 422                                           | application/json                              |
| Errors::APIError                              | 4XX, 5XX                                      | \*/\*                                         |

## get

Get the transfer config for an account.

### Example Usage: Fixed amount tip config

<!-- UsageSnippet language="ruby" operationID="getTransferConfig" method="get" path="/accounts/{accountID}/transfer-config" example="Fixed amount tip config" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.transfer_config.get(account_id: '<id>')

unless res.transfer_config.nil?
  # handle response
end

```
### Example Usage: Percentage tip config

<!-- UsageSnippet language="ruby" operationID="getTransferConfig" method="get" path="/accounts/{accountID}/transfer-config" example="Percentage tip config" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.transfer_config.get(account_id: '<id>')

unless res.transfer_config.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `account_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetTransferConfigResponse)](../../models/operations/gettransferconfigresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Update the transfer config for an account.

### Example Usage: Updated fixed amount tip config

<!-- UsageSnippet language="ruby" operationID="updateTransferConfig" method="put" path="/accounts/{accountID}/transfer-config" example="Updated fixed amount tip config" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.transfer_config.update(account_id: '<id>', put_transfer_config: Models::Components::PutTransferConfig.new(
  tip_presets: Models::Components::PutTipPresets.new(
    fixed_amount_options: [
      Models::Components::AmountDecimal.new(
        currency: 'USD',
        value_decimal: '12.987654321'
      ),
    ]
  )
))

unless res.transfer_config.nil?
  # handle response
end

```
### Example Usage: Updated percentage tip config

<!-- UsageSnippet language="ruby" operationID="updateTransferConfig" method="put" path="/accounts/{accountID}/transfer-config" example="Updated percentage tip config" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.transfer_config.update(account_id: '<id>', put_transfer_config: Models::Components::PutTransferConfig.new(
  tip_presets: Models::Components::PutTipPresets.new(
    fixed_amount_options: [
      Models::Components::AmountDecimal.new(
        currency: 'USD',
        value_decimal: '12.987654321'
      ),
    ]
  )
))

unless res.transfer_config.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                         | Type                                                                              | Required                                                                          | Description                                                                       |
| --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- | --------------------------------------------------------------------------------- |
| `account_id`                                                                      | *::String*                                                                        | :heavy_check_mark:                                                                | N/A                                                                               |
| `put_transfer_config`                                                             | [Models::Components::PutTransferConfig](../../models/shared/puttransferconfig.md) | :heavy_check_mark:                                                                | N/A                                                                               |

### Response

**[T.nilable(Models::Operations::UpdateTransferConfigResponse)](../../models/operations/updatetransferconfigresponse.md)**

### Errors

| Error Type                                    | Status Code                                   | Content Type                                  |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| Models::Errors::GenericError                  | 400                                           | application/json                              |
| Models::Errors::TransferConfigValidationError | 422                                           | application/json                              |
| Errors::APIError                              | 4XX, 5XX                                      | \*/\*                                         |