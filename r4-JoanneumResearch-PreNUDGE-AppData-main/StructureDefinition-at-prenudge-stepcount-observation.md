# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Step Count - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Step Count**

## Resource Profile: AT PreNUDGE Observation Step Count 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation | *Version*:0.1.0 | |
| Draft as of 2026-03-02 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationStepCount |

 
This FHIR profile is defining the Step Count Observation. The step count only allows values inbetween 0 and 150,000 steps per 24 hours. 

**Usages:**

* Examples for this Profile: [Observation/stepcount-low-example](Observation-stepcount-low-example.md) and [Observation/stepcount-normal-example](Observation-stepcount-normal-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/at-prenudge-stepcount-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-stepcount-observation.csv), [Excel](StructureDefinition-at-prenudge-stepcount-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-stepcount-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-stepcount-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationStepCount",
  "title" : "AT PreNUDGE Observation Step Count",
  "status" : "draft",
  "date" : "2026-03-02T16:20:44+00:00",
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
  "description" : "This FHIR profile is defining the Step Count Observation. The step count only allows values inbetween 0 and 150,000 steps per 24 hours.",
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
  "baseDefinition" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "stepcount-range",
        "severity" : "error",
        "human" : "Step count must be inbetween 0 and 150,000.",
        "expression" : "value.ofType(Quantity).value >= 0 and value.ofType(Quantity).value <= 150000",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "41950-7",
          "display" : "Number of steps in 24 hour Measured"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "{steps}/d"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "{steps}/d"
    }]
  }
}

```
