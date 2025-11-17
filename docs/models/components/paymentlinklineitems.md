# PaymentLinkLineItems

An optional collection of line items for a payment link.
When line items are provided, their total plus sales tax must equal the payment link amount.


## Fields

| Field                                                                                           | Type                                                                                            | Required                                                                                        | Description                                                                                     |
| ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------- |
| `items`                                                                                         | T::Array<[Models::Components::PaymentLinkLineItem](../../models/shared/paymentlinklineitem.md)> | :heavy_check_mark:                                                                              | The list of line items.                                                                         |