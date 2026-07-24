# IssuingIntervalLimit

Specifies the time frame for a velocity limit. `per-transaction` applies to each individual authorization and never resets. Time-based intervals (where supported) reset at midnight ET.

## Example Usage

```ruby
require "moov_ruby"

value = IssuingIntervalLimit::PER_TRANSACTION
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PER_TRANSACTION` | per-transaction   |