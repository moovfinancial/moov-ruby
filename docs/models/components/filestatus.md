# FileStatus

The file's status.

## Example Usage

```ruby
require "moov_ruby"

value = FileStatus::PENDING

# Open enum: use .deserialize() to create instances from custom string values
custom = FileStatus.deserialize("custom_value")
```


## Values

| Name       | Value      |
| ---------- | ---------- |
| `PENDING`  | pending    |
| `APPROVED` | approved   |
| `REJECTED` | rejected   |