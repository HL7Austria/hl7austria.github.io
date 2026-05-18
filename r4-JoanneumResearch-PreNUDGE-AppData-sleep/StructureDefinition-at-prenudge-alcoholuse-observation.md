# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Alcohol Use - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Alcohol Use**

## Resource Profile: AT PreNUDGE Observation Alcohol Use 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation | *Version*:0.1.0 | |
| Draft as of 2026-05-18 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationAlcoholUse |

 
This FHIR profile is currently derived from the APS Observation Alcohol Use profile without introducing any additional constraints or changes. It serves as a prepared extension point so that future adaptations can be made independently if required. 

**Usages:**

* Examples for this Profile: [Observation/alcoholuse-moderate-example](Observation-alcoholuse-moderate-example.md), [Observation/alcoholuse-never-example](Observation-alcoholuse-never-example.md) and [Observation/alcoholuse-occasional-example](Observation-alcoholuse-occasional-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/at-prenudge-alcoholuse-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-alcoholuse-observation.csv), [Excel](StructureDefinition-at-prenudge-alcoholuse-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-alcoholuse-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-alcoholuse-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationAlcoholUse",
  "title" : "AT PreNUDGE Observation Alcohol Use",
  "status" : "draft",
  "date" : "2026-05-18T14:18:35+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "This FHIR profile is currently derived from the APS Observation Alcohol Use profile without introducing any additional constraints or changes. It serves as a prepared extension point so that future adaptations can be made independently if required.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    }]
  }
}

```
