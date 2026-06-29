# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Body Weight - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Body Weight**

## Resource Profile: AT PreNUDGE Observation Body Weight 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyweight-observation | *Version*:0.1.0 | |
| Draft as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationBodyWeight |

 
This FHIR profile defines a body weight Observation based on the FHIR R4 Vital Signs body weight concept. Body weight is represented using LOINC 29463-7 and UCUM kg. 

**Usages:**

* Examples for this Profile: [Observation/bodyweight-example](Observation-bodyweight-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-bodyweight-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-bodyweight-observation.csv), [Excel](StructureDefinition-at-prenudge-bodyweight-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-bodyweight-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-bodyweight-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyweight-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationBodyWeight",
  "title" : "AT PreNUDGE Observation Body Weight",
  "status" : "draft",
  "date" : "2026-06-29T16:38:59+00:00",
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
  "description" : "This FHIR profile defines a body weight Observation based on the FHIR R4 Vital Signs body weight concept. Body weight is represented using LOINC 29463-7 and UCUM kg.",
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
        "key" : "body-weight-range",
        "severity" : "error",
        "human" : "Body weight must be between 20 and 300 kg.",
        "expression" : "value.empty() or (value.ofType(Quantity).value >= 20 and value.ofType(Quantity).value <= 300)",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyweight-observation"
      }]
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs",
          "display" : "Vital Signs"
        }]
      }
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "29463-7",
          "display" : "Body weight"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
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
      "patternString" : "kg"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "kg"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Reference to the QuestionnaireResponse from which this observation was derived",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }],
      "mustSupport" : true
    }]
  }
}

```
