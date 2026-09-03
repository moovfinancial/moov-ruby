# RefundPolicy

## Example Usage

```ruby
require "moov_ruby"

value = RefundPolicy::CONDITIONAL_REFUND

# Open enum: use .deserialize() to create instances from custom string values
custom = RefundPolicy.deserialize("custom_value")
```


## Values

| Name                          | Value                         |
| ----------------------------- | ----------------------------- |
| `CONDITIONAL_REFUND`          | conditional-refund            |
| `CUSTOM_POLICY`               | custom-policy                 |
| `EVENT_BASED_POLICY`          | event-based-policy            |
| `FULL_REFUND_EXTENDED_WINDOW` | full-refund-extended-window   |
| `FULL_REFUND_WITHIN_30_DAYS`  | full-refund-within-30-days    |
| `NO_REFUNDS`                  | no-refunds                    |
| `PARTIAL_REFUND`              | partial-refund                |
| `PRORATED_REFUND`             | prorated-refund               |
| `STORE_CREDIT_ONLY`           | store-credit-only             |