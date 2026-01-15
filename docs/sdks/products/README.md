# Products

## Overview

### Available Operations

* [list](#list) - List active (non-disabled) products for an account.
* [create](#create) - Creates a new product for the specified account.
* [get](#get) - Retrieve a product by ID.
* [update](#update) - Update a product and its options.
* [disable](#disable) - Disable a product by ID.

The product will no longer be available, but will remain in the system for historical and reporting purposes.

## list

List active (non-disabled) products for an account.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listProducts" method="get" path="/accounts/{accountID}/products" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

req = Models::Operations::ListProductsRequest.new(
  account_id: 'cd696219-4308-446c-b0d8-1759254995c2',
  skip: 60,
  count: 20,
)

res = s.products.list(request: req)

unless res.products.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListProductsRequest](../../models/operations/listproductsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListProductsResponse)](../../models/operations/listproductsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## create

Creates a new product for the specified account.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createProduct" method="post" path="/accounts/{accountID}/products" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.products.create(account_id: '27cd3181-7c1c-4d81-b020-e7d55c33941f', product_request: Models::Components::ProductRequest.new(
  title: 'World\'s best lemonade',
  description: 'Really, the best.',
  base_price: Models::Components::AmountDecimal.new(
    currency: 'USD',
    value_decimal: '4.99',
  ),
  images: [
    Models::Components::AssignProductImage.new(
      image_id: 'fed91252-6f48-4b70-885e-520bf53a52ff',
    ),
    Models::Components::AssignProductImage.new(
      image_id: 'eb466644-0a58-4b87-af1e-94d03e223ad2',
    ),
  ],
  option_groups: [
    Models::Components::CreateProductOptionGroup.new(
      name: 'Flavor add-ins',
      description: 'Choose up to 3 flavor add-ins to enhance your lemonade.',
      min_select: 0,
      max_select: 3,
      options: [
        Models::Components::CreateProductOption.new(
          name: 'Strawberry puree',
          description: 'Fresh and fruity.',
          price_modifier: Models::Components::AmountDecimal.new(
            currency: 'USD',
            value_decimal: '0.99',
          ),
          images: [
            Models::Components::AssignProductImage.new(
              image_id: 'd359808d-9896-4414-8d17-dac43f35842d',
            ),
          ],
        ),
        Models::Components::CreateProductOption.new(
          name: 'Passionfruit syrup',
          price_modifier: Models::Components::AmountDecimal.new(
            currency: 'USD',
            value_decimal: '0.49',
          ),
        ),
        Models::Components::CreateProductOption.new(
          name: 'Cherry syrup',
          price_modifier: Models::Components::AmountDecimal.new(
            currency: 'USD',
            value_decimal: '0.49',
          ),
        ),
      ],
    ),
    Models::Components::CreateProductOptionGroup.new(
      name: 'Sweetener',
      description: 'Choose a sweetener for your lemonade.',
      min_select: 1,
      max_select: 1,
      options: [
        Models::Components::CreateProductOption.new(
          name: 'Cane Sugar',
        ),
        Models::Components::CreateProductOption.new(
          name: 'Honey',
          price_modifier: Models::Components::AmountDecimal.new(
            currency: 'USD',
            value_decimal: '0.99',
          ),
        ),
        Models::Components::CreateProductOption.new(
          name: 'Stevia',
          description: 'Natural, zero-calorie sweetener.',
        ),
      ],
    ),
  ],
))

unless res.product.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `product_request`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | [Models::Components::ProductRequest](../../models/shared/productrequest.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::CreateProductResponse)](../../models/operations/createproductresponse.md)**

### Errors

| Error Type                                    | Status Code                                   | Content Type                                  |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| Models::Errors::GenericError                  | 400, 409                                      | application/json                              |
| Models::Errors::ProductRequestValidationError | 422                                           | application/json                              |
| Errors::APIError                              | 4XX, 5XX                                      | \*/\*                                         |

## get

Retrieve a product by ID.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getProduct" method="get" path="/accounts/{accountID}/products/{productID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.products.get(account_id: 'a749d848-5ebc-42a4-9ae6-555804317835', product_id: 'dd0b4873-5cf5-4aa8-aa86-e31d86f7e38a')

unless res.product.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `product_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::GetProductResponse)](../../models/operations/getproductresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

Update a product and its options.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateProduct" method="put" path="/accounts/{accountID}/products/{productID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.products.update(account_id: '7a7b55ed-d90d-4e83-a8f6-f146eaebd0cc', product_id: 'fa407877-3b46-4484-814e-65b147d76a9e', product_request: Models::Components::ProductRequest.new(
  title: '<value>',
  base_price: Models::Components::AmountDecimal.new(
    currency: 'USD',
    value_decimal: '12.987654321',
  ),
  option_groups: [
    Models::Components::CreateProductOptionGroup.new(
      name: '<value>',
      min_select: 328_576,
      max_select: 430_951,
      options: [],
    ),
  ],
))

unless res.product.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `product_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `product_request`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | [Models::Components::ProductRequest](../../models/shared/productrequest.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::UpdateProductResponse)](../../models/operations/updateproductresponse.md)**

### Errors

| Error Type                                    | Status Code                                   | Content Type                                  |
| --------------------------------------------- | --------------------------------------------- | --------------------------------------------- |
| Models::Errors::GenericError                  | 400, 409                                      | application/json                              |
| Models::Errors::ProductRequestValidationError | 422                                           | application/json                              |
| Errors::APIError                              | 4XX, 5XX                                      | \*/\*                                         |

## disable

Disable a product by ID.

The product will no longer be available, but will remain in the system for historical and reporting purposes.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="disableProduct" method="delete" path="/accounts/{accountID}/products/{productID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.products.disable(account_id: '9fbe72c0-abba-4bb7-b1d0-d15ee702fe62', product_id: '1e11a7dc-4e86-41ed-b256-55c22f3bfd38')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `product_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release.<br/>When no version is specified, the API defaults to `v2024.01.00`. |

### Response

**[T.nilable(Models::Operations::DisableProductResponse)](../../models/operations/disableproductresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |