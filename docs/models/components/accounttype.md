# AccountType

The type of entity represented by this account.

## Example Usage

```ruby
require "moov_ruby"

value = AccountType::INDIVIDUAL

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountType.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `INDIVIDUAL` | individual   |
| `BUSINESS`   | business     |
| `GUEST`      | guest        |