# RiskVerificationOutcome

The outcome of a bank account risk-verification attempt.

## Example Usage

```ruby
require "moov_ruby"

value = RiskVerificationOutcome::NOT_ATTEMPTED

# Open enum: use .deserialize() to create instances from custom string values
custom = RiskVerificationOutcome.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `NOT_ATTEMPTED` | notAttempted    |
| `SUCCESS`       | success         |
| `INCONCLUSIVE`  | inconclusive    |
| `DECLINE`       | decline         |