# ELGA.MOPED\OrganizationLGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationLGF**

## Example Organization: OrganizationLGF

Profile: [LGF Organization](StructureDefinition-LGFOrganization.md)

**name**: Wiener Gesundheitsfonds (WGF)

### Contacts

| | |
| :--- | :--- |
| - | **Telecom** |
| * | [wiener.gesundheitsfonds@wien.gv.at](mailto:wiener.gesundheitsfonds@wien.gv.at) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationLGF",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/LGFOrganization"]
  },
  "name" : "Wiener Gesundheitsfonds (WGF)",
  "contact" : [{
    "telecom" : [{
      "system" : "email",
      "value" : "wiener.gesundheitsfonds@wien.gv.at"
    }]
  }]
}

```
