# InstantBankTransactionStatus

Status of a transaction within the instant-bank lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = InstantBankTransactionStatus::INITIATED

# Open enum: use .deserialize() to create instances from custom string values
custom = InstantBankTransactionStatus.deserialize("custom_value")
```


## Values

| Name                       | Value                      |
| -------------------------- | -------------------------- |
| `INITIATED`                | initiated                  |
| `COMPLETED`                | completed                  |
| `FAILED`                   | failed                     |
| `ACCEPTED_WITHOUT_POSTING` | accepted-without-posting   |