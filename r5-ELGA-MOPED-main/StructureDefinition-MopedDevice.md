# ELGA.MOPED\Moped Device - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Device**

## Resource Profile: Moped Device 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedDevice | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedDevice |

 
Generische Moped Definition für Devices 

**Usages:**

* Derived from this Profile: [Moped Device XDok](StructureDefinition-MopedDeviceXDok.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedDevice)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedDevice.csv), [Excel](StructureDefinition-MopedDevice.xlsx), [Schematron](StructureDefinition-MopedDevice.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedDevice",
  "url" : "https://elga.moped.at/StructureDefinition/MopedDevice",
  "version" : "0.1.0",
  "name" : "MopedDevice",
  "title" : "Moped Device",
  "status" : "draft",
  "date" : "2026-04-29T07:12:28+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Generische Moped Definition für Devices",
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
