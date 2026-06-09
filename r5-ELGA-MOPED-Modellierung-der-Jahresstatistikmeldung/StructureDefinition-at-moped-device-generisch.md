# ELGA.MOPED\AT MOPED Device generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Device generisches Profil**

## Resource Profile: AT MOPED Device generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-device-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedDeviceGenerisch |

 
MOPED generisches Profil der Device Ressource 

**Usages:**

* Derived from this Profile: [AT MOPED Device XDok Profil](StructureDefinition-at-moped-device-XDok.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-device-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-device-generisch.csv), [Excel](StructureDefinition-at-moped-device-generisch.xlsx), [Schematron](StructureDefinition-at-moped-device-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-device-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-device-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedDeviceGenerisch",
  "title" : "AT MOPED Device generisches Profil",
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
  "description" : "MOPED generisches Profil der Device Ressource",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.status",
      "path" : "Device.status",
      "min" : 1
    },
    {
      "id" : "Device.name",
      "path" : "Device.name",
      "min" : 1
    },
    {
      "id" : "Device.category",
      "path" : "Device.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://hl7.org/fhir/device-category",
          "code" : "software"
        }]
      }
    },
    {
      "id" : "Device.type",
      "path" : "Device.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedDeviceTypesVS"
      }
    },
    {
      "id" : "Device.version",
      "path" : "Device.version",
      "min" : 1
    }]
  }
}

```
