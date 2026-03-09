# GrantType

The type of grant being requested.

  - `client_credentials`: A grant type used by clients to obtain an access token
  - `refresh_token`: A grant type used by clients to obtain a new access token using a refresh token

## Example Usage

```ruby
require "moov_ruby"

value = GrantType::CLIENT_CREDENTIALS
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `CLIENT_CREDENTIALS` | client_credentials   |
| `REFRESH_TOKEN`      | refresh_token        |