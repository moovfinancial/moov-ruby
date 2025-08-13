# IndividualName


## Fields

| Field                                       | Type                                        | Required                                    | Description                                 | Example                                     |
| ------------------------------------------- | ------------------------------------------- | ------------------------------------------- | ------------------------------------------- | ------------------------------------------- |
| `first_name`                                | *::String*                                  | :heavy_check_mark:                          | The individual's first given name.          | Jordan                                      |
| `middle_name`                               | *T.nilable(::String)*                       | :heavy_minus_sign:                          | The individual's second given name, if any. | Reese                                       |
| `last_name`                                 | *::String*                                  | :heavy_check_mark:                          | The individual's family name.               | Lee                                         |
| `suffix`                                    | *T.nilable(::String)*                       | :heavy_minus_sign:                          | Suffix of a given name.                     | Jr                                          |