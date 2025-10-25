# Accounts
(*accounts*)

## Overview

### Available Operations

* [create](#create) - You can create **business** or **individual** accounts for your users (i.e., customers, merchants) by passing the required
information to Moov. Requirements differ per account type and requested [capabilities](https://docs.moov.io/guides/accounts/capabilities/requirements/).

If you're requesting the `wallet`, `send-funds`, `collect-funds`, or `card-issuing` capabilities, you'll need to:
  + Send Moov the user [platform terms of service agreement](https://docs.moov.io/guides/accounts/requirements/platform-agreement/) acceptance.
    This can be done upon account creation, or by [patching](https://docs.moov.io/api/moov-accounts/accounts/patch/) the account using the `termsOfService` field.
If you're creating a business account with the business type `llc`, `partnership`, or `privateCorporation`, you'll need to:
  + Provide [business representatives](https://docs.moov.io/api/moov-accounts/representatives/) after creating the account.
  + [Patch](https://docs.moov.io/api/moov-accounts/accounts/patch/) the account to indicate that business representative ownership information is complete.

Visit our documentation to read more about [creating accounts](https://docs.moov.io/guides/accounts/create-accounts/) and [verification requirements](https://docs.moov.io/guides/accounts/requirements/identity-verification/).
Note that the `mode` field (for production or sandbox) is only required when creating a _facilitator_ account. All non-facilitator account requests will ignore the mode field and be set to the calling facilitator's mode.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts.write` scope.
* [list](#list) - List or search accounts to which the caller is connected.

All supported query parameters are optional. If none are provided the response will include all connected accounts.
Pagination is supported via the `skip` and `count` query parameters. Searching by name and email will overlap and 
return results based on relevance. Accounts with AccountType `guest` will not be included in the response.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts.read` scope.
* [get](#get) - Retrieves details for the account with the specified ID.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts/{accountID}/profile.read` scope.
* [update](#update) - When **can** profile data be updated:
  + For unverified accounts, all profile data can be edited.
  + During the verification process, missing or incomplete profile data can be edited.
  + Verified accounts can only add missing profile data.

  When **can't** profile data be updated:
  + Verified accounts cannot change any existing profile data.

If you need to update information in a locked state, please contact Moov support.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts/{accountID}/profile.write` scope.
* [disconnect](#disconnect) - This will sever the connection between you and the account specified and it will no longer be listed as 
active in the list of accounts. This also means you'll only have read-only access to the account going 
forward for reporting purposes.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.disconnect` scope.
* [get_countries](#get_countries) - Retrieve the specified countries of operation for an account. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.
* [assign_countries](#assign_countries) - Assign the countries of operation for an account.

This endpoint will always overwrite the previously assigned values. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.write` scope.
* [get_merchant_processing_agreement](#get_merchant_processing_agreement) - Retrieve a merchant account's processing agreement.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.
* [get_terms_of_service_token](#get_terms_of_service_token) - Generates a non-expiring token that can then be used to accept Moov's terms of service. 

This token can only be generated via API. Any Moov account requesting the collect funds, send funds, wallet, 
or card issuing capabilities must accept Moov's terms of service, then have the generated terms of service 
token patched to the account. Read more in our [documentation](https://docs.moov.io/guides/accounts/requirements/platform-agreement/).

## create

You can create **business** or **individual** accounts for your users (i.e., customers, merchants) by passing the required
information to Moov. Requirements differ per account type and requested [capabilities](https://docs.moov.io/guides/accounts/capabilities/requirements/).

If you're requesting the `wallet`, `send-funds`, `collect-funds`, or `card-issuing` capabilities, you'll need to:
  + Send Moov the user [platform terms of service agreement](https://docs.moov.io/guides/accounts/requirements/platform-agreement/) acceptance.
    This can be done upon account creation, or by [patching](https://docs.moov.io/api/moov-accounts/accounts/patch/) the account using the `termsOfService` field.
If you're creating a business account with the business type `llc`, `partnership`, or `privateCorporation`, you'll need to:
  + Provide [business representatives](https://docs.moov.io/api/moov-accounts/representatives/) after creating the account.
  + [Patch](https://docs.moov.io/api/moov-accounts/accounts/patch/) the account to indicate that business representative ownership information is complete.

Visit our documentation to read more about [creating accounts](https://docs.moov.io/guides/accounts/create-accounts/) and [verification requirements](https://docs.moov.io/guides/accounts/requirements/identity-verification/).
Note that the `mode` field (for production or sandbox) is only required when creating a _facilitator_ account. All non-facilitator account requests will ignore the mode field and be set to the calling facilitator's mode.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccount" method="post" path="/accounts" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.create(create_account: Models::Components::CreateAccount.new(
  account_type: Models::Components::CreateAccountType::BUSINESS,
  profile: Models::Components::CreateProfile.new(
    business: Models::Components::CreateBusinessProfile.new(
      legal_business_name: 'Whole Body Fitness LLC',
    ),
  ),
))

unless res.account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       | Example                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `create_account`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | [Models::Components::CreateAccount](../../models/shared/createaccount.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                         | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | {<br/>"accountType": "business",<br/>"profile": {<br/>"business": {<br/>"legalBusinessName": "Whole Body Fitness LLC"<br/>}<br/>}<br/>}                                                                                                                                                                                                                                                                                                                                                                                           |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |

### Response

**[T.nilable(Models::Operations::CreateAccountResponse)](../../models/operations/createaccountresponse.md)**

### Errors

| Error Type                         | Status Code                        | Content Type                       |
| ---------------------------------- | ---------------------------------- | ---------------------------------- |
| Models::Errors::GenericError       | 400, 409                           | application/json                   |
| Models::Errors::CreateAccountError | 422                                | application/json                   |
| Errors::APIError                   | 4XX, 5XX                           | \*/\*                              |

## list

List or search accounts to which the caller is connected.

All supported query parameters are optional. If none are provided the response will include all connected accounts.
Pagination is supported via the `skip` and `count` query parameters. Searching by name and email will overlap and 
return results based on relevance. Accounts with AccountType `guest` will not be included in the response.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listAccounts" method="get" path="/accounts" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

req = Models::Operations::ListAccountsRequest.new(
  type: Models::Components::CreateAccountType::BUSINESS,
  skip: 60,
  count: 20,
)

res = s.accounts.list(request: req)

unless res.accounts.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                 | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `request`                                                                                 | [Models::Operations::ListAccountsRequest](../../models/operations/listaccountsrequest.md) | :heavy_check_mark:                                                                        | The request object to use for the request.                                                |

### Response

**[T.nilable(Models::Operations::ListAccountsResponse)](../../models/operations/listaccountsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Retrieves details for the account with the specified ID.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccount" method="get" path="/accounts/{accountID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.get(account_id: '2f93a6cf-3b3b-4c17-8d3b-110dfadccea4')

unless res.account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::GetAccountResponse)](../../models/operations/getaccountresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## update

When **can** profile data be updated:
  + For unverified accounts, all profile data can be edited.
  + During the verification process, missing or incomplete profile data can be edited.
  + Verified accounts can only add missing profile data.

  When **can't** profile data be updated:
  + Verified accounts cannot change any existing profile data.

If you need to update information in a locked state, please contact Moov support.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) you'll need 
to specify the `/accounts/{accountID}/profile.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="updateAccount" method="patch" path="/accounts/{accountID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.update(account_id: '433cb9d1-5943-4fd5-91b4-2aef5b30e2e7', patch_account: Models::Components::PatchAccount.new(
  profile: Models::Components::PatchProfile.new(
    individual: Models::Components::PatchIndividual.new(
      name: Models::Components::IndividualNameUpdate.new(
        first_name: 'Jordan',
        middle_name: 'Reese',
        last_name: 'Lee',
        suffix: 'Jr',
      ),
      phone: Models::Components::PhoneNumber.new(
        number: '8185551212',
        country_code: '1',
      ),
      email: 'jordan.lee@classbooker.dev',
      address: Models::Components::AddressUpdate.new(
        address_line1: '123 Main Street',
        address_line2: 'Apt 302',
        city: 'Boulder',
        state_or_province: 'CO',
        postal_code: '80301',
        country: 'US',
      ),
      birth_date: Models::Components::BirthDateUpdate.new(
        day: 9,
        month: 11,
        year: 1989,
      ),
    ),
    business: Models::Components::PatchBusiness.new(
      business_type: Models::Components::BusinessType::LLC,
      address: Models::Components::AddressUpdate.new(
        address_line1: '123 Main Street',
        address_line2: 'Apt 302',
        city: 'Boulder',
        state_or_province: 'CO',
        postal_code: '80301',
        country: 'US',
      ),
      phone: Models::Components::PhoneNumber.new(
        number: '8185551212',
        country_code: '1',
      ),
      email: 'jordan.lee@classbooker.dev',
      tax_id: Models::Components::TaxIDUpdate.new(
        ein: Models::Components::TaxIDUpdateEin.new(
          number: '12-3456789',
        ),
      ),
      industry_codes: Models::Components::IndustryCodes.new(
        naics: '713940',
        sic: '7991',
        mcc: '7997',
      ),
      industry: 'electronics-appliances',
    ),
  ),
  metadata: {
    "optional": 'metadata',
  },
  terms_of_service: Models::Components::TermsOfServiceTokenUpdate.new(
    token: 'kgT1uxoMAk7QKuyJcmQE8nqW_HjpyuXBabiXPi6T83fUQoxsyWYPcYzuHQTqrt7YRp4gCwyDQvb6U5REM9Pgl2EloCe35t-eiMAbUWGo3Kerxme6aqNcKrP_6-v0MTXViOEJ96IBxPFTvMV7EROI2dq3u4e-x4BbGSCedAX-ViAQND6hcreCDXwrO6sHuzh5Xi2IzSqZHxaovnWEboaxuZKRJkA3dsFID6fzitMpm2qrOh4',
  ),
  customer_support: Models::Components::PatchAccountCustomerSupport.new(
    phone: Models::Components::PhoneNumber.new(
      number: '8185551212',
      country_code: '1',
    ),
    email: 'jordan.lee@classbooker.dev',
    address: Models::Components::AddressUpdate.new(
      address_line1: '123 Main Street',
      address_line2: 'Apt 302',
      city: 'Boulder',
      state_or_province: 'CO',
      postal_code: '80301',
      country: 'US',
    ),
  ),
))

unless res.account.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `patch_account`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   | [Models::Components::PatchAccount](../../models/shared/patchaccount.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                           | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::UpdateAccountResponse)](../../models/operations/updateaccountresponse.md)**

### Errors

| Error Type                        | Status Code                       | Content Type                      |
| --------------------------------- | --------------------------------- | --------------------------------- |
| Models::Errors::GenericError      | 400, 409                          | application/json                  |
| Models::Errors::PatchAccountError | 422                               | application/json                  |
| Errors::APIError                  | 4XX, 5XX                          | \*/\*                             |

## disconnect

This will sever the connection between you and the account specified and it will no longer be listed as 
active in the list of accounts. This also means you'll only have read-only access to the account going 
forward for reporting purposes.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.disconnect` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="disconnectAccount" method="delete" path="/accounts/{accountID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.disconnect(account_id: 'cfdfea7d-f185-4de5-ba90-b09f14fe6683')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::DisconnectAccountResponse)](../../models/operations/disconnectaccountresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## get_countries

Retrieve the specified countries of operation for an account. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAccountCountries" method="get" path="/accounts/{accountID}/countries" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.get_countries(account_id: 'a2026036-cc26-42c1-beef-950662d13b5d')

unless res.account_countries.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::GetAccountCountriesResponse)](../../models/operations/getaccountcountriesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## assign_countries

Assign the countries of operation for an account.

This endpoint will always overwrite the previously assigned values. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="assignAccountCountries" method="put" path="/accounts/{accountID}/countries" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.assign_countries(account_id: '46736fa8-4bf7-4144-8e0e-dbea1eb0805b', account_countries: Models::Components::AccountCountries.new(
  countries: [
    'United States',
  ],
))

unless res.account_countries.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `account_countries`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | [Models::Components::AccountCountries](../../models/shared/accountcountries.md)                                                                                                                                                                                                                                                                                                                                                                                                                                                   | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::AssignAccountCountriesResponse)](../../models/operations/assignaccountcountriesresponse.md)**

### Errors

| Error Type                           | Status Code                          | Content Type                         |
| ------------------------------------ | ------------------------------------ | ------------------------------------ |
| Models::Errors::GenericError         | 400, 409                             | application/json                     |
| Models::Errors::AssignCountriesError | 422                                  | application/json                     |
| Errors::APIError                     | 4XX, 5XX                             | \*/\*                                |

## get_merchant_processing_agreement

Retrieve a merchant account's processing agreement.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts/{accountID}/profile.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getMerchantProcessingAgreement" method="get" path="/accounts/{accountID}/merchant-agreement" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.get_merchant_processing_agreement(account_id: '6180d9b9-2377-4190-8530-70a99d31a578')

unless res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `account_id`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      | *::String*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        | :heavy_check_mark:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | N/A                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |

### Response

**[T.nilable(Models::Operations::GetMerchantProcessingAgreementResponse)](../../models/operations/getmerchantprocessingagreementresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_terms_of_service_token

Generates a non-expiring token that can then be used to accept Moov's terms of service. 

This token can only be generated via API. Any Moov account requesting the collect funds, send funds, wallet, 
or card issuing capabilities must accept Moov's terms of service, then have the generated terms of service 
token patched to the account. Read more in our [documentation](https://docs.moov.io/guides/accounts/requirements/platform-agreement/).

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTermsOfServiceToken" method="get" path="/tos-token" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
      x_moov_version: 'v2024.01.00',
    )

res = s.accounts.get_terms_of_service_token()

unless res.terms_of_service_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | Type                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              | Required                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |
| --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `x_moov_version`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specify an API version.<br/><br/>API versioning follows the format `vYYYY.QQ.BB`, where <br/>  - `YYYY` is the year<br/>  - `QQ` is the two-digit month for the first month of the quarter (e.g., 01, 04, 07, 10)<br/>  - `BB` is the build number, starting at `.01`, for subsequent builds in the same quarter. <br/>    - For example, `v2024.01.00` is the initial release of the first quarter of 2024.<br/><br/>The `latest` version represents the most recent development state. It may include breaking changes and should be treated as a beta release. |
| `origin`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Indicates the domain from which the request originated. Required if referer header is not present.                                                                                                                                                                                                                                                                                                                                                                                                                                |
| `referer`                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         | *T.nilable(::String)*                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             | :heavy_minus_sign:                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                | Specifies the URL of the resource from which the request originated. Required if origin header is not present.                                                                                                                                                                                                                                                                                                                                                                                                                    |

### Response

**[T.nilable(Models::Operations::GetTermsOfServiceTokenResponse)](../../models/operations/gettermsofservicetokenresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |