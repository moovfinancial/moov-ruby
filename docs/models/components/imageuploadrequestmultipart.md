# ImageUploadRequestMultiPart

Multipart request body for uploading an image with optional metadata.


## Fields

| Field                                                                                                           | Type                                                                                                            | Required                                                                                                        | Description                                                                                                     |
| --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------- |
| `image`                                                                                                         | [Models::Components::ImageUploadRequestMultiPartImage](../../models/shared/imageuploadrequestmultipartimage.md) | :heavy_check_mark:                                                                                              | N/A                                                                                                             |
| `metadata`                                                                                                      | [T.nilable(Models::Components::ImageMetadataRequest)](../../models/shared/imagemetadatarequest.md)              | :heavy_minus_sign:                                                                                              | Optional, json-encoded metadata to associate with the uploaded image.                                           |