# DocumentType

Types of documents that can be uploaded.

## Example Usage

```ruby
require "moov_ruby"

value = DocumentType::DRIVERS_LICENSE

# Open enum: use .deserialize() to create instances from custom string values
custom = DocumentType.deserialize("custom_value")
```


## Values

| Name              | Value             |
| ----------------- | ----------------- |
| `DRIVERS_LICENSE` | driversLicense    |
| `PASSPORT`        | passport          |
| `UTILITY_BILL`    | utilityBill       |
| `BANK_STATEMENT`  | bankStatement     |