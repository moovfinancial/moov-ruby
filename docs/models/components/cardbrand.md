# CardBrand

The card brand.

## Example Usage

```ruby
require "moov_ruby"

value = CardBrand::AMERICAN_EXPRESS

# Open enum: use .deserialize() to create instances from custom string values
custom = CardBrand.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `AMERICAN_EXPRESS` | American Express   |
| `DISCOVER`         | Discover           |
| `MASTERCARD`       | Mastercard         |
| `VISA`             | Visa               |
| `UNKNOWN`          | Unknown            |