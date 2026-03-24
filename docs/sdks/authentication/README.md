# Authentication

## Overview

### Available Operations

* [revoke_access_token](#revoke_access_token) - Revoke an auth token.

Allows clients to notify the authorization server that a previously obtained refresh or access token is no longer needed.
* [create_access_token](#create_access_token) - Create or refresh an access token.

## revoke_access_token

Revoke an auth token.

Allows clients to notify the authorization server that a previously obtained refresh or access token is no longer needed.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="revokeAccessToken" method="post" path="/oauth2/revoke" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::RevokeTokenRequest.new(
  token: '<value>',
  client_id: '5clTR_MdVrrkgxw2',
  client_secret: 'dNC-hg7sVm22jc3g_Eogtyu0_1Mqh_4-'
)
res = s.authentication.revoke_access_token(request: req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                           | Type                                                                                | Required                                                                            | Description                                                                         |
| ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------- |
| `request`                                                                           | [Models::Components::RevokeTokenRequest](../../models/shared/revoketokenrequest.md) | :heavy_check_mark:                                                                  | The request object to use for the request.                                          |

### Response

**[T.nilable(Models::Operations::RevokeAccessTokenResponse)](../../models/operations/revokeaccesstokenresponse.md)**

### Errors

| Error Type                              | Status Code                             | Content Type                            |
| --------------------------------------- | --------------------------------------- | --------------------------------------- |
| Models::Errors::GenericError            | 400                                     | application/json                        |
| Models::Errors::RevokeTokenRequestError | 422                                     | application/json                        |
| Errors::APIError                        | 4XX, 5XX                                | \*/\*                                   |

## create_access_token

Create or refresh an access token.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createAccessToken" method="post" path="/oauth2/token" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::AuthTokenRequest.new(
  grant_type: Models::Components::GrantType::CLIENT_CREDENTIALS,
  client_id: '5clTR_MdVrrkgxw2',
  client_secret: 'dNC-hg7sVm22jc3g_Eogtyu0_1Mqh_4-',
  scope: '/accounts.read /accounts.write',
  refresh_token: 'eyJhbGc0eSI6TQSIsImN0kpXVCIsImtp6IkpXVsImtpZC0a...'
)
res = s.authentication.create_access_token(request: req)

unless res.auth_token.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                       | Type                                                                            | Required                                                                        | Description                                                                     |
| ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- | ------------------------------------------------------------------------------- |
| `request`                                                                       | [Models::Components::AuthTokenRequest](../../models/shared/authtokenrequest.md) | :heavy_check_mark:                                                              | The request object to use for the request.                                      |

### Response

**[T.nilable(Models::Operations::CreateAccessTokenResponse)](../../models/operations/createaccesstokenresponse.md)**

### Errors

| Error Type                            | Status Code                           | Content Type                          |
| ------------------------------------- | ------------------------------------- | ------------------------------------- |
| Models::Errors::GenericError          | 400                                   | application/json                      |
| Models::Errors::AuthTokenRequestError | 422                                   | application/json                      |
| Errors::APIError                      | 4XX, 5XX                              | \*/\*                                 |