# UpsertSchedule


## Fields

| Field                                                                         | Type                                                                          | Required                                                                      | Description                                                                   |
| ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `description`                                                                 | *T.nilable(::String)*                                                         | :heavy_minus_sign:                                                            | Simple description of what the schedule is.                                   |
| `occurrences`                                                                 | T::Array<[Models::Components::Occurrence](../../models/shared/occurrence.md)> | :heavy_minus_sign:                                                            | N/A                                                                           |
| `recur`                                                                       | [T.nilable(Models::Components::Recur)](../../models/shared/recur.md)          | :heavy_minus_sign:                                                            | Defines configuration for recurring transfers.                                |