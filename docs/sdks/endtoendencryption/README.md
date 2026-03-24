# EndToEndEncryption

## Overview

### Available Operations

* [test_encrypted_token](#test_encrypted_token) - Allows for testing a JWE token to ensure it's acceptable by Moov. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/ping.read` scope.
* [generate_key](#generate_key) - Generates a public key used to create a JWE token for passing secure authentication data through non-PCI compliant intermediaries.

## test_encrypted_token

Allows for testing a JWE token to ensure it's acceptable by Moov. 

To access this endpoint using an [access token](https://docs.moov.io/api/authentication/access-tokens/) 
you'll need to specify the `/ping.read` scope.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="testEndToEndToken" method="post" path="/debug/end-to-end-token" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)

req = Models::Components::E2EEToken.new(
  token: 'eyJhbGciOiJFQ0RILUVTK0EyNTZLVyIsImVuYyI6IkEyNTZHQ00iLCJlcGsiOnsia3R5IjoiRUMiLCJjcnYiOiJQLTUyMSIsIngiOiJBS0NYVDM1WVdvTm8wbzExNy1SU0dqUGg3alN1NjFmLUhnYkx1dW0xVG1ueTRlcW5yX2hyU0hpY0w1d3gwODRCWDBRZjVTdEtkRUoydzY2ZUJqWHprRV9OIiwieSI6IkFIMEJfT2RaYTQtbG43dGJ4M3VBdlc1NDNQRE9HUXBCTDloRFFNWjlTQXNfOW05UWN3dnhRd1hrb1VrM3VzT1FnVV9ySVFrNFRoZ1NTUzV4UlhKcm5ZaTkifSwia2lkIjoiYmRvV3pLekpKUGw0TVFIaENDa05WYTZlZ1dmYi02V1haSjZKTFZqQ0hWMD0ifQ.HalyoHsfufBJEODd2lD9ThQvvVWw3b2kgWDLHGxmHhMv8rODyLL_Ug.rpQP178t8Ed_pUU2.Sn9UFeVoegAxiMUv11q7l3M0y9YHSLYi2n_JB7n7Pc777_47-icfaxstJemT0IC81w.akkq1EBxzWkBr4vEomSpWA'
)
res = s.end_to_end_encryption.test_encrypted_token(request: req)

if res.status_code == 200
  # handle response
end

```

### Parameters

| Parameter                                                         | Type                                                              | Required                                                          | Description                                                       |
| ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- | ----------------------------------------------------------------- |
| `request`                                                         | [Models::Components::E2EEToken](../../models/shared/e2eetoken.md) | :heavy_check_mark:                                                | The request object to use for the request.                        |

### Response

**[T.nilable(Models::Operations::TestEndToEndTokenResponse)](../../models/operations/testendtoendtokenresponse.md)**

### Errors

| Error Type                   | Status Code                  | Content Type                 |
| ---------------------------- | ---------------------------- | ---------------------------- |
| Models::Errors::GenericError | 400                          | application/json             |
| Errors::APIError             | 4XX, 5XX                     | \*/\*                        |

## generate_key

Generates a public key used to create a JWE token for passing secure authentication data through non-PCI compliant intermediaries.

### Example Usage

<!-- UsageSnippet language="ruby" operationID="generateEndToEndKey" method="post" path="/end-to-end-keys" -->
```ruby
require 'moov_ruby'

Models = ::Moov::Models
s = ::Moov::Client.new(
  security: Models::Components::Security.new(
    username: '',
    password: ''
  )
)
res = s.end_to_end_encryption.generate_key

unless res.json_web_key.nil?
  # handle response
end

```

### Response

**[T.nilable(Models::Operations::GenerateEndToEndKeyResponse)](../../models/operations/generateendtoendkeyresponse.md)**

### Errors

| Error Type       | Status Code      | Content Type     |
| ---------------- | ---------------- | ---------------- |
| Errors::APIError | 4XX, 5XX         | \*/\*            |