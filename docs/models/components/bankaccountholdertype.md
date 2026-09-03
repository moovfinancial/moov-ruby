# BankAccountHolderType

The type of holder on a funding source.

## Example Usage

```ruby
require "moov_ruby"

value = BankAccountHolderType::INDIVIDUAL

# Open enum: use .deserialize() to create instances from custom string values
custom = BankAccountHolderType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `INDIVIDUAL` | individual   |
| `BUSINESS`   | business     |