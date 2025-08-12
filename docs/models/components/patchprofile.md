# PatchProfile

Describes the fields available when patching a profile.
Each object can be patched independent of patching the other fields.


## Fields

| Field                                                                                    | Type                                                                                     | Required                                                                                 | Description                                                                              |
| ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------- |
| `individual`                                                                             | [T.nilable(Models::Components::PatchIndividual)](../../models/shared/patchindividual.md) | :heavy_minus_sign:                                                                       | Describes the fields available when patching an individual.                              |
| `business`                                                                               | [T.nilable(Models::Components::PatchBusiness)](../../models/shared/patchbusiness.md)     | :heavy_minus_sign:                                                                       | N/A                                                                                      |