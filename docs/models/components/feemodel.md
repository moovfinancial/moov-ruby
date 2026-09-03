# FeeModel

Specifies the pricing model used for the calculation of the final fee.

## Example Usage

```ruby
require "moov_ruby"

value = FeeModel::FIXED

# Open enum: use .deserialize() to create instances from custom string values
custom = FeeModel.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `FIXED`    | fixed      |
| `BLENDED`  | blended    |
| `VARIABLE` | variable   |