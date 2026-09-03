# WebhookStatus

The status of a webhook.

## Example Usage

```ruby
require "moov_ruby"

value = WebhookStatus::ENABLED

# Open enum: use .deserialize() to create instances from custom string values
custom = WebhookStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `ENABLED`  | enabled    |
| `DISABLED` | disabled   |