# PlatformFees

A detailed breakdown of platform fees.


## Fields

| Field                                                                     | Type                                                                      | Required                                                                  | Description                                                               |
| ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- | ------------------------------------------------------------------------- |
| `wallet_fee`                                                              | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Fees associated with wallet services.                                     |
| `merchant_pci_fee`                                                        | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Fees for PCI compliance.                                                  |
| `total`                                                                   | [Models::Components::AmountDecimal](../../models/shared/amountdecimal.md) | :heavy_check_mark:                                                        | Total platform fees.                                                      |