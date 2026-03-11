# ResolutionLinkRecipient

Contact information for the recipient of a resolution link. Provide either `email` or `phone`, but not both.


## Fields

| Field                                                                            | Type                                                                             | Required                                                                         | Description                                                                      | Example                                                                          |
| -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- | -------------------------------------------------------------------------------- |
| `email`                                                                          | *T.nilable(::String)*                                                            | :heavy_minus_sign:                                                               | The email address of the recipient.                                              | jordan.lee@classbooker.dev                                                       |
| `phone`                                                                          | [T.nilable(Models::Components::PhoneNumber)](../../models/shared/phonenumber.md) | :heavy_minus_sign:                                                               | The phone number of the recipient.                                               |                                                                                  |