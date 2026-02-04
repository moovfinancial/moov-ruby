# Profile

Describes a Moov account profile. A profile will have a business, individual, or guest depending on the account's type.


## Fields

| Field                                                                                        | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `individual`                                                                                 | [T.nilable(Models::Components::IndividualProfile)](../../models/shared/individualprofile.md) | :heavy_minus_sign:                                                                           | Describes an individual.                                                                     |
| `business`                                                                                   | [T.nilable(Models::Components::BusinessProfile)](../../models/shared/businessprofile.md)     | :heavy_minus_sign:                                                                           | Describes a business.                                                                        |