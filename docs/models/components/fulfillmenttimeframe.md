# FulfillmentTimeframe

## Example Usage

```ruby
require "moov_ruby"

value = FulfillmentTimeframe::IMMEDIATE

# Open enum: use .deserialize() to create instances from custom string values
custom = FulfillmentTimeframe.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `IMMEDIATE`          | immediate            |
| `OTHER`              | other                |
| `OVER_30_DAYS`       | over-30-days         |
| `PRE_ORDER`          | pre-order            |
| `RECURRING_SCHEDULE` | recurring-schedule   |
| `SCHEDULED_EVENT`    | scheduled-event      |
| `WITHIN_30_DAYS`     | within-30-days       |
| `WITHIN_7_DAYS`      | within-7-days        |