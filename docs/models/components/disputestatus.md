# DisputeStatus

The status of a particular dispute. 

Read our [disputes guide](https://docs.moov.io/guides/money-movement/accept-payments/card-acceptance/disputes/#dispute-statuses) to learn what each status means.

## Example Usage

```ruby
require "moov_ruby"

value = DisputeStatus::RESPONSE_NEEDED

# Open enum: use .deserialize() to create instances from custom string values
custom = DisputeStatus.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `RESPONSE_NEEDED` | response-needed   |
| `RESOLVED`        | resolved          |
| `UNDER_REVIEW`    | under-review      |
| `CLOSED`          | closed            |
| `ACCEPTED`        | accepted          |
| `EXPIRED`         | expired           |
| `WON`             | won               |
| `LOST`            | lost              |