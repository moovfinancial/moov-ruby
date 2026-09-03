# ~~AccountVerificationStatus~~

Possible states an account verification can be in.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

## Example Usage

```ruby
require "moov_ruby"

value = AccountVerificationStatus::UNVERIFIED

# Open enum: use .deserialize() to create instances from custom string values
custom = AccountVerificationStatus.deserialize("custom_value")
```


## Values

| Name         | Value        |
| ------------ | ------------ |
| `UNVERIFIED` | unverified   |
| `PENDING`    | pending      |
| `RESUBMIT`   | resubmit     |
| `REVIEW`     | review       |
| `VERIFIED`   | verified     |
| `FAILED`     | failed       |