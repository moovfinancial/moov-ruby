# FileUploadMetadata

Additional metadata to be stored with the file.


## Fields

| Field                                                                                                  | Type                                                                                                   | Required                                                                                               | Description                                                                                            |
| ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------ |
| `representative_id`                                                                                    | *T.nilable(::String)*                                                                                  | :heavy_minus_sign:                                                                                     | The representative ID that the file is for. Required when filePurpose is `representativeVerification`. |
| `comment`                                                                                              | *T.nilable(::String)*                                                                                  | :heavy_minus_sign:                                                                                     | Comments or notes about the file.                                                                      |