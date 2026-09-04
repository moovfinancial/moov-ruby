# DomesticPullFromCard

Indicates if the card supports domestic pull-from-card transfer.

## Example Usage

```ruby
require "moov_ruby"

value = DomesticPullFromCard::NOT_SUPPORTED

# Open enum: use .deserialize() to create instances from custom string values
custom = DomesticPullFromCard.deserialize("custom_value")
```


## Values

| Name            | Value           |
| --------------- | --------------- |
| `NOT_SUPPORTED` | not-supported   |
| `SUPPORTED`     | supported       |
| `UNKNOWN`       | unknown         |