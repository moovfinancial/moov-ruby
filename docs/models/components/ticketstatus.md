# TicketStatus

## Example Usage

```ruby
require "moov_ruby"

value = TicketStatus::NEW

# Open enum: use .deserialize() to create instances from custom string values
custom = TicketStatus.deserialize("custom_value")
```


## Values

| Name          | Value         |
| ------------- | ------------- |
| `NEW`         | new           |
| `IN_PROGRESS` | in-progress   |
| `ON_HOLD`     | on-hold       |
| `CLOSED`      | closed        |