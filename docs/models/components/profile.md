# Profile

Describes a Moov account profile. A profile will have a business or an individual, depending on the account's type.


## Fields

| Field                                                                                        | Type                                                                                         | Required                                                                                     | Description                                                                                  |
| -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------- |
| `individual`                                                                                 | [T.nilable(Models::Components::IndividualProfile)](../../models/shared/individualprofile.md) | :heavy_minus_sign:                                                                           | Describes an individual.                                                                     |
| `business`                                                                                   | [T.nilable(Models::Components::BusinessProfile)](../../models/shared/businessprofile.md)     | :heavy_minus_sign:                                                                           | Describes a business.                                                                        |
| `guest`                                                                                      | [T.nilable(Models::Components::GuestProfile)](../../models/shared/guestprofile.md)           | :heavy_minus_sign:                                                                           | Describes a guest account profile.                                                           |