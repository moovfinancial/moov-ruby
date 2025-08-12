# CardAccountUpdater

The results of the most recent card update request.


## Fields

| Field                                                                                      | Type                                                                                       | Required                                                                                   | Description                                                                                | Example                                                                                    |
| ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------ |
| `updated_on`                                                                               | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)                       | :heavy_minus_sign:                                                                         | N/A                                                                                        |                                                                                            |
| `update_type`                                                                              | [T.nilable(Models::Components::CardUpdateReason)](../../models/shared/cardupdatereason.md) | :heavy_minus_sign:                                                                         | The results of the card update request.                                                    | number-update                                                                              |