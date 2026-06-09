# ELGA.MOPED\OrganizationLGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationLGF**

## Example Organization: OrganizationLGF

Profiles: [AT MOPED Organization LGF Profil](StructureDefinition-at-moped-organization-LGF.md), `https://elga.moped.at/StructureDefinition/AtMopedOrganizationLGF`

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
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-LGF",
    "https://elga.moped.at/StructureDefinition/AtMopedOrganizationLGF"]
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
