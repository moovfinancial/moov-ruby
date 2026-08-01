# CreateTransferFacilitatorFee

Total or markup fee to apply when creating a transfer.


## Fields

| Field                                                                                | Type                                                                                 | Required                                                                             | Description                                                                          |
| ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------ |
| `total`                                                                              | [T.nilable(Models::Components::AmountDecimal)](../../models/shared/amountdecimal.md) | :heavy_minus_sign:                                                                   | Total facilitator fee. Only either `total` or `markup` can be set.                   |
| `markup`                                                                             | [T.nilable(Models::Components::AmountDecimal)](../../models/shared/amountdecimal.md) | :heavy_minus_sign:                                                                   | Markup facilitator fee. Only either `total` or `markup` can be set.                  |