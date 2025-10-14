# VolumeRange

Defines the volume ranges for tiered pricing models.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `from_value`                                                              | *::Integer*                                                               | :heavy_check_mark:                                                        | Specifies the lower value of a tier for the fee.                          |
| `to_value`                                                                | *T.nilable(::Integer)*                                                    | :heavy_minus_sign:                                                        | Specifies the upper value of a tier for the fee.                          |
| `flat_amount`                                                             | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | The flat amount for a whole tier of the fee.                              |
| `per_unit_amount`                                                         | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | The unit price for a specific tier of the fee.                            |