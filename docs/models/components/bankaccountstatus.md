# BankAccountStatus

## Example Usage

```ruby
require "moov_ruby"

value = BankAccountStatus::NEW

# Open enum: use .deserialize() to create instances from custom string values
custom = BankAccountStatus.deserialize("custom_value")
```


## Values

| Name                  | Value                 |
| --------------------- | --------------------- |
| `NEW`                 | new                   |
| `VERIFIED`            | verified              |
| `VERIFICATION_FAILED` | verificationFailed    |
| `PENDING`             | pending               |
| `ERRORED`             | errored               |