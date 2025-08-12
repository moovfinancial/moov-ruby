# EvidenceUploadResponse

Details of a successfully uploaded evidence file.


## Fields

| Field                                                                   | Type                                                                    | Required                                                                | Description                                                             |
| ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- | ----------------------------------------------------------------------- |
| `evidence_id`                                                           | *::String*                                                              | :heavy_check_mark:                                                      | The ID of the evidence.                                                 |
| `dispute_id`                                                            | *::String*                                                              | :heavy_check_mark:                                                      | The ID of the dispute the evidence is associated with.                  |
| `filename`                                                              | *::String*                                                              | :heavy_check_mark:                                                      | The name of the evidence file.                                          |
| `mime_type`                                                             | *::String*                                                              | :heavy_check_mark:                                                      | The MIME type of the evidence file.                                     |
| `size`                                                                  | *::Integer*                                                             | :heavy_check_mark:                                                      | The size of the evidence file.                                          |
| `evidence_type`                                                         | [Models::Components::EvidenceType](../../models/shared/evidencetype.md) | :heavy_check_mark:                                                      | N/A                                                                     |
| `created_on`                                                            | [Date](https://ruby-doc.org/stdlib-2.6.1/libdoc/date/rdoc/Date.html)    | :heavy_check_mark:                                                      | The date and time the evidence was uploaded.                            |