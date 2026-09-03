# CreateRefund

Specifies a partial amount to refund. 

Before v2026.10, this request body may be omitted. In v2026.10 and later, send an empty object to refund the full amount of the original transfer.


## Fields

| Field                                                                                            | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `amount`                                                                                         | *T.nilable(::Integer)*                                                                           | :heavy_minus_sign:                                                                               | Amount to refund. If omitted, the original transfer's full amount will be refunded.              |
| `amount_details`                                                                                 | [T.nilable(Models::Components::RefundAmountDetails)](../../models/shared/refundamountdetails.md) | :heavy_minus_sign:                                                                               | Breakdown of the refunded amount.                                                                |