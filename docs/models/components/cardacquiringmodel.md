# CardAcquiringModel

Specifies the card processing pricing model

## Example Usage

```ruby
require "moov_ruby"

value = CardAcquiringModel::COST_PLUS

# Open enum: use .deserialize() to create instances from custom string values
custom = CardAcquiringModel.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `COST_PLUS` | cost-plus   |
| `FLAT_RATE` | flat-rate   |