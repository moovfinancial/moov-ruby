# CardUpdateReason

The results of the card update request.

## Example Usage

```ruby
require "moov_ruby"

value = CardUpdateReason::UNSPECIFIED

# Open enum: use .deserialize() to create instances from custom string values
custom = CardUpdateReason.deserialize("custom_value")
```


## Values

| Name                 | Value                |
| -------------------- | -------------------- |
| `UNSPECIFIED`        | unspecified          |
| `ACCOUNT_CLOSED`     | account-closed       |
| `CONTACT_CARDHOLDER` | contact-cardholder   |
| `EXPIRATION_UPDATE`  | expiration-update    |
| `NO_CHANGE`          | no-change            |
| `NO_MATCH`           | no-match             |
| `NUMBER_UPDATE`      | number-update        |