# PaymentLinkType

## Example Usage

```ruby
require "moov_ruby"

value = PaymentLinkType::PAYMENT

# Open enum: use .deserialize() to create instances from custom string values
custom = PaymentLinkType.deserialize("custom_value")
```


## Values

| Name                    | Value                   |
| ----------------------- | ----------------------- |
| `PAYMENT`               | payment                 |
| `PAYOUT`                | payout                  |
| `INVOICE_PAYMENT`       | invoice-payment         |
| `CUSTOM_AMOUNT_PAYMENT` | custom-amount-payment   |