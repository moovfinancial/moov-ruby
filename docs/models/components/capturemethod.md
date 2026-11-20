# CaptureMethod

When funds for a `card-payment` transfer are captured.

## Example Usage

```ruby
require "moov_ruby"

value = CaptureMethod::AUTOMATIC

# Open enum: use .deserialize() to create instances from custom string values
custom = CaptureMethod.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `AUTOMATIC` | automatic   |
| `MANUAL`    | manual      |