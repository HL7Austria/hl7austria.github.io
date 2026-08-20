# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation PSS-4 Score - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation PSS-4 Score**

## Resource Profile: AT PreNUDGE Observation PSS-4 Score 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss4-score-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-20 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationPss4Score |

 
Observation profile for recording the calculated PSS-4 total score. Observation.value holds the integer total score (0–16). Components hold the raw categorical answers per item (bound to the PSS frequency ValueSet). Derived from a completed PSS-4 QuestionnaireResponse. 

**Usages:**

* Examples for this Profile: [Observation/pss4-score-example](Observation-pss4-score-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-pss4-score-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-pss4-score-observation.csv), [Excel](StructureDefinition-at-prenudge-pss4-score-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-pss4-score-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-20

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-pss4-score-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss4-score-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationPss4Score",
  "title" : "AT PreNUDGE Observation PSS-4 Score",
  "status" : "draft",
  "date" : "2026-08-20T13:42:02+00:00",
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
  "description" : "Observation profile for recording the calculated PSS-4 total score. Observation.value holds the integer total score (0–16). Components hold the raw categorical answers per item (bound to the PSS frequency ValueSet). Derived from a completed PSS-4 QuestionnaireResponse.",
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
        "key" : "pss4-score-range",
        "severity" : "error",
        "human" : "PSS-4 total score must be between 0 and 16.",
        "expression" : "value.ofType(Quantity).value >= 0 and value.ofType(Quantity).value <= 16",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-pss4-score-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
          "code" : "pss4",
          "display" : "PSS-4 Perceived Stress Scale (4-item)"
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
      "patternString" : "score"
    },
    {
      "id" : "Observation.value[x].system",
      "path" : "Observation.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.value[x].code",
      "path" : "Observation.value[x].code",
      "patternCode" : "{score}"
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "Reference to the PSS-4 QuestionnaireResponse from which this score was calculated",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "rules" : "closed"
      },
      "short" : "Raw categorical answers for each PSS-4 item",
      "min" : 4,
      "max" : "4"
    },
    {
      "id" : "Observation.component:item1",
      "path" : "Observation.component",
      "sliceName" : "item1",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:item1.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
          "code" : "pss4-q1",
          "display" : "PSS-4 Item 1 (Kontrollverlust)"
        }]
      }
    },
    {
      "id" : "Observation.component:item1.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Raw answer to PSS-4 item 1 (negative item — used as-is)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-pss-frequency-valueset"
      }
    },
    {
      "id" : "Observation.component:item2",
      "path" : "Observation.component",
      "sliceName" : "item2",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:item2.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
          "code" : "pss4-q2",
          "display" : "PSS-4 Item 2 (Selbstwirksamkeit — positiv)"
        }]
      }
    },
    {
      "id" : "Observation.component:item2.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Raw answer to PSS-4 item 2 (positive item — reversed in scoring: 4 – ordinal)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-pss-frequency-valueset"
      }
    },
    {
      "id" : "Observation.component:item3",
      "path" : "Observation.component",
      "sliceName" : "item3",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:item3.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
          "code" : "pss4-q3",
          "display" : "PSS-4 Item 3 (Kontrolle — positiv)"
        }]
      }
    },
    {
      "id" : "Observation.component:item3.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Raw answer to PSS-4 item 3 (positive item — reversed in scoring: 4 – ordinal)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-pss-frequency-valueset"
      }
    },
    {
      "id" : "Observation.component:item4",
      "path" : "Observation.component",
      "sliceName" : "item4",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Observation.component:item4.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/at-prenudge-pss-codes-codesystem",
          "code" : "pss4-q4",
          "display" : "PSS-4 Item 4 (Überforderung)"
        }]
      }
    },
    {
      "id" : "Observation.component:item4.value[x]",
      "path" : "Observation.component.value[x]",
      "short" : "Raw answer to PSS-4 item 4 (negative item — used as-is)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-pss-frequency-valueset"
      }
    }]
  }
}

```
