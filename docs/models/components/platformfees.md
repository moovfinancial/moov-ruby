# ~~PlatformFees~~

A detailed breakdown of platform fees. This field is deprecated and will be removed in a future release. Use accountFees.

> :warning: **DEPRECATED**: This will be removed in a future release, please migrate away from it as soon as possible.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `wallet_fee`                                                              | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Fees associated with wallet services.                                     |
| `merchant_pci_fee`                                                        | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Fees for PCI compliance.                                                  |
| `total`                                                                   | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Total platform fees.                                                      |