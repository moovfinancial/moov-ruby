# TransferStatus

Status of a transfer.

## Example Usage

```ruby
require "moov_ruby"

value = TransferStatus::CREATED

# Open enum: use .deserialize() to create instances from custom string values
custom = TransferStatus.deserialize("custom_value")
```


## Values

| Name               | Value              |
| ------------------ | ------------------ |
| `CREATED`          | created            |
| `PENDING`          | pending            |
| `COMPLETED`        | completed          |
| `FAILED`           | failed             |
| `REVERSED`         | reversed           |
| `QUEUED`           | queued             |
| `AWAITING_CAPTURE` | awaiting-capture   |
| `CANCELED`         | canceled           |