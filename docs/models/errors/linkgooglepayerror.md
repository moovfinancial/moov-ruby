# LinkGooglePayError


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `error`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Describes an error that wasn't attributable to a single request field.      |
| `token`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | Describes an error within the `token` request field.                        |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | Raw HTTP response; suitable for custom response parsing                     |