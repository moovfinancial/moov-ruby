# TransferLineItems

An optional collection of line items for a transfer.
When line items are provided, their total plus sales tax must equal the transfer amount.


## Fields

| Field                                                                                     | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `items`                                                                                   | T::Array<[Models::Components::TransferLineItem](../../models/shared/transferlineitem.md)> | :heavy_check_mark:                                                                        | The list of line items.                                                                   |