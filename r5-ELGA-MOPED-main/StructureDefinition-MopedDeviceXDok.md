# ELGA.MOPED\Moped Device XDok - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Device XDok**

## Resource Profile: Moped Device XDok 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedDeviceXDok | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedDeviceXDok |

 
Moped Definition für XDok 

**Usages:**

* Refer to this Profile: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* Examples for this Profile: [Device/XDokExampleDevice](Device-XDokExampleDevice.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedDeviceXDok)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedDeviceXDok.csv), [Excel](StructureDefinition-MopedDeviceXDok.xlsx), [Schematron](StructureDefinition-MopedDeviceXDok.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedDeviceXDok",
  "url" : "https://elga.moped.at/StructureDefinition/MopedDeviceXDok",
  "version" : "0.1.0",
  "name" : "MopedDeviceXDok",
  "title" : "Moped Device XDok",
  "status" : "draft",
  "date" : "2026-04-07T19:34:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Moped Definition für XDok",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedDevice",
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
