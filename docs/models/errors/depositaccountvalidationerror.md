# DepositAccountValidationError

Descriptions of any field validations that failed while parsing the deposit account payload.


## Fields

| Field                                                                                     | Type                                                                                      | Required                                                                                  | Description                                                                               |
| ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------- |
| `source_system`                                                                           | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | An error describing why the X-Source-System header was missing or unsupported.            |
| `body`                                                                                    | *T.nilable(::String)*                                                                     | :heavy_minus_sign:                                                                        | An error describing why the request body could not be parsed for the given source system. |
| `raw_response`                                                                            | [Faraday::Response](https://www.rubydoc.info/gems/faraday/Faraday/Response)               | :heavy_minus_sign:                                                                        | Raw HTTP response; suitable for custom response parsing                                   |