# BillingSummaryDetails

Details of volume and fees for a specific payment method.


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `volume_amount`                                                                      | [T.nilable(Models::Components::AmountDecimal)](../../models/shared/amountdecimal.md) | :heavy_minus_sign:                                                                   | The total transaction volume amount.                                                 |
| `volume_count`                                                                       | *T.nilable(::Integer)*                                                               | :heavy_minus_sign:                                                                   | The total number of transactions.                                                    |
| `fee_amount`                                                                         | [T.nilable(Models::Components::AmountDecimal)](../../models/shared/amountdecimal.md) | :heavy_minus_sign:                                                                   | The total fee amount.                                                                |