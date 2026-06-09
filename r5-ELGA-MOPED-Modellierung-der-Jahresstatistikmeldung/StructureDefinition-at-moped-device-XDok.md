# ELGA.MOPED\AT MOPED Device XDok Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Device XDok Profil**

## Resource Profile: AT MOPED Device XDok Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-device-XDok | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedDeviceXDok |

 
MOPED Profil der Device Ressource für XDok 

**Usages:**

* Refer to this Profile: [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md)
* Examples for this Profile: [Device/XDokExampleDevice](Device-XDokExampleDevice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-device-XDok.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-device-XDok.csv), [Excel](StructureDefinition-at-moped-device-XDok.xlsx), [Schematron](StructureDefinition-at-moped-device-XDok.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-device-XDok",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-device-XDok",
  "version" : "0.1.0",
  "name" : "AtMopedDeviceXDok",
  "title" : "AT MOPED Device XDok Profil",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Device Ressource für XDok",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-device-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "patternCode" : "active"
    },
    {
      "id" : "Device.name.value",
      "path" : "Device.name.value",
      "patternString" : "XDok"
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/MopedDeviceTypesCS",
          "code" : "XDok"
        }]
      }
    }]
  }
}

```
