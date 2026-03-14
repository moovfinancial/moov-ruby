# ResolutionLinks

## Overview

### Available Operations

* [create](#create) - Create a resolution link for the specified account. Resolution links are temporary, secure links
sent to merchants to resolve account requirements such as KYC verification or document uploads.  Only one active resolution link
is allowed per connected account. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.write`, `/accounts/{accountID}/representatives.write` and `/accounts/{accountID}/files.write` scopes.
* [list](#list) - List resolution links for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.read` scope.
* [get](#get) - Get a resolution link by code.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.read` scope.
* [disable](#disable) - Disable a resolution link. Disabled resolution links can no longer be used by merchants.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

## create

Create a resolution link for the specified account. Resolution links are temporary, secure links
sent to merchants to resolve account requirements such as KYC verification or document uploads.  Only one active resolution link
is allowed per connected account. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.write`, `/accounts/{accountID}/representatives.write` and `/accounts/{accountID}/files.write` scopes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createResolutionLink" method="post" path="/accounts/{accountID}/resolution-links" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.resolution_links.create(account_id: '<id>', create_resolution_link: Models::Components::CreateResolutionLink.new(
  recipient: Models::Components::ResolutionLinkRecipient.new(
    phone: Models::Components::PhoneNumber.new(
      number: '5555555555',
      country_code: '1'
    )
  )
))

unless res.resolution_link.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                               | Type                                                                                    | Required                                                                                | Description                                                                             | Example                                                                                 |
| --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------- |
| `account_id`                                                                            | *::String*                                                                              | :heavy_check_mark:                                                                      | N/A                                                                                     |                                                                                         |
| `create_resolution_link`                                                                | [Models::Components::CreateResolutionLink](../../models/shared/createresolutionlink.md) | :heavy_check_mark:                                                                      | N/A                                                                                     | {<br/>"recipient": {<br/>"phone": {<br/>"number": "5555555555",<br/>"countryCode": "1"<br/>}<br/>}<br/>} |

### Response

**[T.nilable(Models::Operations::CreateResolutionLinkResponse)](../../models/operations/createresolutionlinkresponse.md)**

### Errors

| Error Type                                | Status Code                               | Content Type                              |
| ----------------------------------------- | ----------------------------------------- | ----------------------------------------- |
| Models::Errors::GenericError              | 400, 409                                  | application/json                          |
| Models::Errors::CreateResolutionLinkError | 422                                       | application/json                          |
| Errors::APIError                          | 4XX, 5XX                                  | \*/\*                                     |

## list

List resolution links for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listResolutionLinks" method="get" path="/accounts/{accountID}/resolution-links" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.resolution_links.list(account_id: '<id>')

unless res.resolution_links.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `account_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::ListResolutionLinksResponse)](../../models/operations/listresolutionlinksresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Get a resolution link by code.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getResolutionLink" method="get" path="/accounts/{accountID}/resolution-links/{resolutionLinkCode}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.resolution_links.get(account_id: '<id>', resolution_link_code: '<value>')

unless res.resolution_link.nil?
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `account_id`           | *::String*             | :heavy_check_mark:     | N/A                    |
| `resolution_link_code` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::GetResolutionLinkResponse)](../../models/operations/getresolutionlinkresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## disable

Disable a resolution link. Disabled resolution links can no longer be used by merchants.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/)
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="disableResolutionLink" method="delete" path="/accounts/{accountID}/resolution-links/{resolutionLinkCode}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.resolution_links.disable(account_id: '<id>', resolution_link_code: '<value>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter              | Type                   | Required               | Description            |
| ---------------------- | ---------------------- | ---------------------- | ---------------------- |
| `account_id`           | *::String*             | :heavy_check_mark:     | N/A                    |
| `resolution_link_code` | *::String*             | :heavy_check_mark:     | N/A                    |

### Response

**[T.nilable(Models::Operations::DisableResolutionLinkResponse)](../../models/operations/disableresolutionlinkresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |