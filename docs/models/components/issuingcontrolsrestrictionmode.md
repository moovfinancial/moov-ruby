# IssuingControlsRestrictionMode

Whether the listed items should be allowed (`allow`) or blocked (`block`).

## Example Usage

```ruby
require "moov_ruby"

value = IssuingControlsRestrictionMode::ALLOW

# Open enum: use .deserialize() to create instances from custom string values
custom = IssuingControlsRestrictionMode.deserialize("custom_value")
```


## Values

| Name    | Value   |
| ------- | ------- |
| `ALLOW` | allow   |
| `BLOCK` | block   |