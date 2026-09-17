# HL7.AT.FHIR.ELGA.EMED.R4\At ELGA e-Medikation Device Fachanwendung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **At ELGA e-Medikation Device Fachanwendung**

## Resource Profile: At ELGA e-Medikation Device Fachanwendung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung | *Version*:0.1.1 | |
| Draft as of 2026-09-17 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedDeviceFachanwendung |

 
Das Device welches die eMed Fachanwendung abbildet 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-device-fachanwendung.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-device-fachanwendung.csv), [Excel](StructureDefinition-at-elga-emed-device-fachanwendung.xlsx), [Schematron](StructureDefinition-at-elga-emed-device-fachanwendung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-device-fachanwendung",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung",
  "version" : "0.1.1",
  "name" : "AtElgaEmedDeviceFachanwendung",
  "title" : "At ELGA e-Medikation Device Fachanwendung",
  "status" : "draft",
  "date" : "2026-09-17T14:47:37+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Das Device welches die eMed Fachanwendung abbildet",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
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
      "id" : "Device.status",
      "path" : "Device.status",
      "patternCode" : "active"
    }]
  }
}

```
