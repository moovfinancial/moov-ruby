# EvidenceType

## Example Usage

```ruby
require "moov_ruby"

value = EvidenceType::RECEIPT

# Open enum: use .deserialize() to create instances from custom string values
custom = EvidenceType.deserialize("custom_value")
```


## Values

| Name                     | Value                    |
| ------------------------ | ------------------------ |
| `RECEIPT`                | receipt                  |
| `PROOF_OF_DELIVERY`      | proof-of-delivery        |
| `CANCELATION_POLICY`     | cancelation-policy       |
| `TERMS_OF_SERVICE`       | terms-of-service         |
| `CUSTOMER_COMMUNICATION` | customer-communication   |
| `GENERIC_EVIDENCE`       | generic-evidence         |
| `COVER_LETTER`           | cover-letter             |
| `OTHER`                  | other                    |