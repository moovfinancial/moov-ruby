# Branding

## Overview

### Available Operations

* [create](#create) - Create brand properties for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/branding.write` scope.
* [upsert](#upsert) - Create or replace brand properties for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/branding.write` scope.
* [get](#get) - Get brand properties for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/branding.read` scope.

## create

Create brand properties for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/branding.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createBrand" method="post" path="/accounts/{accountID}/branding" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.branding.create(account_id: '0a6ae927-b52b-4ef4-86d0-288f27479817', brand_properties: Models::Components::BrandProperties.new(
  colors: Models::Components::BrandColors.new(
    dark: Models::Components::BrandColor.new(
      accent: '#111111'
    ),
    light: Models::Components::BrandColor.new(
      accent: '#111111'
    )
  )
))

unless res.brand_properties.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `account_id`                                                                  | *::String*                                                                    | :heavy_check_mark:                                                            | N/A                                                                           |
| `brand_properties`                                                            | [Models::Components::BrandProperties](../../models/shared/brandproperties.md) | :heavy_check_mark:                                                            | N/A                                                                           |

### Response

**[T.nilable(Models::Operations::CreateBrandResponse)](../../models/operations/createbrandresponse.md)**

### Errors

| Error Type                           | Status Code                          | Content Type                         |
| ------------------------------------ | ------------------------------------ | ------------------------------------ |
| Models::Errors::GenericError         | 400, 409                             | application/json                     |
| Models::Errors::BrandValidationError | 422                                  | application/json                     |
| Errors::APIError                     | 4XX, 5XX                             | \*/\*                                |

## upsert

Create or replace brand properties for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/branding.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="upsertBrand" method="put" path="/accounts/{accountID}/branding" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.branding.upsert(account_id: '0cd408b1-a57d-477b-825b-12331c2ed00a', brand_properties: Models::Components::BrandProperties.new(
  colors: Models::Components::BrandColors.new(
    dark: Models::Components::BrandColor.new(
      accent: '#111111'
    ),
    light: Models::Components::BrandColor.new(
      accent: '#111111'
    )
  )
))

unless res.brand_properties.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                     | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `account_id`                                                                  | *::String*                                                                    | :heavy_check_mark:                                                            | N/A                                                                           |
| `brand_properties`                                                            | [Models::Components::BrandProperties](../../models/shared/brandproperties.md) | :heavy_check_mark:                                                            | N/A                                                                           |

### Response

**[T.nilable(Models::Operations::UpsertBrandResponse)](../../models/operations/upsertbrandresponse.md)**

### Errors

| Error Type                           | Status Code                          | Content Type                         |
| ------------------------------------ | ------------------------------------ | ------------------------------------ |
| Models::Errors::GenericError         | 400, 409                             | application/json                     |
| Models::Errors::BrandValidationError | 422                                  | application/json                     |
| Errors::APIError                     | 4XX, 5XX                             | \*/\*                                |

## get

Get brand properties for the specified account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/branding.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getBrand" method="get" path="/accounts/{accountID}/branding" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.branding.get(account_id: '8a4ec43e-d45f-481d-a291-683cb221e3cc')

unless res.brand_properties.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        |
| ------------------ | ------------------ | ------------------ | ------------------ |
| `account_id`       | *::String*         | :heavy_check_mark: | N/A                |

### Response

**[T.nilable(Models::Operations::GetBrandResponse)](../../models/operations/getbrandresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |