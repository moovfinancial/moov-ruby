# BankAccountType

The bank account type.

## Example Usage

```ruby
require "moov_ruby"

value = BankAccountType::CHECKING

# Open enum: use .deserialize() to create instances from custom string values
custom = BankAccountType.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `CHECKING`       | checking         |
| `SAVINGS`        | savings          |
| `GENERAL_LEDGER` | general-ledger   |
| `LOAN`           | loan             |