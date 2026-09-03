# ~~UnderwritingStatus~~

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

## Example Usage

```ruby
require "moov_ruby"

value = UnderwritingStatus::APPROVED

# Open enum: use .deserialize() to create instances from custom string values
custom = UnderwritingStatus.deserialize("custom_value")
```


## Values

| Name             | Value            |
| ---------------- | ---------------- |
| `APPROVED`       | approved         |
| `REJECTED`       | rejected         |
| `PENDING_REVIEW` | pendingReview    |
| `PENDING`        | pending          |
| `NOT_REQUESTED`  | notRequested     |