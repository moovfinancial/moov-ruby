# ListIssuedCardAuthorizationEventsRequest


## Fields

| Field                                                       | Type                                                        | Required                                                    | Description                                                 | Example                                                     |
| ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- | ----------------------------------------------------------- |
| `account_id`                                                | *::String*                                                  | :heavy_check_mark:                                          | The Moov business account for which cards have been issued. |                                                             |
| `authorization_id`                                          | *::String*                                                  | :heavy_check_mark:                                          | N/A                                                         |                                                             |
| `skip`                                                      | *T.nilable(::Integer)*                                      | :heavy_minus_sign:                                          | N/A                                                         | 60                                                          |
| `count`                                                     | *T.nilable(::Integer)*                                      | :heavy_minus_sign:                                          | N/A                                                         | 20                                                          |