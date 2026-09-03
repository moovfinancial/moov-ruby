# Mode

The operating mode for an account.

## Example Usage

```ruby
require "moov_ruby"

value = Mode::SANDBOX

# Open enum: use .deserialize() to create instances from custom string values
custom = Mode.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `SANDBOX`    | sandbox      |
| `PRODUCTION` | production   |