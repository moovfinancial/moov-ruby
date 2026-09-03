# BankAccountVerificationMethod

## Example Usage

```ruby
require "moov_ruby"

value = BankAccountVerificationMethod::INSTANT

# Open enum: use .deserialize() to create instances from custom string values
custom = BankAccountVerificationMethod.deserialize("custom_value")
```


## Values

| Name      | Value     |
| --------- | --------- |
| `INSTANT` | instant   |
| `ACH`     | ach       |