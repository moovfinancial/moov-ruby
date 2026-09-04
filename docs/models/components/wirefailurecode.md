# WireFailureCode

Status codes for wire failures.

## Example Usage

```ruby
require "moov_ruby"

value = WireFailureCode::PROCESSING_ERROR

# Open enum: use .deserialize() to create instances from custom string values
custom = WireFailureCode.deserialize("custom_value")
```


## Values

| Name                        | Value                       |
| --------------------------- | --------------------------- |
| `PROCESSING_ERROR`          | processing-error            |
| `INVALID_ACCOUNT`           | invalid-account             |
| `ACCOUNT_CLOSED`            | account-closed              |
| `ACCOUNT_BLOCKED`           | account-blocked             |
| `INVALID_FIELD`             | invalid-field               |
| `TRANSACTION_NOT_SUPPORTED` | transaction-not-supported   |
| `LIMIT_EXCEEDED`            | limit-exceeded              |
| `INVALID_AMOUNT`            | invalid-amount              |
| `OTHER`                     | other                       |