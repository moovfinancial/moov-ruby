# DisputePhase

The phase of a dispute within the dispute lifecycle.

## Example Usage

```ruby
require "moov_ruby"

value = DisputePhase::PRE_DISPUTE

# Open enum: use .deserialize() to create instances from custom string values
custom = DisputePhase.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `PRE_DISPUTE` | pre-dispute   |
| `INQUIRY`     | inquiry       |
| `CHARGEBACK`  | chargeback    |
| `UNKNOWN`     | unknown       |