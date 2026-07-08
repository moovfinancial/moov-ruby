# DepositAccountIngestedResponse

The result of ingesting a deposit account into the deposit view.


## Fields

| Field                                                                      | Type                                                                       | Required                                                                   | Description                                                                |
| -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- | -------------------------------------------------------------------------- |
| `moov_account_id`                                                          | *::String*                                                                 | :heavy_check_mark:                                                         | The Moov account that owns the deposit view the account was ingested into. |
| `source_system`                                                            | [Models::Components::SourceSystem](../../models/shared/sourcesystem.md)    | :heavy_check_mark:                                                         | The core banking source system that produced the ingested payload.         |
| `source_account_id`                                                        | *::String*                                                                 | :heavy_check_mark:                                                         | The identifier of the deposit account within the source system.            |
| `ingested_at`                                                              | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)       | :heavy_check_mark:                                                         | The date and time the deposit account was ingested.                        |