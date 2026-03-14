# Webhooks

## Overview

### Available Operations

* [list_event_types](#list_event_types) - List all available event types that can be subscribed to.
* [list](#list) - List all webhooks configured for the account.
* [create](#create) - Create a new webhook for the account.
* [get](#get) - Get details of a specific webhook.
* [update](#update) - Update an existing webhook.
* [disable](#disable) - Disable a webhook. Disabled webhooks will no longer receive events.
* [ping](#ping) - Send a test ping to a webhook to verify it is configured correctly.
* [get_secret](#get_secret) - Get the secret key for verifying webhook payloads.

## list_event_types

List all available event types that can be subscribed to.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listEventTypes" method="get" path="/event-types" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.list_event_types

unless res.event_types.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListEventTypesResponse)](../../models/operations/listeventtypesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## list

List all webhooks configured for the account.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listWebhooks" method="get" path="/webhooks" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.list

unless res.webhooks.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListWebhooksResponse)](../../models/operations/listwebhooksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create

Create a new webhook for the account.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createWebhook" method="post" path="/webhooks" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::CreateWebhook.new(
  url: 'https://experienced-sailor.biz/',
  status: Models::Components::WebhookStatus::DISABLED,
  event_types: [],
  description: 'overdue bonnet failing'
)
res = s.webhooks.create(request: req)

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `request`                                                                 | [Models::Components::CreateWebhook](../../models/shared/createwebhook.md) | :heavy_check_mark:                                                        | The request object to use for the request.                                |

### Response

**[T.nilable(Models::Operations::CreateWebhookResponse)](../../models/operations/createwebhookresponse.md)**

### Errors

| Error Type                                   | Status Code                                  | Content Type                                 |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| Models::Errors::GenericError                 | 400, 409                                     | application/json                             |
| Models::Errors::CreateWebhookValidationError | 422                                          | application/json                             |
| Errors::APIError                             | 4XX, 5XX                                     | \*/\*                                        |

## get

Get details of a specific webhook.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWebhook" method="get" path="/webhooks/{webhookID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.get(webhook_id: 'deeb5a05-74d4-40ad-b4be-a9265fd49428')

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `webhook_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetWebhookResponse)](../../models/operations/getwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Update an existing webhook.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateWebhook" method="put" path="/webhooks/{webhookID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.update(webhook_id: '954b566e-0c37-481b-bf92-6cdbd0e47dc0', update_webhook: Models::Components::UpdateWebhook.new(
  url: 'https://nimble-affect.name',
  status: Models::Components::WebhookStatus::ENABLED,
  event_types: [],
  description: 'hmph eyeglasses pink stylish blah'
))

unless res.webhook.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                 | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `webhook_id`                                                              | *::String*                                                                | :heavy_check_mark:                                                        | N/A                                                                       |
| `update_webhook`                                                          | [Models::Components::UpdateWebhook](../../models/shared/updatewebhook.md) | :heavy_check_mark:                                                        | N/A                                                                       |

### Response

**[T.nilable(Models::Operations::UpdateWebhookResponse)](../../models/operations/updatewebhookresponse.md)**

### Errors

| Error Type                                   | Status Code                                  | Content Type                                 |
| -------------------------------------------- | -------------------------------------------- | -------------------------------------------- |
| Models::Errors::GenericError                 | 400, 409                                     | application/json                             |
| Models::Errors::UpdateWebhookValidationError | 422                                          | application/json                             |
| Errors::APIError                             | 4XX, 5XX                                     | \*/\*                                        |

## disable

Disable a webhook. Disabled webhooks will no longer receive events.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="disableWebhook" method="delete" path="/webhooks/{webhookID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.disable(webhook_id: 'c88929b3-cbb6-4144-923f-e9a5ba645708')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `webhook_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::DisableWebhookResponse)](../../models/operations/disablewebhookresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## ping

Send a test ping to a webhook to verify it is configured correctly.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="pingWebhook" method="post" path="/webhooks/{webhookID}/ping" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.ping(webhook_id: '87e0ecc6-d6c3-4eeb-99e8-6dbe9212a6a2')

unless res.ping_response.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `webhook_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::PingWebhookResponse)](../../models/operations/pingwebhookresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_secret

Get the secret key for verifying webhook payloads.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getWebhookSecret" method="get" path="/webhooks/{webhookID}/secret" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.webhooks.get_secret(webhook_id: '1fac81d6-2d5b-4180-8765-81282a450eda')

unless res.webhook_secret.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `webhook_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetWebhookSecretResponse)](../../models/operations/getwebhooksecretresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |