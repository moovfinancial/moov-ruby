# Onboarding

## Overview

### Available Operations

* [create_invite](#create_invite) - Create an invitation containing a unique link that allows the recipient to onboard their organization with Moov.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.
* [list_invites](#list_invites) - List all the onboarding invites created by the caller's account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.read` scope.
* [get_invite](#get_invite) - Retrieve details about an onboarding invite.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.read` scope.
* [revoke_invite](#revoke_invite) - Revoke an onboarding invite, rendering the invitation link unusable.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.

## create_invite

Create an invitation containing a unique link that allows the recipient to onboard their organization with Moov.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createOnboardingInvite" method="post" path="/onboarding-invites" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::OnboardingInviteRequest.new(
  scopes: [
    Models::Components::ApplicationScope::ACCOUNTS_READ,
  ],
  grant_scopes: [
    Models::Components::ApplicationScope::TRANSFERS_WRITE,
  ],
  capabilities: [
    Models::Components::CapabilityID::TRANSFERS,
  ],
  fee_plan_codes: [
    'merchant-direct',
  ],
  prefill: Models::Components::CreateAccount.new(
    account_type: Models::Components::CreateAccountType::BUSINESS,
    profile: Models::Components::CreateProfile.new(
      business: Models::Components::CreateBusinessProfile.new(
        legal_business_name: 'Whole Body Fitness LLC'
      )
    )
  )
)
res = s.onboarding.create_invite(request: req)

unless res.onboarding_invite.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                     | Type                                                                                          | Required                                                                                      | Description                                                                                   |
| --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------- |
| `request`                                                                                     | [Models::Components::OnboardingInviteRequest](../../models/shared/onboardinginviterequest.md) | :heavy_check_mark:                                                                            | The request object to use for the request.                                                    |

### Response

**[T.nilable(Models::Operations::CreateOnboardingInviteResponse)](../../models/operations/createonboardinginviteresponse.md)**

### Errors

| Error Type                            | Status Code                           | Content Type                          |
| ------------------------------------- | ------------------------------------- | ------------------------------------- |
| Models::Errors::GenericError          | 400, 409                              | application/json                      |
| Models::Errors::OnboardingInviteError | 422                                   | application/json                      |
| Errors::APIError                      | 4XX, 5XX                              | \*/\*                                 |

## list_invites

List all the onboarding invites created by the caller's account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listOnboardingInvites" method="get" path="/onboarding-invites" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.onboarding.list_invites

unless res.onboarding_invites.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListOnboardingInvitesResponse)](../../models/operations/listonboardinginvitesresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get_invite

Retrieve details about an onboarding invite.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getOnboardingInvite" method="get" path="/onboarding-invites/{code}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.onboarding.get_invite(code: 'N1IA5eWYNh')

unless res.onboarding_invite.nil?
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `code`             | *::String*         | :heavy_check_mark: | N/A                | N1IA5eWYNh         |

### Response

**[T.nilable(Models::Operations::GetOnboardingInviteResponse)](../../models/operations/getonboardinginviteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## revoke_invite

Revoke an onboarding invite, rendering the invitation link unusable.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="revokeOnboardingInvite" method="delete" path="/onboarding-invites/{code}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.onboarding.revoke_invite(code: 'N1IA5eWYNh')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter          | Type               | Required           | Description        | Example            |
| ------------------ | ------------------ | ------------------ | ------------------ | ------------------ |
| `code`             | *::String*         | :heavy_check_mark: | N/A                | N1IA5eWYNh         |

### Response

**[T.nilable(Models::Operations::RevokeOnboardingInviteResponse)](../../models/operations/revokeonboardinginviteresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |