# TerminalApplications

## Overview

### Available Operations

* [create](#create) - Create a new terminal application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.write` scope.
* [list](#list) - List all the terminal applications for a Moov Account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.read` scope.
* [get](#get) - Fetch a specific terminal application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.read` scope.
* [delete](#delete) - Delete a specific terminal application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.write` scope.
* [create_version](#create_version) - Register a new version of a terminal application. For Android applications, this is used to register a new version code of the application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.write` scope.

## create

Create a new terminal application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTerminalApplication" method="post" path="/terminal-applications" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::CreateTerminalApplication.new(
  platform: Models::Components::TerminalApplicationPlatform::ANDROID,
  package_name: 'com.example.app',
  sha256_digest: 'AA:BB:CC:DD:EE:FF:AA:BB:CC:DD:EE:FF:AA:BB:CC:DD:AA:BB:CC:DD:EE:FF:AA:BB:CC:DD:EE:FF:AA:BB:CC:DD',
  version_code: '20332277'
)
res = s.terminal_applications.create(request: req)

unless res.terminal_application.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                         | Type                                                                                              | Required                                                                                          | Description                                                                                       |
| ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------- |
| `request`                                                                                         | [Models::Components::CreateTerminalApplication](../../models/shared/createterminalapplication.md) | :heavy_check_mark:                                                                                | The request object to use for the request.                                                        |

### Response

**[T.nilable(Models::Operations::CreateTerminalApplicationResponse)](../../models/operations/createterminalapplicationresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::GenericError             | 400, 409                                 | application/json                         |
| Models::Errors::TerminalApplicationError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |

## list

List all the terminal applications for a Moov Account.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="listTerminalApplications" method="get" path="/terminal-applications" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.terminal_applications.list

unless res.terminal_applications.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::ListTerminalApplicationsResponse)](../../models/operations/listterminalapplicationsresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## get

Fetch a specific terminal application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="getTerminalApplication" method="get" path="/terminal-applications/{terminalApplicationID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.terminal_applications.get(terminal_application_id: '12345678-1234-1234-1234-123456789012')

unless res.terminal_application.nil?
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `terminal_application_id`            | *::String*                           | :heavy_check_mark:                   | N/A                                  | 12345678-1234-1234-1234-123456789012 |

### Response

**[T.nilable(Models::Operations::GetTerminalApplicationResponse)](../../models/operations/getterminalapplicationresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |

## delete

Delete a specific terminal application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="deleteTerminalApplication" method="delete" path="/terminal-applications/{terminalApplicationID}" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.terminal_applications.delete(terminal_application_id: '12345678-1234-1234-1234-123456789012')

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                            | Type                                 | Required                             | Description                          | Example                              |
| ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ | ------------------------------------ |
| `terminal_application_id`            | *::String*                           | :heavy_check_mark:                   | N/A                                  | 12345678-1234-1234-1234-123456789012 |

### Response

**[T.nilable(Models::Operations::DeleteTerminalApplicationResponse)](../../models/operations/deleteterminalapplicationresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400, 409                     | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## create_version

Register a new version of a terminal application. For Android applications, this is used to register a new version code of the application.

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/terminal-applications.write` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="createTerminalApplicationVersion" method="post" path="/terminal-applications/{terminalApplicationID}/versions" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.terminal_applications.create_version(terminal_application_id: '12345678-1234-1234-1234-123456789012', terminal_application_version: Models::Components::TerminalApplicationVersion.new(
  version: '20440059'
))

unless res.terminal_application_version.nil?
  # handle response
end

```

### Parameters

| Parameter                                                                                           | Type                                                                                                | Required                                                                                            | Description                                                                                         | Example                                                                                             |
| --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------- |
| `terminal_application_id`                                                                           | *::String*                                                                                          | :heavy_check_mark:                                                                                  | N/A                                                                                                 | 12345678-1234-1234-1234-123456789012                                                                |
| `terminal_application_version`                                                                      | [Models::Components::TerminalApplicationVersion](../../models/shared/terminalapplicationversion.md) | :heavy_check_mark:                                                                                  | N/A                                                                                                 | {<br/>"version": "20440059"<br/>}                                                                   |

### Response

**[T.nilable(Models::Operations::CreateTerminalApplicationVersionResponse)](../../models/operations/createterminalapplicationversionresponse.md)**

### Errors

| Error Type                               | Status Code                              | Content Type                             |
| ---------------------------------------- | ---------------------------------------- | ---------------------------------------- |
| Models::Errors::GenericError             | 400, 409                                 | application/json                         |
| Models::Errors::TerminalApplicationError | 422                                      | application/json                         |
| Errors::APIError                         | 4XX, 5XX                                 | \*/\*                                    |