# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Nutrition Sugar Salty Frequency - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Nutrition Sugar Salty Frequency**

## Resource Profile: AT PreNUDGE Observation Nutrition Sugar Salty Frequency 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-sugarsalty-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationNutritionSugarSaltyFrequency |

 
Records self-reported consumption frequency of sugary, fatty, and salty foods and energy-dense drinks, based on ATHIS 2025 question DH6. Coded using SNOMED CT 364395008 'Dietary intake (observable entity)' as the observation concept; update if a more specific LOINC code is identified for this measurement. 

**Usages:**

* Examples for this Profile: [Observation/nutrition-sugarsalty-daily-example](Observation-nutrition-sugarsalty-daily-example.md), [Observation/nutrition-sugarsalty-not-stated-example](Observation-nutrition-sugarsalty-not-stated-example.md) and [Observation/nutrition-sugarsalty-rare-example](Observation-nutrition-sugarsalty-rare-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-nutrition-sugarsalty-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-nutrition-sugarsalty-observation.csv), [Excel](StructureDefinition-at-prenudge-nutrition-sugarsalty-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-nutrition-sugarsalty-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-13

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-nutrition-sugarsalty-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-nutrition-sugarsalty-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationNutritionSugarSaltyFrequency",
  "title" : "AT PreNUDGE Observation Nutrition Sugar Salty Frequency",
  "status" : "draft",
  "date" : "2026-08-13T06:23:48+00:00",
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
  "description" : "Records self-reported consumption frequency of sugary, fatty, and salty foods and energy-dense drinks, based on ATHIS 2025 question DH6. Coded using SNOMED CT 364395008 'Dietary intake (observable entity)' as the observation concept; update if a more specific LOINC code is identified for this measurement.",
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
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "364395008",
          "display" : "Dietary intake (observable entity)"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-nutrition-sugarsalty-frequency-vs"
      }
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
