# IssuingIntervalLimit

Specifies the time frame for a velocity limit. `per-transaction` applies to each individual authorization and never resets. Time-based intervals (where supported) reset at midnight ET.

## Example Usage

```ruby
require "moov_ruby"

value = IssuingIntervalLimit::PER_TRANSACTION

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuingIntervalLimit.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PER_TRANSACTION` | per-transaction   |
| `DAILY`           | daily             |
| `WEEKLY`          | weekly            |
| `MONTHLY`         | monthly           |