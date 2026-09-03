# InvoiceStatus

## Example Usage

```ruby
require "moov_ruby"

value = InvoiceStatus::DRAFT

# Open enum: use .deserialize() to create instances from custom string values
custom = InvoiceStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `DRAFT`           | draft             |
| `UNPAID`          | unpaid            |
| `PAYMENT_PENDING` | payment-pending   |
| `PAID`            | paid              |
| `OVERDUE`         | overdue           |
| `CANCELED`        | canceled          |