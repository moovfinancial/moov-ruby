# ReturnPolicyType

## Example Usage

```ruby
require "moov_ruby"

value = ReturnPolicyType::NONE

# Open enum: use .deserialize() to create instances from custom string values
custom = ReturnPolicyType.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `NONE`               | none                 |
| `EXCHANGE_ONLY`      | exchangeOnly         |
| `WITHIN_THIRTY_DAYS` | withinThirtyDays     |
| `OTHER`              | other                |