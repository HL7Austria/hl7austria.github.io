# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation**

## Resource Profile: AT PreNUDGE Observation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation | *Version*:0.1.0 | |
| Draft as of 2026-02-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservation |

 
This FHIR profile is defining the overall Observation for PreNUDGE. 

**Usages:**

* Derived from this Profile: [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md) and [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/at-prenudge-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-observation.csv), [Excel](StructureDefinition-at-prenudge-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservation",
  "title" : "AT PreNUDGE Observation",
  "status" : "draft",
  "date" : "2026-02-13T19:47:50+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [
    {
      "name" : "The PreNUDGE Consortium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://prenudge.at"
        }
      ]
    },
    {
      "name" : "The PreNUDGE Consortium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://prenudge.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "This FHIR profile is defining the overall Observation for PreNUDGE.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation"
      },
      {
        "id" : "Observation.method",
        "path" : "Observation.method",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-observation-valueset-method-manual-automated"
        }
      },
      {
        "id" : "Observation.component",
        "path" : "Observation.component",
        "max" : "0",
        "mustSupport" : false
      }
    ]
  }
}

```
