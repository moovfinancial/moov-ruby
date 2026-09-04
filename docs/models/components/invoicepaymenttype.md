# InvoicePaymentType

## Example Usage

```ruby
require "moov_ruby"

value = InvoicePaymentType::TRANSFER

# Open enum: use .deserialize() to create instances from custom string values
custom = InvoicePaymentType.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `TRANSFER` | transfer   |
| `EXTERNAL` | external   |