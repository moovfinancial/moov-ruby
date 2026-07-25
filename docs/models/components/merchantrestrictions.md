# MerchantRestrictions

Restricts card usage to specific merchants, independent of merchant category.


## Fields

| Field                                                                                                       | Type                                                                                                        | Required                                                                                                    | Description                                                                                                 |
| ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------- |
| `mode`                                                                                                      | [Models::Components::IssuingControlsRestrictionMode](../../models/shared/issuingcontrolsrestrictionmode.md) | :heavy_check_mark:                                                                                          | Whether the listed merchants are the only ones allowed, or the ones to block.                               |
| `merchants`                                                                                                 | T::Array<[Models::Components::MerchantEntry](../../models/shared/merchantentry.md)>                         | :heavy_check_mark:                                                                                          | The merchants to allow or block.                                                                            |