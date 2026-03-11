# CreateResolutionLinkError

Describes validation errors for the create resolution link request.


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `email`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | An error with the recipient email address.                                  |
| `phone`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | An error with the recipient phone number.                                   |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | Raw HTTP response; suitable for custom response parsing                     |