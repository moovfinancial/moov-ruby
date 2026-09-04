# MerchantEntry

Identifies a merchant by ID, descriptor pattern, or both. At least one of `networkID` or `descriptorPattern` must be set.


## Fields

| Field                                                                                              | Type                                                                                               | Required                                                                                           | Description                                                                                        |
| -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------- |
| `network_id`                                                                                       | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | The merchant's unique identifier (ISO 8583 DE42), matched exactly.                                 |
| `descriptor_pattern`                                                                               | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | A case-insensitive RE2 regular expression matched against the merchant descriptor (ISO 8583 DE43). |
| `name`                                                                                             | *T.nilable(::String)*                                                                              | :heavy_minus_sign:                                                                                 | An optional label for this entry.                                                                  |