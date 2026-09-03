# DebitHoldPeriod

An optional override of your default ACH hold period in banking days. The hold period must be longer than or equal to your default setting.

## Example Usage

```ruby
require "moov_ruby"

value = DebitHoldPeriod::NO_HOLD

# Open enum: use .deserialize() to create instances from custom string values
custom = DebitHoldPeriod.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `NO_HOLD`        | no-hold          |
| `ONE_MINUS_DAY`  | 1-day            |
| `TWO_MINUS_DAYS` | 2-days           |