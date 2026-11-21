# TransferGooglePayAuthMethod

The authentication method used for the Google Pay token.

## Example Usage

```ruby
require "moov_ruby"

value = TransferGooglePayAuthMethod::PAN_ONLY

# Open enum: use .deserialize() to create instances from custom string values
custom = TransferGooglePayAuthMethod.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `PAN_ONLY`        | PAN_ONLY          |
| `CRYPTOGRAM_3_DS` | CRYPTOGRAM_3DS    |