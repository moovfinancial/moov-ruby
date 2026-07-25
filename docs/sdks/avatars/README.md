# Avatars

## Overview

### Available Operations

* [get](#get) - Get avatar image for an account using a unique ID.    

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/profile-enrichment.read` scope.
* [upload](#upload) - Upload a user avatar image for an account.

The image will be normalized to 512x512 PNG format and stored separately from 
automatically discovered logos. User-uploaded avatars take precedence over enriched avatars at read time.

This endpoint only accepts accountID values for the uniqueID parameter.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.
* [delete](#delete) - Delete a user-uploaded avatar for an account.

After deletion, the avatar endpoint will fall back to the enriched avatar
or an account-type-aware fallback icon.

This endpoint only accepts accountID values for the uniqueID parameter.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.

## get

Get avatar image for an account using a unique ID.    

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/profile-enrichment.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getAvatar" method="get" path="/avatars/{uniqueID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.avatars.get(unique_id: '<id>')

unless res.bytes.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                                | Type                                                                                                     | Required                                                                                                 | Description                                                                                              |
| -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------- |
| `unique_id`                                                                                              | *::String*                                                                                               | :heavy_check_mark:                                                                                       | Any unique ID associated with an account such as accountID, representativeID, routing number, or userID. |

### Response

**[T.nilable(Models::Operations::GetAvatarResponse)](../../models/operations/getavatarresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## upload

Upload a user avatar image for an account.

The image will be normalized to 512x512 PNG format and stored separately from 
automatically discovered logos. User-uploaded avatars take precedence over enriched avatars at read time.

This endpoint only accepts accountID values for the uniqueID parameter.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="uploadAvatar" method="put" path="/avatars/{uniqueID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new
res = s.avatars.upload(security: Models::Operations::UploadAvatarSecurity.new(
  basic_auth: Models::Components::SchemeBasicAuth.new(
    username: '',
    password: ''
  )
), unique_id: '<id>', avatar_upload_request: Models::Components::AvatarUploadRequest.new(
  file: Models::Components::AvatarUploadRequestFile.new(
    file_name: 'example.file',
    content: File.binread('example.file')
  )
))

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `security`                                                                                  | [Models::Operations::UploadAvatarSecurity](../../models/operations/uploadavatarsecurity.md) | :heavy_check_mark:                                                                          | The security requirements to use for the request.                                           |
| `unique_id`                                                                                 | *::String*                                                                                  | :heavy_check_mark:                                                                          | The accountID to upload the avatar for. Only accountID values are accepted for writes.      |
| `avatar_upload_request`                                                                     | [Models::Components::AvatarUploadRequest](../../models/shared/avataruploadrequest.md)       | :heavy_check_mark:                                                                          | N/A                                                                                         |

### Response

**[T.nilable(Models::Operations::UploadAvatarResponse)](../../models/operations/uploadavatarresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400                          | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## delete

Delete a user-uploaded avatar for an account.

After deletion, the avatar endpoint will fall back to the enriched avatar
or an account-type-aware fallback icon.

This endpoint only accepts accountID values for the uniqueID parameter.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/accounts.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="deleteAvatar" method="delete" path="/avatars/{uniqueID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new
res = s.avatars.delete(security: Models::Operations::DeleteAvatarSecurity.new(
  basic_auth: Models::Components::SchemeBasicAuth.new(
    username: '',
    password: ''
  )
), unique_id: '<id>')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                                                   | Type                                                                                        | Required                                                                                    | Description                                                                                 |
| ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
| `security`                                                                                  | [Models::Operations::DeleteAvatarSecurity](../../models/operations/deleteavatarsecurity.md) | :heavy_check_mark:                                                                          | The security requirements to use for the request.                                           |
| `unique_id`                                                                                 | *::String*                                                                                  | :heavy_check_mark:                                                                          | The accountID to delete the avatar for. Only accountID values are accepted for writes.      |

### Response

**[T.nilable(Models::Operations::DeleteAvatarResponse)](../../models/operations/deleteavatarresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400                          | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |