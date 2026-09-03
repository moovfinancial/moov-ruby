# Use

The intended use of the key. 'sig' for signature, 'enc' for encryption.

## Example Usage

```ruby
require "moov_ruby"

value = Use::SIG

# Open enum: use .deserialize() to create instances from custom string values
custom = Use.deserialize("custom_value")
```


## Values

| Name  | Value |
| ----- | ----- |
| `SIG` | sig   |
| `ENC` | enc   |