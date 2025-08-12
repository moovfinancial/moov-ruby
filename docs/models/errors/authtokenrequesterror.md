# AuthTokenRequestError


## Fields

| Field                                                                       | Type                                                                        | Required                                                                    | Description                                                                 |
| --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
| `scope`                                                                     | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | N/A                                                                         |
| `refresh_token`                                                             | *T.nilable(::String)*                                                       | :heavy_minus_sign:                                                          | N/A                                                                         |
| `raw_response`                                                              | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response) | :heavy_minus_sign:                                                          | Raw HTTP response; suitable for custom response parsing                     |