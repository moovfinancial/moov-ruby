# ~~AccountVerificationStatus~~

Possible states an account verification can be in.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.

## Example Usage

```ruby
require "moov_ruby"

value = AccountVerificationStatus::UNVERIFIED
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