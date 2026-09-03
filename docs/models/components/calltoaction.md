# CallToAction

The text to be displayed on web form's submit button.

If set to "auto" the UI will automatically select between 
"pay" and "confirm" for payments and payouts respectively.

## Example Usage

```ruby
require "moov_ruby"

value = CallToAction::PAY

# Open enum: use .deserialize() to create instances from custom string values
custom = CallToAction.deserialize("custom_value")
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `PAY`       | pay         |
| `BOOK`      | book        |
| `SUBSCRIBE` | subscribe   |
| `DONATE`    | donate      |
| `CONFIRM`   | confirm     |
| `AUTO`      | auto        |