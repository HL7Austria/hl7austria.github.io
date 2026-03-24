# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Blood Glucose (only in mg/dL) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Blood Glucose (only in mg/dL)**

## Resource Profile: AT PreNUDGE Observation Blood Glucose (only in mg/dL) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation | *Version*:0.1.0 | |
| Draft as of 2026-03-24 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationBloodGlucose |

 
This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allows values inbetween 0 and 999 mg/dL. 

**Usages:**

* Examples for this Profile: [Observation/bloodglucose-elevated-example](Observation-bloodglucose-elevated-example.md), [Observation/bloodglucose-low-example](Observation-bloodglucose-low-example.md) and [Observation/bloodglucose-normal-example](Observation-bloodglucose-normal-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/at-prenudge-bloodglucose-observation)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-bloodglucose-observation.csv), [Excel](StructureDefinition-at-prenudge-bloodglucose-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-bloodglucose-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-bloodglucose-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationBloodGlucose",
  "title" : "AT PreNUDGE Observation Blood Glucose (only in mg/dL)",
  "status" : "draft",
  "date" : "2026-03-24T11:22:25+00:00",
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
  "description" : "This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allows values inbetween 0 and 999 mg/dL.",
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
        "key" : "bloodglucose-range",
        "severity" : "error",
        "human" : "Blood glucose must be inbetween 0 and 999 mg/dL.",
        "expression" : "value.ofType(Quantity).value >= 0 and value.ofType(Quantity).value <= 999",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "1556-0",
          "display" : "Fasting glucose [Mass/volume] in Capillary blood"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.value[x].value",
      "path" : "Observation.value[x].value",
      "min" : 1
    },
    {
      "id" : "Observation.value[x].unit",
      "path" : "Observation.value[x].unit",
      "patternString" : "mg/dL"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "mg/dL"
    }]
  }
}

```
