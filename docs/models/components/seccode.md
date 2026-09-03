# SECCode

Code used to identify the ACH authorization method.

## Example Usage

```ruby
require "moov_ruby"

value = SECCode::WEB

# Open enum: use .deserialize() to create instances from custom string values
custom = SECCode.deserialize("custom_value")
```


## Values

| Name  | Value |
| ----- | ----- |
| `WEB` | WEB   |
| `PPD` | PPD   |
| `CCD` | CCD   |
| `TEL` | TEL   |