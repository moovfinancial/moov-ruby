# BusinessType

The type of entity represented by this business.

## Example Usage

```ruby
require "moov_ruby"

value = BusinessType::SOLE_PROPRIETORSHIP

# Open enum: use .deserialize() to create instances from custom string values
custom = BusinessType.deserialize("custom_value")
```


## Values

| Name                         | Value                        |
| ---------------------------- | ---------------------------- |
| `SOLE_PROPRIETORSHIP`        | soleProprietorship           |
| `UNINCORPORATED_ASSOCIATION` | unincorporatedAssociation    |
| `TRUST`                      | trust                        |
| `PUBLIC_CORPORATION`         | publicCorporation            |
| `PRIVATE_CORPORATION`        | privateCorporation           |
| `LLC`                        | llc                          |
| `PARTNERSHIP`                | partnership                  |
| `UNINCORPORATED_NON_PROFIT`  | unincorporatedNonProfit      |
| `INCORPORATED_NON_PROFIT`    | incorporatedNonProfit        |
| `GOVERNMENT_ENTITY`          | governmentEntity             |