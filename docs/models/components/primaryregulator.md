# PrimaryRegulator

If the business is a financial institution, this field describes its primary regulator.

## Example Usage

```ruby
require "moov_ruby"

value = PrimaryRegulator::OCC

# Open enum: use .deserialize() to create instances from custom string values
custom = PrimaryRegulator.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `OCC`                | OCC                  |
| `FDIC`               | FDIC                 |
| `NCUA`               | NCUA                 |
| `FRB`                | FRB                  |
| `STATE_CU_REGULATOR` | state-cu-regulator   |