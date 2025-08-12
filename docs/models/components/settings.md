# Settings

User provided settings to manage an account.


## Fields

| Field                                                                                            | Type                                                                                             | Required                                                                                         | Description                                                                                      |
| ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------ |
| `card_payment`                                                                                   | [T.nilable(Models::Components::CardPaymentSettings)](../../models/shared/cardpaymentsettings.md) | :heavy_minus_sign:                                                                               | User provided settings to manage card payments. This data is only allowed on a business account. |
| `ach_payment`                                                                                    | [T.nilable(Models::Components::ACHPaymentSettings)](../../models/shared/achpaymentsettings.md)   | :heavy_minus_sign:                                                                               | N/A                                                                                              |