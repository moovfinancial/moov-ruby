# CreateCardPaymentOptionsCaptureMethod

How funds are captured. `automatic` (default) authorizes and captures the full amount right away.
`manual` authorizes only; capture later with the capture endpoint.

## Example Usage

```ruby
require "moov_ruby"

value = CreateCardPaymentOptionsCaptureMethod::AUTOMATIC
```


## Values

| Name        | Value       |
| ----------- | ----------- |
| `AUTOMATIC` | automatic   |
| `MANUAL`    | manual      |