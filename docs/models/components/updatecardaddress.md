# UpdateCardAddress


## Fields

| Field                                                    | Type                                                     | Required                                                 | Description                                              |
| -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- | -------------------------------------------------------- |
| `address_line1`                                          | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Street address line 1.                                   |
| `address_line2`                                          | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Street address line 2 (e.g., apartment or suite number). |
| `city`                                                   | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | City name.                                               |
| `state_or_province`                                      | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Two-letter state or province code.                       |
| `postal_code`                                            | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Postal or ZIP code.                                      |
| `country`                                                | *T.nilable(::String)*                                    | :heavy_minus_sign:                                       | Two-letter ISO 3166-1 country code.                      |