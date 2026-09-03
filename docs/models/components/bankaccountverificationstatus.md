# BankAccountVerificationStatus

## Example Usage

```ruby
require "moov_ruby"

value = BankAccountVerificationStatus::NEW

# Open enum: use .deserialize() to create instances from custom string values
custom = BankAccountVerificationStatus.deserialize("custom_value")
```


## Values

| Name                    | Value                   |
| ----------------------- | ----------------------- |
| `NEW`                   | new                     |
| `SENT_CREDIT`           | sent-credit             |
| `MAX_ATTEMPTS_EXCEEDED` | max-attempts-exceeded   |
| `FAILED`                | failed                  |
| `EXPIRED`               | expired                 |
| `SUCCESSFUL`            | successful              |